; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/neterion/vxge/vxge-ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.vxge_vpath = type { %struct.vxge_fifo, %struct.vxge_ring, ptr, i32, i32, i32, i32, ptr, [6 x i8], [6 x i8], i16, i16, %struct.list_head, i32, i32, [72 x i8] }
%struct.vxge_fifo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.vxge_fifo_stats, [24 x i8] }
%struct.vxge_fifo_stats = type { %struct.u64_stats_sync, i64, i64, i32, i32, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vxge_ring = type { ptr, ptr, ptr, i32, i32, i32, i8, i32, i32, %struct.napi_struct, ptr, i32, i32, i32, %struct.vxge_ring_stats, [24 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.vxge_ring_stats = type { %struct.u64_stats_sync, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.vxge_hw_vpath_stats_hw_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vxge_hw_xmac_vpath_tx_stats, %struct.vxge_hw_xmac_vpath_rx_stats, i64, i32, i32, i32, i32, i16, [6 x i8], i32, i32, i16, [6 x i8], i16, i16, i16, i16, i64, i64, i64 }
%struct.vxge_hw_xmac_vpath_tx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64 }
%struct.vxge_hw_xmac_vpath_rx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64 }
%struct.vxge_hw_xmac_aggr_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vxge_hw_xmac_stats = type { [2 x %struct.vxge_hw_xmac_aggr_stats], [3 x %struct.vxge_hw_xmac_port_stats], [17 x %struct.vxge_hw_xmac_vpath_tx_stats], [17 x %struct.vxge_hw_xmac_vpath_rx_stats] }
%struct.vxge_hw_xmac_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vxge_hw_device_stats_sw_info = type { i32, i32, i32, i32, [17 x %struct.vxge_hw_vpath_stats_sw_info] }
%struct.vxge_hw_vpath_stats_sw_info = type { i32, %struct.vxge_hw_vpath_stats_sw_err, %struct.vxge_hw_vpath_stats_sw_ring_info, %struct.vxge_hw_vpath_stats_sw_fifo_info }
%struct.vxge_hw_vpath_stats_sw_err = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vxge_hw_vpath_stats_sw_ring_info = type { %struct.vxge_hw_vpath_stats_sw_common_info, [16 x i32] }
%struct.vxge_hw_vpath_stats_sw_common_info = type { i32, i32, i32, i32, i32 }
%struct.vxge_hw_vpath_stats_sw_fifo_info = type { %struct.vxge_hw_vpath_stats_sw_common_info, i32, i32, [16 x i32] }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@vxge_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @vxge_ethtool_gdrvinfo, ptr @vxge_ethtool_get_regs_len, ptr @vxge_ethtool_gregs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vxge_ethtool_getpause_data, ptr @vxge_ethtool_setpause_data, ptr null, ptr @vxge_ethtool_get_strings, ptr @vxge_ethtool_idnic, ptr @vxge_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @vxge_ethtool_get_sset_count, ptr null, ptr null, ptr @vxge_fw_flash, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vxge_ethtool_get_link_ksettings, ptr @vxge_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vxge\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"2.5.3.22640-k\00", [18 x i8] zeroinitializer }, align 32
@vxge_ethtool_gregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d Getting reg dump Failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vxge_ethtool_gregs\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/neterion/vxge/vxge-ethtool.c\00", [46 x i8] zeroinitializer }, align 32
@vxge_ethtool_gregs._entry_ptr = internal global ptr @vxge_ethtool_gregs._entry, section ".printk_index", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VPATH STATISTICS%s\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_ttl_eth_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_ttl_eth_octects_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_data_octects_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_mcast_frms_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_bcast_frms_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_ucast_frms_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_tagged_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_vld_ip_%d\09\09\09\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_vld_ip_octects_%d\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_icmp_%d\09\09\09\09\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_tcp_%d\09\09\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_rst_tcp_%d\09\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_udp_%d\09\09\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_unknown_proto_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_lost_ip_%d\09\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_parse_error_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_tcp_offload_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx_retx_tcp_offload_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_lost_ip_offload_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_ttl_eth_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_vld_frms_%d\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_offload_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_ttl_eth_octects_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_data_octects_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_offload_octects_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_vld_mcast_frms_%d\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_vld_bcast_frms_%d\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_accepted_ucast_frms_%d\09\09\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rx_accepted_nucast_frms_%d\09\09\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_tagged_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_long_frms_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_usized_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_osized_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_frag_frms_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_jabber_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_ttl_64_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_ttl_65_127_frms_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_ttl_128_255_frms_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_ttl_256_511_frms_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_ttl_512_1023_frms_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_ttl_1024_1518_frms_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_ttl_1519_4095_frms_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_ttl_4096_8191_frms_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_ttl_8192_max_frms_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_ttl_gt_max_frms_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_ip%d\09\09\09\09\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_accepted_ip_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_ip_octects_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_err_ip_%d\09\09\09\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_icmp_%d\09\09\09\09\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_tcp_%d\09\09\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_udp_%d\09\09\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_err_tcp_%d\09\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_lost_frms_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_lost_ip_%d\09\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_lost_ip_offload_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_various_discard_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_sleep_discard_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_red_discard_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_queue_full_discard_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_mpa_ok_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0AAGGR STATISTICS%s\09\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_frms_%d\09\09\09\09\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_discarded_frms_%d\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_errored_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_frms_%d\09\09\09\09\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_mcast_frms_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_bcast_frms_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_discarded_frms_%d\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_errored_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx_unknown_slow_proto_frms_%d\09\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0APORT STATISTICS%s\09\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_ttl_frms_%d\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_ttl_octects_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx_unknown_protocol_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_pause_ctrl_frms_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_marker_pdu_frms_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_lacpdu_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_drop_ip_%d\09\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx_marker_resp_pdu_frms_%d\09\09\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_xgmii_char2_match_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_xgmii_char1_match_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx_xgmii_column2_match_%d\09\09\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx_xgmii_column1_match_%d\09\09\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_any_err_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_drop_frms_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_ttl_frms_%d\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_ttl_octects_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_ip_%d\09\09\09\09\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_ip_octets_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_pause_count_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_pause_ctrl_frms_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_unsup_ctrl_frms_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_fcs_err_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_in_rng_len_err_frms_%d\09\09\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rx_out_rng_len_err_frms_%d\09\09\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_drop_frms_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_discard_frms_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_drop_ip_%d\09\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_drop_udp_%d\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_marker_pdu_frms_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_lacpdu_frms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_unknown_pdu_frms_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rx_marker_resp_pdu_frms_%d\09\09\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_fcs_discard_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_illegal_pdu_frms_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_switch_discard_%d\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_len_discard_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_rpa_discard_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_l2_mgmt_discard_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_rts_discard_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_trash_discard_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_buff_full_discard_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_xgmii_ctrl_err_cnt_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_xgmii_data_err_cnt_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_xgmii_char1_match_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_xgmii_err_sym_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_xgmii_column1_match_%d\09\09\00", [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_xgmii_char2_match_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_local_fault_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx_xgmii_column2_match_%d\09\09\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_jettison_%d\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_remote_fault_%d\09\09\09\00", [42 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A SOFTWARE STATISTICS%s\09\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"soft_reset_cnt_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown_alarms_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"network_sustained_fault_%d\09\09\00", [35 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"network_sustained_ok_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kdfcctl_fifo0_overwrite_%d\09\09\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kdfcctl_fifo0_poison_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kdfcctl_fifo0_dma_error_%d\09\09\00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dblgen_fifo0_overflow_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"statsb_pif_chain_error_%d\09\09\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"statsb_drop_timeout_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"target_illegal_access_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ini_serr_det_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prc_ring_bumps_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prc_rxdcm_sc_err_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prc_rxdcm_sc_abort_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"prc_quanta_size_err_%d\09\09\00", [39 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ring_full_cnt_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ring_usage_cnt_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ring_usage_max_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ring_reserve_free_swaps_cnt_%d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ring_total_compl_cnt_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rxd_t_code_err_cnt%d_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fifo_full_cnt_%d\09\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fifo_usage_cnt_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fifo_usage_max_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fifo_reserve_free_swaps_cnt_%d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fifo_total_compl_cnt_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fifo_total_posts_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fifo_total_buffers_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"txd_t_code_err_cnt%d_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A HARDWARE STATISTICS%s\09\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ini_num_mwr_sent_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ini_num_mrd_sent_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ini_num_cpl_rcvd_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ini_num_mwr_byte_sent_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ini_num_cpl_byte_rcvd_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wrcrdtarb_xoff_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rdcrdtarb_xoff_%d\09\09\09\00", [43 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpath_genstats_count0_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpath_genstats_count1_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpath_genstats_count2_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpath_genstats_count3_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpath_genstats_count4_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vpath_genstats_count5_%d\09\09\00", [37 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prog_event_vnum0_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prog_event_vnum1_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prog_event_vnum2_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prog_event_vnum3_%d\09\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx_multi_cast_frame_discard_%d\09\00", [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_frm_transferred_%d\09\09\00", [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxd_returned_%d\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_mpa_len_fail_frms_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_mpa_mrk_fail_frms_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_mpa_crc_fail_frms_%d\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_permitted_frms_%d\09\09\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx_vp_reset_discarded_frms_%d\09\00", [33 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_wol_frms_%d\09\09\09\00", [46 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx_vp_reset_discarded_frms_%d\09\00", [33 x i8] zeroinitializer }, align 32
@ethtool_driver_stats_keys = internal constant { [16 x [32 x i8]], [128 x i8] } { [16 x [32 x i8]] [[32 x i8] c"\0A DRIVER STATISTICS\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"vpaths_opened\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"vpath_open_fail_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"link_up_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"link_down_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_frms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"txd_not_free\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"txd_out_of_desc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pci_map_fail_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"skb_alloc_fail_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [128 x i8] zeroinitializer }, align 32
@vxge_get_ethtool_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.4, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s : %d Memory Allocation failed for xmac_stats\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vxge_get_ethtool_stats\00", [41 x i8] zeroinitializer }, align 32
@vxge_get_ethtool_stats._entry_ptr = internal global ptr @vxge_get_ethtool_stats._entry, section ".printk_index", align 4
@vxge_get_ethtool_stats._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.4, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s : %d Memory Allocation failed for sw_stats\0A\00", [49 x i8] zeroinitializer }, align 32
@vxge_get_ethtool_stats._entry_ptr.193 = internal global ptr @vxge_get_ethtool_stats._entry.191, section ".printk_index", align 4
@vxge_get_ethtool_stats._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.4, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s : %d Memory Allocation failed for hw_stats\0A\00", [49 x i8] zeroinitializer }, align 32
@vxge_get_ethtool_stats._entry_ptr.196 = internal global ptr @vxge_get_ethtool_stats._entry.194, section ".printk_index", align 4
@vxge_get_ethtool_stats._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.190, ptr @.str.4, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s : %d Failure in getting xmac stats\0A\00", [57 x i8] zeroinitializer }, align 32
@vxge_get_ethtool_stats._entry_ptr.199 = internal global ptr @vxge_get_ethtool_stats._entry.197, section ".printk_index", align 4
@vxge_get_ethtool_stats._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.190, ptr @.str.4, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s : %d Failure in getting sw stats\0A\00", [59 x i8] zeroinitializer }, align 32
@vxge_get_ethtool_stats._entry_ptr.202 = internal global ptr @vxge_get_ethtool_stats._entry.200, section ".printk_index", align 4
@vxge_get_ethtool_stats._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.190, ptr @.str.4, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s : %d hw_stats_get error\0A\00", [36 x i8] zeroinitializer }, align 32
@vxge_get_ethtool_stats._entry_ptr.205 = internal global ptr @vxge_get_ethtool_stats._entry.203, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vxge_fw_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.4, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016Single Function Mode is required to flash the firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vxge_fw_flash\00", [18 x i8] zeroinitializer }, align 32
@vxge_fw_flash._entry_ptr = internal global ptr @vxge_fw_flash._entry, section ".printk_index", align 4
@vxge_fw_flash._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.4, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016Interface %s must be down to flash the firmware\0A\00", [45 x i8] zeroinitializer }, align 32
@vxge_fw_flash._entry_ptr.210 = internal global ptr @vxge_fw_flash._entry.208, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 217]
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"vxge_ethtool_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1135, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 111, i32 24 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 112, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 147, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 608, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 611, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 613, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 615, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 617, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 619, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 621, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 623, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 625, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 627, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 629, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 631, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 633, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 635, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 637, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 639, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 641, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 643, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 645, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 647, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 649, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 651, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 653, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 655, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 657, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 659, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 661, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 663, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 665, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 667, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 669, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 671, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 673, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 675, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 677, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 679, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 681, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 683, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 685, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 687, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 689, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 691, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 693, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 695, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 697, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 699, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 701, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 703, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 705, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 707, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 709, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 711, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 713, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 715, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 717, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 719, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 721, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 723, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 725, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 727, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 729, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 731, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 735, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 738, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 746, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 748, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 750, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 754, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 756, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 758, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 760, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 762, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 766, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 769, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 771, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 797, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 799, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 801, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 803, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 805, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 807, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 809, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 811, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 813, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 815, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 817, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 819, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 821, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 827, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 873, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 877, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 889, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 891, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 893, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 895, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 897, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 899, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 901, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 903, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 905, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 907, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 909, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 911, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 913, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 915, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 917, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 919, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 921, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 923, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 925, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 927, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 929, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 931, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 933, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 937, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 939, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 941, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 943, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 945, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 947, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 949, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 951, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 953, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 955, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 959, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 962, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 964, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 966, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 968, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 970, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 972, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 974, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 976, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 978, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 980, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 982, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 984, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 986, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 988, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 990, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 992, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 994, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 996, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 998, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1000, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1002, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1005, i32 5 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1007, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1009, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1011, i32 4 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1013, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1015, i32 4 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1017, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1019, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1022, i32 5 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1026, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1029, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1031, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1033, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1035, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1037, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1039, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1041, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1043, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1045, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1047, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1049, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1051, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1053, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1055, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1057, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1059, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1061, i32 4 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1063, i32 4 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1065, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1067, i32 4 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1069, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1071, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1073, i32 4 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1075, i32 4 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1077, i32 4 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1079, i32 4 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1081, i32 4 }
@___asan_gen_.785 = private unnamed_addr constant [26 x i8] c"ethtool_driver_stats_keys\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 21, i32 19 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 249, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 259, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 270, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 280, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 287, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 294, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1121, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.840 = private constant [53 x i8] c"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.840, i32 1127, i32 3 }
@llvm.compiler.used = appending global [219 x ptr] [ptr @vxge_ethtool_gregs._entry, ptr @vxge_ethtool_gregs._entry_ptr, ptr @vxge_fw_flash._entry, ptr @vxge_fw_flash._entry.208, ptr @vxge_fw_flash._entry_ptr, ptr @vxge_fw_flash._entry_ptr.210, ptr @vxge_get_ethtool_stats._entry, ptr @vxge_get_ethtool_stats._entry.191, ptr @vxge_get_ethtool_stats._entry.194, ptr @vxge_get_ethtool_stats._entry.197, ptr @vxge_get_ethtool_stats._entry.200, ptr @vxge_get_ethtool_stats._entry.203, ptr @vxge_get_ethtool_stats._entry_ptr, ptr @vxge_get_ethtool_stats._entry_ptr.193, ptr @vxge_get_ethtool_stats._entry_ptr.196, ptr @vxge_get_ethtool_stats._entry_ptr.199, ptr @vxge_get_ethtool_stats._entry_ptr.202, ptr @vxge_get_ethtool_stats._entry_ptr.205, ptr @vxge_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @ethtool_driver_stats_keys, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.209], section "llvm.metadata"
@0 = internal global [210 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_ethtool_gregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_driver_stats_keys to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_get_ethtool_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_get_ethtool_stats._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_get_ethtool_stats._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_get_ethtool_stats._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_get_ethtool_stats._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_get_ethtool_stats._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_fw_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_fw_flash._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vxge_initialize_ethtool_ops(ptr nocapture noundef writeonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vxge_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxge_ethtool_gdrvinfo(ptr noundef %dev, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %fw_version5 = getelementptr i8, ptr %dev, i32 9420
  %call7 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_version5, i32 noundef 32) #12
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call10 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vxge_ethtool_get_regs_len(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %no_of_vpath = getelementptr i8, ptr %dev, i32 9044
  %0 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %no_of_vpath, align 4
  %mul = mul i32 %1, 9800
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxge_ethtool_gregs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %space) #3 align 64 {
entry:
  %reg = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #12
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %reg, align 8, !annotation !424
  %devh = getelementptr i8, ptr %dev, i32 2312
  %1 = ptrtoint ptr %devh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devh, align 8
  %no_of_vpath = getelementptr i8, ptr %dev, i32 9044
  %3 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %no_of_vpath, align 4
  %mul = mul i32 %4, 9800
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %len, align 4
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device, align 2
  %conv = zext i16 %9 to i32
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %10 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %version, align 4
  %11 = load i32, ptr %no_of_vpath, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp34 = icmp sgt i32 %11, 0
  br i1 %cmp34, label %for.cond3.preheader.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %vpaths = getelementptr i8, ptr %dev, i32 9280
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc14.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %index.036 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc, %for.inc14.for.cond3.preheader_crit_edge ]
  %reg_space.035 = phi ptr [ %space, %for.cond3.preheader.lr.ph ], [ %incdec.ptr, %for.inc14.for.cond3.preheader_crit_edge ]
  br label %for.body6

for.body6:                                        ; preds = %if.end.for.body6_crit_edge, %for.cond3.preheader
  %reg_space.133 = phi ptr [ %reg_space.035, %for.cond3.preheader ], [ %incdec.ptr, %if.end.for.body6_crit_edge ]
  %offset.032 = phi i32 [ 0, %for.cond3.preheader ], [ %add, %if.end.for.body6_crit_edge ]
  %12 = ptrtoint ptr %vpaths to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vpaths, align 8
  %device_id = getelementptr %struct.vxge_vpath, ptr %13, i32 %index.036, i32 3
  %14 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_id, align 4
  %call7 = call i32 @vxge_hw_mgmt_reg_read(ptr noundef %2, i32 noundef 6, i32 noundef %15, i32 noundef %offset.032, ptr noundef nonnull %reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 149) #15
  br label %cleanup

if.end:                                           ; preds = %for.body6
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %reg, align 8
  %incdec.ptr = getelementptr i64, ptr %reg_space.133, i32 1
  %18 = ptrtoint ptr %reg_space.133 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %reg_space.133, align 8
  %add = add nuw nsw i32 %offset.032, 8
  %cmp4 = icmp ult i32 %offset.032, 9792
  br i1 %cmp4, label %if.end.for.body6_crit_edge, label %for.inc14

if.end.for.body6_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6

for.inc14:                                        ; preds = %if.end
  %inc = add nuw nsw i32 %index.036, 1
  %19 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %no_of_vpath, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %for.inc14.for.cond3.preheader_crit_edge, label %for.inc14.cleanup_crit_edge

for.inc14.cleanup_crit_edge:                      ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc14.for.cond3.preheader_crit_edge:          ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader

cleanup:                                          ; preds = %for.inc14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxge_ethtool_getpause_data(ptr nocapture noundef readonly %dev, ptr noundef %ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devh = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %devh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devh, align 8
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ep, i32 0, i32 3
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ep, i32 0, i32 2
  %call1 = tail call i32 @vxge_hw_device_getpause_data(ptr noundef %1, i32 noundef 0, ptr noundef %tx_pause, ptr noundef %rx_pause) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxge_ethtool_setpause_data(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devh = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %devh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devh, align 8
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pause, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pause, align 4
  %call1 = tail call i32 @vxge_hw_device_setpause_data(ptr noundef %1, i32 noundef 0, i32 noundef %3, i32 noundef %5) #12
  %6 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pause, align 4
  %config = getelementptr i8, ptr %dev, i32 2832
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %config, align 8
  %9 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_pause, align 4
  %rx_pause_enable = getelementptr i8, ptr %dev, i32 2836
  %11 = ptrtoint ptr %rx_pause_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rx_pause_enable, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxge_ethtool_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %no_of_vpath = getelementptr i8, ptr %dev, i32 9044
  %0 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %no_of_vpath, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1662 = icmp sgt i32 %1, 0
  br i1 %cmp1662, label %sw.bb.for.body_crit_edge, label %sw.bb.for.end_crit_edge

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.01664 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %stat_size.01663 = phi i32 [ %add184, %for.body.for.body_crit_edge ], [ 32, %sw.bb.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %data, i32 %stat_size.01663
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %i.01664)
  %add4 = add i32 %stat_size.01663, 32
  %add.ptr5 = getelementptr i8, ptr %data, i32 %add4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr5, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %i.01664)
  %add7 = add i32 %stat_size.01663, 64
  %add.ptr8 = getelementptr i8, ptr %data, i32 %add7
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr8, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %i.01664)
  %add10 = add i32 %stat_size.01663, 96
  %add.ptr11 = getelementptr i8, ptr %data, i32 %add10
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr11, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %i.01664)
  %add13 = add i32 %stat_size.01663, 128
  %add.ptr14 = getelementptr i8, ptr %data, i32 %add13
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr14, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %i.01664)
  %add16 = add i32 %stat_size.01663, 160
  %add.ptr17 = getelementptr i8, ptr %data, i32 %add16
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %i.01664)
  %add19 = add i32 %stat_size.01663, 192
  %add.ptr20 = getelementptr i8, ptr %data, i32 %add19
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr20, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %i.01664)
  %add22 = add i32 %stat_size.01663, 224
  %add.ptr23 = getelementptr i8, ptr %data, i32 %add22
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr23, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %i.01664)
  %add25 = add i32 %stat_size.01663, 256
  %add.ptr26 = getelementptr i8, ptr %data, i32 %add25
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr26, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %i.01664)
  %add28 = add i32 %stat_size.01663, 288
  %add.ptr29 = getelementptr i8, ptr %data, i32 %add28
  %call30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %i.01664)
  %add31 = add i32 %stat_size.01663, 320
  %add.ptr32 = getelementptr i8, ptr %data, i32 %add31
  %call33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %i.01664)
  %add34 = add i32 %stat_size.01663, 352
  %add.ptr35 = getelementptr i8, ptr %data, i32 %add34
  %call36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr35, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %i.01664)
  %add37 = add i32 %stat_size.01663, 384
  %add.ptr38 = getelementptr i8, ptr %data, i32 %add37
  %call39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr38, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.01664)
  %add40 = add i32 %stat_size.01663, 416
  %add.ptr41 = getelementptr i8, ptr %data, i32 %add40
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr41, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %i.01664)
  %add43 = add i32 %stat_size.01663, 448
  %add.ptr44 = getelementptr i8, ptr %data, i32 %add43
  %call45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr44, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %i.01664)
  %add46 = add i32 %stat_size.01663, 480
  %add.ptr47 = getelementptr i8, ptr %data, i32 %add46
  %call48 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr47, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %i.01664)
  %add49 = add i32 %stat_size.01663, 512
  %add.ptr50 = getelementptr i8, ptr %data, i32 %add49
  %call51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr50, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %i.01664)
  %add52 = add i32 %stat_size.01663, 544
  %add.ptr53 = getelementptr i8, ptr %data, i32 %add52
  %call54 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr53, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %i.01664)
  %add55 = add i32 %stat_size.01663, 576
  %add.ptr56 = getelementptr i8, ptr %data, i32 %add55
  %call57 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr56, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.01664)
  %add58 = add i32 %stat_size.01663, 608
  %add.ptr59 = getelementptr i8, ptr %data, i32 %add58
  %call60 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr59, i32 noundef 32, ptr noundef nonnull @.str.26, i32 noundef %i.01664)
  %add61 = add i32 %stat_size.01663, 640
  %add.ptr62 = getelementptr i8, ptr %data, i32 %add61
  %call63 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr62, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %i.01664)
  %add64 = add i32 %stat_size.01663, 672
  %add.ptr65 = getelementptr i8, ptr %data, i32 %add64
  %call66 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr65, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %i.01664)
  %add67 = add i32 %stat_size.01663, 704
  %add.ptr68 = getelementptr i8, ptr %data, i32 %add67
  %call69 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %i.01664)
  %add70 = add i32 %stat_size.01663, 736
  %add.ptr71 = getelementptr i8, ptr %data, i32 %add70
  %call72 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr71, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %i.01664)
  %add73 = add i32 %stat_size.01663, 768
  %add.ptr74 = getelementptr i8, ptr %data, i32 %add73
  %call75 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr74, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %i.01664)
  %add76 = add i32 %stat_size.01663, 800
  %add.ptr77 = getelementptr i8, ptr %data, i32 %add76
  %call78 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr77, i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %i.01664)
  %add79 = add i32 %stat_size.01663, 832
  %add.ptr80 = getelementptr i8, ptr %data, i32 %add79
  %call81 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr80, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %i.01664)
  %add82 = add i32 %stat_size.01663, 864
  %add.ptr83 = getelementptr i8, ptr %data, i32 %add82
  %call84 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr83, i32 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %i.01664)
  %add85 = add i32 %stat_size.01663, 896
  %add.ptr86 = getelementptr i8, ptr %data, i32 %add85
  %call87 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr86, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %i.01664)
  %add88 = add i32 %stat_size.01663, 928
  %add.ptr89 = getelementptr i8, ptr %data, i32 %add88
  %call90 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr89, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %i.01664)
  %add91 = add i32 %stat_size.01663, 960
  %add.ptr92 = getelementptr i8, ptr %data, i32 %add91
  %call93 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr92, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef %i.01664)
  %add94 = add i32 %stat_size.01663, 992
  %add.ptr95 = getelementptr i8, ptr %data, i32 %add94
  %call96 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr95, i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %i.01664)
  %add97 = add i32 %stat_size.01663, 1024
  %add.ptr98 = getelementptr i8, ptr %data, i32 %add97
  %call99 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr98, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %i.01664)
  %add100 = add i32 %stat_size.01663, 1056
  %add.ptr101 = getelementptr i8, ptr %data, i32 %add100
  %call102 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr101, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %i.01664)
  %add103 = add i32 %stat_size.01663, 1088
  %add.ptr104 = getelementptr i8, ptr %data, i32 %add103
  %call105 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr104, i32 noundef 32, ptr noundef nonnull @.str.41, i32 noundef %i.01664)
  %add106 = add i32 %stat_size.01663, 1120
  %add.ptr107 = getelementptr i8, ptr %data, i32 %add106
  %call108 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr107, i32 noundef 32, ptr noundef nonnull @.str.42, i32 noundef %i.01664)
  %add109 = add i32 %stat_size.01663, 1152
  %add.ptr110 = getelementptr i8, ptr %data, i32 %add109
  %call111 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr110, i32 noundef 32, ptr noundef nonnull @.str.43, i32 noundef %i.01664)
  %add112 = add i32 %stat_size.01663, 1184
  %add.ptr113 = getelementptr i8, ptr %data, i32 %add112
  %call114 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr113, i32 noundef 32, ptr noundef nonnull @.str.44, i32 noundef %i.01664)
  %add115 = add i32 %stat_size.01663, 1216
  %add.ptr116 = getelementptr i8, ptr %data, i32 %add115
  %call117 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr116, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %i.01664)
  %add118 = add i32 %stat_size.01663, 1248
  %add.ptr119 = getelementptr i8, ptr %data, i32 %add118
  %call120 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr119, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %i.01664)
  %add121 = add i32 %stat_size.01663, 1280
  %add.ptr122 = getelementptr i8, ptr %data, i32 %add121
  %call123 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr122, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %i.01664)
  %add124 = add i32 %stat_size.01663, 1312
  %add.ptr125 = getelementptr i8, ptr %data, i32 %add124
  %call126 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr125, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %i.01664)
  %add127 = add i32 %stat_size.01663, 1344
  %add.ptr128 = getelementptr i8, ptr %data, i32 %add127
  %call129 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr128, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %i.01664)
  %add130 = add i32 %stat_size.01663, 1376
  %add.ptr131 = getelementptr i8, ptr %data, i32 %add130
  %call132 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr131, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %i.01664)
  %add133 = add i32 %stat_size.01663, 1408
  %add.ptr134 = getelementptr i8, ptr %data, i32 %add133
  %call135 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr134, i32 noundef 32, ptr noundef nonnull @.str.51, i32 noundef %i.01664)
  %add136 = add i32 %stat_size.01663, 1440
  %add.ptr137 = getelementptr i8, ptr %data, i32 %add136
  %call138 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr137, i32 noundef 32, ptr noundef nonnull @.str.52, i32 noundef %i.01664)
  %add139 = add i32 %stat_size.01663, 1472
  %add.ptr140 = getelementptr i8, ptr %data, i32 %add139
  %call141 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr140, i32 noundef 32, ptr noundef nonnull @.str.53, i32 noundef %i.01664)
  %add142 = add i32 %stat_size.01663, 1504
  %add.ptr143 = getelementptr i8, ptr %data, i32 %add142
  %call144 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr143, i32 noundef 32, ptr noundef nonnull @.str.54, i32 noundef %i.01664)
  %add145 = add i32 %stat_size.01663, 1536
  %add.ptr146 = getelementptr i8, ptr %data, i32 %add145
  %call147 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr146, i32 noundef 32, ptr noundef nonnull @.str.55, i32 noundef %i.01664)
  %add148 = add i32 %stat_size.01663, 1568
  %add.ptr149 = getelementptr i8, ptr %data, i32 %add148
  %call150 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr149, i32 noundef 32, ptr noundef nonnull @.str.56, i32 noundef %i.01664)
  %add151 = add i32 %stat_size.01663, 1600
  %add.ptr152 = getelementptr i8, ptr %data, i32 %add151
  %call153 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr152, i32 noundef 32, ptr noundef nonnull @.str.57, i32 noundef %i.01664)
  %add154 = add i32 %stat_size.01663, 1632
  %add.ptr155 = getelementptr i8, ptr %data, i32 %add154
  %call156 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr155, i32 noundef 32, ptr noundef nonnull @.str.58, i32 noundef %i.01664)
  %add157 = add i32 %stat_size.01663, 1664
  %add.ptr158 = getelementptr i8, ptr %data, i32 %add157
  %call159 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr158, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef %i.01664)
  %add160 = add i32 %stat_size.01663, 1696
  %add.ptr161 = getelementptr i8, ptr %data, i32 %add160
  %call162 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr161, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %i.01664)
  %add163 = add i32 %stat_size.01663, 1728
  %add.ptr164 = getelementptr i8, ptr %data, i32 %add163
  %call165 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr164, i32 noundef 32, ptr noundef nonnull @.str.61, i32 noundef %i.01664)
  %add166 = add i32 %stat_size.01663, 1760
  %add.ptr167 = getelementptr i8, ptr %data, i32 %add166
  %call168 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr167, i32 noundef 32, ptr noundef nonnull @.str.62, i32 noundef %i.01664)
  %add169 = add i32 %stat_size.01663, 1792
  %add.ptr170 = getelementptr i8, ptr %data, i32 %add169
  %call171 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr170, i32 noundef 32, ptr noundef nonnull @.str.63, i32 noundef %i.01664)
  %add172 = add i32 %stat_size.01663, 1824
  %add.ptr173 = getelementptr i8, ptr %data, i32 %add172
  %call174 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr173, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %i.01664)
  %add175 = add i32 %stat_size.01663, 1856
  %add.ptr176 = getelementptr i8, ptr %data, i32 %add175
  %call177 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr176, i32 noundef 32, ptr noundef nonnull @.str.65, i32 noundef %i.01664)
  %add178 = add i32 %stat_size.01663, 1888
  %add.ptr179 = getelementptr i8, ptr %data, i32 %add178
  %call180 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr179, i32 noundef 32, ptr noundef nonnull @.str.66, i32 noundef %i.01664)
  %add181 = add i32 %stat_size.01663, 1920
  %add.ptr182 = getelementptr i8, ptr %data, i32 %add181
  %call183 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr182, i32 noundef 32, ptr noundef nonnull @.str.67, i32 noundef %i.01664)
  %add184 = add i32 %stat_size.01663, 1952
  %inc = add nuw nsw i32 %i.01664, 1
  %2 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %no_of_vpath, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb.for.end_crit_edge
  %stat_size.0.lcssa = phi i32 [ 32, %sw.bb.for.end_crit_edge ], [ %add184, %for.body.for.end_crit_edge ]
  %add.ptr185 = getelementptr i8, ptr %data, i32 %stat_size.0.lcssa
  %call186 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr185, i32 noundef 32, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.6)
  %max_config_port = getelementptr i8, ptr %dev, i32 9276
  %stat_size.11666 = add i32 %stat_size.0.lcssa, 32
  %4 = ptrtoint ptr %max_config_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_config_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1891667 = icmp sgt i32 %5, 0
  br i1 %cmp1891667, label %for.end.for.body190_crit_edge, label %for.end.for.end232_crit_edge

for.end.for.end232_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end232

for.end.for.body190_crit_edge:                    ; preds = %for.end
  br label %for.body190

for.body190:                                      ; preds = %for.body190.for.body190_crit_edge, %for.end.for.body190_crit_edge
  %stat_size.11670 = phi i32 [ %stat_size.1, %for.body190.for.body190_crit_edge ], [ %stat_size.11666, %for.end.for.body190_crit_edge ]
  %i.11669 = phi i32 [ %inc231, %for.body190.for.body190_crit_edge ], [ 0, %for.end.for.body190_crit_edge ]
  %stat_size.1.in1668 = phi i32 [ %add226, %for.body190.for.body190_crit_edge ], [ %stat_size.0.lcssa, %for.end.for.body190_crit_edge ]
  %add.ptr191 = getelementptr i8, ptr %data, i32 %stat_size.11670
  %call192 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr191, i32 noundef 32, ptr noundef nonnull @.str.69, i32 noundef %i.11669)
  %add193 = add i32 %stat_size.1.in1668, 64
  %add.ptr194 = getelementptr i8, ptr %data, i32 %add193
  %call195 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr194, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %i.11669)
  %add196 = add i32 %stat_size.1.in1668, 96
  %add.ptr197 = getelementptr i8, ptr %data, i32 %add196
  %call198 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr197, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %i.11669)
  %add199 = add i32 %stat_size.1.in1668, 128
  %add.ptr200 = getelementptr i8, ptr %data, i32 %add199
  %call201 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr200, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %i.11669)
  %add202 = add i32 %stat_size.1.in1668, 160
  %add.ptr203 = getelementptr i8, ptr %data, i32 %add202
  %call204 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr203, i32 noundef 32, ptr noundef nonnull @.str.70, i32 noundef %i.11669)
  %add205 = add i32 %stat_size.1.in1668, 192
  %add.ptr206 = getelementptr i8, ptr %data, i32 %add205
  %call207 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr206, i32 noundef 32, ptr noundef nonnull @.str.71, i32 noundef %i.11669)
  %add208 = add i32 %stat_size.1.in1668, 224
  %add.ptr209 = getelementptr i8, ptr %data, i32 %add208
  %call210 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr209, i32 noundef 32, ptr noundef nonnull @.str.72, i32 noundef %i.11669)
  %add211 = add i32 %stat_size.1.in1668, 256
  %add.ptr212 = getelementptr i8, ptr %data, i32 %add211
  %call213 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr212, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %i.11669)
  %add214 = add i32 %stat_size.1.in1668, 288
  %add.ptr215 = getelementptr i8, ptr %data, i32 %add214
  %call216 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr215, i32 noundef 32, ptr noundef nonnull @.str.73, i32 noundef %i.11669)
  %add217 = add i32 %stat_size.1.in1668, 320
  %add.ptr218 = getelementptr i8, ptr %data, i32 %add217
  %call219 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr218, i32 noundef 32, ptr noundef nonnull @.str.74, i32 noundef %i.11669)
  %add220 = add i32 %stat_size.1.in1668, 352
  %add.ptr221 = getelementptr i8, ptr %data, i32 %add220
  %call222 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr221, i32 noundef 32, ptr noundef nonnull @.str.75, i32 noundef %i.11669)
  %add223 = add i32 %stat_size.1.in1668, 384
  %add.ptr224 = getelementptr i8, ptr %data, i32 %add223
  %call225 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr224, i32 noundef 32, ptr noundef nonnull @.str.76, i32 noundef %i.11669)
  %add226 = add i32 %stat_size.1.in1668, 416
  %add.ptr227 = getelementptr i8, ptr %data, i32 %add226
  %call228 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr227, i32 noundef 32, ptr noundef nonnull @.str.77, i32 noundef %i.11669)
  %inc231 = add nuw nsw i32 %i.11669, 1
  %stat_size.1 = add i32 %stat_size.1.in1668, 448
  %6 = ptrtoint ptr %max_config_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_config_port, align 4
  %cmp189 = icmp slt i32 %inc231, %7
  br i1 %cmp189, label %for.body190.for.body190_crit_edge, label %for.body190.for.end232_crit_edge

for.body190.for.end232_crit_edge:                 ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end232

for.body190.for.body190_crit_edge:                ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body190

for.end232:                                       ; preds = %for.body190.for.end232_crit_edge, %for.end.for.end232_crit_edge
  %stat_size.1.in.lcssa = phi i32 [ %stat_size.0.lcssa, %for.end.for.end232_crit_edge ], [ %add226, %for.body190.for.end232_crit_edge ]
  %stat_size.1.lcssa = phi i32 [ %stat_size.11666, %for.end.for.end232_crit_edge ], [ %stat_size.1, %for.body190.for.end232_crit_edge ]
  %add.ptr233 = getelementptr i8, ptr %data, i32 %stat_size.1.lcssa
  %call234 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr233, i32 noundef 32, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.6)
  %add235 = add i32 %stat_size.1.in.lcssa, 64
  %8 = ptrtoint ptr %max_config_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_config_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2381674 = icmp sgt i32 %9, 0
  br i1 %cmp2381674, label %for.end232.for.body239_crit_edge, label %for.end232.for.end524_crit_edge

for.end232.for.end524_crit_edge:                  ; preds = %for.end232
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end524

for.end232.for.body239_crit_edge:                 ; preds = %for.end232
  br label %for.body239

for.body239:                                      ; preds = %for.body239.for.body239_crit_edge, %for.end232.for.body239_crit_edge
  %i.21676 = phi i32 [ %inc523, %for.body239.for.body239_crit_edge ], [ 0, %for.end232.for.body239_crit_edge ]
  %stat_size.21675 = phi i32 [ %add521, %for.body239.for.body239_crit_edge ], [ %add235, %for.end232.for.body239_crit_edge ]
  %add.ptr240 = getelementptr i8, ptr %data, i32 %stat_size.21675
  %call241 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr240, i32 noundef 32, ptr noundef nonnull @.str.79, i32 noundef %i.21676)
  %add242 = add i32 %stat_size.21675, 32
  %add.ptr243 = getelementptr i8, ptr %data, i32 %add242
  %call244 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr243, i32 noundef 32, ptr noundef nonnull @.str.80, i32 noundef %i.21676)
  %add245 = add i32 %stat_size.21675, 64
  %add.ptr246 = getelementptr i8, ptr %data, i32 %add245
  %call247 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr246, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %i.21676)
  %add248 = add i32 %stat_size.21675, 96
  %add.ptr249 = getelementptr i8, ptr %data, i32 %add248
  %call250 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr249, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %i.21676)
  %add251 = add i32 %stat_size.21675, 128
  %add.ptr252 = getelementptr i8, ptr %data, i32 %add251
  %call253 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr252, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %i.21676)
  %add254 = add i32 %stat_size.21675, 160
  %add.ptr255 = getelementptr i8, ptr %data, i32 %add254
  %call256 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr255, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %i.21676)
  %add257 = add i32 %stat_size.21675, 192
  %add.ptr258 = getelementptr i8, ptr %data, i32 %add257
  %call259 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr258, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %i.21676)
  %add260 = add i32 %stat_size.21675, 224
  %add.ptr261 = getelementptr i8, ptr %data, i32 %add260
  %call262 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr261, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %i.21676)
  %add263 = add i32 %stat_size.21675, 256
  %add.ptr264 = getelementptr i8, ptr %data, i32 %add263
  %call265 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr264, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %i.21676)
  %add266 = add i32 %stat_size.21675, 288
  %add.ptr267 = getelementptr i8, ptr %data, i32 %add266
  %call268 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr267, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %i.21676)
  %add269 = add i32 %stat_size.21675, 320
  %add.ptr270 = getelementptr i8, ptr %data, i32 %add269
  %call271 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr270, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %i.21676)
  %add272 = add i32 %stat_size.21675, 352
  %add.ptr273 = getelementptr i8, ptr %data, i32 %add272
  %call274 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr273, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %i.21676)
  %add275 = add i32 %stat_size.21675, 384
  %add.ptr276 = getelementptr i8, ptr %data, i32 %add275
  %call277 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr276, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.21676)
  %add278 = add i32 %stat_size.21675, 416
  %add.ptr279 = getelementptr i8, ptr %data, i32 %add278
  %call280 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr279, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %i.21676)
  %add281 = add i32 %stat_size.21675, 448
  %add.ptr282 = getelementptr i8, ptr %data, i32 %add281
  %call283 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr282, i32 noundef 32, ptr noundef nonnull @.str.81, i32 noundef %i.21676)
  %add284 = add i32 %stat_size.21675, 480
  %add.ptr285 = getelementptr i8, ptr %data, i32 %add284
  %call286 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr285, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %i.21676)
  %add287 = add i32 %stat_size.21675, 512
  %add.ptr288 = getelementptr i8, ptr %data, i32 %add287
  %call289 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr288, i32 noundef 32, ptr noundef nonnull @.str.83, i32 noundef %i.21676)
  %add290 = add i32 %stat_size.21675, 544
  %add.ptr291 = getelementptr i8, ptr %data, i32 %add290
  %call292 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr291, i32 noundef 32, ptr noundef nonnull @.str.84, i32 noundef %i.21676)
  %add293 = add i32 %stat_size.21675, 576
  %add.ptr294 = getelementptr i8, ptr %data, i32 %add293
  %call295 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr294, i32 noundef 32, ptr noundef nonnull @.str.85, i32 noundef %i.21676)
  %add296 = add i32 %stat_size.21675, 608
  %add.ptr297 = getelementptr i8, ptr %data, i32 %add296
  %call298 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr297, i32 noundef 32, ptr noundef nonnull @.str.86, i32 noundef %i.21676)
  %add299 = add i32 %stat_size.21675, 640
  %add.ptr300 = getelementptr i8, ptr %data, i32 %add299
  %call301 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr300, i32 noundef 32, ptr noundef nonnull @.str.87, i32 noundef %i.21676)
  %add302 = add i32 %stat_size.21675, 672
  %add.ptr303 = getelementptr i8, ptr %data, i32 %add302
  %call304 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr303, i32 noundef 32, ptr noundef nonnull @.str.88, i32 noundef %i.21676)
  %add305 = add i32 %stat_size.21675, 704
  %add.ptr306 = getelementptr i8, ptr %data, i32 %add305
  %call307 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr306, i32 noundef 32, ptr noundef nonnull @.str.89, i32 noundef %i.21676)
  %add308 = add i32 %stat_size.21675, 736
  %add.ptr309 = getelementptr i8, ptr %data, i32 %add308
  %call310 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr309, i32 noundef 32, ptr noundef nonnull @.str.90, i32 noundef %i.21676)
  %add311 = add i32 %stat_size.21675, 768
  %add.ptr312 = getelementptr i8, ptr %data, i32 %add311
  %call313 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr312, i32 noundef 32, ptr noundef nonnull @.str.91, i32 noundef %i.21676)
  %add314 = add i32 %stat_size.21675, 800
  %add.ptr315 = getelementptr i8, ptr %data, i32 %add314
  %call316 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr315, i32 noundef 32, ptr noundef nonnull @.str.92, i32 noundef %i.21676)
  %add317 = add i32 %stat_size.21675, 832
  %add.ptr318 = getelementptr i8, ptr %data, i32 %add317
  %call319 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr318, i32 noundef 32, ptr noundef nonnull @.str.93, i32 noundef %i.21676)
  %add320 = add i32 %stat_size.21675, 864
  %add.ptr321 = getelementptr i8, ptr %data, i32 %add320
  %call322 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr321, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %i.21676)
  %add323 = add i32 %stat_size.21675, 896
  %add.ptr324 = getelementptr i8, ptr %data, i32 %add323
  %call325 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr324, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %i.21676)
  %add326 = add i32 %stat_size.21675, 928
  %add.ptr327 = getelementptr i8, ptr %data, i32 %add326
  %call328 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr327, i32 noundef 32, ptr noundef nonnull @.str.94, i32 noundef %i.21676)
  %add329 = add i32 %stat_size.21675, 960
  %add.ptr330 = getelementptr i8, ptr %data, i32 %add329
  %call331 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr330, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %i.21676)
  %add332 = add i32 %stat_size.21675, 992
  %add.ptr333 = getelementptr i8, ptr %data, i32 %add332
  %call334 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr333, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %i.21676)
  %add335 = add i32 %stat_size.21675, 1024
  %add.ptr336 = getelementptr i8, ptr %data, i32 %add335
  %call337 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr336, i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %i.21676)
  %add338 = add i32 %stat_size.21675, 1056
  %add.ptr339 = getelementptr i8, ptr %data, i32 %add338
  %call340 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr339, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %i.21676)
  %add341 = add i32 %stat_size.21675, 1088
  %add.ptr342 = getelementptr i8, ptr %data, i32 %add341
  %call343 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr342, i32 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %i.21676)
  %add344 = add i32 %stat_size.21675, 1120
  %add.ptr345 = getelementptr i8, ptr %data, i32 %add344
  %call346 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr345, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %i.21676)
  %add347 = add i32 %stat_size.21675, 1152
  %add.ptr348 = getelementptr i8, ptr %data, i32 %add347
  %call349 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr348, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %i.21676)
  %add350 = add i32 %stat_size.21675, 1184
  %add.ptr351 = getelementptr i8, ptr %data, i32 %add350
  %call352 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr351, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef %i.21676)
  %add353 = add i32 %stat_size.21675, 1216
  %add.ptr354 = getelementptr i8, ptr %data, i32 %add353
  %call355 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr354, i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %i.21676)
  %add356 = add i32 %stat_size.21675, 1248
  %add.ptr357 = getelementptr i8, ptr %data, i32 %add356
  %call358 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr357, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %i.21676)
  %add359 = add i32 %stat_size.21675, 1280
  %add.ptr360 = getelementptr i8, ptr %data, i32 %add359
  %call361 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr360, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %i.21676)
  %add362 = add i32 %stat_size.21675, 1312
  %add.ptr363 = getelementptr i8, ptr %data, i32 %add362
  %call364 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr363, i32 noundef 32, ptr noundef nonnull @.str.41, i32 noundef %i.21676)
  %add365 = add i32 %stat_size.21675, 1344
  %add.ptr366 = getelementptr i8, ptr %data, i32 %add365
  %call367 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr366, i32 noundef 32, ptr noundef nonnull @.str.42, i32 noundef %i.21676)
  %add368 = add i32 %stat_size.21675, 1376
  %add.ptr369 = getelementptr i8, ptr %data, i32 %add368
  %call370 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr369, i32 noundef 32, ptr noundef nonnull @.str.43, i32 noundef %i.21676)
  %add371 = add i32 %stat_size.21675, 1408
  %add.ptr372 = getelementptr i8, ptr %data, i32 %add371
  %call373 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr372, i32 noundef 32, ptr noundef nonnull @.str.44, i32 noundef %i.21676)
  %add374 = add i32 %stat_size.21675, 1440
  %add.ptr375 = getelementptr i8, ptr %data, i32 %add374
  %call376 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr375, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %i.21676)
  %add377 = add i32 %stat_size.21675, 1472
  %add.ptr378 = getelementptr i8, ptr %data, i32 %add377
  %call379 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr378, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %i.21676)
  %add380 = add i32 %stat_size.21675, 1504
  %add.ptr381 = getelementptr i8, ptr %data, i32 %add380
  %call382 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr381, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %i.21676)
  %add383 = add i32 %stat_size.21675, 1536
  %add.ptr384 = getelementptr i8, ptr %data, i32 %add383
  %call385 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr384, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %i.21676)
  %add386 = add i32 %stat_size.21675, 1568
  %add.ptr387 = getelementptr i8, ptr %data, i32 %add386
  %call388 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr387, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %i.21676)
  %add389 = add i32 %stat_size.21675, 1600
  %add.ptr390 = getelementptr i8, ptr %data, i32 %add389
  %call391 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr390, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %i.21676)
  %add392 = add i32 %stat_size.21675, 1632
  %add.ptr393 = getelementptr i8, ptr %data, i32 %add392
  %call394 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr393, i32 noundef 32, ptr noundef nonnull @.str.51, i32 noundef %i.21676)
  %add395 = add i32 %stat_size.21675, 1664
  %add.ptr396 = getelementptr i8, ptr %data, i32 %add395
  %call397 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr396, i32 noundef 32, ptr noundef nonnull @.str.95, i32 noundef %i.21676)
  %add398 = add i32 %stat_size.21675, 1696
  %add.ptr399 = getelementptr i8, ptr %data, i32 %add398
  %call400 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr399, i32 noundef 32, ptr noundef nonnull @.str.53, i32 noundef %i.21676)
  %add401 = add i32 %stat_size.21675, 1728
  %add.ptr402 = getelementptr i8, ptr %data, i32 %add401
  %call403 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr402, i32 noundef 32, ptr noundef nonnull @.str.96, i32 noundef %i.21676)
  %add404 = add i32 %stat_size.21675, 1760
  %add.ptr405 = getelementptr i8, ptr %data, i32 %add404
  %call406 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr405, i32 noundef 32, ptr noundef nonnull @.str.55, i32 noundef %i.21676)
  %add407 = add i32 %stat_size.21675, 1792
  %add.ptr408 = getelementptr i8, ptr %data, i32 %add407
  %call409 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr408, i32 noundef 32, ptr noundef nonnull @.str.56, i32 noundef %i.21676)
  %add410 = add i32 %stat_size.21675, 1824
  %add.ptr411 = getelementptr i8, ptr %data, i32 %add410
  %call412 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr411, i32 noundef 32, ptr noundef nonnull @.str.57, i32 noundef %i.21676)
  %add413 = add i32 %stat_size.21675, 1856
  %add.ptr414 = getelementptr i8, ptr %data, i32 %add413
  %call415 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr414, i32 noundef 32, ptr noundef nonnull @.str.58, i32 noundef %i.21676)
  %add416 = add i32 %stat_size.21675, 1888
  %add.ptr417 = getelementptr i8, ptr %data, i32 %add416
  %call418 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr417, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef %i.21676)
  %add419 = add i32 %stat_size.21675, 1920
  %add.ptr420 = getelementptr i8, ptr %data, i32 %add419
  %call421 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr420, i32 noundef 32, ptr noundef nonnull @.str.97, i32 noundef %i.21676)
  %add422 = add i32 %stat_size.21675, 1952
  %add.ptr423 = getelementptr i8, ptr %data, i32 %add422
  %call424 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr423, i32 noundef 32, ptr noundef nonnull @.str.98, i32 noundef %i.21676)
  %add425 = add i32 %stat_size.21675, 1984
  %add.ptr426 = getelementptr i8, ptr %data, i32 %add425
  %call427 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr426, i32 noundef 32, ptr noundef nonnull @.str.99, i32 noundef %i.21676)
  %add428 = add i32 %stat_size.21675, 2016
  %add.ptr429 = getelementptr i8, ptr %data, i32 %add428
  %call430 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr429, i32 noundef 32, ptr noundef nonnull @.str.100, i32 noundef %i.21676)
  %add431 = add i32 %stat_size.21675, 2048
  %add.ptr432 = getelementptr i8, ptr %data, i32 %add431
  %call433 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr432, i32 noundef 32, ptr noundef nonnull @.str.101, i32 noundef %i.21676)
  %add434 = add i32 %stat_size.21675, 2080
  %add.ptr435 = getelementptr i8, ptr %data, i32 %add434
  %call436 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr435, i32 noundef 32, ptr noundef nonnull @.str.102, i32 noundef %i.21676)
  %add437 = add i32 %stat_size.21675, 2112
  %add.ptr438 = getelementptr i8, ptr %data, i32 %add437
  %call439 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr438, i32 noundef 32, ptr noundef nonnull @.str.103, i32 noundef %i.21676)
  %add440 = add i32 %stat_size.21675, 2144
  %add.ptr441 = getelementptr i8, ptr %data, i32 %add440
  %call442 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr441, i32 noundef 32, ptr noundef nonnull @.str.104, i32 noundef %i.21676)
  %add443 = add i32 %stat_size.21675, 2176
  %add.ptr444 = getelementptr i8, ptr %data, i32 %add443
  %call445 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr444, i32 noundef 32, ptr noundef nonnull @.str.105, i32 noundef %i.21676)
  %add446 = add i32 %stat_size.21675, 2208
  %add.ptr447 = getelementptr i8, ptr %data, i32 %add446
  %call448 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr447, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %i.21676)
  %add449 = add i32 %stat_size.21675, 2240
  %add.ptr450 = getelementptr i8, ptr %data, i32 %add449
  %call451 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr450, i32 noundef 32, ptr noundef nonnull @.str.107, i32 noundef %i.21676)
  %add452 = add i32 %stat_size.21675, 2272
  %add.ptr453 = getelementptr i8, ptr %data, i32 %add452
  %call454 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr453, i32 noundef 32, ptr noundef nonnull @.str.108, i32 noundef %i.21676)
  %add455 = add i32 %stat_size.21675, 2304
  %add.ptr456 = getelementptr i8, ptr %data, i32 %add455
  %call457 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr456, i32 noundef 32, ptr noundef nonnull @.str.109, i32 noundef %i.21676)
  %add458 = add i32 %stat_size.21675, 2336
  %add.ptr459 = getelementptr i8, ptr %data, i32 %add458
  %call460 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr459, i32 noundef 32, ptr noundef nonnull @.str.110, i32 noundef %i.21676)
  %add461 = add i32 %stat_size.21675, 2368
  %add.ptr462 = getelementptr i8, ptr %data, i32 %add461
  %call463 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr462, i32 noundef 32, ptr noundef nonnull @.str.111, i32 noundef %i.21676)
  %add464 = add i32 %stat_size.21675, 2400
  %add.ptr465 = getelementptr i8, ptr %data, i32 %add464
  %call466 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr465, i32 noundef 32, ptr noundef nonnull @.str.112, i32 noundef %i.21676)
  %add467 = add i32 %stat_size.21675, 2432
  %add.ptr468 = getelementptr i8, ptr %data, i32 %add467
  %call469 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr468, i32 noundef 32, ptr noundef nonnull @.str.113, i32 noundef %i.21676)
  %add470 = add i32 %stat_size.21675, 2464
  %add.ptr471 = getelementptr i8, ptr %data, i32 %add470
  %call472 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr471, i32 noundef 32, ptr noundef nonnull @.str.114, i32 noundef %i.21676)
  %add473 = add i32 %stat_size.21675, 2496
  %add.ptr474 = getelementptr i8, ptr %data, i32 %add473
  %call475 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr474, i32 noundef 32, ptr noundef nonnull @.str.115, i32 noundef %i.21676)
  %add476 = add i32 %stat_size.21675, 2528
  %add.ptr477 = getelementptr i8, ptr %data, i32 %add476
  %call478 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr477, i32 noundef 32, ptr noundef nonnull @.str.116, i32 noundef %i.21676)
  %add479 = add i32 %stat_size.21675, 2560
  %add.ptr480 = getelementptr i8, ptr %data, i32 %add479
  %call481 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr480, i32 noundef 32, ptr noundef nonnull @.str.117, i32 noundef %i.21676)
  %add482 = add i32 %stat_size.21675, 2592
  %add.ptr483 = getelementptr i8, ptr %data, i32 %add482
  %call484 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr483, i32 noundef 32, ptr noundef nonnull @.str.118, i32 noundef %i.21676)
  %add485 = add i32 %stat_size.21675, 2624
  %add.ptr486 = getelementptr i8, ptr %data, i32 %add485
  %call487 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr486, i32 noundef 32, ptr noundef nonnull @.str.119, i32 noundef %i.21676)
  %add488 = add i32 %stat_size.21675, 2656
  %add.ptr489 = getelementptr i8, ptr %data, i32 %add488
  %call490 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr489, i32 noundef 32, ptr noundef nonnull @.str.65, i32 noundef %i.21676)
  %add491 = add i32 %stat_size.21675, 2688
  %add.ptr492 = getelementptr i8, ptr %data, i32 %add491
  %call493 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr492, i32 noundef 32, ptr noundef nonnull @.str.120, i32 noundef %i.21676)
  %add494 = add i32 %stat_size.21675, 2720
  %add.ptr495 = getelementptr i8, ptr %data, i32 %add494
  %call496 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr495, i32 noundef 32, ptr noundef nonnull @.str.121, i32 noundef %i.21676)
  %add497 = add i32 %stat_size.21675, 2752
  %add.ptr498 = getelementptr i8, ptr %data, i32 %add497
  %call499 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr498, i32 noundef 32, ptr noundef nonnull @.str.122, i32 noundef %i.21676)
  %add500 = add i32 %stat_size.21675, 2784
  %add.ptr501 = getelementptr i8, ptr %data, i32 %add500
  %call502 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr501, i32 noundef 32, ptr noundef nonnull @.str.123, i32 noundef %i.21676)
  %add503 = add i32 %stat_size.21675, 2816
  %add.ptr504 = getelementptr i8, ptr %data, i32 %add503
  %call505 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr504, i32 noundef 32, ptr noundef nonnull @.str.124, i32 noundef %i.21676)
  %add506 = add i32 %stat_size.21675, 2848
  %add.ptr507 = getelementptr i8, ptr %data, i32 %add506
  %call508 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr507, i32 noundef 32, ptr noundef nonnull @.str.125, i32 noundef %i.21676)
  %add509 = add i32 %stat_size.21675, 2880
  %add.ptr510 = getelementptr i8, ptr %data, i32 %add509
  %call511 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr510, i32 noundef 32, ptr noundef nonnull @.str.126, i32 noundef %i.21676)
  %add512 = add i32 %stat_size.21675, 2912
  %add.ptr513 = getelementptr i8, ptr %data, i32 %add512
  %call514 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr513, i32 noundef 32, ptr noundef nonnull @.str.127, i32 noundef %i.21676)
  %add515 = add i32 %stat_size.21675, 2944
  %add.ptr516 = getelementptr i8, ptr %data, i32 %add515
  %call517 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr516, i32 noundef 32, ptr noundef nonnull @.str.128, i32 noundef %i.21676)
  %add518 = add i32 %stat_size.21675, 2976
  %add.ptr519 = getelementptr i8, ptr %data, i32 %add518
  %call520 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr519, i32 noundef 32, ptr noundef nonnull @.str.129, i32 noundef %i.21676)
  %add521 = add i32 %stat_size.21675, 3008
  %inc523 = add nuw nsw i32 %i.21676, 1
  %10 = ptrtoint ptr %max_config_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_config_port, align 4
  %cmp238 = icmp slt i32 %inc523, %11
  br i1 %cmp238, label %for.body239.for.body239_crit_edge, label %for.body239.for.end524_crit_edge

for.body239.for.end524_crit_edge:                 ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end524

for.body239.for.body239_crit_edge:                ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body239

for.end524:                                       ; preds = %for.body239.for.end524_crit_edge, %for.end232.for.end524_crit_edge
  %stat_size.2.lcssa = phi i32 [ %add235, %for.end232.for.end524_crit_edge ], [ %add521, %for.body239.for.end524_crit_edge ]
  %add.ptr525 = getelementptr i8, ptr %data, i32 %stat_size.2.lcssa
  %call526 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr525, i32 noundef 32, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.6)
  %add527 = add i32 %stat_size.2.lcssa, 32
  %12 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %no_of_vpath, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5301682 = icmp sgt i32 %13, 0
  br i1 %cmp5301682, label %for.end524.for.body531_crit_edge, label %for.end524.for.end636_crit_edge

for.end524.for.end636_crit_edge:                  ; preds = %for.end524
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end636

for.end524.for.body531_crit_edge:                 ; preds = %for.end524
  br label %for.body531

for.body531:                                      ; preds = %for.body531.for.body531_crit_edge, %for.end524.for.body531_crit_edge
  %i.31684 = phi i32 [ %inc635, %for.body531.for.body531_crit_edge ], [ 0, %for.end524.for.body531_crit_edge ]
  %stat_size.31683 = phi i32 [ %add630.15, %for.body531.for.body531_crit_edge ], [ %add527, %for.end524.for.body531_crit_edge ]
  %add.ptr532 = getelementptr i8, ptr %data, i32 %stat_size.31683
  %call533 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr532, i32 noundef 32, ptr noundef nonnull @.str.131, i32 noundef %i.31684)
  %add534 = add i32 %stat_size.31683, 32
  %add.ptr535 = getelementptr i8, ptr %data, i32 %add534
  %call536 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr535, i32 noundef 32, ptr noundef nonnull @.str.132, i32 noundef %i.31684)
  %add537 = add i32 %stat_size.31683, 64
  %add.ptr538 = getelementptr i8, ptr %data, i32 %add537
  %call539 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr538, i32 noundef 32, ptr noundef nonnull @.str.133, i32 noundef %i.31684)
  %add540 = add i32 %stat_size.31683, 96
  %add.ptr541 = getelementptr i8, ptr %data, i32 %add540
  %call542 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr541, i32 noundef 32, ptr noundef nonnull @.str.134, i32 noundef %i.31684)
  %add543 = add i32 %stat_size.31683, 128
  %add.ptr544 = getelementptr i8, ptr %data, i32 %add543
  %call545 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr544, i32 noundef 32, ptr noundef nonnull @.str.135, i32 noundef %i.31684)
  %add546 = add i32 %stat_size.31683, 160
  %add.ptr547 = getelementptr i8, ptr %data, i32 %add546
  %call548 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr547, i32 noundef 32, ptr noundef nonnull @.str.136, i32 noundef %i.31684)
  %add549 = add i32 %stat_size.31683, 192
  %add.ptr550 = getelementptr i8, ptr %data, i32 %add549
  %call551 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr550, i32 noundef 32, ptr noundef nonnull @.str.137, i32 noundef %i.31684)
  %add552 = add i32 %stat_size.31683, 224
  %add.ptr553 = getelementptr i8, ptr %data, i32 %add552
  %call554 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr553, i32 noundef 32, ptr noundef nonnull @.str.138, i32 noundef %i.31684)
  %add555 = add i32 %stat_size.31683, 256
  %add.ptr556 = getelementptr i8, ptr %data, i32 %add555
  %call557 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr556, i32 noundef 32, ptr noundef nonnull @.str.139, i32 noundef %i.31684)
  %add558 = add i32 %stat_size.31683, 288
  %add.ptr559 = getelementptr i8, ptr %data, i32 %add558
  %call560 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr559, i32 noundef 32, ptr noundef nonnull @.str.140, i32 noundef %i.31684)
  %add561 = add i32 %stat_size.31683, 320
  %add.ptr562 = getelementptr i8, ptr %data, i32 %add561
  %call563 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr562, i32 noundef 32, ptr noundef nonnull @.str.141, i32 noundef %i.31684)
  %add564 = add i32 %stat_size.31683, 352
  %add.ptr565 = getelementptr i8, ptr %data, i32 %add564
  %call566 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr565, i32 noundef 32, ptr noundef nonnull @.str.142, i32 noundef %i.31684)
  %add567 = add i32 %stat_size.31683, 384
  %add.ptr568 = getelementptr i8, ptr %data, i32 %add567
  %call569 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr568, i32 noundef 32, ptr noundef nonnull @.str.143, i32 noundef %i.31684)
  %add570 = add i32 %stat_size.31683, 416
  %add.ptr571 = getelementptr i8, ptr %data, i32 %add570
  %call572 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr571, i32 noundef 32, ptr noundef nonnull @.str.144, i32 noundef %i.31684)
  %add573 = add i32 %stat_size.31683, 448
  %add.ptr574 = getelementptr i8, ptr %data, i32 %add573
  %call575 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr574, i32 noundef 32, ptr noundef nonnull @.str.145, i32 noundef %i.31684)
  %add576 = add i32 %stat_size.31683, 480
  %add.ptr577 = getelementptr i8, ptr %data, i32 %add576
  %call578 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr577, i32 noundef 32, ptr noundef nonnull @.str.146, i32 noundef %i.31684)
  %add579 = add i32 %stat_size.31683, 512
  %add.ptr580 = getelementptr i8, ptr %data, i32 %add579
  %call581 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr580, i32 noundef 32, ptr noundef nonnull @.str.147, i32 noundef %i.31684)
  %add582 = add i32 %stat_size.31683, 544
  %add.ptr583 = getelementptr i8, ptr %data, i32 %add582
  %call584 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr583, i32 noundef 32, ptr noundef nonnull @.str.148, i32 noundef %i.31684)
  %add585 = add i32 %stat_size.31683, 576
  %add.ptr586 = getelementptr i8, ptr %data, i32 %add585
  %call587 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr586, i32 noundef 32, ptr noundef nonnull @.str.149, i32 noundef %i.31684)
  %add588 = add i32 %stat_size.31683, 608
  %add.ptr589 = getelementptr i8, ptr %data, i32 %add588
  %call590 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr589, i32 noundef 32, ptr noundef nonnull @.str.150, i32 noundef %i.31684)
  %add591 = add i32 %stat_size.31683, 640
  %add.ptr592 = getelementptr i8, ptr %data, i32 %add591
  %call593 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr592, i32 noundef 32, ptr noundef nonnull @.str.151, i32 noundef %i.31684)
  %add594 = add i32 %stat_size.31683, 672
  %add.ptr598 = getelementptr i8, ptr %data, i32 %add594
  %call599 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 0, i32 noundef %i.31684)
  %add600 = add i32 %stat_size.31683, 704
  %add.ptr598.1 = getelementptr i8, ptr %data, i32 %add600
  %call599.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.1, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 1, i32 noundef %i.31684)
  %add600.1 = add i32 %stat_size.31683, 736
  %add.ptr598.2 = getelementptr i8, ptr %data, i32 %add600.1
  %call599.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.2, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 2, i32 noundef %i.31684)
  %add600.2 = add i32 %stat_size.31683, 768
  %add.ptr598.3 = getelementptr i8, ptr %data, i32 %add600.2
  %call599.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.3, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 3, i32 noundef %i.31684)
  %add600.3 = add i32 %stat_size.31683, 800
  %add.ptr598.4 = getelementptr i8, ptr %data, i32 %add600.3
  %call599.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.4, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 4, i32 noundef %i.31684)
  %add600.4 = add i32 %stat_size.31683, 832
  %add.ptr598.5 = getelementptr i8, ptr %data, i32 %add600.4
  %call599.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.5, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 5, i32 noundef %i.31684)
  %add600.5 = add i32 %stat_size.31683, 864
  %add.ptr598.6 = getelementptr i8, ptr %data, i32 %add600.5
  %call599.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.6, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 6, i32 noundef %i.31684)
  %add600.6 = add i32 %stat_size.31683, 896
  %add.ptr598.7 = getelementptr i8, ptr %data, i32 %add600.6
  %call599.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.7, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 7, i32 noundef %i.31684)
  %add600.7 = add i32 %stat_size.31683, 928
  %add.ptr598.8 = getelementptr i8, ptr %data, i32 %add600.7
  %call599.8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.8, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 8, i32 noundef %i.31684)
  %add600.8 = add i32 %stat_size.31683, 960
  %add.ptr598.9 = getelementptr i8, ptr %data, i32 %add600.8
  %call599.9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.9, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 9, i32 noundef %i.31684)
  %add600.9 = add i32 %stat_size.31683, 992
  %add.ptr598.10 = getelementptr i8, ptr %data, i32 %add600.9
  %call599.10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.10, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 10, i32 noundef %i.31684)
  %add600.10 = add i32 %stat_size.31683, 1024
  %add.ptr598.11 = getelementptr i8, ptr %data, i32 %add600.10
  %call599.11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.11, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 11, i32 noundef %i.31684)
  %add600.11 = add i32 %stat_size.31683, 1056
  %add.ptr598.12 = getelementptr i8, ptr %data, i32 %add600.11
  %call599.12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.12, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 12, i32 noundef %i.31684)
  %add600.12 = add i32 %stat_size.31683, 1088
  %add.ptr598.13 = getelementptr i8, ptr %data, i32 %add600.12
  %call599.13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.13, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 13, i32 noundef %i.31684)
  %add600.13 = add i32 %stat_size.31683, 1120
  %add.ptr598.14 = getelementptr i8, ptr %data, i32 %add600.13
  %call599.14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.14, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 14, i32 noundef %i.31684)
  %add600.14 = add i32 %stat_size.31683, 1152
  %add.ptr598.15 = getelementptr i8, ptr %data, i32 %add600.14
  %call599.15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr598.15, i32 noundef 32, ptr noundef nonnull @.str.152, i32 noundef 15, i32 noundef %i.31684)
  %add600.15 = add i32 %stat_size.31683, 1184
  %add.ptr604 = getelementptr i8, ptr %data, i32 %add600.15
  %call605 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr604, i32 noundef 32, ptr noundef nonnull @.str.153, i32 noundef %i.31684)
  %add606 = add i32 %stat_size.31683, 1216
  %add.ptr607 = getelementptr i8, ptr %data, i32 %add606
  %call608 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr607, i32 noundef 32, ptr noundef nonnull @.str.154, i32 noundef %i.31684)
  %add609 = add i32 %stat_size.31683, 1248
  %add.ptr610 = getelementptr i8, ptr %data, i32 %add609
  %call611 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr610, i32 noundef 32, ptr noundef nonnull @.str.155, i32 noundef %i.31684)
  %add612 = add i32 %stat_size.31683, 1280
  %add.ptr613 = getelementptr i8, ptr %data, i32 %add612
  %call614 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr613, i32 noundef 32, ptr noundef nonnull @.str.156, i32 noundef %i.31684)
  %add615 = add i32 %stat_size.31683, 1312
  %add.ptr616 = getelementptr i8, ptr %data, i32 %add615
  %call617 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr616, i32 noundef 32, ptr noundef nonnull @.str.157, i32 noundef %i.31684)
  %add618 = add i32 %stat_size.31683, 1344
  %add.ptr619 = getelementptr i8, ptr %data, i32 %add618
  %call620 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr619, i32 noundef 32, ptr noundef nonnull @.str.158, i32 noundef %i.31684)
  %add621 = add i32 %stat_size.31683, 1376
  %add.ptr622 = getelementptr i8, ptr %data, i32 %add621
  %call623 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr622, i32 noundef 32, ptr noundef nonnull @.str.159, i32 noundef %i.31684)
  %add624 = add i32 %stat_size.31683, 1408
  %add.ptr628 = getelementptr i8, ptr %data, i32 %add624
  %call629 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 0, i32 noundef %i.31684)
  %add630 = add i32 %stat_size.31683, 1440
  %add.ptr628.1 = getelementptr i8, ptr %data, i32 %add630
  %call629.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.1, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 1, i32 noundef %i.31684)
  %add630.1 = add i32 %stat_size.31683, 1472
  %add.ptr628.2 = getelementptr i8, ptr %data, i32 %add630.1
  %call629.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.2, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 2, i32 noundef %i.31684)
  %add630.2 = add i32 %stat_size.31683, 1504
  %add.ptr628.3 = getelementptr i8, ptr %data, i32 %add630.2
  %call629.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.3, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 3, i32 noundef %i.31684)
  %add630.3 = add i32 %stat_size.31683, 1536
  %add.ptr628.4 = getelementptr i8, ptr %data, i32 %add630.3
  %call629.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.4, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 4, i32 noundef %i.31684)
  %add630.4 = add i32 %stat_size.31683, 1568
  %add.ptr628.5 = getelementptr i8, ptr %data, i32 %add630.4
  %call629.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.5, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 5, i32 noundef %i.31684)
  %add630.5 = add i32 %stat_size.31683, 1600
  %add.ptr628.6 = getelementptr i8, ptr %data, i32 %add630.5
  %call629.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.6, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 6, i32 noundef %i.31684)
  %add630.6 = add i32 %stat_size.31683, 1632
  %add.ptr628.7 = getelementptr i8, ptr %data, i32 %add630.6
  %call629.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.7, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 7, i32 noundef %i.31684)
  %add630.7 = add i32 %stat_size.31683, 1664
  %add.ptr628.8 = getelementptr i8, ptr %data, i32 %add630.7
  %call629.8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.8, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 8, i32 noundef %i.31684)
  %add630.8 = add i32 %stat_size.31683, 1696
  %add.ptr628.9 = getelementptr i8, ptr %data, i32 %add630.8
  %call629.9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.9, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 9, i32 noundef %i.31684)
  %add630.9 = add i32 %stat_size.31683, 1728
  %add.ptr628.10 = getelementptr i8, ptr %data, i32 %add630.9
  %call629.10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.10, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 10, i32 noundef %i.31684)
  %add630.10 = add i32 %stat_size.31683, 1760
  %add.ptr628.11 = getelementptr i8, ptr %data, i32 %add630.10
  %call629.11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.11, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 11, i32 noundef %i.31684)
  %add630.11 = add i32 %stat_size.31683, 1792
  %add.ptr628.12 = getelementptr i8, ptr %data, i32 %add630.11
  %call629.12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.12, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 12, i32 noundef %i.31684)
  %add630.12 = add i32 %stat_size.31683, 1824
  %add.ptr628.13 = getelementptr i8, ptr %data, i32 %add630.12
  %call629.13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.13, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 13, i32 noundef %i.31684)
  %add630.13 = add i32 %stat_size.31683, 1856
  %add.ptr628.14 = getelementptr i8, ptr %data, i32 %add630.13
  %call629.14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.14, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 14, i32 noundef %i.31684)
  %add630.14 = add i32 %stat_size.31683, 1888
  %add.ptr628.15 = getelementptr i8, ptr %data, i32 %add630.14
  %call629.15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr628.15, i32 noundef 32, ptr noundef nonnull @.str.160, i32 noundef 15, i32 noundef %i.31684)
  %add630.15 = add i32 %stat_size.31683, 1920
  %inc635 = add nuw nsw i32 %i.31684, 1
  %14 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %no_of_vpath, align 4
  %cmp530 = icmp slt i32 %inc635, %15
  br i1 %cmp530, label %for.body531.for.body531_crit_edge, label %for.body531.for.end636_crit_edge

for.body531.for.end636_crit_edge:                 ; preds = %for.body531
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end636

for.body531.for.body531_crit_edge:                ; preds = %for.body531
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body531

for.end636:                                       ; preds = %for.body531.for.end636_crit_edge, %for.end524.for.end636_crit_edge
  %stat_size.3.lcssa = phi i32 [ %add527, %for.end524.for.end636_crit_edge ], [ %add630.15, %for.body531.for.end636_crit_edge ]
  %add.ptr637 = getelementptr i8, ptr %data, i32 %stat_size.3.lcssa
  %call638 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr637, i32 noundef 32, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.6)
  %stat_size.61686 = add i32 %stat_size.3.lcssa, 32
  %16 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %no_of_vpath, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6421687 = icmp sgt i32 %17, 0
  br i1 %cmp6421687, label %for.end636.for.body643_crit_edge, label %for.end636.for.end727_crit_edge

for.end636.for.end727_crit_edge:                  ; preds = %for.end636
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end727

for.end636.for.body643_crit_edge:                 ; preds = %for.end636
  br label %for.body643

for.body643:                                      ; preds = %for.body643.for.body643_crit_edge, %for.end636.for.body643_crit_edge
  %stat_size.61690 = phi i32 [ %stat_size.6, %for.body643.for.body643_crit_edge ], [ %stat_size.61686, %for.end636.for.body643_crit_edge ]
  %i.41689 = phi i32 [ %inc726, %for.body643.for.body643_crit_edge ], [ 0, %for.end636.for.body643_crit_edge ]
  %stat_size.6.in1688 = phi i32 [ %add721, %for.body643.for.body643_crit_edge ], [ %stat_size.3.lcssa, %for.end636.for.body643_crit_edge ]
  %add.ptr644 = getelementptr i8, ptr %data, i32 %stat_size.61690
  %call645 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr644, i32 noundef 32, ptr noundef nonnull @.str.162, i32 noundef %i.41689)
  %add646 = add i32 %stat_size.6.in1688, 64
  %add.ptr647 = getelementptr i8, ptr %data, i32 %add646
  %call648 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr647, i32 noundef 32, ptr noundef nonnull @.str.163, i32 noundef %i.41689)
  %add649 = add i32 %stat_size.6.in1688, 96
  %add.ptr650 = getelementptr i8, ptr %data, i32 %add649
  %call651 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr650, i32 noundef 32, ptr noundef nonnull @.str.164, i32 noundef %i.41689)
  %add652 = add i32 %stat_size.6.in1688, 128
  %add.ptr653 = getelementptr i8, ptr %data, i32 %add652
  %call654 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr653, i32 noundef 32, ptr noundef nonnull @.str.165, i32 noundef %i.41689)
  %add655 = add i32 %stat_size.6.in1688, 160
  %add.ptr656 = getelementptr i8, ptr %data, i32 %add655
  %call657 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr656, i32 noundef 32, ptr noundef nonnull @.str.166, i32 noundef %i.41689)
  %add658 = add i32 %stat_size.6.in1688, 192
  %add.ptr659 = getelementptr i8, ptr %data, i32 %add658
  %call660 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr659, i32 noundef 32, ptr noundef nonnull @.str.167, i32 noundef %i.41689)
  %add661 = add i32 %stat_size.6.in1688, 224
  %add.ptr662 = getelementptr i8, ptr %data, i32 %add661
  %call663 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr662, i32 noundef 32, ptr noundef nonnull @.str.168, i32 noundef %i.41689)
  %add664 = add i32 %stat_size.6.in1688, 256
  %add.ptr665 = getelementptr i8, ptr %data, i32 %add664
  %call666 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr665, i32 noundef 32, ptr noundef nonnull @.str.169, i32 noundef %i.41689)
  %add667 = add i32 %stat_size.6.in1688, 288
  %add.ptr668 = getelementptr i8, ptr %data, i32 %add667
  %call669 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr668, i32 noundef 32, ptr noundef nonnull @.str.170, i32 noundef %i.41689)
  %add670 = add i32 %stat_size.6.in1688, 320
  %add.ptr671 = getelementptr i8, ptr %data, i32 %add670
  %call672 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr671, i32 noundef 32, ptr noundef nonnull @.str.171, i32 noundef %i.41689)
  %add673 = add i32 %stat_size.6.in1688, 352
  %add.ptr674 = getelementptr i8, ptr %data, i32 %add673
  %call675 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr674, i32 noundef 32, ptr noundef nonnull @.str.172, i32 noundef %i.41689)
  %add676 = add i32 %stat_size.6.in1688, 384
  %add.ptr677 = getelementptr i8, ptr %data, i32 %add676
  %call678 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr677, i32 noundef 32, ptr noundef nonnull @.str.173, i32 noundef %i.41689)
  %add679 = add i32 %stat_size.6.in1688, 416
  %add.ptr680 = getelementptr i8, ptr %data, i32 %add679
  %call681 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr680, i32 noundef 32, ptr noundef nonnull @.str.174, i32 noundef %i.41689)
  %add682 = add i32 %stat_size.6.in1688, 448
  %add.ptr683 = getelementptr i8, ptr %data, i32 %add682
  %call684 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr683, i32 noundef 32, ptr noundef nonnull @.str.175, i32 noundef %i.41689)
  %add685 = add i32 %stat_size.6.in1688, 480
  %add.ptr686 = getelementptr i8, ptr %data, i32 %add685
  %call687 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr686, i32 noundef 32, ptr noundef nonnull @.str.176, i32 noundef %i.41689)
  %add688 = add i32 %stat_size.6.in1688, 512
  %add.ptr689 = getelementptr i8, ptr %data, i32 %add688
  %call690 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr689, i32 noundef 32, ptr noundef nonnull @.str.177, i32 noundef %i.41689)
  %add691 = add i32 %stat_size.6.in1688, 544
  %add.ptr692 = getelementptr i8, ptr %data, i32 %add691
  %call693 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr692, i32 noundef 32, ptr noundef nonnull @.str.178, i32 noundef %i.41689)
  %add694 = add i32 %stat_size.6.in1688, 576
  %add.ptr695 = getelementptr i8, ptr %data, i32 %add694
  %call696 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr695, i32 noundef 32, ptr noundef nonnull @.str.179, i32 noundef %i.41689)
  %add697 = add i32 %stat_size.6.in1688, 608
  %add.ptr698 = getelementptr i8, ptr %data, i32 %add697
  %call699 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr698, i32 noundef 32, ptr noundef nonnull @.str.180, i32 noundef %i.41689)
  %add700 = add i32 %stat_size.6.in1688, 640
  %add.ptr701 = getelementptr i8, ptr %data, i32 %add700
  %call702 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr701, i32 noundef 32, ptr noundef nonnull @.str.181, i32 noundef %i.41689)
  %add703 = add i32 %stat_size.6.in1688, 672
  %add.ptr704 = getelementptr i8, ptr %data, i32 %add703
  %call705 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr704, i32 noundef 32, ptr noundef nonnull @.str.182, i32 noundef %i.41689)
  %add706 = add i32 %stat_size.6.in1688, 704
  %add.ptr707 = getelementptr i8, ptr %data, i32 %add706
  %call708 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr707, i32 noundef 32, ptr noundef nonnull @.str.183, i32 noundef %i.41689)
  %add709 = add i32 %stat_size.6.in1688, 736
  %add.ptr710 = getelementptr i8, ptr %data, i32 %add709
  %call711 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr710, i32 noundef 32, ptr noundef nonnull @.str.184, i32 noundef %i.41689)
  %add712 = add i32 %stat_size.6.in1688, 768
  %add.ptr713 = getelementptr i8, ptr %data, i32 %add712
  %call714 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr713, i32 noundef 32, ptr noundef nonnull @.str.185, i32 noundef %i.41689)
  %add715 = add i32 %stat_size.6.in1688, 800
  %add.ptr716 = getelementptr i8, ptr %data, i32 %add715
  %call717 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr716, i32 noundef 32, ptr noundef nonnull @.str.186, i32 noundef %i.41689)
  %add718 = add i32 %stat_size.6.in1688, 832
  %add.ptr719 = getelementptr i8, ptr %data, i32 %add718
  %call720 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr719, i32 noundef 32, ptr noundef nonnull @.str.187, i32 noundef %i.41689)
  %add721 = add i32 %stat_size.6.in1688, 864
  %add.ptr722 = getelementptr i8, ptr %data, i32 %add721
  %call723 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr722, i32 noundef 32, ptr noundef nonnull @.str.188, i32 noundef %i.41689)
  %inc726 = add nuw nsw i32 %i.41689, 1
  %stat_size.6 = add i32 %stat_size.6.in1688, 896
  %18 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %no_of_vpath, align 4
  %cmp642 = icmp slt i32 %inc726, %19
  br i1 %cmp642, label %for.body643.for.body643_crit_edge, label %for.body643.for.end727_crit_edge

for.body643.for.end727_crit_edge:                 ; preds = %for.body643
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end727

for.body643.for.body643_crit_edge:                ; preds = %for.body643
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body643

for.end727:                                       ; preds = %for.body643.for.end727_crit_edge, %for.end636.for.end727_crit_edge
  %stat_size.6.lcssa = phi i32 [ %stat_size.61686, %for.end636.for.end727_crit_edge ], [ %stat_size.6, %for.body643.for.end727_crit_edge ]
  %add.ptr728 = getelementptr i8, ptr %data, i32 %stat_size.6.lcssa
  %20 = call ptr @memcpy(ptr %add.ptr728, ptr @ethtool_driver_stats_keys, i32 512)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end727, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxge_ethtool_idnic(ptr nocapture noundef readonly %dev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devh = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %devh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devh, align 8
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 0, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ 0, %sw.bb2 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %call1 = tail call i32 @vxge_hw_device_flick_link_led(ptr noundef %1, i64 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxge_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %estats, ptr noundef %tmp_stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devh = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %devh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devh, align 8
  %no_of_vpath.i = getelementptr i8, ptr %dev, i32 9044
  %2 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %no_of_vpath.i, align 4
  %max_config_port.i = getelementptr i8, ptr %dev, i32 9276
  %4 = ptrtoint ptr %max_config_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_config_port.i, align 4
  %reass.mul.i = mul i32 %3, 148
  %reass.mul24.i = mul i32 %5, 107
  %add14.i = add i32 %reass.mul.i, 21
  %add15.i = add i32 %add14.i, %reass.mul24.i
  %mul = shl i32 %add15.i, 3
  %6 = call ptr @memset(ptr %tmp_stats, i32 0, i32 %mul)
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9784, i32 noundef 3520, i32 noundef 2) #16
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, i32 noundef 251) #15
  br label %cleanup923

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4096) #17
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.190, i32 noundef 261) #15
  br label %cleanup923

if.end18:                                         ; preds = %if.end
  %call1.i.i.i1597 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10676, i32 noundef 3520, i32 noundef 2) #16
  %cmp20 = icmp eq ptr %call1.i.i.i1597, null
  br i1 %cmp20, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.190, i32 noundef 272) #15
  br label %cleanup923

if.end30:                                         ; preds = %if.end18
  %incdec.ptr = getelementptr i64, ptr %tmp_stats, i32 1
  %8 = ptrtoint ptr %tmp_stats to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %tmp_stats, align 8
  %call31 = tail call i32 @vxge_hw_device_xmac_stats_get(ptr noundef %1, ptr noundef nonnull %call1.i.i.i) #12
  %9 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call31, label %do.end39 [
    i32 0, label %if.end30.if.end45_crit_edge
    i32 217, label %if.end30.if.end45_crit_edge1633
  ]

if.end30.if.end45_crit_edge1633:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.190, i32 noundef 282) #15
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end30.if.end45_crit_edge, %if.end30.if.end45_crit_edge1633
  %call46 = tail call i32 @vxge_hw_driver_stats_get(ptr noundef %1, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end45.if.end57_crit_edge, label %do.end52

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.190, i32 noundef 289) #15
  br label %if.end57

if.end57:                                         ; preds = %do.end52, %if.end45.if.end57_crit_edge
  %call58 = tail call i32 @vxge_hw_device_stats_get(ptr noundef %1, ptr noundef nonnull %call1.i.i.i1597) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end57.if.end69_crit_edge, label %do.end64

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.190, i32 noundef 295) #15
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %if.end57.if.end69_crit_edge
  %10 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %no_of_vpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp701598 = icmp sgt i32 %11, 0
  br i1 %cmp701598, label %for.body.lr.ph, label %if.end69.for.end_crit_edge

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end69
  %vpaths = getelementptr i8, ptr %dev, i32 9280
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %k.01600 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %ptr.01599 = phi ptr [ %incdec.ptr, %for.body.lr.ph ], [ %ptr.1, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %vpaths to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vpaths, align 8
  %device_id = getelementptr %struct.vxge_vpath, ptr %13, i32 %k.01600, i32 3
  %14 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_id, align 4
  %arrayidx72 = getelementptr [17 x ptr], ptr %call1.i.i.i1597, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx72, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %18 = call ptr @memset(ptr %ptr.01599, i32 0, i32 488)
  br label %cleanup

if.end74:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %tx_stats = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20
  %19 = ptrtoint ptr %tx_stats to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %tx_stats, align 1
  %incdec.ptr75 = getelementptr i64, ptr %ptr.01599, i32 1
  %21 = ptrtoint ptr %ptr.01599 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ptr.01599, align 8
  %tx_ttl_eth_octets = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %tx_ttl_eth_octets to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %tx_ttl_eth_octets, align 1
  %incdec.ptr77 = getelementptr i64, ptr %ptr.01599, i32 2
  %24 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %incdec.ptr75, align 8
  %tx_data_octets = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 2
  %25 = ptrtoint ptr %tx_data_octets to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %tx_data_octets, align 1
  %incdec.ptr79 = getelementptr i64, ptr %ptr.01599, i32 3
  %27 = ptrtoint ptr %incdec.ptr77 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %incdec.ptr77, align 8
  %tx_mcast_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 3
  %28 = ptrtoint ptr %tx_mcast_frms to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %tx_mcast_frms, align 1
  %incdec.ptr81 = getelementptr i64, ptr %ptr.01599, i32 4
  %30 = ptrtoint ptr %incdec.ptr79 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %incdec.ptr79, align 8
  %tx_bcast_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 4
  %31 = ptrtoint ptr %tx_bcast_frms to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %tx_bcast_frms, align 1
  %incdec.ptr83 = getelementptr i64, ptr %ptr.01599, i32 5
  %33 = ptrtoint ptr %incdec.ptr81 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %incdec.ptr81, align 8
  %tx_ucast_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 5
  %34 = ptrtoint ptr %tx_ucast_frms to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %tx_ucast_frms, align 1
  %incdec.ptr85 = getelementptr i64, ptr %ptr.01599, i32 6
  %36 = ptrtoint ptr %incdec.ptr83 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %incdec.ptr83, align 8
  %tx_tagged_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 6
  %37 = ptrtoint ptr %tx_tagged_frms to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %tx_tagged_frms, align 1
  %incdec.ptr87 = getelementptr i64, ptr %ptr.01599, i32 7
  %39 = ptrtoint ptr %incdec.ptr85 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %incdec.ptr85, align 8
  %tx_vld_ip = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 7
  %40 = ptrtoint ptr %tx_vld_ip to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %tx_vld_ip, align 1
  %incdec.ptr89 = getelementptr i64, ptr %ptr.01599, i32 8
  %42 = ptrtoint ptr %incdec.ptr87 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %incdec.ptr87, align 8
  %tx_vld_ip_octets = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 8
  %43 = ptrtoint ptr %tx_vld_ip_octets to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %tx_vld_ip_octets, align 1
  %incdec.ptr91 = getelementptr i64, ptr %ptr.01599, i32 9
  %45 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %incdec.ptr89, align 8
  %tx_icmp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 9
  %46 = ptrtoint ptr %tx_icmp to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %tx_icmp, align 1
  %incdec.ptr93 = getelementptr i64, ptr %ptr.01599, i32 10
  %48 = ptrtoint ptr %incdec.ptr91 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %incdec.ptr91, align 8
  %tx_tcp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 10
  %49 = ptrtoint ptr %tx_tcp to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %tx_tcp, align 1
  %incdec.ptr95 = getelementptr i64, ptr %ptr.01599, i32 11
  %51 = ptrtoint ptr %incdec.ptr93 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %incdec.ptr93, align 8
  %tx_rst_tcp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 11
  %52 = ptrtoint ptr %tx_rst_tcp to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %tx_rst_tcp, align 1
  %incdec.ptr97 = getelementptr i64, ptr %ptr.01599, i32 12
  %54 = ptrtoint ptr %incdec.ptr95 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %incdec.ptr95, align 8
  %tx_udp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 12
  %55 = ptrtoint ptr %tx_udp to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %tx_udp, align 1
  %incdec.ptr99 = getelementptr i64, ptr %ptr.01599, i32 13
  %57 = ptrtoint ptr %incdec.ptr97 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %incdec.ptr97, align 8
  %tx_unknown_protocol = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 13
  %58 = ptrtoint ptr %tx_unknown_protocol to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %tx_unknown_protocol, align 1
  %conv = zext i32 %59 to i64
  %incdec.ptr101 = getelementptr i64, ptr %ptr.01599, i32 14
  %60 = ptrtoint ptr %incdec.ptr99 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv, ptr %incdec.ptr99, align 8
  %tx_lost_ip = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 14
  %61 = ptrtoint ptr %tx_lost_ip to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %tx_lost_ip, align 1
  %conv103 = zext i32 %62 to i64
  %incdec.ptr104 = getelementptr i64, ptr %ptr.01599, i32 15
  %63 = ptrtoint ptr %incdec.ptr101 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv103, ptr %incdec.ptr101, align 8
  %tx_parse_error = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 16
  %64 = ptrtoint ptr %tx_parse_error to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %tx_parse_error, align 1
  %conv106 = zext i32 %65 to i64
  %incdec.ptr107 = getelementptr i64, ptr %ptr.01599, i32 16
  %66 = ptrtoint ptr %incdec.ptr104 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv106, ptr %incdec.ptr104, align 8
  %tx_tcp_offload = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 17
  %67 = ptrtoint ptr %tx_tcp_offload to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %tx_tcp_offload, align 1
  %incdec.ptr109 = getelementptr i64, ptr %ptr.01599, i32 17
  %69 = ptrtoint ptr %incdec.ptr107 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %incdec.ptr107, align 8
  %tx_retx_tcp_offload = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 18
  %70 = ptrtoint ptr %tx_retx_tcp_offload to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %tx_retx_tcp_offload, align 1
  %incdec.ptr111 = getelementptr i64, ptr %ptr.01599, i32 18
  %72 = ptrtoint ptr %incdec.ptr109 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %incdec.ptr109, align 8
  %tx_lost_ip_offload = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 20, i32 19
  %73 = ptrtoint ptr %tx_lost_ip_offload to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %tx_lost_ip_offload, align 1
  %incdec.ptr113 = getelementptr i64, ptr %ptr.01599, i32 19
  %75 = ptrtoint ptr %incdec.ptr111 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %incdec.ptr111, align 8
  %rx_stats = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21
  %76 = ptrtoint ptr %rx_stats to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %rx_stats, align 1
  %incdec.ptr114 = getelementptr i64, ptr %ptr.01599, i32 20
  %78 = ptrtoint ptr %incdec.ptr113 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %incdec.ptr113, align 8
  %rx_vld_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 1
  %79 = ptrtoint ptr %rx_vld_frms to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %rx_vld_frms, align 1
  %incdec.ptr116 = getelementptr i64, ptr %ptr.01599, i32 21
  %81 = ptrtoint ptr %incdec.ptr114 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %incdec.ptr114, align 8
  %rx_offload_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 2
  %82 = ptrtoint ptr %rx_offload_frms to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %rx_offload_frms, align 1
  %incdec.ptr118 = getelementptr i64, ptr %ptr.01599, i32 22
  %84 = ptrtoint ptr %incdec.ptr116 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %incdec.ptr116, align 8
  %rx_ttl_eth_octets = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 3
  %85 = ptrtoint ptr %rx_ttl_eth_octets to i32
  call void @__asan_loadN_noabort(i32 %85, i32 8)
  %86 = load i64, ptr %rx_ttl_eth_octets, align 1
  %incdec.ptr120 = getelementptr i64, ptr %ptr.01599, i32 23
  %87 = ptrtoint ptr %incdec.ptr118 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %incdec.ptr118, align 8
  %rx_data_octets = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 4
  %88 = ptrtoint ptr %rx_data_octets to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %rx_data_octets, align 1
  %incdec.ptr122 = getelementptr i64, ptr %ptr.01599, i32 24
  %90 = ptrtoint ptr %incdec.ptr120 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %incdec.ptr120, align 8
  %rx_offload_octets = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 5
  %91 = ptrtoint ptr %rx_offload_octets to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %rx_offload_octets, align 1
  %incdec.ptr124 = getelementptr i64, ptr %ptr.01599, i32 25
  %93 = ptrtoint ptr %incdec.ptr122 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %incdec.ptr122, align 8
  %rx_vld_mcast_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 6
  %94 = ptrtoint ptr %rx_vld_mcast_frms to i32
  call void @__asan_loadN_noabort(i32 %94, i32 8)
  %95 = load i64, ptr %rx_vld_mcast_frms, align 1
  %incdec.ptr126 = getelementptr i64, ptr %ptr.01599, i32 26
  %96 = ptrtoint ptr %incdec.ptr124 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %incdec.ptr124, align 8
  %rx_vld_bcast_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 7
  %97 = ptrtoint ptr %rx_vld_bcast_frms to i32
  call void @__asan_loadN_noabort(i32 %97, i32 8)
  %98 = load i64, ptr %rx_vld_bcast_frms, align 1
  %incdec.ptr128 = getelementptr i64, ptr %ptr.01599, i32 27
  %99 = ptrtoint ptr %incdec.ptr126 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %incdec.ptr126, align 8
  %rx_accepted_ucast_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 8
  %100 = ptrtoint ptr %rx_accepted_ucast_frms to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %rx_accepted_ucast_frms, align 1
  %incdec.ptr130 = getelementptr i64, ptr %ptr.01599, i32 28
  %102 = ptrtoint ptr %incdec.ptr128 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %incdec.ptr128, align 8
  %rx_accepted_nucast_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 9
  %103 = ptrtoint ptr %rx_accepted_nucast_frms to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %rx_accepted_nucast_frms, align 1
  %incdec.ptr132 = getelementptr i64, ptr %ptr.01599, i32 29
  %105 = ptrtoint ptr %incdec.ptr130 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %incdec.ptr130, align 8
  %rx_tagged_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 10
  %106 = ptrtoint ptr %rx_tagged_frms to i32
  call void @__asan_loadN_noabort(i32 %106, i32 8)
  %107 = load i64, ptr %rx_tagged_frms, align 1
  %incdec.ptr134 = getelementptr i64, ptr %ptr.01599, i32 30
  %108 = ptrtoint ptr %incdec.ptr132 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %incdec.ptr132, align 8
  %rx_long_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 11
  %109 = ptrtoint ptr %rx_long_frms to i32
  call void @__asan_loadN_noabort(i32 %109, i32 8)
  %110 = load i64, ptr %rx_long_frms, align 1
  %incdec.ptr136 = getelementptr i64, ptr %ptr.01599, i32 31
  %111 = ptrtoint ptr %incdec.ptr134 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %incdec.ptr134, align 8
  %rx_usized_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 12
  %112 = ptrtoint ptr %rx_usized_frms to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %rx_usized_frms, align 1
  %incdec.ptr138 = getelementptr i64, ptr %ptr.01599, i32 32
  %114 = ptrtoint ptr %incdec.ptr136 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %incdec.ptr136, align 8
  %rx_osized_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 13
  %115 = ptrtoint ptr %rx_osized_frms to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %rx_osized_frms, align 1
  %incdec.ptr140 = getelementptr i64, ptr %ptr.01599, i32 33
  %117 = ptrtoint ptr %incdec.ptr138 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %incdec.ptr138, align 8
  %rx_frag_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 14
  %118 = ptrtoint ptr %rx_frag_frms to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %rx_frag_frms, align 1
  %incdec.ptr142 = getelementptr i64, ptr %ptr.01599, i32 34
  %120 = ptrtoint ptr %incdec.ptr140 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %incdec.ptr140, align 8
  %rx_jabber_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 15
  %121 = ptrtoint ptr %rx_jabber_frms to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %rx_jabber_frms, align 1
  %incdec.ptr144 = getelementptr i64, ptr %ptr.01599, i32 35
  %123 = ptrtoint ptr %incdec.ptr142 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %incdec.ptr142, align 8
  %rx_ttl_64_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 16
  %124 = ptrtoint ptr %rx_ttl_64_frms to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %125 = load i64, ptr %rx_ttl_64_frms, align 1
  %incdec.ptr146 = getelementptr i64, ptr %ptr.01599, i32 36
  %126 = ptrtoint ptr %incdec.ptr144 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %incdec.ptr144, align 8
  %rx_ttl_65_127_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 17
  %127 = ptrtoint ptr %rx_ttl_65_127_frms to i32
  call void @__asan_loadN_noabort(i32 %127, i32 8)
  %128 = load i64, ptr %rx_ttl_65_127_frms, align 1
  %incdec.ptr148 = getelementptr i64, ptr %ptr.01599, i32 37
  %129 = ptrtoint ptr %incdec.ptr146 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %incdec.ptr146, align 8
  %rx_ttl_128_255_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 18
  %130 = ptrtoint ptr %rx_ttl_128_255_frms to i32
  call void @__asan_loadN_noabort(i32 %130, i32 8)
  %131 = load i64, ptr %rx_ttl_128_255_frms, align 1
  %incdec.ptr150 = getelementptr i64, ptr %ptr.01599, i32 38
  %132 = ptrtoint ptr %incdec.ptr148 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %incdec.ptr148, align 8
  %rx_ttl_256_511_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 19
  %133 = ptrtoint ptr %rx_ttl_256_511_frms to i32
  call void @__asan_loadN_noabort(i32 %133, i32 8)
  %134 = load i64, ptr %rx_ttl_256_511_frms, align 1
  %incdec.ptr152 = getelementptr i64, ptr %ptr.01599, i32 39
  %135 = ptrtoint ptr %incdec.ptr150 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %incdec.ptr150, align 8
  %rx_ttl_512_1023_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 20
  %136 = ptrtoint ptr %rx_ttl_512_1023_frms to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %rx_ttl_512_1023_frms, align 1
  %incdec.ptr154 = getelementptr i64, ptr %ptr.01599, i32 40
  %138 = ptrtoint ptr %incdec.ptr152 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %incdec.ptr152, align 8
  %rx_ttl_1024_1518_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 21
  %139 = ptrtoint ptr %rx_ttl_1024_1518_frms to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %140 = load i64, ptr %rx_ttl_1024_1518_frms, align 1
  %incdec.ptr156 = getelementptr i64, ptr %ptr.01599, i32 41
  %141 = ptrtoint ptr %incdec.ptr154 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %incdec.ptr154, align 8
  %rx_ttl_1519_4095_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 22
  %142 = ptrtoint ptr %rx_ttl_1519_4095_frms to i32
  call void @__asan_loadN_noabort(i32 %142, i32 8)
  %143 = load i64, ptr %rx_ttl_1519_4095_frms, align 1
  %incdec.ptr158 = getelementptr i64, ptr %ptr.01599, i32 42
  %144 = ptrtoint ptr %incdec.ptr156 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %incdec.ptr156, align 8
  %rx_ttl_4096_8191_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 23
  %145 = ptrtoint ptr %rx_ttl_4096_8191_frms to i32
  call void @__asan_loadN_noabort(i32 %145, i32 8)
  %146 = load i64, ptr %rx_ttl_4096_8191_frms, align 1
  %incdec.ptr160 = getelementptr i64, ptr %ptr.01599, i32 43
  %147 = ptrtoint ptr %incdec.ptr158 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %incdec.ptr158, align 8
  %rx_ttl_8192_max_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 24
  %148 = ptrtoint ptr %rx_ttl_8192_max_frms to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %rx_ttl_8192_max_frms, align 1
  %incdec.ptr162 = getelementptr i64, ptr %ptr.01599, i32 44
  %150 = ptrtoint ptr %incdec.ptr160 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %incdec.ptr160, align 8
  %rx_ttl_gt_max_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 25
  %151 = ptrtoint ptr %rx_ttl_gt_max_frms to i32
  call void @__asan_loadN_noabort(i32 %151, i32 8)
  %152 = load i64, ptr %rx_ttl_gt_max_frms, align 1
  %incdec.ptr164 = getelementptr i64, ptr %ptr.01599, i32 45
  %153 = ptrtoint ptr %incdec.ptr162 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %incdec.ptr162, align 8
  %rx_ip = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 26
  %154 = ptrtoint ptr %rx_ip to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %rx_ip, align 1
  %incdec.ptr166 = getelementptr i64, ptr %ptr.01599, i32 46
  %156 = ptrtoint ptr %incdec.ptr164 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %incdec.ptr164, align 8
  %rx_accepted_ip = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 27
  %157 = ptrtoint ptr %rx_accepted_ip to i32
  call void @__asan_loadN_noabort(i32 %157, i32 8)
  %158 = load i64, ptr %rx_accepted_ip, align 1
  %incdec.ptr168 = getelementptr i64, ptr %ptr.01599, i32 47
  %159 = ptrtoint ptr %incdec.ptr166 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %incdec.ptr166, align 8
  %rx_ip_octets = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 28
  %160 = ptrtoint ptr %rx_ip_octets to i32
  call void @__asan_loadN_noabort(i32 %160, i32 8)
  %161 = load i64, ptr %rx_ip_octets, align 1
  %incdec.ptr170 = getelementptr i64, ptr %ptr.01599, i32 48
  %162 = ptrtoint ptr %incdec.ptr168 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %incdec.ptr168, align 8
  %rx_err_ip = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 29
  %163 = ptrtoint ptr %rx_err_ip to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %rx_err_ip, align 1
  %incdec.ptr172 = getelementptr i64, ptr %ptr.01599, i32 49
  %165 = ptrtoint ptr %incdec.ptr170 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %incdec.ptr170, align 8
  %rx_icmp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 30
  %166 = ptrtoint ptr %rx_icmp to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %167 = load i64, ptr %rx_icmp, align 1
  %incdec.ptr174 = getelementptr i64, ptr %ptr.01599, i32 50
  %168 = ptrtoint ptr %incdec.ptr172 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %incdec.ptr172, align 8
  %rx_tcp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 31
  %169 = ptrtoint ptr %rx_tcp to i32
  call void @__asan_loadN_noabort(i32 %169, i32 8)
  %170 = load i64, ptr %rx_tcp, align 1
  %incdec.ptr176 = getelementptr i64, ptr %ptr.01599, i32 51
  %171 = ptrtoint ptr %incdec.ptr174 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %incdec.ptr174, align 8
  %rx_udp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 32
  %172 = ptrtoint ptr %rx_udp to i32
  call void @__asan_loadN_noabort(i32 %172, i32 8)
  %173 = load i64, ptr %rx_udp, align 1
  %incdec.ptr178 = getelementptr i64, ptr %ptr.01599, i32 52
  %174 = ptrtoint ptr %incdec.ptr176 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %173, ptr %incdec.ptr176, align 8
  %rx_err_tcp = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 33
  %175 = ptrtoint ptr %rx_err_tcp to i32
  call void @__asan_loadN_noabort(i32 %175, i32 8)
  %176 = load i64, ptr %rx_err_tcp, align 1
  %incdec.ptr180 = getelementptr i64, ptr %ptr.01599, i32 53
  %177 = ptrtoint ptr %incdec.ptr178 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %176, ptr %incdec.ptr178, align 8
  %rx_lost_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 34
  %178 = ptrtoint ptr %rx_lost_frms to i32
  call void @__asan_loadN_noabort(i32 %178, i32 8)
  %179 = load i64, ptr %rx_lost_frms, align 1
  %incdec.ptr182 = getelementptr i64, ptr %ptr.01599, i32 54
  %180 = ptrtoint ptr %incdec.ptr180 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %incdec.ptr180, align 8
  %rx_lost_ip = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 35
  %181 = ptrtoint ptr %rx_lost_ip to i32
  call void @__asan_loadN_noabort(i32 %181, i32 8)
  %182 = load i64, ptr %rx_lost_ip, align 1
  %incdec.ptr184 = getelementptr i64, ptr %ptr.01599, i32 55
  %183 = ptrtoint ptr %incdec.ptr182 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %182, ptr %incdec.ptr182, align 8
  %rx_lost_ip_offload = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 36
  %184 = ptrtoint ptr %rx_lost_ip_offload to i32
  call void @__asan_loadN_noabort(i32 %184, i32 8)
  %185 = load i64, ptr %rx_lost_ip_offload, align 1
  %incdec.ptr186 = getelementptr i64, ptr %ptr.01599, i32 56
  %186 = ptrtoint ptr %incdec.ptr184 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %185, ptr %incdec.ptr184, align 8
  %rx_various_discard = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 37
  %187 = ptrtoint ptr %rx_various_discard to i32
  call void @__asan_loadN_noabort(i32 %187, i32 2)
  %188 = load i16, ptr %rx_various_discard, align 1
  %conv188 = zext i16 %188 to i64
  %incdec.ptr189 = getelementptr i64, ptr %ptr.01599, i32 57
  %189 = ptrtoint ptr %incdec.ptr186 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %conv188, ptr %incdec.ptr186, align 8
  %rx_sleep_discard = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 38
  %190 = ptrtoint ptr %rx_sleep_discard to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %191 = load i16, ptr %rx_sleep_discard, align 1
  %conv191 = zext i16 %191 to i64
  %incdec.ptr192 = getelementptr i64, ptr %ptr.01599, i32 58
  %192 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %conv191, ptr %incdec.ptr189, align 8
  %rx_red_discard = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 39
  %193 = ptrtoint ptr %rx_red_discard to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %rx_red_discard, align 1
  %conv194 = zext i16 %194 to i64
  %incdec.ptr195 = getelementptr i64, ptr %ptr.01599, i32 59
  %195 = ptrtoint ptr %incdec.ptr192 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv194, ptr %incdec.ptr192, align 8
  %rx_queue_full_discard = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 40
  %196 = ptrtoint ptr %rx_queue_full_discard to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %rx_queue_full_discard, align 1
  %conv197 = zext i16 %197 to i64
  %incdec.ptr198 = getelementptr i64, ptr %ptr.01599, i32 60
  %198 = ptrtoint ptr %incdec.ptr195 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %conv197, ptr %incdec.ptr195, align 8
  %rx_mpa_ok_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %17, i32 0, i32 21, i32 41
  %199 = ptrtoint ptr %rx_mpa_ok_frms to i32
  call void @__asan_loadN_noabort(i32 %199, i32 8)
  %200 = load i64, ptr %rx_mpa_ok_frms, align 1
  %201 = ptrtoint ptr %incdec.ptr198 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %200, ptr %incdec.ptr198, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then73
  %ptr.1 = getelementptr i64, ptr %ptr.01599, i32 61
  %inc = add nuw nsw i32 %k.01600, 1
  %202 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %no_of_vpath.i, align 4
  %cmp70 = icmp slt i32 %inc, %203
  br i1 %cmp70, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end69.for.end_crit_edge
  %ptr.0.lcssa = phi ptr [ %incdec.ptr, %if.end69.for.end_crit_edge ], [ %ptr.1, %cleanup.for.end_crit_edge ]
  %204 = ptrtoint ptr %ptr.0.lcssa to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 0, ptr %ptr.0.lcssa, align 8
  %ptr.21602 = getelementptr i64, ptr %ptr.0.lcssa, i32 1
  %205 = ptrtoint ptr %max_config_port.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %max_config_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp2031603 = icmp sgt i32 %206, 0
  br i1 %cmp2031603, label %for.end.for.body205_crit_edge, label %for.end.for.end250_crit_edge

for.end.for.end250_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end250

for.end.for.body205_crit_edge:                    ; preds = %for.end
  br label %for.body205

for.body205:                                      ; preds = %for.body205.for.body205_crit_edge, %for.end.for.body205_crit_edge
  %ptr.21606 = phi ptr [ %ptr.2, %for.body205.for.body205_crit_edge ], [ %ptr.21602, %for.end.for.body205_crit_edge ]
  %k.11605 = phi i32 [ %inc249, %for.body205.for.body205_crit_edge ], [ 0, %for.end.for.body205_crit_edge ]
  %ptr.0.pn1604 = phi ptr [ %incdec.ptr244, %for.body205.for.body205_crit_edge ], [ %ptr.0.lcssa, %for.end.for.body205_crit_edge ]
  %arrayidx206 = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605
  %207 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %arrayidx206, align 8
  %incdec.ptr207 = getelementptr i64, ptr %ptr.0.pn1604, i32 2
  %209 = ptrtoint ptr %ptr.21606 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %ptr.21606, align 8
  %tx_data_octets210 = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 1
  %210 = ptrtoint ptr %tx_data_octets210 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %tx_data_octets210, align 8
  %incdec.ptr211 = getelementptr i64, ptr %ptr.0.pn1604, i32 3
  %212 = ptrtoint ptr %incdec.ptr207 to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %211, ptr %incdec.ptr207, align 8
  %tx_mcast_frms214 = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 2
  %213 = ptrtoint ptr %tx_mcast_frms214 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %tx_mcast_frms214, align 8
  %incdec.ptr215 = getelementptr i64, ptr %ptr.0.pn1604, i32 4
  %215 = ptrtoint ptr %incdec.ptr211 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %214, ptr %incdec.ptr211, align 8
  %tx_bcast_frms218 = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 3
  %216 = ptrtoint ptr %tx_bcast_frms218 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %tx_bcast_frms218, align 8
  %incdec.ptr219 = getelementptr i64, ptr %ptr.0.pn1604, i32 5
  %218 = ptrtoint ptr %incdec.ptr215 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %217, ptr %incdec.ptr215, align 8
  %tx_discarded_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 4
  %219 = ptrtoint ptr %tx_discarded_frms to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %tx_discarded_frms, align 8
  %incdec.ptr222 = getelementptr i64, ptr %ptr.0.pn1604, i32 6
  %221 = ptrtoint ptr %incdec.ptr219 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %220, ptr %incdec.ptr219, align 8
  %tx_errored_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 5
  %222 = ptrtoint ptr %tx_errored_frms to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %tx_errored_frms, align 8
  %incdec.ptr225 = getelementptr i64, ptr %ptr.0.pn1604, i32 7
  %224 = ptrtoint ptr %incdec.ptr222 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %223, ptr %incdec.ptr222, align 8
  %rx_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 6
  %225 = ptrtoint ptr %rx_frms to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %rx_frms, align 8
  %incdec.ptr228 = getelementptr i64, ptr %ptr.0.pn1604, i32 8
  %227 = ptrtoint ptr %incdec.ptr225 to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %226, ptr %incdec.ptr225, align 8
  %rx_data_octets231 = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 7
  %228 = ptrtoint ptr %rx_data_octets231 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %rx_data_octets231, align 8
  %incdec.ptr232 = getelementptr i64, ptr %ptr.0.pn1604, i32 9
  %230 = ptrtoint ptr %incdec.ptr228 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %incdec.ptr228, align 8
  %rx_mcast_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 8
  %231 = ptrtoint ptr %rx_mcast_frms to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %rx_mcast_frms, align 8
  %incdec.ptr235 = getelementptr i64, ptr %ptr.0.pn1604, i32 10
  %233 = ptrtoint ptr %incdec.ptr232 to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 %232, ptr %incdec.ptr232, align 8
  %rx_bcast_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 9
  %234 = ptrtoint ptr %rx_bcast_frms to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %rx_bcast_frms, align 8
  %incdec.ptr238 = getelementptr i64, ptr %ptr.0.pn1604, i32 11
  %236 = ptrtoint ptr %incdec.ptr235 to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 %235, ptr %incdec.ptr235, align 8
  %rx_discarded_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 10
  %237 = ptrtoint ptr %rx_discarded_frms to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %rx_discarded_frms, align 8
  %incdec.ptr241 = getelementptr i64, ptr %ptr.0.pn1604, i32 12
  %239 = ptrtoint ptr %incdec.ptr238 to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %238, ptr %incdec.ptr238, align 8
  %rx_errored_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 11
  %240 = ptrtoint ptr %rx_errored_frms to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %rx_errored_frms, align 8
  %incdec.ptr244 = getelementptr i64, ptr %ptr.0.pn1604, i32 13
  %242 = ptrtoint ptr %incdec.ptr241 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %incdec.ptr241, align 8
  %rx_unknown_slow_proto_frms = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %call1.i.i.i, i32 0, i32 %k.11605, i32 12
  %243 = ptrtoint ptr %rx_unknown_slow_proto_frms to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %rx_unknown_slow_proto_frms, align 8
  %245 = ptrtoint ptr %incdec.ptr244 to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %244, ptr %incdec.ptr244, align 8
  %inc249 = add nuw nsw i32 %k.11605, 1
  %ptr.2 = getelementptr i64, ptr %ptr.0.pn1604, i32 14
  %246 = ptrtoint ptr %max_config_port.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %max_config_port.i, align 4
  %cmp203 = icmp slt i32 %inc249, %247
  br i1 %cmp203, label %for.body205.for.body205_crit_edge, label %for.body205.for.end250_crit_edge

for.body205.for.end250_crit_edge:                 ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end250

for.body205.for.body205_crit_edge:                ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body205

for.end250:                                       ; preds = %for.body205.for.end250_crit_edge, %for.end.for.end250_crit_edge
  %ptr.0.pn.lcssa = phi ptr [ %ptr.0.lcssa, %for.end.for.end250_crit_edge ], [ %incdec.ptr244, %for.body205.for.end250_crit_edge ]
  %ptr.2.lcssa = phi ptr [ %ptr.21602, %for.end.for.end250_crit_edge ], [ %ptr.2, %for.body205.for.end250_crit_edge ]
  %incdec.ptr251 = getelementptr i64, ptr %ptr.0.pn.lcssa, i32 2
  %248 = ptrtoint ptr %ptr.2.lcssa to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 0, ptr %ptr.2.lcssa, align 8
  %249 = ptrtoint ptr %max_config_port.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %max_config_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp2541610 = icmp sgt i32 %250, 0
  br i1 %cmp2541610, label %for.end250.for.body256_crit_edge, label %for.end250.for.end623_crit_edge

for.end250.for.end623_crit_edge:                  ; preds = %for.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end623

for.end250.for.body256_crit_edge:                 ; preds = %for.end250
  br label %for.body256

for.body256:                                      ; preds = %for.body256.for.body256_crit_edge, %for.end250.for.body256_crit_edge
  %k.21612 = phi i32 [ %inc622, %for.body256.for.body256_crit_edge ], [ 0, %for.end250.for.body256_crit_edge ]
  %ptr.31611 = phi ptr [ %incdec.ptr620, %for.body256.for.body256_crit_edge ], [ %incdec.ptr251, %for.end250.for.body256_crit_edge ]
  %arrayidx257 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612
  %251 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %arrayidx257, align 16
  %incdec.ptr258 = getelementptr i64, ptr %ptr.31611, i32 1
  %253 = ptrtoint ptr %ptr.31611 to i32
  call void @__asan_store8_noabort(i32 %253)
  store i64 %252, ptr %ptr.31611, align 8
  %tx_ttl_octets = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 1
  %254 = ptrtoint ptr %tx_ttl_octets to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %tx_ttl_octets, align 8
  %incdec.ptr261 = getelementptr i64, ptr %ptr.31611, i32 2
  %256 = ptrtoint ptr %incdec.ptr258 to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %incdec.ptr258, align 8
  %tx_data_octets264 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 2
  %257 = ptrtoint ptr %tx_data_octets264 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %tx_data_octets264, align 32
  %incdec.ptr265 = getelementptr i64, ptr %ptr.31611, i32 3
  %259 = ptrtoint ptr %incdec.ptr261 to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %258, ptr %incdec.ptr261, align 8
  %tx_mcast_frms268 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 3
  %260 = ptrtoint ptr %tx_mcast_frms268 to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %tx_mcast_frms268, align 8
  %incdec.ptr269 = getelementptr i64, ptr %ptr.31611, i32 4
  %262 = ptrtoint ptr %incdec.ptr265 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %261, ptr %incdec.ptr265, align 8
  %tx_bcast_frms272 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 4
  %263 = ptrtoint ptr %tx_bcast_frms272 to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %tx_bcast_frms272, align 16
  %incdec.ptr273 = getelementptr i64, ptr %ptr.31611, i32 5
  %265 = ptrtoint ptr %incdec.ptr269 to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %264, ptr %incdec.ptr269, align 8
  %tx_ucast_frms276 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 5
  %266 = ptrtoint ptr %tx_ucast_frms276 to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %tx_ucast_frms276, align 8
  %incdec.ptr277 = getelementptr i64, ptr %ptr.31611, i32 6
  %268 = ptrtoint ptr %incdec.ptr273 to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %267, ptr %incdec.ptr273, align 8
  %tx_tagged_frms280 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 6
  %269 = ptrtoint ptr %tx_tagged_frms280 to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %tx_tagged_frms280, align 32
  %incdec.ptr281 = getelementptr i64, ptr %ptr.31611, i32 7
  %271 = ptrtoint ptr %incdec.ptr277 to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %270, ptr %incdec.ptr277, align 8
  %tx_vld_ip284 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 7
  %272 = ptrtoint ptr %tx_vld_ip284 to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %tx_vld_ip284, align 8
  %incdec.ptr285 = getelementptr i64, ptr %ptr.31611, i32 8
  %274 = ptrtoint ptr %incdec.ptr281 to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 %273, ptr %incdec.ptr281, align 8
  %tx_vld_ip_octets288 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 8
  %275 = ptrtoint ptr %tx_vld_ip_octets288 to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %tx_vld_ip_octets288, align 16
  %incdec.ptr289 = getelementptr i64, ptr %ptr.31611, i32 9
  %277 = ptrtoint ptr %incdec.ptr285 to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %276, ptr %incdec.ptr285, align 8
  %tx_icmp292 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 9
  %278 = ptrtoint ptr %tx_icmp292 to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %tx_icmp292, align 8
  %incdec.ptr293 = getelementptr i64, ptr %ptr.31611, i32 10
  %280 = ptrtoint ptr %incdec.ptr289 to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %279, ptr %incdec.ptr289, align 8
  %tx_tcp296 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 10
  %281 = ptrtoint ptr %tx_tcp296 to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %tx_tcp296, align 32
  %incdec.ptr297 = getelementptr i64, ptr %ptr.31611, i32 11
  %283 = ptrtoint ptr %incdec.ptr293 to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 %282, ptr %incdec.ptr293, align 8
  %tx_rst_tcp300 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 11
  %284 = ptrtoint ptr %tx_rst_tcp300 to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %tx_rst_tcp300, align 8
  %incdec.ptr301 = getelementptr i64, ptr %ptr.31611, i32 12
  %286 = ptrtoint ptr %incdec.ptr297 to i32
  call void @__asan_store8_noabort(i32 %286)
  store i64 %285, ptr %incdec.ptr297, align 8
  %tx_udp304 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 12
  %287 = ptrtoint ptr %tx_udp304 to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %tx_udp304, align 16
  %incdec.ptr305 = getelementptr i64, ptr %ptr.31611, i32 13
  %289 = ptrtoint ptr %incdec.ptr301 to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %288, ptr %incdec.ptr301, align 8
  %tx_parse_error308 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 13
  %290 = ptrtoint ptr %tx_parse_error308 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %tx_parse_error308, align 8
  %conv309 = zext i32 %291 to i64
  %incdec.ptr310 = getelementptr i64, ptr %ptr.31611, i32 14
  %292 = ptrtoint ptr %incdec.ptr305 to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 %conv309, ptr %incdec.ptr305, align 8
  %tx_unknown_protocol313 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 14
  %293 = ptrtoint ptr %tx_unknown_protocol313 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %tx_unknown_protocol313, align 4
  %conv314 = zext i32 %294 to i64
  %incdec.ptr315 = getelementptr i64, ptr %ptr.31611, i32 15
  %295 = ptrtoint ptr %incdec.ptr310 to i32
  call void @__asan_store8_noabort(i32 %295)
  store i64 %conv314, ptr %incdec.ptr310, align 8
  %tx_pause_ctrl_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 15
  %296 = ptrtoint ptr %tx_pause_ctrl_frms to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %tx_pause_ctrl_frms, align 32
  %incdec.ptr318 = getelementptr i64, ptr %ptr.31611, i32 16
  %298 = ptrtoint ptr %incdec.ptr315 to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 %297, ptr %incdec.ptr315, align 8
  %tx_marker_pdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 16
  %299 = ptrtoint ptr %tx_marker_pdu_frms to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %tx_marker_pdu_frms, align 8
  %conv321 = zext i32 %300 to i64
  %incdec.ptr322 = getelementptr i64, ptr %ptr.31611, i32 17
  %301 = ptrtoint ptr %incdec.ptr318 to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 %conv321, ptr %incdec.ptr318, align 8
  %tx_lacpdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 17
  %302 = ptrtoint ptr %tx_lacpdu_frms to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %tx_lacpdu_frms, align 4
  %conv325 = zext i32 %303 to i64
  %incdec.ptr326 = getelementptr i64, ptr %ptr.31611, i32 18
  %304 = ptrtoint ptr %incdec.ptr322 to i32
  call void @__asan_store8_noabort(i32 %304)
  store i64 %conv325, ptr %incdec.ptr322, align 8
  %tx_drop_ip = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 18
  %305 = ptrtoint ptr %tx_drop_ip to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %tx_drop_ip, align 16
  %conv329 = zext i32 %306 to i64
  %incdec.ptr330 = getelementptr i64, ptr %ptr.31611, i32 19
  %307 = ptrtoint ptr %incdec.ptr326 to i32
  call void @__asan_store8_noabort(i32 %307)
  store i64 %conv329, ptr %incdec.ptr326, align 8
  %tx_marker_resp_pdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 19
  %308 = ptrtoint ptr %tx_marker_resp_pdu_frms to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %tx_marker_resp_pdu_frms, align 4
  %conv333 = zext i32 %309 to i64
  %incdec.ptr334 = getelementptr i64, ptr %ptr.31611, i32 20
  %310 = ptrtoint ptr %incdec.ptr330 to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %conv333, ptr %incdec.ptr330, align 8
  %tx_xgmii_char2_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 20
  %311 = ptrtoint ptr %tx_xgmii_char2_match to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %tx_xgmii_char2_match, align 8
  %conv337 = zext i32 %312 to i64
  %incdec.ptr338 = getelementptr i64, ptr %ptr.31611, i32 21
  %313 = ptrtoint ptr %incdec.ptr334 to i32
  call void @__asan_store8_noabort(i32 %313)
  store i64 %conv337, ptr %incdec.ptr334, align 8
  %tx_xgmii_char1_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 21
  %314 = ptrtoint ptr %tx_xgmii_char1_match to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %tx_xgmii_char1_match, align 4
  %conv341 = zext i32 %315 to i64
  %incdec.ptr342 = getelementptr i64, ptr %ptr.31611, i32 22
  %316 = ptrtoint ptr %incdec.ptr338 to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 %conv341, ptr %incdec.ptr338, align 8
  %tx_xgmii_column2_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 22
  %317 = ptrtoint ptr %tx_xgmii_column2_match to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %tx_xgmii_column2_match, align 32
  %conv345 = zext i32 %318 to i64
  %incdec.ptr346 = getelementptr i64, ptr %ptr.31611, i32 23
  %319 = ptrtoint ptr %incdec.ptr342 to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 %conv345, ptr %incdec.ptr342, align 8
  %tx_xgmii_column1_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 23
  %320 = ptrtoint ptr %tx_xgmii_column1_match to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %tx_xgmii_column1_match, align 4
  %conv349 = zext i32 %321 to i64
  %incdec.ptr350 = getelementptr i64, ptr %ptr.31611, i32 24
  %322 = ptrtoint ptr %incdec.ptr346 to i32
  call void @__asan_store8_noabort(i32 %322)
  store i64 %conv349, ptr %incdec.ptr346, align 8
  %tx_any_err_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 25
  %323 = ptrtoint ptr %tx_any_err_frms to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %tx_any_err_frms, align 4
  %conv353 = zext i16 %324 to i64
  %incdec.ptr354 = getelementptr i64, ptr %ptr.31611, i32 25
  %325 = ptrtoint ptr %incdec.ptr350 to i32
  call void @__asan_store8_noabort(i32 %325)
  store i64 %conv353, ptr %incdec.ptr350, align 8
  %tx_drop_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 26
  %326 = ptrtoint ptr %tx_drop_frms to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %tx_drop_frms, align 2
  %conv357 = zext i16 %327 to i64
  %incdec.ptr358 = getelementptr i64, ptr %ptr.31611, i32 26
  %328 = ptrtoint ptr %incdec.ptr354 to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %conv357, ptr %incdec.ptr354, align 8
  %rx_ttl_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 27
  %329 = ptrtoint ptr %rx_ttl_frms to i32
  call void @__asan_load8_noabort(i32 %329)
  %330 = load i64, ptr %rx_ttl_frms, align 16
  %incdec.ptr361 = getelementptr i64, ptr %ptr.31611, i32 27
  %331 = ptrtoint ptr %incdec.ptr358 to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 %330, ptr %incdec.ptr358, align 8
  %rx_vld_frms364 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 28
  %332 = ptrtoint ptr %rx_vld_frms364 to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %rx_vld_frms364, align 8
  %incdec.ptr365 = getelementptr i64, ptr %ptr.31611, i32 28
  %334 = ptrtoint ptr %incdec.ptr361 to i32
  call void @__asan_store8_noabort(i32 %334)
  store i64 %333, ptr %incdec.ptr361, align 8
  %rx_offload_frms368 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 29
  %335 = ptrtoint ptr %rx_offload_frms368 to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %rx_offload_frms368, align 32
  %incdec.ptr369 = getelementptr i64, ptr %ptr.31611, i32 29
  %337 = ptrtoint ptr %incdec.ptr365 to i32
  call void @__asan_store8_noabort(i32 %337)
  store i64 %336, ptr %incdec.ptr365, align 8
  %rx_ttl_octets = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 30
  %338 = ptrtoint ptr %rx_ttl_octets to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %rx_ttl_octets, align 8
  %incdec.ptr372 = getelementptr i64, ptr %ptr.31611, i32 30
  %340 = ptrtoint ptr %incdec.ptr369 to i32
  call void @__asan_store8_noabort(i32 %340)
  store i64 %339, ptr %incdec.ptr369, align 8
  %rx_data_octets375 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 31
  %341 = ptrtoint ptr %rx_data_octets375 to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %rx_data_octets375, align 16
  %incdec.ptr376 = getelementptr i64, ptr %ptr.31611, i32 31
  %343 = ptrtoint ptr %incdec.ptr372 to i32
  call void @__asan_store8_noabort(i32 %343)
  store i64 %342, ptr %incdec.ptr372, align 8
  %rx_offload_octets379 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 32
  %344 = ptrtoint ptr %rx_offload_octets379 to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %rx_offload_octets379, align 8
  %incdec.ptr380 = getelementptr i64, ptr %ptr.31611, i32 32
  %346 = ptrtoint ptr %incdec.ptr376 to i32
  call void @__asan_store8_noabort(i32 %346)
  store i64 %345, ptr %incdec.ptr376, align 8
  %rx_vld_mcast_frms383 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 33
  %347 = ptrtoint ptr %rx_vld_mcast_frms383 to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %rx_vld_mcast_frms383, align 32
  %incdec.ptr384 = getelementptr i64, ptr %ptr.31611, i32 33
  %349 = ptrtoint ptr %incdec.ptr380 to i32
  call void @__asan_store8_noabort(i32 %349)
  store i64 %348, ptr %incdec.ptr380, align 8
  %rx_vld_bcast_frms387 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 34
  %350 = ptrtoint ptr %rx_vld_bcast_frms387 to i32
  call void @__asan_load8_noabort(i32 %350)
  %351 = load i64, ptr %rx_vld_bcast_frms387, align 8
  %incdec.ptr388 = getelementptr i64, ptr %ptr.31611, i32 34
  %352 = ptrtoint ptr %incdec.ptr384 to i32
  call void @__asan_store8_noabort(i32 %352)
  store i64 %351, ptr %incdec.ptr384, align 8
  %rx_accepted_ucast_frms391 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 35
  %353 = ptrtoint ptr %rx_accepted_ucast_frms391 to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %rx_accepted_ucast_frms391, align 16
  %incdec.ptr392 = getelementptr i64, ptr %ptr.31611, i32 35
  %355 = ptrtoint ptr %incdec.ptr388 to i32
  call void @__asan_store8_noabort(i32 %355)
  store i64 %354, ptr %incdec.ptr388, align 8
  %rx_accepted_nucast_frms395 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 36
  %356 = ptrtoint ptr %rx_accepted_nucast_frms395 to i32
  call void @__asan_load8_noabort(i32 %356)
  %357 = load i64, ptr %rx_accepted_nucast_frms395, align 8
  %incdec.ptr396 = getelementptr i64, ptr %ptr.31611, i32 36
  %358 = ptrtoint ptr %incdec.ptr392 to i32
  call void @__asan_store8_noabort(i32 %358)
  store i64 %357, ptr %incdec.ptr392, align 8
  %rx_tagged_frms399 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 37
  %359 = ptrtoint ptr %rx_tagged_frms399 to i32
  call void @__asan_load8_noabort(i32 %359)
  %360 = load i64, ptr %rx_tagged_frms399, align 32
  %incdec.ptr400 = getelementptr i64, ptr %ptr.31611, i32 37
  %361 = ptrtoint ptr %incdec.ptr396 to i32
  call void @__asan_store8_noabort(i32 %361)
  store i64 %360, ptr %incdec.ptr396, align 8
  %rx_long_frms403 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 38
  %362 = ptrtoint ptr %rx_long_frms403 to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %rx_long_frms403, align 8
  %incdec.ptr404 = getelementptr i64, ptr %ptr.31611, i32 38
  %364 = ptrtoint ptr %incdec.ptr400 to i32
  call void @__asan_store8_noabort(i32 %364)
  store i64 %363, ptr %incdec.ptr400, align 8
  %rx_usized_frms407 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 39
  %365 = ptrtoint ptr %rx_usized_frms407 to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %rx_usized_frms407, align 16
  %incdec.ptr408 = getelementptr i64, ptr %ptr.31611, i32 39
  %367 = ptrtoint ptr %incdec.ptr404 to i32
  call void @__asan_store8_noabort(i32 %367)
  store i64 %366, ptr %incdec.ptr404, align 8
  %rx_osized_frms411 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 40
  %368 = ptrtoint ptr %rx_osized_frms411 to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %rx_osized_frms411, align 8
  %incdec.ptr412 = getelementptr i64, ptr %ptr.31611, i32 40
  %370 = ptrtoint ptr %incdec.ptr408 to i32
  call void @__asan_store8_noabort(i32 %370)
  store i64 %369, ptr %incdec.ptr408, align 8
  %rx_frag_frms415 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 41
  %371 = ptrtoint ptr %rx_frag_frms415 to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %rx_frag_frms415, align 32
  %incdec.ptr416 = getelementptr i64, ptr %ptr.31611, i32 41
  %373 = ptrtoint ptr %incdec.ptr412 to i32
  call void @__asan_store8_noabort(i32 %373)
  store i64 %372, ptr %incdec.ptr412, align 8
  %rx_jabber_frms419 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 42
  %374 = ptrtoint ptr %rx_jabber_frms419 to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %rx_jabber_frms419, align 8
  %incdec.ptr420 = getelementptr i64, ptr %ptr.31611, i32 42
  %376 = ptrtoint ptr %incdec.ptr416 to i32
  call void @__asan_store8_noabort(i32 %376)
  store i64 %375, ptr %incdec.ptr416, align 8
  %rx_ttl_64_frms423 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 43
  %377 = ptrtoint ptr %rx_ttl_64_frms423 to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %rx_ttl_64_frms423, align 16
  %incdec.ptr424 = getelementptr i64, ptr %ptr.31611, i32 43
  %379 = ptrtoint ptr %incdec.ptr420 to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 %378, ptr %incdec.ptr420, align 8
  %rx_ttl_65_127_frms427 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 44
  %380 = ptrtoint ptr %rx_ttl_65_127_frms427 to i32
  call void @__asan_load8_noabort(i32 %380)
  %381 = load i64, ptr %rx_ttl_65_127_frms427, align 8
  %incdec.ptr428 = getelementptr i64, ptr %ptr.31611, i32 44
  %382 = ptrtoint ptr %incdec.ptr424 to i32
  call void @__asan_store8_noabort(i32 %382)
  store i64 %381, ptr %incdec.ptr424, align 8
  %rx_ttl_128_255_frms431 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 45
  %383 = ptrtoint ptr %rx_ttl_128_255_frms431 to i32
  call void @__asan_load8_noabort(i32 %383)
  %384 = load i64, ptr %rx_ttl_128_255_frms431, align 32
  %incdec.ptr432 = getelementptr i64, ptr %ptr.31611, i32 45
  %385 = ptrtoint ptr %incdec.ptr428 to i32
  call void @__asan_store8_noabort(i32 %385)
  store i64 %384, ptr %incdec.ptr428, align 8
  %rx_ttl_256_511_frms435 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 46
  %386 = ptrtoint ptr %rx_ttl_256_511_frms435 to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %rx_ttl_256_511_frms435, align 8
  %incdec.ptr436 = getelementptr i64, ptr %ptr.31611, i32 46
  %388 = ptrtoint ptr %incdec.ptr432 to i32
  call void @__asan_store8_noabort(i32 %388)
  store i64 %387, ptr %incdec.ptr432, align 8
  %rx_ttl_512_1023_frms439 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 47
  %389 = ptrtoint ptr %rx_ttl_512_1023_frms439 to i32
  call void @__asan_load8_noabort(i32 %389)
  %390 = load i64, ptr %rx_ttl_512_1023_frms439, align 16
  %incdec.ptr440 = getelementptr i64, ptr %ptr.31611, i32 47
  %391 = ptrtoint ptr %incdec.ptr436 to i32
  call void @__asan_store8_noabort(i32 %391)
  store i64 %390, ptr %incdec.ptr436, align 8
  %rx_ttl_1024_1518_frms443 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 48
  %392 = ptrtoint ptr %rx_ttl_1024_1518_frms443 to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %rx_ttl_1024_1518_frms443, align 8
  %incdec.ptr444 = getelementptr i64, ptr %ptr.31611, i32 48
  %394 = ptrtoint ptr %incdec.ptr440 to i32
  call void @__asan_store8_noabort(i32 %394)
  store i64 %393, ptr %incdec.ptr440, align 8
  %rx_ttl_1519_4095_frms447 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 49
  %395 = ptrtoint ptr %rx_ttl_1519_4095_frms447 to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %rx_ttl_1519_4095_frms447, align 32
  %incdec.ptr448 = getelementptr i64, ptr %ptr.31611, i32 49
  %397 = ptrtoint ptr %incdec.ptr444 to i32
  call void @__asan_store8_noabort(i32 %397)
  store i64 %396, ptr %incdec.ptr444, align 8
  %rx_ttl_4096_8191_frms451 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 50
  %398 = ptrtoint ptr %rx_ttl_4096_8191_frms451 to i32
  call void @__asan_load8_noabort(i32 %398)
  %399 = load i64, ptr %rx_ttl_4096_8191_frms451, align 8
  %incdec.ptr452 = getelementptr i64, ptr %ptr.31611, i32 50
  %400 = ptrtoint ptr %incdec.ptr448 to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 %399, ptr %incdec.ptr448, align 8
  %rx_ttl_8192_max_frms455 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 51
  %401 = ptrtoint ptr %rx_ttl_8192_max_frms455 to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %rx_ttl_8192_max_frms455, align 16
  %incdec.ptr456 = getelementptr i64, ptr %ptr.31611, i32 51
  %403 = ptrtoint ptr %incdec.ptr452 to i32
  call void @__asan_store8_noabort(i32 %403)
  store i64 %402, ptr %incdec.ptr452, align 8
  %rx_ttl_gt_max_frms459 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 52
  %404 = ptrtoint ptr %rx_ttl_gt_max_frms459 to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %rx_ttl_gt_max_frms459, align 8
  %incdec.ptr460 = getelementptr i64, ptr %ptr.31611, i32 52
  %406 = ptrtoint ptr %incdec.ptr456 to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 %405, ptr %incdec.ptr456, align 8
  %rx_ip463 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 53
  %407 = ptrtoint ptr %rx_ip463 to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %rx_ip463, align 32
  %incdec.ptr464 = getelementptr i64, ptr %ptr.31611, i32 53
  %409 = ptrtoint ptr %incdec.ptr460 to i32
  call void @__asan_store8_noabort(i32 %409)
  store i64 %408, ptr %incdec.ptr460, align 8
  %rx_accepted_ip467 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 54
  %410 = ptrtoint ptr %rx_accepted_ip467 to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %rx_accepted_ip467, align 8
  %incdec.ptr468 = getelementptr i64, ptr %ptr.31611, i32 54
  %412 = ptrtoint ptr %incdec.ptr464 to i32
  call void @__asan_store8_noabort(i32 %412)
  store i64 %411, ptr %incdec.ptr464, align 8
  %rx_ip_octets471 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 55
  %413 = ptrtoint ptr %rx_ip_octets471 to i32
  call void @__asan_load8_noabort(i32 %413)
  %414 = load i64, ptr %rx_ip_octets471, align 16
  %incdec.ptr472 = getelementptr i64, ptr %ptr.31611, i32 55
  %415 = ptrtoint ptr %incdec.ptr468 to i32
  call void @__asan_store8_noabort(i32 %415)
  store i64 %414, ptr %incdec.ptr468, align 8
  %rx_err_ip475 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 56
  %416 = ptrtoint ptr %rx_err_ip475 to i32
  call void @__asan_load8_noabort(i32 %416)
  %417 = load i64, ptr %rx_err_ip475, align 8
  %incdec.ptr476 = getelementptr i64, ptr %ptr.31611, i32 56
  %418 = ptrtoint ptr %incdec.ptr472 to i32
  call void @__asan_store8_noabort(i32 %418)
  store i64 %417, ptr %incdec.ptr472, align 8
  %rx_icmp479 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 57
  %419 = ptrtoint ptr %rx_icmp479 to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %rx_icmp479, align 32
  %incdec.ptr480 = getelementptr i64, ptr %ptr.31611, i32 57
  %421 = ptrtoint ptr %incdec.ptr476 to i32
  call void @__asan_store8_noabort(i32 %421)
  store i64 %420, ptr %incdec.ptr476, align 8
  %rx_tcp483 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 58
  %422 = ptrtoint ptr %rx_tcp483 to i32
  call void @__asan_load8_noabort(i32 %422)
  %423 = load i64, ptr %rx_tcp483, align 8
  %incdec.ptr484 = getelementptr i64, ptr %ptr.31611, i32 58
  %424 = ptrtoint ptr %incdec.ptr480 to i32
  call void @__asan_store8_noabort(i32 %424)
  store i64 %423, ptr %incdec.ptr480, align 8
  %rx_udp487 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 59
  %425 = ptrtoint ptr %rx_udp487 to i32
  call void @__asan_load8_noabort(i32 %425)
  %426 = load i64, ptr %rx_udp487, align 16
  %incdec.ptr488 = getelementptr i64, ptr %ptr.31611, i32 59
  %427 = ptrtoint ptr %incdec.ptr484 to i32
  call void @__asan_store8_noabort(i32 %427)
  store i64 %426, ptr %incdec.ptr484, align 8
  %rx_err_tcp491 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 60
  %428 = ptrtoint ptr %rx_err_tcp491 to i32
  call void @__asan_load8_noabort(i32 %428)
  %429 = load i64, ptr %rx_err_tcp491, align 8
  %incdec.ptr492 = getelementptr i64, ptr %ptr.31611, i32 60
  %430 = ptrtoint ptr %incdec.ptr488 to i32
  call void @__asan_store8_noabort(i32 %430)
  store i64 %429, ptr %incdec.ptr488, align 8
  %rx_pause_count = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 61
  %431 = ptrtoint ptr %rx_pause_count to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %rx_pause_count, align 32
  %incdec.ptr495 = getelementptr i64, ptr %ptr.31611, i32 61
  %433 = ptrtoint ptr %incdec.ptr492 to i32
  call void @__asan_store8_noabort(i32 %433)
  store i64 %432, ptr %incdec.ptr492, align 8
  %rx_pause_ctrl_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 62
  %434 = ptrtoint ptr %rx_pause_ctrl_frms to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %rx_pause_ctrl_frms, align 8
  %incdec.ptr498 = getelementptr i64, ptr %ptr.31611, i32 62
  %436 = ptrtoint ptr %incdec.ptr495 to i32
  call void @__asan_store8_noabort(i32 %436)
  store i64 %435, ptr %incdec.ptr495, align 8
  %rx_unsup_ctrl_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 63
  %437 = ptrtoint ptr %rx_unsup_ctrl_frms to i32
  call void @__asan_load8_noabort(i32 %437)
  %438 = load i64, ptr %rx_unsup_ctrl_frms, align 16
  %incdec.ptr501 = getelementptr i64, ptr %ptr.31611, i32 63
  %439 = ptrtoint ptr %incdec.ptr498 to i32
  call void @__asan_store8_noabort(i32 %439)
  store i64 %438, ptr %incdec.ptr498, align 8
  %rx_fcs_err_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 64
  %440 = ptrtoint ptr %rx_fcs_err_frms to i32
  call void @__asan_load8_noabort(i32 %440)
  %441 = load i64, ptr %rx_fcs_err_frms, align 8
  %incdec.ptr504 = getelementptr i64, ptr %ptr.31611, i32 64
  %442 = ptrtoint ptr %incdec.ptr501 to i32
  call void @__asan_store8_noabort(i32 %442)
  store i64 %441, ptr %incdec.ptr501, align 8
  %rx_in_rng_len_err_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 65
  %443 = ptrtoint ptr %rx_in_rng_len_err_frms to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %rx_in_rng_len_err_frms, align 32
  %incdec.ptr507 = getelementptr i64, ptr %ptr.31611, i32 65
  %445 = ptrtoint ptr %incdec.ptr504 to i32
  call void @__asan_store8_noabort(i32 %445)
  store i64 %444, ptr %incdec.ptr504, align 8
  %rx_out_rng_len_err_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 66
  %446 = ptrtoint ptr %rx_out_rng_len_err_frms to i32
  call void @__asan_load8_noabort(i32 %446)
  %447 = load i64, ptr %rx_out_rng_len_err_frms, align 8
  %incdec.ptr510 = getelementptr i64, ptr %ptr.31611, i32 66
  %448 = ptrtoint ptr %incdec.ptr507 to i32
  call void @__asan_store8_noabort(i32 %448)
  store i64 %447, ptr %incdec.ptr507, align 8
  %rx_drop_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 67
  %449 = ptrtoint ptr %rx_drop_frms to i32
  call void @__asan_load8_noabort(i32 %449)
  %450 = load i64, ptr %rx_drop_frms, align 16
  %incdec.ptr513 = getelementptr i64, ptr %ptr.31611, i32 67
  %451 = ptrtoint ptr %incdec.ptr510 to i32
  call void @__asan_store8_noabort(i32 %451)
  store i64 %450, ptr %incdec.ptr510, align 8
  %rx_discarded_frms516 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 68
  %452 = ptrtoint ptr %rx_discarded_frms516 to i32
  call void @__asan_load8_noabort(i32 %452)
  %453 = load i64, ptr %rx_discarded_frms516, align 8
  %incdec.ptr517 = getelementptr i64, ptr %ptr.31611, i32 68
  %454 = ptrtoint ptr %incdec.ptr513 to i32
  call void @__asan_store8_noabort(i32 %454)
  store i64 %453, ptr %incdec.ptr513, align 8
  %rx_drop_ip = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 69
  %455 = ptrtoint ptr %rx_drop_ip to i32
  call void @__asan_load8_noabort(i32 %455)
  %456 = load i64, ptr %rx_drop_ip, align 32
  %incdec.ptr520 = getelementptr i64, ptr %ptr.31611, i32 69
  %457 = ptrtoint ptr %incdec.ptr517 to i32
  call void @__asan_store8_noabort(i32 %457)
  store i64 %456, ptr %incdec.ptr517, align 8
  %rx_drop_udp = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 70
  %458 = ptrtoint ptr %rx_drop_udp to i32
  call void @__asan_load8_noabort(i32 %458)
  %459 = load i64, ptr %rx_drop_udp, align 8
  %incdec.ptr523 = getelementptr i64, ptr %ptr.31611, i32 70
  %460 = ptrtoint ptr %incdec.ptr520 to i32
  call void @__asan_store8_noabort(i32 %460)
  store i64 %459, ptr %incdec.ptr520, align 8
  %rx_marker_pdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 71
  %461 = ptrtoint ptr %rx_marker_pdu_frms to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %rx_marker_pdu_frms, align 16
  %conv526 = zext i32 %462 to i64
  %incdec.ptr527 = getelementptr i64, ptr %ptr.31611, i32 71
  %463 = ptrtoint ptr %incdec.ptr523 to i32
  call void @__asan_store8_noabort(i32 %463)
  store i64 %conv526, ptr %incdec.ptr523, align 8
  %rx_lacpdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 72
  %464 = ptrtoint ptr %rx_lacpdu_frms to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %rx_lacpdu_frms, align 4
  %conv530 = zext i32 %465 to i64
  %incdec.ptr531 = getelementptr i64, ptr %ptr.31611, i32 72
  %466 = ptrtoint ptr %incdec.ptr527 to i32
  call void @__asan_store8_noabort(i32 %466)
  store i64 %conv530, ptr %incdec.ptr527, align 8
  %rx_unknown_pdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 73
  %467 = ptrtoint ptr %rx_unknown_pdu_frms to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %rx_unknown_pdu_frms, align 8
  %conv534 = zext i32 %468 to i64
  %incdec.ptr535 = getelementptr i64, ptr %ptr.31611, i32 73
  %469 = ptrtoint ptr %incdec.ptr531 to i32
  call void @__asan_store8_noabort(i32 %469)
  store i64 %conv534, ptr %incdec.ptr531, align 8
  %rx_marker_resp_pdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 74
  %470 = ptrtoint ptr %rx_marker_resp_pdu_frms to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %rx_marker_resp_pdu_frms, align 4
  %conv538 = zext i32 %471 to i64
  %incdec.ptr539 = getelementptr i64, ptr %ptr.31611, i32 74
  %472 = ptrtoint ptr %incdec.ptr535 to i32
  call void @__asan_store8_noabort(i32 %472)
  store i64 %conv538, ptr %incdec.ptr535, align 8
  %rx_fcs_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 75
  %473 = ptrtoint ptr %rx_fcs_discard to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %rx_fcs_discard, align 32
  %conv542 = zext i32 %474 to i64
  %incdec.ptr543 = getelementptr i64, ptr %ptr.31611, i32 75
  %475 = ptrtoint ptr %incdec.ptr539 to i32
  call void @__asan_store8_noabort(i32 %475)
  store i64 %conv542, ptr %incdec.ptr539, align 8
  %rx_illegal_pdu_frms = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 76
  %476 = ptrtoint ptr %rx_illegal_pdu_frms to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %rx_illegal_pdu_frms, align 4
  %conv546 = zext i32 %477 to i64
  %incdec.ptr547 = getelementptr i64, ptr %ptr.31611, i32 76
  %478 = ptrtoint ptr %incdec.ptr543 to i32
  call void @__asan_store8_noabort(i32 %478)
  store i64 %conv546, ptr %incdec.ptr543, align 8
  %rx_switch_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 77
  %479 = ptrtoint ptr %rx_switch_discard to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %rx_switch_discard, align 8
  %conv550 = zext i32 %480 to i64
  %incdec.ptr551 = getelementptr i64, ptr %ptr.31611, i32 77
  %481 = ptrtoint ptr %incdec.ptr547 to i32
  call void @__asan_store8_noabort(i32 %481)
  store i64 %conv550, ptr %incdec.ptr547, align 8
  %rx_len_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 78
  %482 = ptrtoint ptr %rx_len_discard to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %rx_len_discard, align 4
  %conv554 = zext i32 %483 to i64
  %incdec.ptr555 = getelementptr i64, ptr %ptr.31611, i32 78
  %484 = ptrtoint ptr %incdec.ptr551 to i32
  call void @__asan_store8_noabort(i32 %484)
  store i64 %conv554, ptr %incdec.ptr551, align 8
  %rx_rpa_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 79
  %485 = ptrtoint ptr %rx_rpa_discard to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %rx_rpa_discard, align 16
  %conv558 = zext i32 %486 to i64
  %incdec.ptr559 = getelementptr i64, ptr %ptr.31611, i32 79
  %487 = ptrtoint ptr %incdec.ptr555 to i32
  call void @__asan_store8_noabort(i32 %487)
  store i64 %conv558, ptr %incdec.ptr555, align 8
  %rx_l2_mgmt_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 80
  %488 = ptrtoint ptr %rx_l2_mgmt_discard to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %rx_l2_mgmt_discard, align 4
  %conv562 = zext i32 %489 to i64
  %incdec.ptr563 = getelementptr i64, ptr %ptr.31611, i32 80
  %490 = ptrtoint ptr %incdec.ptr559 to i32
  call void @__asan_store8_noabort(i32 %490)
  store i64 %conv562, ptr %incdec.ptr559, align 8
  %rx_rts_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 81
  %491 = ptrtoint ptr %rx_rts_discard to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %rx_rts_discard, align 8
  %conv566 = zext i32 %492 to i64
  %incdec.ptr567 = getelementptr i64, ptr %ptr.31611, i32 81
  %493 = ptrtoint ptr %incdec.ptr563 to i32
  call void @__asan_store8_noabort(i32 %493)
  store i64 %conv566, ptr %incdec.ptr563, align 8
  %rx_trash_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 82
  %494 = ptrtoint ptr %rx_trash_discard to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %rx_trash_discard, align 4
  %conv570 = zext i32 %495 to i64
  %incdec.ptr571 = getelementptr i64, ptr %ptr.31611, i32 82
  %496 = ptrtoint ptr %incdec.ptr567 to i32
  call void @__asan_store8_noabort(i32 %496)
  store i64 %conv570, ptr %incdec.ptr567, align 8
  %rx_buff_full_discard = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 83
  %497 = ptrtoint ptr %rx_buff_full_discard to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %rx_buff_full_discard, align 32
  %conv574 = zext i32 %498 to i64
  %incdec.ptr575 = getelementptr i64, ptr %ptr.31611, i32 83
  %499 = ptrtoint ptr %incdec.ptr571 to i32
  call void @__asan_store8_noabort(i32 %499)
  store i64 %conv574, ptr %incdec.ptr571, align 8
  %rx_red_discard578 = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 84
  %500 = ptrtoint ptr %rx_red_discard578 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %rx_red_discard578, align 4
  %conv579 = zext i32 %501 to i64
  %incdec.ptr580 = getelementptr i64, ptr %ptr.31611, i32 84
  %502 = ptrtoint ptr %incdec.ptr575 to i32
  call void @__asan_store8_noabort(i32 %502)
  store i64 %conv579, ptr %incdec.ptr575, align 8
  %rx_xgmii_ctrl_err_cnt = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 85
  %503 = ptrtoint ptr %rx_xgmii_ctrl_err_cnt to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %rx_xgmii_ctrl_err_cnt, align 8
  %conv583 = zext i32 %504 to i64
  %incdec.ptr584 = getelementptr i64, ptr %ptr.31611, i32 85
  %505 = ptrtoint ptr %incdec.ptr580 to i32
  call void @__asan_store8_noabort(i32 %505)
  store i64 %conv583, ptr %incdec.ptr580, align 8
  %rx_xgmii_data_err_cnt = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 86
  %506 = ptrtoint ptr %rx_xgmii_data_err_cnt to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %rx_xgmii_data_err_cnt, align 4
  %conv587 = zext i32 %507 to i64
  %incdec.ptr588 = getelementptr i64, ptr %ptr.31611, i32 86
  %508 = ptrtoint ptr %incdec.ptr584 to i32
  call void @__asan_store8_noabort(i32 %508)
  store i64 %conv587, ptr %incdec.ptr584, align 8
  %rx_xgmii_char1_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 87
  %509 = ptrtoint ptr %rx_xgmii_char1_match to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %rx_xgmii_char1_match, align 16
  %conv591 = zext i32 %510 to i64
  %incdec.ptr592 = getelementptr i64, ptr %ptr.31611, i32 87
  %511 = ptrtoint ptr %incdec.ptr588 to i32
  call void @__asan_store8_noabort(i32 %511)
  store i64 %conv591, ptr %incdec.ptr588, align 8
  %rx_xgmii_err_sym = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 88
  %512 = ptrtoint ptr %rx_xgmii_err_sym to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %rx_xgmii_err_sym, align 4
  %conv595 = zext i32 %513 to i64
  %incdec.ptr596 = getelementptr i64, ptr %ptr.31611, i32 88
  %514 = ptrtoint ptr %incdec.ptr592 to i32
  call void @__asan_store8_noabort(i32 %514)
  store i64 %conv595, ptr %incdec.ptr592, align 8
  %rx_xgmii_column1_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 89
  %515 = ptrtoint ptr %rx_xgmii_column1_match to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %rx_xgmii_column1_match, align 8
  %conv599 = zext i32 %516 to i64
  %incdec.ptr600 = getelementptr i64, ptr %ptr.31611, i32 89
  %517 = ptrtoint ptr %incdec.ptr596 to i32
  call void @__asan_store8_noabort(i32 %517)
  store i64 %conv599, ptr %incdec.ptr596, align 8
  %rx_xgmii_char2_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 90
  %518 = ptrtoint ptr %rx_xgmii_char2_match to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %rx_xgmii_char2_match, align 4
  %conv603 = zext i32 %519 to i64
  %incdec.ptr604 = getelementptr i64, ptr %ptr.31611, i32 90
  %520 = ptrtoint ptr %incdec.ptr600 to i32
  call void @__asan_store8_noabort(i32 %520)
  store i64 %conv603, ptr %incdec.ptr600, align 8
  %rx_local_fault = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 91
  %521 = ptrtoint ptr %rx_local_fault to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %rx_local_fault, align 32
  %conv607 = zext i32 %522 to i64
  %incdec.ptr608 = getelementptr i64, ptr %ptr.31611, i32 91
  %523 = ptrtoint ptr %incdec.ptr604 to i32
  call void @__asan_store8_noabort(i32 %523)
  store i64 %conv607, ptr %incdec.ptr604, align 8
  %rx_xgmii_column2_match = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 92
  %524 = ptrtoint ptr %rx_xgmii_column2_match to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %rx_xgmii_column2_match, align 4
  %conv611 = zext i32 %525 to i64
  %incdec.ptr612 = getelementptr i64, ptr %ptr.31611, i32 92
  %526 = ptrtoint ptr %incdec.ptr608 to i32
  call void @__asan_store8_noabort(i32 %526)
  store i64 %conv611, ptr %incdec.ptr608, align 8
  %rx_jettison = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 93
  %527 = ptrtoint ptr %rx_jettison to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %rx_jettison, align 8
  %conv615 = zext i32 %528 to i64
  %incdec.ptr616 = getelementptr i64, ptr %ptr.31611, i32 93
  %529 = ptrtoint ptr %incdec.ptr612 to i32
  call void @__asan_store8_noabort(i32 %529)
  store i64 %conv615, ptr %incdec.ptr612, align 8
  %rx_remote_fault = getelementptr %struct.vxge_hw_xmac_stats, ptr %call1.i.i.i, i32 0, i32 1, i32 %k.21612, i32 94
  %530 = ptrtoint ptr %rx_remote_fault to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %rx_remote_fault, align 4
  %conv619 = zext i32 %531 to i64
  %incdec.ptr620 = getelementptr i64, ptr %ptr.31611, i32 94
  %532 = ptrtoint ptr %incdec.ptr616 to i32
  call void @__asan_store8_noabort(i32 %532)
  store i64 %conv619, ptr %incdec.ptr616, align 8
  %inc622 = add nuw nsw i32 %k.21612, 1
  %533 = ptrtoint ptr %max_config_port.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %max_config_port.i, align 4
  %cmp254 = icmp slt i32 %inc622, %534
  br i1 %cmp254, label %for.body256.for.body256_crit_edge, label %for.body256.for.end623_crit_edge

for.body256.for.end623_crit_edge:                 ; preds = %for.body256
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end623

for.body256.for.body256_crit_edge:                ; preds = %for.body256
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body256

for.end623:                                       ; preds = %for.body256.for.end623_crit_edge, %for.end250.for.end623_crit_edge
  %ptr.3.lcssa = phi ptr [ %incdec.ptr251, %for.end250.for.end623_crit_edge ], [ %incdec.ptr620, %for.body256.for.end623_crit_edge ]
  %incdec.ptr624 = getelementptr i64, ptr %ptr.3.lcssa, i32 1
  %535 = ptrtoint ptr %ptr.3.lcssa to i32
  call void @__asan_store8_noabort(i32 %535)
  store i64 0, ptr %ptr.3.lcssa, align 8
  %536 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %no_of_vpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %537)
  %cmp6271618 = icmp sgt i32 %537, 0
  br i1 %cmp6271618, label %for.body629.lr.ph, label %for.end623.for.end754_crit_edge

for.end623.for.end754_crit_edge:                  ; preds = %for.end623
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end754

for.body629.lr.ph:                                ; preds = %for.end623
  %vpaths631 = getelementptr i8, ptr %dev, i32 9280
  br label %for.body629

for.body629:                                      ; preds = %for.body629.for.body629_crit_edge, %for.body629.lr.ph
  %k.31620 = phi i32 [ 0, %for.body629.lr.ph ], [ %inc753, %for.body629.for.body629_crit_edge ]
  %ptr.41619 = phi ptr [ %incdec.ptr624, %for.body629.lr.ph ], [ %incdec.ptr748.15, %for.body629.for.body629_crit_edge ]
  %538 = ptrtoint ptr %vpaths631 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %vpaths631, align 8
  %device_id633 = getelementptr %struct.vxge_vpath, ptr %539, i32 %k.31620, i32 3
  %540 = ptrtoint ptr %device_id633 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %device_id633, align 4
  %arrayidx635 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541
  %542 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %arrayidx635, align 8
  %conv636 = zext i32 %543 to i64
  %incdec.ptr637 = getelementptr i64, ptr %ptr.41619, i32 1
  %544 = ptrtoint ptr %ptr.41619 to i32
  call void @__asan_store8_noabort(i32 %544)
  store i64 %conv636, ptr %ptr.41619, align 8
  %error_stats = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1
  %545 = ptrtoint ptr %error_stats to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %error_stats, align 4
  %conv638 = zext i32 %546 to i64
  %incdec.ptr639 = getelementptr i64, ptr %ptr.41619, i32 2
  %547 = ptrtoint ptr %incdec.ptr637 to i32
  call void @__asan_store8_noabort(i32 %547)
  store i64 %conv638, ptr %incdec.ptr637, align 8
  %network_sustained_fault = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 1
  %548 = ptrtoint ptr %network_sustained_fault to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %network_sustained_fault, align 8
  %conv641 = zext i32 %549 to i64
  %incdec.ptr642 = getelementptr i64, ptr %ptr.41619, i32 3
  %550 = ptrtoint ptr %incdec.ptr639 to i32
  call void @__asan_store8_noabort(i32 %550)
  store i64 %conv641, ptr %incdec.ptr639, align 8
  %network_sustained_ok = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 2
  %551 = ptrtoint ptr %network_sustained_ok to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %network_sustained_ok, align 4
  %conv644 = zext i32 %552 to i64
  %incdec.ptr645 = getelementptr i64, ptr %ptr.41619, i32 4
  %553 = ptrtoint ptr %incdec.ptr642 to i32
  call void @__asan_store8_noabort(i32 %553)
  store i64 %conv644, ptr %incdec.ptr642, align 8
  %kdfcctl_fifo0_overwrite = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 3
  %554 = ptrtoint ptr %kdfcctl_fifo0_overwrite to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %kdfcctl_fifo0_overwrite, align 8
  %conv647 = zext i32 %555 to i64
  %incdec.ptr648 = getelementptr i64, ptr %ptr.41619, i32 5
  %556 = ptrtoint ptr %incdec.ptr645 to i32
  call void @__asan_store8_noabort(i32 %556)
  store i64 %conv647, ptr %incdec.ptr645, align 8
  %kdfcctl_fifo0_poison = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 4
  %557 = ptrtoint ptr %kdfcctl_fifo0_poison to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %kdfcctl_fifo0_poison, align 4
  %conv650 = zext i32 %558 to i64
  %incdec.ptr651 = getelementptr i64, ptr %ptr.41619, i32 6
  %559 = ptrtoint ptr %incdec.ptr648 to i32
  call void @__asan_store8_noabort(i32 %559)
  store i64 %conv650, ptr %incdec.ptr648, align 8
  %kdfcctl_fifo0_dma_error = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 5
  %560 = ptrtoint ptr %kdfcctl_fifo0_dma_error to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %kdfcctl_fifo0_dma_error, align 8
  %conv653 = zext i32 %561 to i64
  %incdec.ptr654 = getelementptr i64, ptr %ptr.41619, i32 7
  %562 = ptrtoint ptr %incdec.ptr651 to i32
  call void @__asan_store8_noabort(i32 %562)
  store i64 %conv653, ptr %incdec.ptr651, align 8
  %dblgen_fifo0_overflow = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 6
  %563 = ptrtoint ptr %dblgen_fifo0_overflow to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %dblgen_fifo0_overflow, align 4
  %conv656 = zext i32 %564 to i64
  %incdec.ptr657 = getelementptr i64, ptr %ptr.41619, i32 8
  %565 = ptrtoint ptr %incdec.ptr654 to i32
  call void @__asan_store8_noabort(i32 %565)
  store i64 %conv656, ptr %incdec.ptr654, align 8
  %statsb_pif_chain_error = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 7
  %566 = ptrtoint ptr %statsb_pif_chain_error to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %statsb_pif_chain_error, align 8
  %conv659 = zext i32 %567 to i64
  %incdec.ptr660 = getelementptr i64, ptr %ptr.41619, i32 9
  %568 = ptrtoint ptr %incdec.ptr657 to i32
  call void @__asan_store8_noabort(i32 %568)
  store i64 %conv659, ptr %incdec.ptr657, align 8
  %statsb_drop_timeout = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 8
  %569 = ptrtoint ptr %statsb_drop_timeout to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %statsb_drop_timeout, align 4
  %conv662 = zext i32 %570 to i64
  %incdec.ptr663 = getelementptr i64, ptr %ptr.41619, i32 10
  %571 = ptrtoint ptr %incdec.ptr660 to i32
  call void @__asan_store8_noabort(i32 %571)
  store i64 %conv662, ptr %incdec.ptr660, align 8
  %target_illegal_access = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 9
  %572 = ptrtoint ptr %target_illegal_access to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %target_illegal_access, align 8
  %conv665 = zext i32 %573 to i64
  %incdec.ptr666 = getelementptr i64, ptr %ptr.41619, i32 11
  %574 = ptrtoint ptr %incdec.ptr663 to i32
  call void @__asan_store8_noabort(i32 %574)
  store i64 %conv665, ptr %incdec.ptr663, align 8
  %ini_serr_det = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 10
  %575 = ptrtoint ptr %ini_serr_det to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %ini_serr_det, align 4
  %conv668 = zext i32 %576 to i64
  %incdec.ptr669 = getelementptr i64, ptr %ptr.41619, i32 12
  %577 = ptrtoint ptr %incdec.ptr666 to i32
  call void @__asan_store8_noabort(i32 %577)
  store i64 %conv668, ptr %incdec.ptr666, align 8
  %prc_ring_bumps = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 11
  %578 = ptrtoint ptr %prc_ring_bumps to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %prc_ring_bumps, align 8
  %conv671 = zext i32 %579 to i64
  %incdec.ptr672 = getelementptr i64, ptr %ptr.41619, i32 13
  %580 = ptrtoint ptr %incdec.ptr669 to i32
  call void @__asan_store8_noabort(i32 %580)
  store i64 %conv671, ptr %incdec.ptr669, align 8
  %prc_rxdcm_sc_err = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 12
  %581 = ptrtoint ptr %prc_rxdcm_sc_err to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %prc_rxdcm_sc_err, align 4
  %conv674 = zext i32 %582 to i64
  %incdec.ptr675 = getelementptr i64, ptr %ptr.41619, i32 14
  %583 = ptrtoint ptr %incdec.ptr672 to i32
  call void @__asan_store8_noabort(i32 %583)
  store i64 %conv674, ptr %incdec.ptr672, align 8
  %prc_rxdcm_sc_abort = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 13
  %584 = ptrtoint ptr %prc_rxdcm_sc_abort to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %prc_rxdcm_sc_abort, align 8
  %conv677 = zext i32 %585 to i64
  %incdec.ptr678 = getelementptr i64, ptr %ptr.41619, i32 15
  %586 = ptrtoint ptr %incdec.ptr675 to i32
  call void @__asan_store8_noabort(i32 %586)
  store i64 %conv677, ptr %incdec.ptr675, align 8
  %prc_quanta_size_err = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 1, i32 14
  %587 = ptrtoint ptr %prc_quanta_size_err to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %prc_quanta_size_err, align 4
  %conv680 = zext i32 %588 to i64
  %incdec.ptr681 = getelementptr i64, ptr %ptr.41619, i32 16
  %589 = ptrtoint ptr %incdec.ptr678 to i32
  call void @__asan_store8_noabort(i32 %589)
  store i64 %conv680, ptr %incdec.ptr678, align 8
  %ring_stats = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2
  %590 = ptrtoint ptr %ring_stats to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %ring_stats, align 8
  %conv682 = zext i32 %591 to i64
  %incdec.ptr683 = getelementptr i64, ptr %ptr.41619, i32 17
  %592 = ptrtoint ptr %incdec.ptr681 to i32
  call void @__asan_store8_noabort(i32 %592)
  store i64 %conv682, ptr %incdec.ptr681, align 8
  %usage_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %ring_stats, i32 0, i32 1
  %593 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %usage_cnt, align 4
  %conv686 = zext i32 %594 to i64
  %incdec.ptr687 = getelementptr i64, ptr %ptr.41619, i32 18
  %595 = ptrtoint ptr %incdec.ptr683 to i32
  call void @__asan_store8_noabort(i32 %595)
  store i64 %conv686, ptr %incdec.ptr683, align 8
  %usage_max = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %ring_stats, i32 0, i32 2
  %596 = ptrtoint ptr %usage_max to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %usage_max, align 8
  %conv690 = zext i32 %597 to i64
  %incdec.ptr691 = getelementptr i64, ptr %ptr.41619, i32 19
  %598 = ptrtoint ptr %incdec.ptr687 to i32
  call void @__asan_store8_noabort(i32 %598)
  store i64 %conv690, ptr %incdec.ptr687, align 8
  %reserve_free_swaps_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %ring_stats, i32 0, i32 3
  %599 = ptrtoint ptr %reserve_free_swaps_cnt to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %reserve_free_swaps_cnt, align 4
  %conv694 = zext i32 %600 to i64
  %incdec.ptr695 = getelementptr i64, ptr %ptr.41619, i32 20
  %601 = ptrtoint ptr %incdec.ptr691 to i32
  call void @__asan_store8_noabort(i32 %601)
  store i64 %conv694, ptr %incdec.ptr691, align 8
  %total_compl_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %ring_stats, i32 0, i32 4
  %602 = ptrtoint ptr %total_compl_cnt to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %total_compl_cnt, align 8
  %conv698 = zext i32 %603 to i64
  %incdec.ptr699 = getelementptr i64, ptr %ptr.41619, i32 21
  %604 = ptrtoint ptr %incdec.ptr695 to i32
  call void @__asan_store8_noabort(i32 %604)
  store i64 %conv698, ptr %incdec.ptr695, align 8
  %arrayidx705 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 0
  %605 = ptrtoint ptr %arrayidx705 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %arrayidx705, align 4
  %conv706 = zext i32 %606 to i64
  %incdec.ptr707 = getelementptr i64, ptr %ptr.41619, i32 22
  %607 = ptrtoint ptr %incdec.ptr699 to i32
  call void @__asan_store8_noabort(i32 %607)
  store i64 %conv706, ptr %incdec.ptr699, align 8
  %arrayidx705.1 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 1
  %608 = ptrtoint ptr %arrayidx705.1 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %arrayidx705.1, align 8
  %conv706.1 = zext i32 %609 to i64
  %incdec.ptr707.1 = getelementptr i64, ptr %ptr.41619, i32 23
  %610 = ptrtoint ptr %incdec.ptr707 to i32
  call void @__asan_store8_noabort(i32 %610)
  store i64 %conv706.1, ptr %incdec.ptr707, align 8
  %arrayidx705.2 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 2
  %611 = ptrtoint ptr %arrayidx705.2 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %arrayidx705.2, align 4
  %conv706.2 = zext i32 %612 to i64
  %incdec.ptr707.2 = getelementptr i64, ptr %ptr.41619, i32 24
  %613 = ptrtoint ptr %incdec.ptr707.1 to i32
  call void @__asan_store8_noabort(i32 %613)
  store i64 %conv706.2, ptr %incdec.ptr707.1, align 8
  %arrayidx705.3 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 3
  %614 = ptrtoint ptr %arrayidx705.3 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %arrayidx705.3, align 8
  %conv706.3 = zext i32 %615 to i64
  %incdec.ptr707.3 = getelementptr i64, ptr %ptr.41619, i32 25
  %616 = ptrtoint ptr %incdec.ptr707.2 to i32
  call void @__asan_store8_noabort(i32 %616)
  store i64 %conv706.3, ptr %incdec.ptr707.2, align 8
  %arrayidx705.4 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 4
  %617 = ptrtoint ptr %arrayidx705.4 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %arrayidx705.4, align 4
  %conv706.4 = zext i32 %618 to i64
  %incdec.ptr707.4 = getelementptr i64, ptr %ptr.41619, i32 26
  %619 = ptrtoint ptr %incdec.ptr707.3 to i32
  call void @__asan_store8_noabort(i32 %619)
  store i64 %conv706.4, ptr %incdec.ptr707.3, align 8
  %arrayidx705.5 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 5
  %620 = ptrtoint ptr %arrayidx705.5 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %arrayidx705.5, align 8
  %conv706.5 = zext i32 %621 to i64
  %incdec.ptr707.5 = getelementptr i64, ptr %ptr.41619, i32 27
  %622 = ptrtoint ptr %incdec.ptr707.4 to i32
  call void @__asan_store8_noabort(i32 %622)
  store i64 %conv706.5, ptr %incdec.ptr707.4, align 8
  %arrayidx705.6 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 6
  %623 = ptrtoint ptr %arrayidx705.6 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %arrayidx705.6, align 4
  %conv706.6 = zext i32 %624 to i64
  %incdec.ptr707.6 = getelementptr i64, ptr %ptr.41619, i32 28
  %625 = ptrtoint ptr %incdec.ptr707.5 to i32
  call void @__asan_store8_noabort(i32 %625)
  store i64 %conv706.6, ptr %incdec.ptr707.5, align 8
  %arrayidx705.7 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 7
  %626 = ptrtoint ptr %arrayidx705.7 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %arrayidx705.7, align 8
  %conv706.7 = zext i32 %627 to i64
  %incdec.ptr707.7 = getelementptr i64, ptr %ptr.41619, i32 29
  %628 = ptrtoint ptr %incdec.ptr707.6 to i32
  call void @__asan_store8_noabort(i32 %628)
  store i64 %conv706.7, ptr %incdec.ptr707.6, align 8
  %arrayidx705.8 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 8
  %629 = ptrtoint ptr %arrayidx705.8 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %arrayidx705.8, align 4
  %conv706.8 = zext i32 %630 to i64
  %incdec.ptr707.8 = getelementptr i64, ptr %ptr.41619, i32 30
  %631 = ptrtoint ptr %incdec.ptr707.7 to i32
  call void @__asan_store8_noabort(i32 %631)
  store i64 %conv706.8, ptr %incdec.ptr707.7, align 8
  %arrayidx705.9 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 9
  %632 = ptrtoint ptr %arrayidx705.9 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %arrayidx705.9, align 8
  %conv706.9 = zext i32 %633 to i64
  %incdec.ptr707.9 = getelementptr i64, ptr %ptr.41619, i32 31
  %634 = ptrtoint ptr %incdec.ptr707.8 to i32
  call void @__asan_store8_noabort(i32 %634)
  store i64 %conv706.9, ptr %incdec.ptr707.8, align 8
  %arrayidx705.10 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 10
  %635 = ptrtoint ptr %arrayidx705.10 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %arrayidx705.10, align 4
  %conv706.10 = zext i32 %636 to i64
  %incdec.ptr707.10 = getelementptr i64, ptr %ptr.41619, i32 32
  %637 = ptrtoint ptr %incdec.ptr707.9 to i32
  call void @__asan_store8_noabort(i32 %637)
  store i64 %conv706.10, ptr %incdec.ptr707.9, align 8
  %arrayidx705.11 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 11
  %638 = ptrtoint ptr %arrayidx705.11 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %arrayidx705.11, align 8
  %conv706.11 = zext i32 %639 to i64
  %incdec.ptr707.11 = getelementptr i64, ptr %ptr.41619, i32 33
  %640 = ptrtoint ptr %incdec.ptr707.10 to i32
  call void @__asan_store8_noabort(i32 %640)
  store i64 %conv706.11, ptr %incdec.ptr707.10, align 8
  %arrayidx705.12 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 12
  %641 = ptrtoint ptr %arrayidx705.12 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %arrayidx705.12, align 4
  %conv706.12 = zext i32 %642 to i64
  %incdec.ptr707.12 = getelementptr i64, ptr %ptr.41619, i32 34
  %643 = ptrtoint ptr %incdec.ptr707.11 to i32
  call void @__asan_store8_noabort(i32 %643)
  store i64 %conv706.12, ptr %incdec.ptr707.11, align 8
  %arrayidx705.13 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 13
  %644 = ptrtoint ptr %arrayidx705.13 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %arrayidx705.13, align 8
  %conv706.13 = zext i32 %645 to i64
  %incdec.ptr707.13 = getelementptr i64, ptr %ptr.41619, i32 35
  %646 = ptrtoint ptr %incdec.ptr707.12 to i32
  call void @__asan_store8_noabort(i32 %646)
  store i64 %conv706.13, ptr %incdec.ptr707.12, align 8
  %arrayidx705.14 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 14
  %647 = ptrtoint ptr %arrayidx705.14 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %arrayidx705.14, align 4
  %conv706.14 = zext i32 %648 to i64
  %incdec.ptr707.14 = getelementptr i64, ptr %ptr.41619, i32 36
  %649 = ptrtoint ptr %incdec.ptr707.13 to i32
  call void @__asan_store8_noabort(i32 %649)
  store i64 %conv706.14, ptr %incdec.ptr707.13, align 8
  %arrayidx705.15 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 2, i32 1, i32 15
  %650 = ptrtoint ptr %arrayidx705.15 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %arrayidx705.15, align 8
  %conv706.15 = zext i32 %651 to i64
  %incdec.ptr707.15 = getelementptr i64, ptr %ptr.41619, i32 37
  %652 = ptrtoint ptr %incdec.ptr707.14 to i32
  call void @__asan_store8_noabort(i32 %652)
  store i64 %conv706.15, ptr %incdec.ptr707.14, align 8
  %fifo_stats = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3
  %653 = ptrtoint ptr %fifo_stats to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %fifo_stats, align 4
  %conv713 = zext i32 %654 to i64
  %incdec.ptr714 = getelementptr i64, ptr %ptr.41619, i32 38
  %655 = ptrtoint ptr %incdec.ptr707.15 to i32
  call void @__asan_store8_noabort(i32 %655)
  store i64 %conv713, ptr %incdec.ptr707.15, align 8
  %usage_cnt717 = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %fifo_stats, i32 0, i32 1
  %656 = ptrtoint ptr %usage_cnt717 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %usage_cnt717, align 8
  %conv718 = zext i32 %657 to i64
  %incdec.ptr719 = getelementptr i64, ptr %ptr.41619, i32 39
  %658 = ptrtoint ptr %incdec.ptr714 to i32
  call void @__asan_store8_noabort(i32 %658)
  store i64 %conv718, ptr %incdec.ptr714, align 8
  %usage_max722 = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %fifo_stats, i32 0, i32 2
  %659 = ptrtoint ptr %usage_max722 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %usage_max722, align 4
  %conv723 = zext i32 %660 to i64
  %incdec.ptr724 = getelementptr i64, ptr %ptr.41619, i32 40
  %661 = ptrtoint ptr %incdec.ptr719 to i32
  call void @__asan_store8_noabort(i32 %661)
  store i64 %conv723, ptr %incdec.ptr719, align 8
  %reserve_free_swaps_cnt727 = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %fifo_stats, i32 0, i32 3
  %662 = ptrtoint ptr %reserve_free_swaps_cnt727 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %reserve_free_swaps_cnt727, align 8
  %conv728 = zext i32 %663 to i64
  %incdec.ptr729 = getelementptr i64, ptr %ptr.41619, i32 41
  %664 = ptrtoint ptr %incdec.ptr724 to i32
  call void @__asan_store8_noabort(i32 %664)
  store i64 %conv728, ptr %incdec.ptr724, align 8
  %total_compl_cnt732 = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %fifo_stats, i32 0, i32 4
  %665 = ptrtoint ptr %total_compl_cnt732 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %total_compl_cnt732, align 4
  %conv733 = zext i32 %666 to i64
  %incdec.ptr734 = getelementptr i64, ptr %ptr.41619, i32 42
  %667 = ptrtoint ptr %incdec.ptr729 to i32
  call void @__asan_store8_noabort(i32 %667)
  store i64 %conv733, ptr %incdec.ptr729, align 8
  %total_posts = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 1
  %668 = ptrtoint ptr %total_posts to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %total_posts, align 8
  %conv736 = zext i32 %669 to i64
  %incdec.ptr737 = getelementptr i64, ptr %ptr.41619, i32 43
  %670 = ptrtoint ptr %incdec.ptr734 to i32
  call void @__asan_store8_noabort(i32 %670)
  store i64 %conv736, ptr %incdec.ptr734, align 8
  %total_buffers = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 2
  %671 = ptrtoint ptr %total_buffers to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %total_buffers, align 4
  %conv739 = zext i32 %672 to i64
  %incdec.ptr740 = getelementptr i64, ptr %ptr.41619, i32 44
  %673 = ptrtoint ptr %incdec.ptr737 to i32
  call void @__asan_store8_noabort(i32 %673)
  store i64 %conv739, ptr %incdec.ptr737, align 8
  %arrayidx746 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 0
  %674 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %arrayidx746, align 8
  %conv747 = zext i32 %675 to i64
  %incdec.ptr748 = getelementptr i64, ptr %ptr.41619, i32 45
  %676 = ptrtoint ptr %incdec.ptr740 to i32
  call void @__asan_store8_noabort(i32 %676)
  store i64 %conv747, ptr %incdec.ptr740, align 8
  %arrayidx746.1 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 1
  %677 = ptrtoint ptr %arrayidx746.1 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %arrayidx746.1, align 4
  %conv747.1 = zext i32 %678 to i64
  %incdec.ptr748.1 = getelementptr i64, ptr %ptr.41619, i32 46
  %679 = ptrtoint ptr %incdec.ptr748 to i32
  call void @__asan_store8_noabort(i32 %679)
  store i64 %conv747.1, ptr %incdec.ptr748, align 8
  %arrayidx746.2 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 2
  %680 = ptrtoint ptr %arrayidx746.2 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %arrayidx746.2, align 8
  %conv747.2 = zext i32 %681 to i64
  %incdec.ptr748.2 = getelementptr i64, ptr %ptr.41619, i32 47
  %682 = ptrtoint ptr %incdec.ptr748.1 to i32
  call void @__asan_store8_noabort(i32 %682)
  store i64 %conv747.2, ptr %incdec.ptr748.1, align 8
  %arrayidx746.3 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 3
  %683 = ptrtoint ptr %arrayidx746.3 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %arrayidx746.3, align 4
  %conv747.3 = zext i32 %684 to i64
  %incdec.ptr748.3 = getelementptr i64, ptr %ptr.41619, i32 48
  %685 = ptrtoint ptr %incdec.ptr748.2 to i32
  call void @__asan_store8_noabort(i32 %685)
  store i64 %conv747.3, ptr %incdec.ptr748.2, align 8
  %arrayidx746.4 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 4
  %686 = ptrtoint ptr %arrayidx746.4 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %arrayidx746.4, align 8
  %conv747.4 = zext i32 %687 to i64
  %incdec.ptr748.4 = getelementptr i64, ptr %ptr.41619, i32 49
  %688 = ptrtoint ptr %incdec.ptr748.3 to i32
  call void @__asan_store8_noabort(i32 %688)
  store i64 %conv747.4, ptr %incdec.ptr748.3, align 8
  %arrayidx746.5 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 5
  %689 = ptrtoint ptr %arrayidx746.5 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %arrayidx746.5, align 4
  %conv747.5 = zext i32 %690 to i64
  %incdec.ptr748.5 = getelementptr i64, ptr %ptr.41619, i32 50
  %691 = ptrtoint ptr %incdec.ptr748.4 to i32
  call void @__asan_store8_noabort(i32 %691)
  store i64 %conv747.5, ptr %incdec.ptr748.4, align 8
  %arrayidx746.6 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 6
  %692 = ptrtoint ptr %arrayidx746.6 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %arrayidx746.6, align 8
  %conv747.6 = zext i32 %693 to i64
  %incdec.ptr748.6 = getelementptr i64, ptr %ptr.41619, i32 51
  %694 = ptrtoint ptr %incdec.ptr748.5 to i32
  call void @__asan_store8_noabort(i32 %694)
  store i64 %conv747.6, ptr %incdec.ptr748.5, align 8
  %arrayidx746.7 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 7
  %695 = ptrtoint ptr %arrayidx746.7 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %arrayidx746.7, align 4
  %conv747.7 = zext i32 %696 to i64
  %incdec.ptr748.7 = getelementptr i64, ptr %ptr.41619, i32 52
  %697 = ptrtoint ptr %incdec.ptr748.6 to i32
  call void @__asan_store8_noabort(i32 %697)
  store i64 %conv747.7, ptr %incdec.ptr748.6, align 8
  %arrayidx746.8 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 8
  %698 = ptrtoint ptr %arrayidx746.8 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %arrayidx746.8, align 8
  %conv747.8 = zext i32 %699 to i64
  %incdec.ptr748.8 = getelementptr i64, ptr %ptr.41619, i32 53
  %700 = ptrtoint ptr %incdec.ptr748.7 to i32
  call void @__asan_store8_noabort(i32 %700)
  store i64 %conv747.8, ptr %incdec.ptr748.7, align 8
  %arrayidx746.9 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 9
  %701 = ptrtoint ptr %arrayidx746.9 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %arrayidx746.9, align 4
  %conv747.9 = zext i32 %702 to i64
  %incdec.ptr748.9 = getelementptr i64, ptr %ptr.41619, i32 54
  %703 = ptrtoint ptr %incdec.ptr748.8 to i32
  call void @__asan_store8_noabort(i32 %703)
  store i64 %conv747.9, ptr %incdec.ptr748.8, align 8
  %arrayidx746.10 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 10
  %704 = ptrtoint ptr %arrayidx746.10 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %arrayidx746.10, align 8
  %conv747.10 = zext i32 %705 to i64
  %incdec.ptr748.10 = getelementptr i64, ptr %ptr.41619, i32 55
  %706 = ptrtoint ptr %incdec.ptr748.9 to i32
  call void @__asan_store8_noabort(i32 %706)
  store i64 %conv747.10, ptr %incdec.ptr748.9, align 8
  %arrayidx746.11 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 11
  %707 = ptrtoint ptr %arrayidx746.11 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %arrayidx746.11, align 4
  %conv747.11 = zext i32 %708 to i64
  %incdec.ptr748.11 = getelementptr i64, ptr %ptr.41619, i32 56
  %709 = ptrtoint ptr %incdec.ptr748.10 to i32
  call void @__asan_store8_noabort(i32 %709)
  store i64 %conv747.11, ptr %incdec.ptr748.10, align 8
  %arrayidx746.12 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 12
  %710 = ptrtoint ptr %arrayidx746.12 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %arrayidx746.12, align 8
  %conv747.12 = zext i32 %711 to i64
  %incdec.ptr748.12 = getelementptr i64, ptr %ptr.41619, i32 57
  %712 = ptrtoint ptr %incdec.ptr748.11 to i32
  call void @__asan_store8_noabort(i32 %712)
  store i64 %conv747.12, ptr %incdec.ptr748.11, align 8
  %arrayidx746.13 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 13
  %713 = ptrtoint ptr %arrayidx746.13 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %arrayidx746.13, align 4
  %conv747.13 = zext i32 %714 to i64
  %incdec.ptr748.13 = getelementptr i64, ptr %ptr.41619, i32 58
  %715 = ptrtoint ptr %incdec.ptr748.12 to i32
  call void @__asan_store8_noabort(i32 %715)
  store i64 %conv747.13, ptr %incdec.ptr748.12, align 8
  %arrayidx746.14 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 14
  %716 = ptrtoint ptr %arrayidx746.14 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %arrayidx746.14, align 8
  %conv747.14 = zext i32 %717 to i64
  %incdec.ptr748.14 = getelementptr i64, ptr %ptr.41619, i32 59
  %718 = ptrtoint ptr %incdec.ptr748.13 to i32
  call void @__asan_store8_noabort(i32 %718)
  store i64 %conv747.14, ptr %incdec.ptr748.13, align 8
  %arrayidx746.15 = getelementptr %struct.vxge_hw_device_stats_sw_info, ptr %call7.i.i, i32 0, i32 4, i32 %541, i32 3, i32 3, i32 15
  %719 = ptrtoint ptr %arrayidx746.15 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %arrayidx746.15, align 4
  %conv747.15 = zext i32 %720 to i64
  %incdec.ptr748.15 = getelementptr i64, ptr %ptr.41619, i32 60
  %721 = ptrtoint ptr %incdec.ptr748.14 to i32
  call void @__asan_store8_noabort(i32 %721)
  store i64 %conv747.15, ptr %incdec.ptr748.14, align 8
  %inc753 = add nuw nsw i32 %k.31620, 1
  %722 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %no_of_vpath.i, align 4
  %cmp627 = icmp slt i32 %inc753, %723
  br i1 %cmp627, label %for.body629.for.body629_crit_edge, label %for.body629.for.end754_crit_edge

for.body629.for.end754_crit_edge:                 ; preds = %for.body629
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end754

for.body629.for.body629_crit_edge:                ; preds = %for.body629
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body629

for.end754:                                       ; preds = %for.body629.for.end754_crit_edge, %for.end623.for.end754_crit_edge
  %ptr.4.lcssa = phi ptr [ %incdec.ptr624, %for.end623.for.end754_crit_edge ], [ %incdec.ptr748.15, %for.body629.for.end754_crit_edge ]
  %incdec.ptr755 = getelementptr i64, ptr %ptr.4.lcssa, i32 1
  %724 = ptrtoint ptr %ptr.4.lcssa to i32
  call void @__asan_store8_noabort(i32 %724)
  store i64 0, ptr %ptr.4.lcssa, align 8
  %725 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %no_of_vpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %726)
  %cmp7581622 = icmp sgt i32 %726, 0
  br i1 %cmp7581622, label %for.body760.lr.ph, label %for.end754.for.end825_crit_edge

for.end754.for.end825_crit_edge:                  ; preds = %for.end754
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end825

for.body760.lr.ph:                                ; preds = %for.end754
  %vpaths762 = getelementptr i8, ptr %dev, i32 9280
  br label %for.body760

for.body760:                                      ; preds = %cleanup820.for.body760_crit_edge, %for.body760.lr.ph
  %k.41624 = phi i32 [ 0, %for.body760.lr.ph ], [ %inc824, %cleanup820.for.body760_crit_edge ]
  %ptr.71623 = phi ptr [ %incdec.ptr755, %for.body760.lr.ph ], [ %ptr.8, %cleanup820.for.body760_crit_edge ]
  %727 = ptrtoint ptr %vpaths762 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %vpaths762, align 8
  %device_id764 = getelementptr %struct.vxge_vpath, ptr %728, i32 %k.41624, i32 3
  %729 = ptrtoint ptr %device_id764 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %device_id764, align 4
  %arrayidx766 = getelementptr [17 x ptr], ptr %call1.i.i.i1597, i32 0, i32 %730
  %731 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %arrayidx766, align 4
  %tobool767.not = icmp eq ptr %732, null
  br i1 %tobool767.not, label %if.then768, label %if.end770

if.then768:                                       ; preds = %for.body760
  call void @__sanitizer_cov_trace_pc() #14
  %733 = call ptr @memset(ptr %ptr.71623, i32 0, i32 216)
  br label %cleanup820

if.end770:                                        ; preds = %for.body760
  call void @__sanitizer_cov_trace_pc() #14
  %734 = ptrtoint ptr %732 to i32
  call void @__asan_loadN_noabort(i32 %734, i32 4)
  %735 = load i32, ptr %732, align 1
  %conv771 = zext i32 %735 to i64
  %incdec.ptr772 = getelementptr i64, ptr %ptr.71623, i32 1
  %736 = ptrtoint ptr %ptr.71623 to i32
  call void @__asan_store8_noabort(i32 %736)
  store i64 %conv771, ptr %ptr.71623, align 8
  %ini_num_mrd_sent = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 2
  %737 = ptrtoint ptr %ini_num_mrd_sent to i32
  call void @__asan_loadN_noabort(i32 %737, i32 4)
  %738 = load i32, ptr %ini_num_mrd_sent, align 1
  %conv773 = zext i32 %738 to i64
  %incdec.ptr774 = getelementptr i64, ptr %ptr.71623, i32 2
  %739 = ptrtoint ptr %incdec.ptr772 to i32
  call void @__asan_store8_noabort(i32 %739)
  store i64 %conv773, ptr %incdec.ptr772, align 8
  %ini_num_cpl_rcvd = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 4
  %740 = ptrtoint ptr %ini_num_cpl_rcvd to i32
  call void @__asan_loadN_noabort(i32 %740, i32 4)
  %741 = load i32, ptr %ini_num_cpl_rcvd, align 1
  %conv775 = zext i32 %741 to i64
  %incdec.ptr776 = getelementptr i64, ptr %ptr.71623, i32 3
  %742 = ptrtoint ptr %incdec.ptr774 to i32
  call void @__asan_store8_noabort(i32 %742)
  store i64 %conv775, ptr %incdec.ptr774, align 8
  %ini_num_mwr_byte_sent = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 6
  %743 = ptrtoint ptr %ini_num_mwr_byte_sent to i32
  call void @__asan_loadN_noabort(i32 %743, i32 8)
  %744 = load i64, ptr %ini_num_mwr_byte_sent, align 1
  %incdec.ptr777 = getelementptr i64, ptr %ptr.71623, i32 4
  %745 = ptrtoint ptr %incdec.ptr776 to i32
  call void @__asan_store8_noabort(i32 %745)
  store i64 %744, ptr %incdec.ptr776, align 8
  %ini_num_cpl_byte_rcvd = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 7
  %746 = ptrtoint ptr %ini_num_cpl_byte_rcvd to i32
  call void @__asan_loadN_noabort(i32 %746, i32 8)
  %747 = load i64, ptr %ini_num_cpl_byte_rcvd, align 1
  %incdec.ptr778 = getelementptr i64, ptr %ptr.71623, i32 5
  %748 = ptrtoint ptr %incdec.ptr777 to i32
  call void @__asan_store8_noabort(i32 %748)
  store i64 %747, ptr %incdec.ptr777, align 8
  %wrcrdtarb_xoff = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 8
  %749 = ptrtoint ptr %wrcrdtarb_xoff to i32
  call void @__asan_loadN_noabort(i32 %749, i32 4)
  %750 = load i32, ptr %wrcrdtarb_xoff, align 1
  %conv779 = zext i32 %750 to i64
  %incdec.ptr780 = getelementptr i64, ptr %ptr.71623, i32 6
  %751 = ptrtoint ptr %incdec.ptr778 to i32
  call void @__asan_store8_noabort(i32 %751)
  store i64 %conv779, ptr %incdec.ptr778, align 8
  %rdcrdtarb_xoff = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 10
  %752 = ptrtoint ptr %rdcrdtarb_xoff to i32
  call void @__asan_loadN_noabort(i32 %752, i32 4)
  %753 = load i32, ptr %rdcrdtarb_xoff, align 1
  %conv781 = zext i32 %753 to i64
  %incdec.ptr782 = getelementptr i64, ptr %ptr.71623, i32 7
  %754 = ptrtoint ptr %incdec.ptr780 to i32
  call void @__asan_store8_noabort(i32 %754)
  store i64 %conv781, ptr %incdec.ptr780, align 8
  %vpath_genstats_count0 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 12
  %755 = ptrtoint ptr %vpath_genstats_count0 to i32
  call void @__asan_loadN_noabort(i32 %755, i32 4)
  %756 = load i32, ptr %vpath_genstats_count0, align 1
  %conv783 = zext i32 %756 to i64
  %incdec.ptr784 = getelementptr i64, ptr %ptr.71623, i32 8
  %757 = ptrtoint ptr %incdec.ptr782 to i32
  call void @__asan_store8_noabort(i32 %757)
  store i64 %conv783, ptr %incdec.ptr782, align 8
  %vpath_genstats_count1 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 13
  %758 = ptrtoint ptr %vpath_genstats_count1 to i32
  call void @__asan_loadN_noabort(i32 %758, i32 4)
  %759 = load i32, ptr %vpath_genstats_count1, align 1
  %conv785 = zext i32 %759 to i64
  %incdec.ptr786 = getelementptr i64, ptr %ptr.71623, i32 9
  %760 = ptrtoint ptr %incdec.ptr784 to i32
  call void @__asan_store8_noabort(i32 %760)
  store i64 %conv785, ptr %incdec.ptr784, align 8
  %vpath_genstats_count2 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 14
  %761 = ptrtoint ptr %vpath_genstats_count2 to i32
  call void @__asan_loadN_noabort(i32 %761, i32 4)
  %762 = load i32, ptr %vpath_genstats_count2, align 1
  %conv787 = zext i32 %762 to i64
  %incdec.ptr788 = getelementptr i64, ptr %ptr.71623, i32 10
  %763 = ptrtoint ptr %incdec.ptr786 to i32
  call void @__asan_store8_noabort(i32 %763)
  store i64 %conv787, ptr %incdec.ptr786, align 8
  %vpath_genstats_count3 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 15
  %764 = ptrtoint ptr %vpath_genstats_count3 to i32
  call void @__asan_loadN_noabort(i32 %764, i32 4)
  %765 = load i32, ptr %vpath_genstats_count3, align 1
  %conv789 = zext i32 %765 to i64
  %incdec.ptr790 = getelementptr i64, ptr %ptr.71623, i32 11
  %766 = ptrtoint ptr %incdec.ptr788 to i32
  call void @__asan_store8_noabort(i32 %766)
  store i64 %conv789, ptr %incdec.ptr788, align 8
  %vpath_genstats_count4 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 16
  %767 = ptrtoint ptr %vpath_genstats_count4 to i32
  call void @__asan_loadN_noabort(i32 %767, i32 4)
  %768 = load i32, ptr %vpath_genstats_count4, align 1
  %conv791 = zext i32 %768 to i64
  %incdec.ptr792 = getelementptr i64, ptr %ptr.71623, i32 12
  %769 = ptrtoint ptr %incdec.ptr790 to i32
  call void @__asan_store8_noabort(i32 %769)
  store i64 %conv791, ptr %incdec.ptr790, align 8
  %vpath_genstats_count5 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 18
  %770 = ptrtoint ptr %vpath_genstats_count5 to i32
  call void @__asan_loadN_noabort(i32 %770, i32 4)
  %771 = load i32, ptr %vpath_genstats_count5, align 1
  %conv793 = zext i32 %771 to i64
  %incdec.ptr794 = getelementptr i64, ptr %ptr.71623, i32 13
  %772 = ptrtoint ptr %incdec.ptr792 to i32
  call void @__asan_store8_noabort(i32 %772)
  store i64 %conv793, ptr %incdec.ptr792, align 8
  %prog_event_vnum0 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 24
  %773 = ptrtoint ptr %prog_event_vnum0 to i32
  call void @__asan_loadN_noabort(i32 %773, i32 4)
  %774 = load i32, ptr %prog_event_vnum0, align 1
  %conv795 = zext i32 %774 to i64
  %incdec.ptr796 = getelementptr i64, ptr %ptr.71623, i32 14
  %775 = ptrtoint ptr %incdec.ptr794 to i32
  call void @__asan_store8_noabort(i32 %775)
  store i64 %conv795, ptr %incdec.ptr794, align 8
  %prog_event_vnum1 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 23
  %776 = ptrtoint ptr %prog_event_vnum1 to i32
  call void @__asan_loadN_noabort(i32 %776, i32 4)
  %777 = load i32, ptr %prog_event_vnum1, align 1
  %conv797 = zext i32 %777 to i64
  %incdec.ptr798 = getelementptr i64, ptr %ptr.71623, i32 15
  %778 = ptrtoint ptr %incdec.ptr796 to i32
  call void @__asan_store8_noabort(i32 %778)
  store i64 %conv797, ptr %incdec.ptr796, align 8
  %prog_event_vnum2 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 26
  %779 = ptrtoint ptr %prog_event_vnum2 to i32
  call void @__asan_loadN_noabort(i32 %779, i32 4)
  %780 = load i32, ptr %prog_event_vnum2, align 1
  %conv799 = zext i32 %780 to i64
  %incdec.ptr800 = getelementptr i64, ptr %ptr.71623, i32 16
  %781 = ptrtoint ptr %incdec.ptr798 to i32
  call void @__asan_store8_noabort(i32 %781)
  store i64 %conv799, ptr %incdec.ptr798, align 8
  %prog_event_vnum3 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 25
  %782 = ptrtoint ptr %prog_event_vnum3 to i32
  call void @__asan_loadN_noabort(i32 %782, i32 4)
  %783 = load i32, ptr %prog_event_vnum3, align 1
  %conv801 = zext i32 %783 to i64
  %incdec.ptr802 = getelementptr i64, ptr %ptr.71623, i32 17
  %784 = ptrtoint ptr %incdec.ptr800 to i32
  call void @__asan_store8_noabort(i32 %784)
  store i64 %conv801, ptr %incdec.ptr800, align 8
  %rx_multi_cast_frame_discard = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 27
  %785 = ptrtoint ptr %rx_multi_cast_frame_discard to i32
  call void @__asan_loadN_noabort(i32 %785, i32 2)
  %786 = load i16, ptr %rx_multi_cast_frame_discard, align 1
  %conv803 = zext i16 %786 to i64
  %incdec.ptr804 = getelementptr i64, ptr %ptr.71623, i32 18
  %787 = ptrtoint ptr %incdec.ptr802 to i32
  call void @__asan_store8_noabort(i32 %787)
  store i64 %conv803, ptr %incdec.ptr802, align 8
  %rx_frm_transferred = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 29
  %788 = ptrtoint ptr %rx_frm_transferred to i32
  call void @__asan_loadN_noabort(i32 %788, i32 4)
  %789 = load i32, ptr %rx_frm_transferred, align 1
  %conv805 = zext i32 %789 to i64
  %incdec.ptr806 = getelementptr i64, ptr %ptr.71623, i32 19
  %790 = ptrtoint ptr %incdec.ptr804 to i32
  call void @__asan_store8_noabort(i32 %790)
  store i64 %conv805, ptr %incdec.ptr804, align 8
  %rxd_returned = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 31
  %791 = ptrtoint ptr %rxd_returned to i32
  call void @__asan_loadN_noabort(i32 %791, i32 2)
  %792 = load i16, ptr %rxd_returned, align 1
  %conv807 = zext i16 %792 to i64
  %incdec.ptr808 = getelementptr i64, ptr %ptr.71623, i32 20
  %793 = ptrtoint ptr %incdec.ptr806 to i32
  call void @__asan_store8_noabort(i32 %793)
  store i64 %conv807, ptr %incdec.ptr806, align 8
  %rx_mpa_len_fail_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 33
  %794 = ptrtoint ptr %rx_mpa_len_fail_frms to i32
  call void @__asan_loadN_noabort(i32 %794, i32 2)
  %795 = load i16, ptr %rx_mpa_len_fail_frms, align 1
  %conv809 = zext i16 %795 to i64
  %incdec.ptr810 = getelementptr i64, ptr %ptr.71623, i32 21
  %796 = ptrtoint ptr %incdec.ptr808 to i32
  call void @__asan_store8_noabort(i32 %796)
  store i64 %conv809, ptr %incdec.ptr808, align 8
  %rx_mpa_mrk_fail_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 34
  %797 = ptrtoint ptr %rx_mpa_mrk_fail_frms to i32
  call void @__asan_loadN_noabort(i32 %797, i32 2)
  %798 = load i16, ptr %rx_mpa_mrk_fail_frms, align 1
  %conv811 = zext i16 %798 to i64
  %incdec.ptr812 = getelementptr i64, ptr %ptr.71623, i32 22
  %799 = ptrtoint ptr %incdec.ptr810 to i32
  call void @__asan_store8_noabort(i32 %799)
  store i64 %conv811, ptr %incdec.ptr810, align 8
  %rx_mpa_crc_fail_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 35
  %800 = ptrtoint ptr %rx_mpa_crc_fail_frms to i32
  call void @__asan_loadN_noabort(i32 %800, i32 2)
  %801 = load i16, ptr %rx_mpa_crc_fail_frms, align 1
  %conv813 = zext i16 %801 to i64
  %incdec.ptr814 = getelementptr i64, ptr %ptr.71623, i32 23
  %802 = ptrtoint ptr %incdec.ptr812 to i32
  call void @__asan_store8_noabort(i32 %802)
  store i64 %conv813, ptr %incdec.ptr812, align 8
  %rx_permitted_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 36
  %803 = ptrtoint ptr %rx_permitted_frms to i32
  call void @__asan_loadN_noabort(i32 %803, i32 2)
  %804 = load i16, ptr %rx_permitted_frms, align 1
  %conv815 = zext i16 %804 to i64
  %incdec.ptr816 = getelementptr i64, ptr %ptr.71623, i32 24
  %805 = ptrtoint ptr %incdec.ptr814 to i32
  call void @__asan_store8_noabort(i32 %805)
  store i64 %conv815, ptr %incdec.ptr814, align 8
  %rx_vp_reset_discarded_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 37
  %806 = ptrtoint ptr %rx_vp_reset_discarded_frms to i32
  call void @__asan_loadN_noabort(i32 %806, i32 8)
  %807 = load i64, ptr %rx_vp_reset_discarded_frms, align 1
  %incdec.ptr817 = getelementptr i64, ptr %ptr.71623, i32 25
  %808 = ptrtoint ptr %incdec.ptr816 to i32
  call void @__asan_store8_noabort(i32 %808)
  store i64 %807, ptr %incdec.ptr816, align 8
  %rx_wol_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 38
  %809 = ptrtoint ptr %rx_wol_frms to i32
  call void @__asan_loadN_noabort(i32 %809, i32 8)
  %810 = load i64, ptr %rx_wol_frms, align 1
  %incdec.ptr818 = getelementptr i64, ptr %ptr.71623, i32 26
  %811 = ptrtoint ptr %incdec.ptr817 to i32
  call void @__asan_store8_noabort(i32 %811)
  store i64 %810, ptr %incdec.ptr817, align 8
  %tx_vp_reset_discarded_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %732, i32 0, i32 39
  %812 = ptrtoint ptr %tx_vp_reset_discarded_frms to i32
  call void @__asan_loadN_noabort(i32 %812, i32 8)
  %813 = load i64, ptr %tx_vp_reset_discarded_frms, align 1
  %814 = ptrtoint ptr %incdec.ptr818 to i32
  call void @__asan_store8_noabort(i32 %814)
  store i64 %813, ptr %incdec.ptr818, align 8
  br label %cleanup820

cleanup820:                                       ; preds = %if.end770, %if.then768
  %ptr.8 = getelementptr i64, ptr %ptr.71623, i32 27
  %inc824 = add nuw nsw i32 %k.41624, 1
  %815 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load i32, ptr %no_of_vpath.i, align 4
  %cmp758 = icmp slt i32 %inc824, %816
  br i1 %cmp758, label %cleanup820.for.body760_crit_edge, label %cleanup820.for.end825_crit_edge

cleanup820.for.end825_crit_edge:                  ; preds = %cleanup820
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end825

cleanup820.for.body760_crit_edge:                 ; preds = %cleanup820
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body760

for.end825:                                       ; preds = %cleanup820.for.end825_crit_edge, %for.end754.for.end825_crit_edge
  %ptr.7.lcssa = phi ptr [ %incdec.ptr755, %for.end754.for.end825_crit_edge ], [ %ptr.8, %cleanup820.for.end825_crit_edge ]
  %incdec.ptr826 = getelementptr i64, ptr %ptr.7.lcssa, i32 1
  %817 = ptrtoint ptr %ptr.7.lcssa to i32
  call void @__asan_store8_noabort(i32 %817)
  store i64 0, ptr %ptr.7.lcssa, align 8
  %stats = getelementptr i8, ptr %dev, i32 9356
  %818 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %stats, align 4
  %conv827 = zext i32 %819 to i64
  %incdec.ptr828 = getelementptr i64, ptr %ptr.7.lcssa, i32 2
  %820 = ptrtoint ptr %incdec.ptr826 to i32
  call void @__asan_store8_noabort(i32 %820)
  store i64 %conv827, ptr %incdec.ptr826, align 8
  %vpath_open_fail = getelementptr i8, ptr %dev, i32 9360
  %821 = ptrtoint ptr %vpath_open_fail to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %vpath_open_fail, align 4
  %conv830 = zext i32 %822 to i64
  %incdec.ptr831 = getelementptr i64, ptr %ptr.7.lcssa, i32 3
  %823 = ptrtoint ptr %incdec.ptr828 to i32
  call void @__asan_store8_noabort(i32 %823)
  store i64 %conv830, ptr %incdec.ptr828, align 8
  %link_up = getelementptr i8, ptr %dev, i32 9364
  %824 = ptrtoint ptr %link_up to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %link_up, align 4
  %conv833 = zext i32 %825 to i64
  %incdec.ptr834 = getelementptr i64, ptr %ptr.7.lcssa, i32 4
  %826 = ptrtoint ptr %incdec.ptr831 to i32
  call void @__asan_store8_noabort(i32 %826)
  store i64 %conv833, ptr %incdec.ptr831, align 8
  %link_down = getelementptr i8, ptr %dev, i32 9368
  %827 = ptrtoint ptr %link_down to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %link_down, align 4
  %conv836 = zext i32 %828 to i64
  %incdec.ptr837 = getelementptr i64, ptr %ptr.7.lcssa, i32 5
  %829 = ptrtoint ptr %incdec.ptr834 to i32
  call void @__asan_store8_noabort(i32 %829)
  store i64 %conv836, ptr %incdec.ptr834, align 8
  %830 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load i32, ptr %no_of_vpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %831)
  %cmp8401626 = icmp sgt i32 %831, 0
  br i1 %cmp8401626, label %for.body842.lr.ph, label %for.end825.for.end921_crit_edge

for.end825.for.end921_crit_edge:                  ; preds = %for.end825
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end921

for.body842.lr.ph:                                ; preds = %for.end825
  %vpaths843 = getelementptr i8, ptr %dev, i32 9280
  %add.ptr852 = getelementptr i64, ptr %ptr.7.lcssa, i32 6
  %add.ptr858 = getelementptr i64, ptr %ptr.7.lcssa, i32 7
  %add.ptr865 = getelementptr i64, ptr %ptr.7.lcssa, i32 8
  %add.ptr872 = getelementptr i64, ptr %ptr.7.lcssa, i32 9
  %add.ptr878 = getelementptr i64, ptr %ptr.7.lcssa, i32 10
  %add.ptr885 = getelementptr i64, ptr %ptr.7.lcssa, i32 11
  %add.ptr891 = getelementptr i64, ptr %ptr.7.lcssa, i32 12
  %add.ptr897 = getelementptr i64, ptr %ptr.7.lcssa, i32 13
  %add.ptr910 = getelementptr i64, ptr %ptr.7.lcssa, i32 14
  %add.ptr917 = getelementptr i64, ptr %ptr.7.lcssa, i32 15
  br label %for.body842

for.body842:                                      ; preds = %for.body842.for.body842_crit_edge, %for.body842.lr.ph
  %k.51627 = phi i32 [ 0, %for.body842.lr.ph ], [ %inc920, %for.body842.for.body842_crit_edge ]
  %832 = ptrtoint ptr %vpaths843 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %vpaths843, align 8
  %tx_frms846 = getelementptr %struct.vxge_vpath, ptr %833, i32 %k.51627, i32 0, i32 9, i32 1
  %834 = ptrtoint ptr %tx_frms846 to i32
  call void @__asan_load8_noabort(i32 %834)
  %835 = load i64, ptr %tx_frms846, align 8
  %836 = ptrtoint ptr %incdec.ptr837 to i32
  call void @__asan_load8_noabort(i32 %836)
  %837 = load i64, ptr %incdec.ptr837, align 8
  %add = add i64 %837, %835
  store i64 %add, ptr %incdec.ptr837, align 8
  %838 = load ptr, ptr %vpaths843, align 8
  %tx_errors = getelementptr %struct.vxge_vpath, ptr %838, i32 %k.51627, i32 0, i32 9, i32 3
  %839 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %tx_errors, align 8
  %conv851 = zext i32 %840 to i64
  %841 = ptrtoint ptr %add.ptr852 to i32
  call void @__asan_load8_noabort(i32 %841)
  %842 = load i64, ptr %add.ptr852, align 8
  %add853 = add i64 %842, %conv851
  store i64 %add853, ptr %add.ptr852, align 8
  %843 = load ptr, ptr %vpaths843, align 8
  %tx_bytes = getelementptr %struct.vxge_vpath, ptr %843, i32 %k.51627, i32 0, i32 9, i32 2
  %844 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %844)
  %845 = load i64, ptr %tx_bytes, align 8
  %846 = ptrtoint ptr %add.ptr858 to i32
  call void @__asan_load8_noabort(i32 %846)
  %847 = load i64, ptr %add.ptr858, align 8
  %add859 = add i64 %847, %845
  store i64 %add859, ptr %add.ptr858, align 8
  %848 = load ptr, ptr %vpaths843, align 8
  %txd_not_free = getelementptr %struct.vxge_vpath, ptr %848, i32 %k.51627, i32 0, i32 9, i32 4
  %849 = ptrtoint ptr %txd_not_free to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %txd_not_free, align 4
  %conv864 = zext i32 %850 to i64
  %851 = ptrtoint ptr %add.ptr865 to i32
  call void @__asan_load8_noabort(i32 %851)
  %852 = load i64, ptr %add.ptr865, align 8
  %add866 = add i64 %852, %conv864
  store i64 %add866, ptr %add.ptr865, align 8
  %853 = load ptr, ptr %vpaths843, align 8
  %txd_out_of_desc = getelementptr %struct.vxge_vpath, ptr %853, i32 %k.51627, i32 0, i32 9, i32 5
  %854 = ptrtoint ptr %txd_out_of_desc to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load i32, ptr %txd_out_of_desc, align 8
  %conv871 = zext i32 %855 to i64
  %856 = ptrtoint ptr %add.ptr872 to i32
  call void @__asan_load8_noabort(i32 %856)
  %857 = load i64, ptr %add.ptr872, align 8
  %add873 = add i64 %857, %conv871
  store i64 %add873, ptr %add.ptr872, align 8
  %858 = load ptr, ptr %vpaths843, align 8
  %rx_frms877 = getelementptr %struct.vxge_vpath, ptr %858, i32 %k.51627, i32 1, i32 14, i32 1
  %859 = ptrtoint ptr %rx_frms877 to i32
  call void @__asan_load8_noabort(i32 %859)
  %860 = load i64, ptr %rx_frms877, align 8
  %861 = ptrtoint ptr %add.ptr878 to i32
  call void @__asan_load8_noabort(i32 %861)
  %862 = load i64, ptr %add.ptr878, align 8
  %add879 = add i64 %862, %860
  store i64 %add879, ptr %add.ptr878, align 8
  %863 = load ptr, ptr %vpaths843, align 8
  %rx_errors = getelementptr %struct.vxge_vpath, ptr %863, i32 %k.51627, i32 1, i32 14, i32 4
  %864 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load i32, ptr %rx_errors, align 8
  %conv884 = zext i32 %865 to i64
  %866 = ptrtoint ptr %add.ptr885 to i32
  call void @__asan_load8_noabort(i32 %866)
  %867 = load i64, ptr %add.ptr885, align 8
  %add886 = add i64 %867, %conv884
  store i64 %add886, ptr %add.ptr885, align 8
  %868 = load ptr, ptr %vpaths843, align 8
  %rx_bytes = getelementptr %struct.vxge_vpath, ptr %868, i32 %k.51627, i32 1, i32 14, i32 3
  %869 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %869)
  %870 = load i64, ptr %rx_bytes, align 8
  %871 = ptrtoint ptr %add.ptr891 to i32
  call void @__asan_load8_noabort(i32 %871)
  %872 = load i64, ptr %add.ptr891, align 8
  %add892 = add i64 %872, %870
  store i64 %add892, ptr %add.ptr891, align 8
  %873 = load ptr, ptr %vpaths843, align 8
  %rx_mcast = getelementptr %struct.vxge_vpath, ptr %873, i32 %k.51627, i32 1, i32 14, i32 2
  %874 = ptrtoint ptr %rx_mcast to i32
  call void @__asan_load8_noabort(i32 %874)
  %875 = load i64, ptr %rx_mcast, align 8
  %876 = ptrtoint ptr %add.ptr897 to i32
  call void @__asan_load8_noabort(i32 %876)
  %877 = load i64, ptr %add.ptr897, align 8
  %add898 = add i64 %877, %875
  store i64 %add898, ptr %add.ptr897, align 8
  %878 = load ptr, ptr %vpaths843, align 8
  %pci_map_fail = getelementptr %struct.vxge_vpath, ptr %878, i32 %k.51627, i32 0, i32 9, i32 6
  %879 = ptrtoint ptr %pci_map_fail to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %pci_map_fail, align 4
  %pci_map_fail907 = getelementptr %struct.vxge_vpath, ptr %878, i32 %k.51627, i32 1, i32 14, i32 7
  %881 = ptrtoint ptr %pci_map_fail907 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %pci_map_fail907, align 4
  %add908 = add i32 %882, %880
  %conv909 = zext i32 %add908 to i64
  %883 = ptrtoint ptr %add.ptr910 to i32
  call void @__asan_load8_noabort(i32 %883)
  %884 = load i64, ptr %add.ptr910, align 8
  %add911 = add i64 %884, %conv909
  store i64 %add911, ptr %add.ptr910, align 8
  %885 = load ptr, ptr %vpaths843, align 8
  %skb_alloc_fail = getelementptr %struct.vxge_vpath, ptr %885, i32 %k.51627, i32 1, i32 14, i32 8
  %886 = ptrtoint ptr %skb_alloc_fail to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load i32, ptr %skb_alloc_fail, align 8
  %conv916 = zext i32 %887 to i64
  %888 = ptrtoint ptr %add.ptr917 to i32
  call void @__asan_load8_noabort(i32 %888)
  %889 = load i64, ptr %add.ptr917, align 8
  %add918 = add i64 %889, %conv916
  store i64 %add918, ptr %add.ptr917, align 8
  %inc920 = add nuw nsw i32 %k.51627, 1
  %890 = ptrtoint ptr %no_of_vpath.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %no_of_vpath.i, align 4
  %cmp840 = icmp slt i32 %inc920, %891
  br i1 %cmp840, label %for.body842.for.body842_crit_edge, label %for.body842.for.end921_crit_edge

for.body842.for.end921_crit_edge:                 ; preds = %for.body842
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end921

for.body842.for.body842_crit_edge:                ; preds = %for.body842
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body842

for.end921:                                       ; preds = %for.body842.for.end921_crit_edge, %for.end825.for.end921_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i1597) #12
  br label %cleanup923

cleanup923:                                       ; preds = %for.end921, %if.then21, %if.then9, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vxge_ethtool_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %no_of_vpath = getelementptr i8, ptr %dev, i32 9044
  %0 = ptrtoint ptr %no_of_vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %no_of_vpath, align 4
  %max_config_port = getelementptr i8, ptr %dev, i32 9276
  %2 = ptrtoint ptr %max_config_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_config_port, align 4
  %reass.mul = mul i32 %1, 148
  %reass.mul24 = mul i32 %3, 107
  %add14 = add i32 %reass.mul, 21
  %add15 = add i32 %add14, %reass.mul24
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add15, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxge_fw_flash(ptr noundef %dev, ptr noundef %parms) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %max_vpath_supported = getelementptr i8, ptr %dev, i32 9040
  %0 = ptrtoint ptr %max_vpath_supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_vpath_supported, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp.not = icmp eq i32 %1, 17
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef %dev) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %parms, i32 0, i32 2
  %call11 = tail call i32 @vxge_fw_upgrade(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end6 ], [ %call11, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vxge_ethtool_get_link_ksettings(ptr noundef %dev, ptr nocapture noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5120, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5120, ptr %advertising, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %port, align 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not.i, i32 10000, i32 -1
  %spec.select37 = select i1 %tobool.not.i, i8 1, i8 -1
  %10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select37, ptr %12, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vxge_ethtool_set_link_ksettings(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %3)
  %cmp3.not = icmp eq i32 %3, 10000
  br i1 %cmp3.not, label %lor.lhs.false5, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp8.not = icmp eq i8 %5, 1
  %spec.select = select i1 %cmp8.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %lor.lhs.false5, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_mgmt_reg_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_device_getpause_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_device_setpause_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_device_flick_link_led(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_device_xmac_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_driver_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_device_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_fw_upgrade(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !411, !413, !414}
!llvm.module.flags = !{!415, !416, !417, !418, !419, !420, !421, !422}
!llvm.ident = !{!423}

!0 = !{ptr @vxge_ethtool_ops, !1, !"vxge_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1135, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 111, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 112, i32 25}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 147, i32 5}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vxge_ethtool_gregs._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @vxge_ethtool_gregs._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 608, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 611, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 613, i32 4}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 615, i32 4}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 617, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 619, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 621, i32 4}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 623, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 625, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 627, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 629, i32 4}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 631, i32 4}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 633, i32 4}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 635, i32 4}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 637, i32 4}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 639, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 641, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 643, i32 4}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 645, i32 4}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 647, i32 4}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 649, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 651, i32 4}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 653, i32 4}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 655, i32 4}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 657, i32 4}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 659, i32 4}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 661, i32 4}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 663, i32 4}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 665, i32 4}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 667, i32 4}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 669, i32 4}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 671, i32 4}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 673, i32 4}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 675, i32 4}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 677, i32 4}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 679, i32 4}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 681, i32 4}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 683, i32 4}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 685, i32 4}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 687, i32 4}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 689, i32 4}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 691, i32 4}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 693, i32 4}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 695, i32 4}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 697, i32 4}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 699, i32 4}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 701, i32 4}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 703, i32 4}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 705, i32 4}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 707, i32 4}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 709, i32 4}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 711, i32 4}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 713, i32 4}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 715, i32 4}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 717, i32 4}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 719, i32 4}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 721, i32 4}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 723, i32 4}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 725, i32 4}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 727, i32 4}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 729, i32 4}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 731, i32 4}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 735, i32 3}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 738, i32 4}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 746, i32 4}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 748, i32 4}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 750, i32 4}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 754, i32 4}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 756, i32 4}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 758, i32 4}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 760, i32 4}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 762, i32 4}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 766, i32 3}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 769, i32 4}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 771, i32 4}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 797, i32 4}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 799, i32 4}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 801, i32 4}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 803, i32 4}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 805, i32 4}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 807, i32 4}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 809, i32 4}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 811, i32 4}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 813, i32 4}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 815, i32 4}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 817, i32 4}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 819, i32 4}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 821, i32 4}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 827, i32 4}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 873, i32 4}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 877, i32 4}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 889, i32 4}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 891, i32 4}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 893, i32 4}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 895, i32 4}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 897, i32 4}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 899, i32 4}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 901, i32 4}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 903, i32 4}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 905, i32 4}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 907, i32 4}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 909, i32 4}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 911, i32 4}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 913, i32 4}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 915, i32 4}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 917, i32 4}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 919, i32 4}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 921, i32 4}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 923, i32 4}
!231 = !{ptr @.str.115, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 925, i32 4}
!233 = !{ptr @.str.116, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 927, i32 4}
!235 = !{ptr @.str.117, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 929, i32 4}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 931, i32 4}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 933, i32 4}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 937, i32 4}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 939, i32 4}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 941, i32 4}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 943, i32 4}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 945, i32 4}
!251 = !{ptr @.str.125, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 947, i32 4}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 949, i32 4}
!255 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 951, i32 4}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 953, i32 4}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 955, i32 4}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 959, i32 3}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 962, i32 4}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 964, i32 4}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 966, i32 4}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 968, i32 4}
!271 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 970, i32 4}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 972, i32 4}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 974, i32 4}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 976, i32 4}
!279 = !{ptr @.str.139, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 978, i32 4}
!281 = !{ptr @.str.140, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 980, i32 4}
!283 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 982, i32 4}
!285 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 984, i32 4}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 986, i32 4}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 988, i32 4}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 990, i32 4}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 992, i32 4}
!295 = !{ptr @.str.147, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 994, i32 4}
!297 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 996, i32 4}
!299 = !{ptr @.str.149, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 998, i32 4}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1000, i32 4}
!303 = !{ptr @.str.151, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1002, i32 4}
!305 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1005, i32 5}
!307 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1007, i32 4}
!309 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1009, i32 4}
!311 = !{ptr @.str.155, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1011, i32 4}
!313 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1013, i32 4}
!315 = !{ptr @.str.157, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1015, i32 4}
!317 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1017, i32 4}
!319 = !{ptr @.str.159, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1019, i32 4}
!321 = !{ptr @.str.160, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1022, i32 5}
!323 = !{ptr @.str.161, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1026, i32 3}
!325 = !{ptr @.str.162, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1029, i32 4}
!327 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1031, i32 4}
!329 = !{ptr @.str.164, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1033, i32 4}
!331 = !{ptr @.str.165, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1035, i32 4}
!333 = !{ptr @.str.166, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1037, i32 4}
!335 = !{ptr @.str.167, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1039, i32 4}
!337 = !{ptr @.str.168, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1041, i32 4}
!339 = !{ptr @.str.169, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1043, i32 4}
!341 = !{ptr @.str.170, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1045, i32 4}
!343 = !{ptr @.str.171, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1047, i32 4}
!345 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1049, i32 4}
!347 = !{ptr @.str.173, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1051, i32 4}
!349 = !{ptr @.str.174, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1053, i32 4}
!351 = !{ptr @.str.175, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1055, i32 4}
!353 = !{ptr @.str.176, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1057, i32 4}
!355 = !{ptr @.str.177, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1059, i32 4}
!357 = !{ptr @.str.178, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1061, i32 4}
!359 = !{ptr @.str.179, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1063, i32 4}
!361 = !{ptr @.str.180, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1065, i32 4}
!363 = !{ptr @.str.181, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1067, i32 4}
!365 = !{ptr @.str.182, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1069, i32 4}
!367 = !{ptr @.str.183, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1071, i32 4}
!369 = !{ptr @.str.184, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1073, i32 4}
!371 = !{ptr @.str.185, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1075, i32 4}
!373 = !{ptr @.str.186, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1077, i32 4}
!375 = !{ptr @.str.187, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1079, i32 4}
!377 = !{ptr @.str.188, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1081, i32 4}
!379 = !{ptr @ethtool_driver_stats_keys, !380, !"ethtool_driver_stats_keys", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 21, i32 19}
!381 = !{ptr @.str.189, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 249, i32 3}
!383 = !{ptr @.str.190, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @vxge_get_ethtool_stats._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @vxge_get_ethtool_stats._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.192, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 259, i32 3}
!388 = !{ptr @vxge_get_ethtool_stats._entry.191, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @vxge_get_ethtool_stats._entry_ptr.193, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.195, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 270, i32 3}
!392 = !{ptr @vxge_get_ethtool_stats._entry.194, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @vxge_get_ethtool_stats._entry_ptr.196, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.198, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 280, i32 4}
!396 = !{ptr @vxge_get_ethtool_stats._entry.197, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @vxge_get_ethtool_stats._entry_ptr.199, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.201, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 287, i32 3}
!400 = !{ptr @vxge_get_ethtool_stats._entry.200, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @vxge_get_ethtool_stats._entry_ptr.202, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.204, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 294, i32 3}
!404 = !{ptr @vxge_get_ethtool_stats._entry.203, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @vxge_get_ethtool_stats._entry_ptr.205, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.206, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1121, i32 3}
!408 = !{ptr @.str.207, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @vxge_fw_flash._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @vxge_fw_flash._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.209, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c", i32 1127, i32 3}
!413 = !{ptr @vxge_fw_flash._entry.208, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @vxge_fw_flash._entry_ptr.210, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{i32 1, !"wchar_size", i32 2}
!416 = !{i32 1, !"min_enum_size", i32 4}
!417 = !{i32 8, !"branch-target-enforcement", i32 0}
!418 = !{i32 8, !"sign-return-address", i32 0}
!419 = !{i32 8, !"sign-return-address-all", i32 0}
!420 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!421 = !{i32 7, !"uwtable", i32 1}
!422 = !{i32 7, !"frame-pointer", i32 2}
!423 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!424 = !{!"auto-init"}
