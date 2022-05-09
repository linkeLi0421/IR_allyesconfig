; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stmmac_stats = type { [32 x i8], i32, i32 }
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
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.122, %struct.anon.123 }
%struct.anon.122 = type { i32, i32, i32 }
%struct.anon.123 = type { i32, i32, i32, i32 }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rgmii_adv = type { i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.126, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.126 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.127, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%union.anon.127 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@stmmac_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @stmmac_ethtool_getdrvinfo, ptr @stmmac_ethtool_get_regs_len, ptr @stmmac_ethtool_gregs, ptr @stmmac_get_wol, ptr @stmmac_set_wol, ptr @stmmac_ethtool_getmsglevel, ptr @stmmac_ethtool_setmsglevel, ptr @stmmac_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_get_coalesce, ptr @stmmac_set_coalesce, ptr @stmmac_get_ringparam, ptr @stmmac_set_ringparam, ptr null, ptr @stmmac_get_pauseparam, ptr @stmmac_set_pauseparam, ptr @stmmac_selftest_run, ptr @stmmac_get_strings, ptr null, ptr @stmmac_get_ethtool_stats, ptr @stmmac_check_if_running, ptr null, ptr null, ptr null, ptr @stmmac_get_sset_count, ptr @stmmac_get_rxnfc, ptr null, ptr null, ptr null, ptr @stmmac_get_rxfh_key_size, ptr @stmmac_get_rxfh_indir_size, ptr @stmmac_get_rxfh, ptr @stmmac_set_rxfh, ptr null, ptr null, ptr @stmmac_get_channels, ptr @stmmac_set_channels, ptr null, ptr null, ptr null, ptr @stmmac_get_ts_info, ptr null, ptr null, ptr @stmmac_ethtool_op_get_eee, ptr @stmmac_ethtool_op_set_eee, ptr @stmmac_get_tunable, ptr @stmmac_set_tunable, ptr @stmmac_get_per_queue_coalesce, ptr @stmmac_set_per_queue_coalesce, ptr @stmmac_ethtool_get_link_ksettings, ptr @stmmac_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st_gmac\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st_xgmac\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st_mac100\00", [22 x i8] zeroinitializer }, align 32
@stmmac_set_wol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016stmmac: wakeup enable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stmmac_set_wol\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c\00", [43 x i8] zeroinitializer }, align 32
@stmmac_set_wol._entry_ptr = internal global ptr @stmmac_set_wol._entry, section ".printk_index", align 4
@stmmac_mmc = internal constant { [85 x %struct.stmmac_stats], [856 x i8] } { [85 x %struct.stmmac_stats] [%struct.stmmac_stats { [32 x i8] c"mmc_tx_octetcount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15296 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_framecount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15300 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_broadcastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 15304 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_multicastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 15308 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_64_octets_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15312 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_65_to_127_octets_gb\00\00\00\00\00\00", i32 4, i32 15316 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_128_to_255_octets_gb\00\00\00\00\00", i32 4, i32 15320 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_256_to_511_octets_gb\00\00\00\00\00", i32 4, i32 15324 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_512_to_1023_octets_gb\00\00\00\00", i32 4, i32 15328 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_1024_to_max_octets_gb\00\00\00\00", i32 4, i32 15332 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_unicast_gb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15336 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_multicast_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15340 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_broadcast_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15344 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_underflow_error\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15348 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_singlecol_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15352 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_multicol_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15356 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15360 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_latecol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15364 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_exesscol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15368 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_carrier_error\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15372 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_octetcount_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15376 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_framecount_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15380 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_excessdef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15384 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_pause_frame\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15388 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_vlan_frame_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15392 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_framecount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15396 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_octetcount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15400 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_octetcount_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15404 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_broadcastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 15408 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_multicastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 15412 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_crc_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15416 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_align_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15420 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_run_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15424 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_jabber_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15428 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_undersize_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15432 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_oversize_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15436 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_64_octets_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15440 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_65_to_127_octets_gb\00\00\00\00\00\00", i32 4, i32 15444 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_128_to_255_octets_gb\00\00\00\00\00", i32 4, i32 15448 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_256_to_511_octets_gb\00\00\00\00\00", i32 4, i32 15452 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_512_to_1023_octets_gb\00\00\00\00", i32 4, i32 15456 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_1024_to_max_octets_gb\00\00\00\00", i32 4, i32 15460 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_unicast_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15464 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_length_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15468 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_autofrangetype\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15472 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15476 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_fifo_overflow\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15480 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_vlan_frames_gb\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15484 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_watchdog_error\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15488 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipc_intr_mask\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15492 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipc_intr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15496 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15500 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_hderr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15504 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_nopay\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15508 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_frag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15512 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_udsbl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15516 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_gd_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15520 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_hderr_octets\00\00\00\00\00\00\00\00", i32 4, i32 15524 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_nopay_octets\00\00\00\00\00\00\00\00", i32 4, i32 15528 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_frag_octets\00\00\00\00\00\00\00\00\00", i32 4, i32 15532 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_udsbl_octets\00\00\00\00\00\00\00\00", i32 4, i32 15536 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_gd_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15540 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_hderr_octets\00\00\00\00\00\00\00\00", i32 4, i32 15544 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_nopay_octets\00\00\00\00\00\00\00\00", i32 4, i32 15548 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15552 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_hderr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15556 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_nopay\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15560 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15564 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15568 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15572 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15576 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15580 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15584 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_gd_octets\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15588 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_err_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15592 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_gd_octets\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15596 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_err_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15600 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_gd_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15604 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_err_octets\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15608 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_fpe_fragment_cntr\00\00\00\00\00\00\00\00", i32 4, i32 15612 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_hold_req_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15616 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_packet_assembly_err_cntr\00", i32 4, i32 15620 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_packet_smd_err_cntr\00\00\00\00\00\00", i32 4, i32 15624 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_packet_assembly_ok_cntr\00\00", i32 4, i32 15628 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_fpe_fragment_cntr\00\00\00\00\00\00\00\00", i32 4, i32 15632 }], [856 x i8] zeroinitializer }, align 32
@stmmac_gstrings_stats = internal constant { [115 x %struct.stmmac_stats], [1128 x i8] } { [115 x %struct.stmmac_stats] [%struct.stmmac_stats { [32 x i8] c"tx_underflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14080 }, %struct.stmmac_stats { [32 x i8] c"tx_carrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14084 }, %struct.stmmac_stats { [32 x i8] c"tx_losscarrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14088 }, %struct.stmmac_stats { [32 x i8] c"vlan_tag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14092 }, %struct.stmmac_stats { [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14096 }, %struct.stmmac_stats { [32 x i8] c"tx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14100 }, %struct.stmmac_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14104 }, %struct.stmmac_stats { [32 x i8] c"tx_frame_flushed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14108 }, %struct.stmmac_stats { [32 x i8] c"tx_payload_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14112 }, %struct.stmmac_stats { [32 x i8] c"tx_ip_header_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14116 }, %struct.stmmac_stats { [32 x i8] c"rx_desc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14120 }, %struct.stmmac_stats { [32 x i8] c"sa_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14124 }, %struct.stmmac_stats { [32 x i8] c"overflow_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14128 }, %struct.stmmac_stats { [32 x i8] c"ipc_csum_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14132 }, %struct.stmmac_stats { [32 x i8] c"rx_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14136 }, %struct.stmmac_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14140 }, %struct.stmmac_stats { [32 x i8] c"dribbling_bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14144 }, %struct.stmmac_stats { [32 x i8] c"rx_length\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14148 }, %struct.stmmac_stats { [32 x i8] c"rx_mii\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14152 }, %struct.stmmac_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14156 }, %struct.stmmac_stats { [32 x i8] c"rx_gmac_overflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14160 }, %struct.stmmac_stats { [32 x i8] c"rx_watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14164 }, %struct.stmmac_stats { [32 x i8] c"da_rx_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14168 }, %struct.stmmac_stats { [32 x i8] c"sa_rx_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14172 }, %struct.stmmac_stats { [32 x i8] c"rx_missed_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14176 }, %struct.stmmac_stats { [32 x i8] c"rx_overflow_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14180 }, %struct.stmmac_stats { [32 x i8] c"rx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14184 }, %struct.stmmac_stats { [32 x i8] c"rx_split_hdr_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14188 }, %struct.stmmac_stats { [32 x i8] c"tx_undeflow_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14192 }, %struct.stmmac_stats { [32 x i8] c"tx_process_stopped_irq\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14196 }, %struct.stmmac_stats { [32 x i8] c"tx_jabber_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14200 }, %struct.stmmac_stats { [32 x i8] c"rx_overflow_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14204 }, %struct.stmmac_stats { [32 x i8] c"rx_buf_unav_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14208 }, %struct.stmmac_stats { [32 x i8] c"rx_process_stopped_irq\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14212 }, %struct.stmmac_stats { [32 x i8] c"rx_watchdog_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14216 }, %struct.stmmac_stats { [32 x i8] c"tx_early_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14220 }, %struct.stmmac_stats { [32 x i8] c"fatal_bus_error_irq\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14224 }, %struct.stmmac_stats { [32 x i8] c"rx_early_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14228 }, %struct.stmmac_stats { [32 x i8] c"threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14232 }, %struct.stmmac_stats { [32 x i8] c"tx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14236 }, %struct.stmmac_stats { [32 x i8] c"rx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14240 }, %struct.stmmac_stats { [32 x i8] c"normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14244 }, %struct.stmmac_stats { [32 x i8] c"rx_normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14248 }, %struct.stmmac_stats { [32 x i8] c"napi_poll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14252 }, %struct.stmmac_stats { [32 x i8] c"tx_normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14256 }, %struct.stmmac_stats { [32 x i8] c"tx_clean\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14260 }, %struct.stmmac_stats { [32 x i8] c"tx_set_ic_bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14264 }, %struct.stmmac_stats { [32 x i8] c"irq_receive_pmt_irq_n\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14268 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14272 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14276 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_csum_offload_irq_n\00\00\00\00\00\00\00", i32 4, i32 14280 }, %struct.stmmac_stats { [32 x i8] c"irq_tx_path_in_lpi_mode_n\00\00\00\00\00\00\00", i32 4, i32 14284 }, %struct.stmmac_stats { [32 x i8] c"irq_tx_path_exit_lpi_mode_n\00\00\00\00\00", i32 4, i32 14288 }, %struct.stmmac_stats { [32 x i8] c"irq_rx_path_in_lpi_mode_n\00\00\00\00\00\00\00", i32 4, i32 14292 }, %struct.stmmac_stats { [32 x i8] c"irq_rx_path_exit_lpi_mode_n\00\00\00\00\00", i32 4, i32 14296 }, %struct.stmmac_stats { [32 x i8] c"phy_eee_wakeup_error_n\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14300 }, %struct.stmmac_stats { [32 x i8] c"ip_hdr_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14304 }, %struct.stmmac_stats { [32 x i8] c"ip_payload_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14308 }, %struct.stmmac_stats { [32 x i8] c"ip_csum_bypassed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14312 }, %struct.stmmac_stats { [32 x i8] c"ipv4_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14316 }, %struct.stmmac_stats { [32 x i8] c"ipv6_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14320 }, %struct.stmmac_stats { [32 x i8] c"no_ptp_rx_msg_type_ext\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14324 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_sync\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14328 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_follow_up\00\00\00\00\00\00\00", i32 4, i32 14332 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_delay_req\00\00\00\00\00\00\00", i32 4, i32 14336 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_delay_resp\00\00\00\00\00\00", i32 4, i32 14340 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_pdelay_req\00\00\00\00\00\00", i32 4, i32 14344 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_pdelay_resp\00\00\00\00\00", i32 4, i32 14348 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_pdelay_follow_up", i32 4, i32 14352 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_announce\00\00\00\00\00\00\00\00", i32 4, i32 14356 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_management\00\00\00\00\00\00", i32 4, i32 14360 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_pkt_reserved_type\00\00\00\00", i32 4, i32 14364 }, %struct.stmmac_stats { [32 x i8] c"ptp_frame_type\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14368 }, %struct.stmmac_stats { [32 x i8] c"ptp_ver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14372 }, %struct.stmmac_stats { [32 x i8] c"timestamp_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14376 }, %struct.stmmac_stats { [32 x i8] c"av_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14380 }, %struct.stmmac_stats { [32 x i8] c"av_tagged_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14384 }, %struct.stmmac_stats { [32 x i8] c"vlan_tag_priority_val\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14388 }, %struct.stmmac_stats { [32 x i8] c"l3_filter_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14392 }, %struct.stmmac_stats { [32 x i8] c"l4_filter_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14396 }, %struct.stmmac_stats { [32 x i8] c"l3_l4_filter_no_match\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14400 }, %struct.stmmac_stats { [32 x i8] c"irq_pcs_ane_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14404 }, %struct.stmmac_stats { [32 x i8] c"irq_pcs_link_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14408 }, %struct.stmmac_stats { [32 x i8] c"irq_rgmii_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14412 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_status_fifo_full\00\00\00\00\00\00\00\00\00", i32 4, i32 14428 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_not_empty\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14432 }, %struct.stmmac_stats { [32 x i8] c"mmtl_fifo_ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14436 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_write\00\00\00\00\00", i32 4, i32 14440 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_wait\00\00\00\00\00\00", i32 4, i32 14444 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_read\00\00\00\00\00\00", i32 4, i32 14448 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_idle\00\00\00\00\00\00", i32 4, i32 14452 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_in_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14456 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_xfer\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14460 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_idle\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14464 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_wait\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14468 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_pause\00\00\00\00\00\00\00\00\00", i32 4, i32 14472 }, %struct.stmmac_stats { [32 x i8] c"mac_gmii_tx_proto_engine\00\00\00\00\00\00\00\00", i32 4, i32 14476 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_level_full\00\00\00\00\00", i32 4, i32 14480 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_above_thresh\00\00\00", i32 4, i32 14484 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_below_thresh\00\00\00", i32 4, i32 14488 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_level_empty\00\00\00\00", i32 4, i32 14492 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_flush\00\00\00\00\00", i32 4, i32 14496 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_read_data\00", i32 4, i32 14500 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_status\00\00\00\00", i32 4, i32 14504 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_idle\00\00\00\00\00\00", i32 4, i32 14508 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_ctrl_active\00\00\00\00\00\00\00\00\00", i32 4, i32 14512 }, %struct.stmmac_stats { [32 x i8] c"mac_rx_frame_ctrl_fifo\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14516 }, %struct.stmmac_stats { [32 x i8] c"mac_gmii_rx_proto_engine\00\00\00\00\00\00\00\00", i32 4, i32 14520 }, %struct.stmmac_stats { [32 x i8] c"tx_tso_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14524 }, %struct.stmmac_stats { [32 x i8] c"tx_tso_nfrags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14528 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_cgce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14532 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_hlbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14536 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_hlbf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14540 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_btre\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14544 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_btrlm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14548 }], [1128 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"q%d_%s\00", [25 x i8] zeroinitializer }, align 32
@stmmac_qstats_tx_string = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"tx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@stmmac_qstats_rx_string = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"rx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"stmmac_ethtool_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1160, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 290, i32 25 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 292, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 294, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 762, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"stmmac_mmc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 183, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"stmmac_gstrings_stats\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 48, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 663, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"stmmac_qstats_tx_string\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 272, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"stmmac_qstats_rx_string\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 278, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [56 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 804, i32 8 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @stmmac_set_wol._entry, ptr @stmmac_set_wol._entry_ptr, ptr @stmmac_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stmmac_mmc, ptr @stmmac_gstrings_stats, ptr @.str.6, ptr @stmmac_qstats_tx_string, ptr @stmmac_qstats_rx_string, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_set_wol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_mmc to i32), i32 3400, i32 4256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_gstrings_stats to i32), i32 4600, i32 5728, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_qstats_tx_string to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_qstats_rx_string to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @stmmac_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @stmmac_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_ethtool_getdrvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %has_gmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %has_gmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_gmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call3 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #16
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  %has_xgmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 64
  %6 = ptrtoint ptr %has_xgmac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %has_xgmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %driver11 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 @strlcpy(ptr noundef %driver11, ptr noundef nonnull @.str.1, i32 noundef 32) #16
  br label %if.end14

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 @strlcpy(ptr noundef %driver11, ptr noundef nonnull @.str.2, i32 noundef 32) #16
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.then6, %if.then
  %8 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat, align 128
  %pdev = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then17.pci_name.exit_crit_edge

if.then17.pci_name.exit_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then17.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then17.pci_name.exit_crit_edge ]
  %call22 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #16
  br label %if.end23

if.end23:                                         ; preds = %pci_name.exit, %if.end14.if.end23_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_ethtool_get_regs_len(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %has_xgmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %has_xgmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_xgmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %. = select i1 %tobool2.not, i32 4192, i32 4460
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14588, %entry.cleanup_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_ethtool_gregs(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %regs, ptr noundef %space) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dump_regs = getelementptr inbounds %struct.stmmac_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %dump_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump_regs, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %5(ptr noundef %1, ptr noundef %space) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end.if.end20_crit_edge, label %land.lhs.true11

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true11:                                  ; preds = %if.end
  %dump_regs14 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dump_regs14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dump_regs14, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %land.lhs.true11.if.end20_crit_edge, label %if.then16

land.lhs.true11.if.end20_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  %ioaddr = getelementptr i8, ptr %dev, i32 2464
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 32
  tail call void %11(ptr noundef %13, ptr noundef %space) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true11.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %plat = getelementptr i8, ptr %dev, i32 17408
  %14 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat, align 128
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 58
  %16 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr i32, ptr %space, i32 55
  %arrayidx24 = getelementptr i32, ptr %space, i32 1088
  %18 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx24, i32 108)
  br label %if.end31

if.else:                                          ; preds = %if.end20
  %has_xgmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 64
  %19 = ptrtoint ptr %has_xgmac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %has_xgmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.then27, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx28 = getelementptr i32, ptr %space, i32 55
  %arrayidx29 = getelementptr i32, ptr %space, i32 1024
  %21 = call ptr @memcpy(ptr %arrayidx28, ptr %arrayidx29, i32 92)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.else.if.end31_crit_edge, %if.then23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_get_wol(ptr noundef %dev, ptr noundef %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %pmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %4 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink, align 8
  tail call void @phylink_ethtool_get_wol(ptr noundef %5, ptr noundef %wol) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 2484
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %device = getelementptr i8, ptr %dev, i32 2472
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %9 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 34, ptr %supported, align 4
  %hw_cap_support = getelementptr i8, ptr %dev, i32 17940
  %10 = ptrtoint ptr %hw_cap_support to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_cap_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.then2.if.end7_crit_edge, label %land.lhs.true

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then2
  %pmt_magic_frame = getelementptr i8, ptr %dev, i32 17444
  %12 = ptrtoint ptr %pmt_magic_frame to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmt_magic_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %supported, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %if.then2.if.end7_crit_edge
  %wolopts = getelementptr i8, ptr %dev, i32 17952
  %15 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wolopts, align 32
  %wolopts8 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %17 = ptrtoint ptr %wolopts8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %wolopts8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_wol(ptr noundef %dev, ptr noundef %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %plat = getelementptr i8, ptr %dev, i32 17408
  %3 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat, align 128
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %pmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %7 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phylink, align 8
  %call3 = tail call i32 @phylink_ethtool_set_wol(ptr noundef %8, ptr noundef %wol) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %11 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7 = icmp ne i32 %12, 0
  %call9 = tail call i32 @device_set_wakeup_enable(ptr noundef %10, i1 noundef zeroext %tobool7) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %hw_cap_support = getelementptr i8, ptr %dev, i32 17940
  %13 = ptrtoint ptr %hw_cap_support to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_cap_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %land.lhs.true

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end11
  %pmt_magic_frame = getelementptr i8, ptr %dev, i32 17444
  %15 = ptrtoint ptr %pmt_magic_frame to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmt_magic_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %wolopts15 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %17 = ptrtoint ptr %wolopts15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts15, align 4
  %and = and i32 %18, -33
  store i32 %and, ptr %wolopts15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %wolopts17 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %19 = ptrtoint ptr %wolopts17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wolopts17, align 4
  %and18 = and i32 %20, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool23.not = icmp eq i32 %20, 0
  br i1 %tobool23.not, label %if.end21.if.end33_crit_edge, label %do.end

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #19
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end21.if.end33_crit_edge
  %.sink57 = phi i32 [ 1, %do.end ], [ 0, %if.end21.if.end33_crit_edge ]
  %21 = xor i1 %tobool23.not, true
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 8
  %call30 = tail call i32 @device_set_wakeup_enable(ptr noundef %23, i1 noundef zeroext %21) #16
  %wol_irq31 = getelementptr i8, ptr %dev, i32 17956
  %24 = ptrtoint ptr %wol_irq31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wol_irq31, align 4
  %call.i56 = tail call i32 @irq_set_irq_wake(i32 noundef %25, i32 noundef %.sink57) #16
  %lock = getelementptr i8, ptr %dev, i32 2484
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %26 = ptrtoint ptr %wolopts17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wolopts17, align 4
  %wolopts35 = getelementptr i8, ptr %dev, i32 17952
  %28 = ptrtoint ptr %wolopts35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %wolopts35, align 32
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end16.cleanup_crit_edge, %if.then5, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ %call3, %if.then2.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_ethtool_getmsglevel(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 17948
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @stmmac_ethtool_setmsglevel(ptr nocapture noundef writeonly %dev, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 17948
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_nway_reset(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 8
  %call1 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef %1) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %plat.i = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat.i, align 128
  %rx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_queues_to_use.i, align 4
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.i.not = icmp eq i32 %5, 0
  br i1 %cmp6.i.not, label %if.else9.i, label %if.then7.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %arrayidx.i = getelementptr i8, ptr %dev, i32 2336
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_coalesce_usecs.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  br label %if.end12.i

if.else9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tx_coalesce_usecs10.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %11 = ptrtoint ptr %tx_coalesce_usecs10.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tx_coalesce_usecs10.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else9.i, %if.then7.i
  %.sink.i = phi i32 [ %10, %if.then7.i ], [ 0, %if.else9.i ]
  %12 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %12, align 4
  %use_riwt.i = getelementptr i8, ptr %dev, i32 18192
  %14 = ptrtoint ptr %use_riwt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use_riwt.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp ne i32 %3, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %if.then14.i, label %if.else18.i

if.then14.i:                                      ; preds = %if.end12.i
  %arrayidx15.i = getelementptr i8, ptr %dev, i32 2368
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15.i, align 4
  %rx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %18 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rx_max_coalesced_frames.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %dev, i32 2428
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16.i, align 4
  %21 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %plat.i, align 128
  %stmmac_clk.i.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %stmmac_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stmmac_clk.i.i, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then14.i.if.end4.i.i_crit_edge

if.then14.i.if.end4.i.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.then14.i
  %25 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plat.i, align 128
  %clk_ref_rate.i.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %26, i32 0, i32 51
  %27 = ptrtoint ptr %clk_ref_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_ref_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.__stmmac_get_coalesce.exit_crit_edge, label %if.then.i.i.if.end4.i.i_crit_edge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.then.i.i.__stmmac_get_coalesce.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__stmmac_get_coalesce.exit

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %if.then14.i.if.end4.i.i_crit_edge
  %clk.0.i.i = phi i32 [ %call.i.i, %if.then14.i.if.end4.i.i_crit_edge ], [ %28, %if.then.i.i.if.end4.i.i_crit_edge ]
  %mul.i.i = shl i32 %20, 8
  %div.i.i = udiv i32 %clk.0.i.i, 1000000
  %div5.i.i = udiv i32 %mul.i.i, %div.i.i
  br label %__stmmac_get_coalesce.exit

if.else18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %rx_max_coalesced_frames19.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %29 = ptrtoint ptr %rx_max_coalesced_frames19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rx_max_coalesced_frames19.i, align 4
  br label %__stmmac_get_coalesce.exit

__stmmac_get_coalesce.exit:                       ; preds = %if.else18.i, %if.end4.i.i, %if.then.i.i.__stmmac_get_coalesce.exit_crit_edge
  %retval.0.i.sink.i = phi i32 [ 0, %if.else18.i ], [ %div5.i.i, %if.end4.i.i ], [ 0, %if.then.i.i.__stmmac_get_coalesce.exit_crit_edge ]
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %30 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.sink.i, ptr %rx_coalesce_usecs.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_coalesce(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_set_coalesce(ptr noundef %dev, ptr noundef %ec, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stmmac_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1024, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024, ptr %tx_max_pending, align 4
  %dma_rx_size = getelementptr i8, ptr %netdev, i32 6784
  %2 = ptrtoint ptr %dma_rx_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_rx_size, align 128
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %dma_tx_size = getelementptr i8, ptr %netdev, i32 8960
  %5 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_tx_size, align 128
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = add i32 %5, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 961, i32 %6)
  %7 = icmp ult i32 %6, 961
  %8 = tail call i32 @llvm.ctpop.i32(i32 %5) #16, !range !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp1.i = icmp ult i32 %8, 2
  %or.cond31 = and i1 %7, %cmp1.i
  br i1 %or.cond31, label %lor.lhs.false8, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %9 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pending, align 4
  %11 = add i32 %10, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 961, i32 %11)
  %12 = icmp ult i32 %11, 961
  %13 = tail call i32 @llvm.ctpop.i32(i32 %10) #16, !range !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp1.i30 = icmp ult i32 %13, 2
  %or.cond32 = and i1 %12, %cmp1.i30
  br i1 %or.cond32, label %if.end, label %lor.lhs.false8.return_crit_edge

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call i32 @stmmac_reinit_ringparam(ptr noundef %netdev, i32 noundef %5, i32 noundef %10) #16
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false8.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ -22, %lor.lhs.false8.return_crit_edge ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr noundef %pause) #3 align 64 {
entry:
  %adv_lp = alloca %struct.rgmii_adv, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adv_lp) #16
  %hw = getelementptr i8, ptr %netdev, i32 2476
  %0 = call ptr @memset(ptr %adv_lp, i32 255, i32 16)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %pcs = getelementptr inbounds %struct.mac_device_info, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %pcs_get_adv_lp = getelementptr inbounds %struct.stmmac_ops, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %pcs_get_adv_lp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcs_get_adv_lp, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true3.if.else_crit_edge, label %if.then

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  %ioaddr = getelementptr i8, ptr %netdev, i32 2464
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 32
  call void %8(ptr noundef %10, ptr noundef nonnull %adv_lp) #16
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %autoneg, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %phylink = getelementptr i8, ptr %netdev, i32 16296
  %12 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phylink, align 8
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %13, ptr noundef %pause) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adv_lp) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_pauseparam(ptr nocapture noundef readonly %netdev, ptr noundef %pause) #3 align 64 {
entry:
  %adv_lp = alloca %struct.rgmii_adv, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adv_lp) #16
  %hw = getelementptr i8, ptr %netdev, i32 2476
  %0 = call ptr @memset(ptr %adv_lp, i32 255, i32 16)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %pcs = getelementptr inbounds %struct.mac_device_info, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %pcs_get_adv_lp = getelementptr inbounds %struct.stmmac_ops, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %pcs_get_adv_lp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcs_get_adv_lp, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true3.if.else_crit_edge, label %if.then

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  %ioaddr = getelementptr i8, ptr %netdev, i32 2464
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 32
  call void %8(ptr noundef %10, ptr noundef nonnull %adv_lp) #16
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %autoneg, align 4
  %12 = ptrtoint ptr %adv_lp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %adv_lp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool13.not, i32 -95, i32 0
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %phylink = getelementptr i8, ptr %netdev, i32 16296
  %14 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phylink, align 8
  %call16 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %15, ptr noundef %pause) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call16, %if.else ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adv_lp) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_selftest_run(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_get_strings(ptr noundef %dev, i32 noundef %stringset, ptr noundef %data) #3 align 64 {
entry:
  %desc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stringset, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb35
  ]

sw.bb:                                            ; preds = %entry
  %asp = getelementptr i8, ptr %dev, i32 17528
  %1 = ptrtoint ptr %asp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %sw.bb.if.end13_crit_edge, label %for.cond.preheader

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

for.cond.preheader:                               ; preds = %sw.bb
  %hw = getelementptr i8, ptr %dev, i32 2476
  %sstats = getelementptr i8, ptr %dev, i32 17024
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.cond.preheader
  %i.082 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end12.for.body_crit_edge ]
  %p.081 = phi ptr [ %data, %for.cond.preheader ], [ %p.1, %if.end12.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #16
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc, align 4, !annotation !36
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %for.body.if.end12_crit_edge, label %land.lhs.true

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

land.lhs.true:                                    ; preds = %for.body
  %safety_feat_dump = getelementptr inbounds %struct.stmmac_ops, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %safety_feat_dump to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %safety_feat_dump, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end12_crit_edge, label %if.end

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end:                                           ; preds = %land.lhs.true
  %call9 = call i32 %9(ptr noundef %sstats, i32 noundef %i.082, ptr noundef null, ptr noundef nonnull %desc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %12 = call ptr @memcpy(ptr %p.081, ptr %11, i32 32)
  %add.ptr = getelementptr i8, ptr %p.081, i32 32
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %for.body.if.end12_crit_edge
  %p.1 = phi ptr [ %p.081, %if.end.if.end12_crit_edge ], [ %add.ptr, %if.then11 ], [ %p.081, %land.lhs.true.if.end12_crit_edge ], [ %p.081, %for.body.if.end12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #16
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, 96
  br i1 %exitcond.not, label %if.end12.if.end13_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end12.if.end13_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %if.end12.if.end13_crit_edge, %sw.bb.if.end13_crit_edge
  %p.2 = phi ptr [ %data, %sw.bb.if.end13_crit_edge ], [ %p.1, %if.end12.if.end13_crit_edge ]
  %rmon = getelementptr i8, ptr %dev, i32 17448
  %13 = ptrtoint ptr %rmon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rmon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.end13.for.body27.preheader_crit_edge, label %if.end13.for.body19_crit_edge

if.end13.for.body19_crit_edge:                    ; preds = %if.end13
  br label %for.body19

if.end13.for.body27.preheader_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27.preheader

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.end13.for.body19_crit_edge
  %i.185 = phi i32 [ %inc22, %for.body19.for.body19_crit_edge ], [ 0, %if.end13.for.body19_crit_edge ]
  %p.384 = phi ptr [ %add.ptr20, %for.body19.for.body19_crit_edge ], [ %p.2, %if.end13.for.body19_crit_edge ]
  %arrayidx = getelementptr [85 x %struct.stmmac_stats], ptr @stmmac_mmc, i32 0, i32 %i.185
  %15 = call ptr @memcpy(ptr %p.384, ptr %arrayidx, i32 32)
  %add.ptr20 = getelementptr i8, ptr %p.384, i32 32
  %inc22 = add nuw nsw i32 %i.185, 1
  %exitcond88.not = icmp eq i32 %inc22, 85
  br i1 %exitcond88.not, label %for.body19.for.body27.preheader_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body19

for.body19.for.body27.preheader_crit_edge:        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27.preheader

for.body27.preheader:                             ; preds = %for.body19.for.body27.preheader_crit_edge, %if.end13.for.body27.preheader_crit_edge
  %p.586.ph = phi ptr [ %p.2, %if.end13.for.body27.preheader_crit_edge ], [ %add.ptr20, %for.body19.for.body27.preheader_crit_edge ]
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body27.preheader
  %i.287 = phi i32 [ %inc33, %for.body27.for.body27_crit_edge ], [ 0, %for.body27.preheader ]
  %p.586 = phi ptr [ %add.ptr31, %for.body27.for.body27_crit_edge ], [ %p.586.ph, %for.body27.preheader ]
  %arrayidx28 = getelementptr [115 x %struct.stmmac_stats], ptr @stmmac_gstrings_stats, i32 0, i32 %i.287
  %16 = call ptr @memcpy(ptr %p.586, ptr %arrayidx28, i32 32)
  %add.ptr31 = getelementptr i8, ptr %p.586, i32 32
  %inc33 = add nuw nsw i32 %i.287, 1
  %exitcond89.not = icmp eq i32 %inc33, 115
  br i1 %exitcond89.not, label %for.end34, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27

for.end34:                                        ; preds = %for.body27
  %plat.i = getelementptr i8, ptr %dev, i32 17408
  %17 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat.i, align 128
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 30
  %19 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_queues_to_use.i, align 4
  %rx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 29
  %21 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp40.not.i = icmp eq i32 %20, 0
  br i1 %cmp40.not.i, label %for.end34.for.cond8.preheader.i_crit_edge, label %for.end34.for.cond2.preheader.i_crit_edge

for.end34.for.cond2.preheader.i_crit_edge:        ; preds = %for.end34
  br label %for.cond2.preheader.i

for.end34.for.cond8.preheader.i_crit_edge:        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond8.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, %for.end34.for.cond2.preheader.i_crit_edge
  %q.042.i = phi i32 [ %inc6.i, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ], [ 0, %for.end34.for.cond2.preheader.i_crit_edge ]
  %data.addr.041.i = phi ptr [ %add.ptr.1.i, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ], [ %add.ptr31, %for.end34.for.cond2.preheader.i_crit_edge ]
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.addr.041.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %q.042.i, ptr noundef nonnull @stmmac_qstats_tx_string) #16
  %add.ptr.i78 = getelementptr i8, ptr %data.addr.041.i, i32 32
  %call.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i78, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %q.042.i, ptr noundef getelementptr inbounds ([2 x [32 x i8]], ptr @stmmac_qstats_tx_string, i32 0, i32 1)) #16
  %add.ptr.1.i = getelementptr i8, ptr %data.addr.041.i, i32 64
  %inc6.i = add nuw i32 %q.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, %20
  br i1 %exitcond.not.i, label %for.cond2.preheader.i.for.cond8.preheader.i_crit_edge, label %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge

for.cond2.preheader.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond2.preheader.i

for.cond2.preheader.i.for.cond8.preheader.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.cond2.preheader.i.for.cond8.preheader.i_crit_edge, %for.end34.for.cond8.preheader.i_crit_edge
  %data.addr.0.lcssa.i = phi ptr [ %add.ptr31, %for.end34.for.cond8.preheader.i_crit_edge ], [ %add.ptr.1.i, %for.cond2.preheader.i.for.cond8.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp945.not.i = icmp eq i32 %22, 0
  br i1 %cmp945.not.i, label %for.cond8.preheader.i.sw.epilog_crit_edge, label %for.cond8.preheader.i.for.cond11.preheader.i_crit_edge

for.cond8.preheader.i.for.cond11.preheader.i_crit_edge: ; preds = %for.cond8.preheader.i
  br label %for.cond11.preheader.i

for.cond8.preheader.i.sw.epilog_crit_edge:        ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.cond11.preheader.i:                           ; preds = %for.cond11.preheader.i.for.cond11.preheader.i_crit_edge, %for.cond8.preheader.i.for.cond11.preheader.i_crit_edge
  %q.147.i = phi i32 [ %inc22.i, %for.cond11.preheader.i.for.cond11.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.cond11.preheader.i_crit_edge ]
  %data.addr.246.i = phi ptr [ %add.ptr17.1.i, %for.cond11.preheader.i.for.cond11.preheader.i_crit_edge ], [ %data.addr.0.lcssa.i, %for.cond8.preheader.i.for.cond11.preheader.i_crit_edge ]
  %call16.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.addr.246.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %q.147.i, ptr noundef nonnull @stmmac_qstats_rx_string) #16
  %add.ptr17.i = getelementptr i8, ptr %data.addr.246.i, i32 32
  %call16.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %q.147.i, ptr noundef getelementptr inbounds ([2 x [32 x i8]], ptr @stmmac_qstats_rx_string, i32 0, i32 1)) #16
  %add.ptr17.1.i = getelementptr i8, ptr %data.addr.246.i, i32 64
  %inc22.i = add nuw i32 %q.147.i, 1
  %exitcond48.not.i = icmp eq i32 %inc22.i, %22
  br i1 %exitcond48.not.i, label %for.cond11.preheader.i.sw.epilog_crit_edge, label %for.cond11.preheader.i.for.cond11.preheader.i_crit_edge

for.cond11.preheader.i.for.cond11.preheader.i_crit_edge: ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond11.preheader.i

for.cond11.preheader.i.sw.epilog_crit_edge:       ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @stmmac_selftest_get_strings(ptr noundef %add.ptr.i, ptr noundef %data) #16
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 713, i32 noundef 9, ptr noundef null) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb35, %for.cond11.preheader.i.sw.epilog_crit_edge, %for.cond8.preheader.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmmac_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %plat = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_queues_to_use, align 4
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queues_to_use, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #16
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %count, align 4, !annotation !36
  %asp = getelementptr i8, ptr %dev, i32 17528
  %7 = ptrtoint ptr %asp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %for.cond.preheader

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

for.cond.preheader:                               ; preds = %entry
  %hw = getelementptr i8, ptr %dev, i32 2476
  %sstats = getelementptr i8, ptr %dev, i32 17024
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0175 = phi i32 [ 0, %for.cond.preheader ], [ %inc14, %for.inc.for.body_crit_edge ]
  %j.0174 = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %safety_feat_dump = getelementptr inbounds %struct.stmmac_ops, ptr %12, i32 0, i32 31
  %13 = ptrtoint ptr %safety_feat_dump to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %safety_feat_dump, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %call10 = call i32 %14(ptr noundef %sstats, i32 noundef %i.0175, ptr noundef nonnull %count, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %conv = zext i32 %16 to i64
  %inc = add i32 %j.0174, 1
  %arrayidx = getelementptr i64, ptr %data, i32 %j.0174
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %j.0174, %if.end.for.inc_crit_edge ], [ %inc, %if.then12 ], [ %j.0174, %land.lhs.true.for.inc_crit_edge ], [ %j.0174, %for.body.for.inc_crit_edge ]
  %inc14 = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc14, 96
  br i1 %exitcond.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %entry.if.end15_crit_edge
  %j.2 = phi i32 [ 0, %entry.if.end15_crit_edge ], [ %j.1, %for.inc.if.end15_crit_edge ]
  %hw17 = getelementptr i8, ptr %dev, i32 2476
  %18 = ptrtoint ptr %hw17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw17, align 4
  %dma = getelementptr inbounds %struct.mac_device_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %if.end15.if.then30_crit_edge, label %land.lhs.true19

if.end15.if.then30_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

land.lhs.true19:                                  ; preds = %if.end15
  %dma_diagnostic_fr = getelementptr inbounds %struct.stmmac_dma_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %dma_diagnostic_fr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_diagnostic_fr, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %land.lhs.true19.if.then30_crit_edge, label %if.then23

land.lhs.true19.if.then30_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %xstats = getelementptr i8, ptr %dev, i32 16384
  %ioaddr = getelementptr i8, ptr %dev, i32 2464
  %24 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr, align 32
  call void %23(ptr noundef %stats, ptr noundef %xstats, ptr noundef %25) #16
  br label %cond.false105.preheader

if.then30:                                        ; preds = %land.lhs.true19.if.then30_crit_edge, %if.end15.if.then30_crit_edge
  %rmon = getelementptr i8, ptr %dev, i32 17448
  %26 = ptrtoint ptr %rmon to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool32.not = icmp eq i32 %27, 0
  br i1 %tobool32.not, label %if.then30.if.end62_crit_edge, label %if.then33

if.then30.if.end62_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then33:                                        ; preds = %if.then30
  %mmc = getelementptr inbounds %struct.mac_device_info, ptr %19, i32 0, i32 6
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 4
  %tobool36.not = icmp eq ptr %29, null
  br i1 %tobool36.not, label %if.then33.cond.false.preheader_crit_edge, label %land.lhs.true37

if.then33.cond.false.preheader_crit_edge:         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false.preheader

land.lhs.true37:                                  ; preds = %if.then33
  %read = getelementptr inbounds %struct.stmmac_mmc_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read, align 4
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %land.lhs.true37.cond.false.preheader_crit_edge, label %if.then41

land.lhs.true37.cond.false.preheader_crit_edge:   ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false.preheader

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #18
  %mmcaddr = getelementptr i8, ptr %dev, i32 18336
  %32 = ptrtoint ptr %mmcaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmcaddr, align 32
  %mmc45 = getelementptr i8, ptr %dev, i32 17600
  call void %31(ptr noundef %33, ptr noundef %mmc45) #16
  br label %cond.false.preheader

cond.false.preheader:                             ; preds = %if.then41, %land.lhs.true37.cond.false.preheader_crit_edge, %if.then33.cond.false.preheader_crit_edge
  br label %cond.false

cond.false:                                       ; preds = %cond.false.cond.false_crit_edge, %cond.false.preheader
  %i.1178 = phi i32 [ %inc60, %cond.false.cond.false_crit_edge ], [ 0, %cond.false.preheader ]
  %j.3177 = phi i32 [ %inc57, %cond.false.cond.false_crit_edge ], [ %j.2, %cond.false.preheader ]
  %stat_offset = getelementptr [85 x %struct.stmmac_stats], ptr @stmmac_mmc, i32 0, i32 %i.1178, i32 2
  %34 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %35
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  %conv56 = zext i32 %37 to i64
  %inc57 = add i32 %j.3177, 1
  %arrayidx58 = getelementptr i64, ptr %data, i32 %j.3177
  %38 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv56, ptr %arrayidx58, align 8
  %inc60 = add nuw nsw i32 %i.1178, 1
  %exitcond181.not = icmp eq i32 %inc60, 85
  br i1 %exitcond181.not, label %cond.false.if.end62_crit_edge, label %cond.false.cond.false_crit_edge

cond.false.cond.false_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false

cond.false.if.end62_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.end62:                                         ; preds = %cond.false.if.end62_crit_edge, %if.then30.if.end62_crit_edge
  %j.4 = phi i32 [ %j.2, %if.then30.if.end62_crit_edge ], [ %inc57, %cond.false.if.end62_crit_edge ]
  %eee_enabled = getelementptr i8, ptr %dev, i32 18016
  %39 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %eee_enabled, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool63.not = icmp eq i32 %40, 0
  br i1 %tobool63.not, label %if.end62.if.end70_crit_edge, label %if.then64

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then64:                                        ; preds = %if.end62
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %41 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phylink, align 8
  %call65 = call i32 @phylink_get_eee_err(ptr noundef %42) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end70_crit_edge, label %if.then67

if.then64.if.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  %phy_eee_wakeup_error_n = getelementptr i8, ptr %dev, i32 16604
  %43 = ptrtoint ptr %phy_eee_wakeup_error_n to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call65, ptr %phy_eee_wakeup_error_n, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then64.if.end70_crit_edge, %if.end62.if.end70_crit_edge
  %synopsys_id = getelementptr i8, ptr %dev, i32 17944
  %44 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %synopsys_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %45)
  %cmp71 = icmp sgt i32 %45, 52
  br i1 %cmp71, label %if.then73, label %if.end70.cond.false105.preheader_crit_edge

if.end70.cond.false105.preheader_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false105.preheader

if.then73:                                        ; preds = %if.end70
  %46 = ptrtoint ptr %hw17 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw17, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool77.not = icmp eq ptr %49, null
  br i1 %tobool77.not, label %if.then73.cond.false105.preheader_crit_edge, label %land.lhs.true78

if.then73.cond.false105.preheader_crit_edge:      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false105.preheader

land.lhs.true78:                                  ; preds = %if.then73
  %debug = getelementptr inbounds %struct.stmmac_ops, ptr %49, i32 0, i32 25
  %50 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %debug, align 4
  %tobool81.not = icmp eq ptr %51, null
  br i1 %tobool81.not, label %land.lhs.true78.cond.false105.preheader_crit_edge, label %if.then82

land.lhs.true78.cond.false105.preheader_crit_edge: ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false105.preheader

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #18
  %ioaddr86 = getelementptr i8, ptr %dev, i32 2464
  %52 = ptrtoint ptr %ioaddr86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr86, align 32
  %xstats87 = getelementptr i8, ptr %dev, i32 16384
  call void %51(ptr noundef %53, ptr noundef %xstats87, i32 noundef %3, i32 noundef %5) #16
  br label %cond.false105.preheader

cond.false105.preheader:                          ; preds = %if.then82, %land.lhs.true78.cond.false105.preheader_crit_edge, %if.then73.cond.false105.preheader_crit_edge, %if.end70.cond.false105.preheader_crit_edge, %if.then23
  %j.6179.ph = phi i32 [ %j.4, %if.end70.cond.false105.preheader_crit_edge ], [ %j.2, %if.then23 ], [ %j.4, %if.then82 ], [ %j.4, %land.lhs.true78.cond.false105.preheader_crit_edge ], [ %j.4, %if.then73.cond.false105.preheader_crit_edge ]
  br label %cond.false105

cond.false105:                                    ; preds = %cond.false105.cond.false105_crit_edge, %cond.false105.preheader
  %i.2180 = phi i32 [ %inc112, %cond.false105.cond.false105_crit_edge ], [ 0, %cond.false105.preheader ]
  %j.6179 = phi i32 [ %inc109, %cond.false105.cond.false105_crit_edge ], [ %j.6179.ph, %cond.false105.preheader ]
  %stat_offset98 = getelementptr [115 x %struct.stmmac_stats], ptr @stmmac_gstrings_stats, i32 0, i32 %i.2180, i32 2
  %54 = ptrtoint ptr %stat_offset98 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stat_offset98, align 4
  %add.ptr99 = getelementptr i8, ptr %add.ptr.i, i32 %55
  %56 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr99, align 4
  %conv106 = zext i32 %57 to i64
  %inc109 = add i32 %j.6179, 1
  %arrayidx110 = getelementptr i64, ptr %data, i32 %j.6179
  %58 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv106, ptr %arrayidx110, align 8
  %inc112 = add nuw nsw i32 %i.2180, 1
  %exitcond182.not = icmp eq i32 %inc112, 115
  br i1 %exitcond182.not, label %for.end113, label %cond.false105.cond.false105_crit_edge

cond.false105.cond.false105_crit_edge:            ; preds = %cond.false105
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false105

for.end113:                                       ; preds = %cond.false105
  %arrayidx114 = getelementptr i64, ptr %data, i32 %inc109
  %59 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %plat, align 128
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %60, i32 0, i32 30
  %61 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_queues_to_use.i, align 4
  %rx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %60, i32 0, i32 29
  %63 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp42.not.i = icmp eq i32 %62, 0
  br i1 %cmp42.not.i, label %for.end113.for.cond9.preheader.i_crit_edge, label %for.end113.for.body.i_crit_edge

for.end113.for.body.i_crit_edge:                  ; preds = %for.end113
  br label %for.body.i

for.end113.for.cond9.preheader.i_crit_edge:       ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.body.i.for.cond9.preheader.i_crit_edge, %for.end113.for.cond9.preheader.i_crit_edge
  %data.addr.0.lcssa.i = phi ptr [ %arrayidx114, %for.end113.for.cond9.preheader.i_crit_edge ], [ %incdec.ptr.1.i, %for.body.i.for.cond9.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1048.not.i = icmp eq i32 %64, 0
  br i1 %cmp1048.not.i, label %for.cond9.preheader.i.stmmac_get_per_qstats.exit_crit_edge, label %for.cond9.preheader.i.for.body11.i_crit_edge

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.cond9.preheader.i.stmmac_get_per_qstats.exit_crit_edge: ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stmmac_get_per_qstats.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end113.for.body.i_crit_edge
  %q.044.i = phi i32 [ %inc7.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end113.for.body.i_crit_edge ]
  %data.addr.043.i = phi ptr [ %incdec.ptr.1.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx114, %for.end113.for.body.i_crit_edge ]
  %65 = shl i32 %q.044.i, 3
  %66 = add i32 %65, 14552
  %add.ptr.i171 = getelementptr i8, ptr %add.ptr.i, i32 %66
  %67 = ptrtoint ptr %add.ptr.i171 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr.i171, align 8
  %incdec.ptr.i = getelementptr i64, ptr %data.addr.043.i, i32 1
  %69 = ptrtoint ptr %data.addr.043.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %data.addr.043.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i171, i32 4
  %70 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr5.i, align 8
  %incdec.ptr.1.i = getelementptr i64, ptr %data.addr.043.i, i32 2
  %72 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %incdec.ptr.i, align 8
  %inc7.i = add nuw i32 %q.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, %62
  br i1 %exitcond.not.i, label %for.body.i.for.cond9.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.for.cond9.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond9.preheader.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %q.150.i = phi i32 [ %inc22.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %data.addr.249.i = phi ptr [ %incdec.ptr16.1.i, %for.body11.i.for.body11.i_crit_edge ], [ %data.addr.0.lcssa.i, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %73 = shl i32 %q.150.i, 3
  %74 = add i32 %73, 14616
  %add.ptr12.i = getelementptr i8, ptr %add.ptr.i, i32 %74
  %75 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr12.i, align 8
  %incdec.ptr16.i = getelementptr i64, ptr %data.addr.249.i, i32 1
  %77 = ptrtoint ptr %data.addr.249.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %data.addr.249.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %add.ptr12.i, i32 4
  %78 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr17.i, align 8
  %incdec.ptr16.1.i = getelementptr i64, ptr %data.addr.249.i, i32 2
  %80 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %incdec.ptr16.i, align 8
  %inc22.i = add nuw i32 %q.150.i, 1
  %exitcond51.not.i = icmp eq i32 %inc22.i, %64
  br i1 %exitcond51.not.i, label %for.body11.i.stmmac_get_per_qstats.exit_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body11.i

for.body11.i.stmmac_get_per_qstats.exit_crit_edge: ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stmmac_get_per_qstats.exit

stmmac_get_per_qstats.exit:                       ; preds = %for.body11.i.stmmac_get_per_qstats.exit_crit_edge, %for.cond9.preheader.i.stmmac_get_per_qstats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_check_if_running(ptr noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %. = select i1 %tobool.i.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_get_sset_count(ptr noundef %netdev, i32 noundef %sset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %sset, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %plat = getelementptr i8, ptr %netdev, i32 17408
  %1 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %2, i32 0, i32 29
  %3 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_queues_to_use, align 4
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %2, i32 0, i32 30
  %5 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_queues_to_use, align 4
  %mul = shl i32 %6, 1
  %mul2 = shl i32 %4, 1
  %add = add i32 %mul2, 115
  %add3 = add i32 %add, %mul
  %rmon = getelementptr i8, ptr %netdev, i32 17448
  %7 = ptrtoint ptr %rmon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %add4 = add i32 %add3, 85
  %spec.select = select i1 %tobool.not, i32 %add3, i32 %add4
  %asp = getelementptr i8, ptr %netdev, i32 17528
  %9 = ptrtoint ptr %asp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %sw.bb.cleanup_crit_edge, label %for.cond.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb
  %hw = getelementptr i8, ptr %netdev, i32 2476
  %sstats = getelementptr i8, ptr %netdev, i32 17024
  br label %for.body

for.body:                                         ; preds = %if.end17.thread.for.body_crit_edge, %for.cond.preheader
  %safety_len.052 = phi i32 [ 0, %for.cond.preheader ], [ %17, %if.end17.thread.for.body_crit_edge ]
  %i.050 = phi i32 [ 0, %for.cond.preheader ], [ %inc21, %if.end17.thread.for.body_crit_edge ]
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %for.body.if.end17.thread_crit_edge, label %land.lhs.true

for.body.if.end17.thread_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.thread

land.lhs.true:                                    ; preds = %for.body
  %safety_feat_dump = getelementptr inbounds %struct.stmmac_ops, ptr %14, i32 0, i32 31
  %15 = ptrtoint ptr %safety_feat_dump to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %safety_feat_dump, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true.if.end17.thread_crit_edge, label %if.end17

land.lhs.true.if.end17.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.thread

if.end17:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call16 = tail call i32 %16(ptr noundef %sstats, i32 noundef %i.050, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  %inc = zext i1 %tobool18.not to i32
  %spec.select49 = add i32 %safety_len.052, %inc
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %if.end17, %land.lhs.true.if.end17.thread_crit_edge, %for.body.if.end17.thread_crit_edge
  %17 = phi i32 [ %safety_len.052, %land.lhs.true.if.end17.thread_crit_edge ], [ %safety_len.052, %for.body.if.end17.thread_crit_edge ], [ %spec.select49, %if.end17 ]
  %inc21 = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc21, 96
  br i1 %exitcond.not, label %for.end, label %if.end17.thread.for.body_crit_edge

if.end17.thread.for.body_crit_edge:               ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #18
  %add22 = add i32 %17, %spec.select
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call25 = tail call i32 @stmmac_selftest_get_count(ptr noundef %add.ptr.i) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %for.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %sw.bb24 ], [ %add22, %for.end ], [ %spec.select, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_rxnfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef %rxnfc, ptr nocapture noundef readnone %rule_locs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxnfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxnfc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %1)
  %cond = icmp eq i32 %1, 45
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %plat = getelementptr i8, ptr %dev, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_queues_to_use, align 4
  %conv = zext i32 %5 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_rxfh_key_size(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_rxfh_indir_size(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_get_rxfh(ptr nocapture noundef readonly %dev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 99, i32 2, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %indir, i32 %i.017
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %key, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %key5 = getelementptr i8, ptr %dev, i32 19916
  %3 = call ptr @memcpy(ptr %key, ptr %key5, i32 40)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %hfunc, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hfunc, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_rxfh(ptr noundef %dev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.043
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 99, i32 2, i32 %i.043
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.if.end9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %key, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %key13 = getelementptr i8, ptr %dev, i32 19916
  %3 = call ptr @memcpy(ptr %key13, ptr %key, i32 40)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %hw = getelementptr i8, ptr %dev, i32 2476
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %land.lhs.true16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true16:                                  ; preds = %if.end14
  %rss_configure = getelementptr inbounds %struct.stmmac_ops, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %rss_configure to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rss_configure, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %land.lhs.true16.cleanup_crit_edge, label %if.then20

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  %rss25 = getelementptr i8, ptr %dev, i32 19912
  %plat = getelementptr i8, ptr %dev, i32 17408
  %10 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_queues_to_use, align 4
  %call26 = tail call i32 %9(ptr noundef %5, ptr noundef %rss25, i32 noundef %13) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call26, %if.then20 ], [ -22, %land.lhs.true16.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stmmac_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %chan) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_queues_to_use, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_count, align 4
  %5 = load ptr, ptr %plat, align 128
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_queues_to_use, align 4
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_count, align 4
  %number_rx_queues = getelementptr i8, ptr %dev, i32 17504
  %9 = ptrtoint ptr %number_rx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number_rx_queues, align 4
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_rx, align 4
  %number_tx_queues = getelementptr i8, ptr %dev, i32 17508
  %12 = ptrtoint ptr %number_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number_tx_queues, align 4
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %chan, i32 0, i32 2
  %14 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_tx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %chan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_count, align 4
  %number_rx_queues = getelementptr i8, ptr %dev, i32 17504
  %2 = ptrtoint ptr %number_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_rx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_count, align 4
  %number_tx_queues = getelementptr i8, ptr %dev, i32 17508
  %6 = ptrtoint ptr %number_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp ugt i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  %or.cond19 = or i1 %tobool7.not, %or.cond
  br i1 %or.cond19, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 @stmmac_reinit_queues(ptr noundef %dev, i32 noundef %1, i32 noundef %5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_get_ts_info(ptr noundef %dev, ptr noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %time_stamp = getelementptr i8, ptr %dev, i32 17452
  %0 = ptrtoint ptr %time_stamp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %time_stamp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %atime_stamp = getelementptr i8, ptr %dev, i32 17456
  %2 = ptrtoint ptr %atime_stamp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %atime_stamp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr i8, ptr %dev, i32 18064
  %5 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_clock, align 16
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 @ptp_clock_index(ptr noundef nonnull %6) #16
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %phc_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 29179, ptr %rx_filters, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %dev, ptr noundef %info) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call7, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_op_get_eee(ptr nocapture noundef readonly %dev, ptr noundef %edata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %eee = getelementptr i8, ptr %dev, i32 17460
  %0 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %eee_enabled = getelementptr i8, ptr %dev, i32 18016
  %2 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eee_enabled, align 32
  %eee_enabled1 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %4 = ptrtoint ptr %eee_enabled1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %eee_enabled1, align 4
  %eee_active = getelementptr i8, ptr %dev, i32 18020
  %5 = ptrtoint ptr %eee_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eee_active, align 4
  %eee_active2 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %7 = ptrtoint ptr %eee_active2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %eee_active2, align 4
  %tx_lpi_timer = getelementptr i8, ptr %dev, i32 18024
  %8 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_lpi_timer, align 8
  %tx_lpi_timer3 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %10 = ptrtoint ptr %tx_lpi_timer3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_lpi_timer3, align 4
  %tx_lpi_enabled = getelementptr i8, ptr %dev, i32 18028
  %11 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_lpi_enabled, align 4
  %tx_lpi_enabled4 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %13 = ptrtoint ptr %tx_lpi_enabled4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_lpi_enabled4, align 4
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %14 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phylink, align 8
  %call5 = tail call i32 @phylink_ethtool_get_eee(ptr noundef %15, ptr noundef %edata) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_op_set_eee(ptr noundef %dev, ptr noundef %edata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %eee = getelementptr i8, ptr %dev, i32 17460
  %0 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_lpi_enabled = getelementptr i8, ptr %dev, i32 18028
  %2 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_lpi_enabled, align 4
  %tx_lpi_enabled1 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %4 = ptrtoint ptr %tx_lpi_enabled1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_lpi_enabled1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev3 = getelementptr i8, ptr %dev, i32 2468
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.7) #19
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %hw = getelementptr i8, ptr %dev, i32 2476
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %xpcs = getelementptr inbounds %struct.mac_device_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %xpcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xpcs, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %plat = getelementptr i8, ptr %dev, i32 17408
  %12 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat, align 128
  %mult_fact_100ns = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 52
  %14 = ptrtoint ptr %mult_fact_100ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mult_fact_100ns, align 4
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %16 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eee_enabled, align 4
  %call9 = tail call i32 @xpcs_config_eee(ptr noundef nonnull %11, i32 noundef %15, i32 noundef %17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then6.if.end13_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %eee_enabled14 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %18 = ptrtoint ptr %eee_enabled14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eee_enabled14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @stmmac_disable_eee_mode(ptr noundef %add.ptr.i) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %20 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phylink, align 8
  %call18 = tail call i32 @phylink_ethtool_set_eee(ptr noundef %21, ptr noundef %edata) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %22 = ptrtoint ptr %eee_enabled14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eee_enabled14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not = icmp eq i32 %23, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %land.lhs.true

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end21
  %tx_lpi_timer = getelementptr i8, ptr %dev, i32 18024
  %24 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_lpi_timer, align 8
  %tx_lpi_timer24 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %26 = ptrtoint ptr %tx_lpi_timer24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_lpi_timer24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp25.not = icmp eq i32 %25, %27
  br i1 %cmp25.not, label %land.lhs.true.cleanup_crit_edge, label %if.then26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tx_lpi_timer, align 8
  %call29 = tail call zeroext i1 @stmmac_eee_init(ptr noundef %add.ptr.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call9, %if.then6.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_tunable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_copybreak = getelementptr i8, ptr %dev, i32 2424
  %2 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_copybreak, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_set_tunable(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %rx_copybreak = getelementptr i8, ptr %dev, i32 2424
  %4 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_copybreak, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_get_per_queue_coalesce(ptr nocapture noundef readonly %dev, i32 noundef %queue, ptr nocapture noundef writeonly %ec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %plat.i = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat.i, align 128
  %rx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_queues_to_use.i, align 4
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp2.i = icmp slt i32 %queue, 0
  br i1 %cmp2.i, label %entry.if.end5.i_crit_edge, label %if.else.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.else.i:                                        ; preds = %entry
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %queue)
  %cmp3.not.i = icmp ugt i32 %6, %queue
  br i1 %cmp3.not.i, label %if.else.i.if.end5.i_crit_edge, label %if.else.i.__stmmac_get_coalesce.exit_crit_edge

if.else.i.__stmmac_get_coalesce.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__stmmac_get_coalesce.exit

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %queue.addr.0.i = phi i32 [ %queue, %if.else.i.if.end5.i_crit_edge ], [ 0, %entry.if.end5.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %queue.addr.0.i, i32 %5)
  %cmp6.i = icmp ult i32 %queue.addr.0.i, %5
  br i1 %cmp6.i, label %if.then7.i, label %if.else9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.stmmac_priv, ptr %add.ptr.i.i, i32 0, i32 1, i32 %queue.addr.0.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %9 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_coalesce_usecs.i, align 4
  %arrayidx8.i = getelementptr [8 x i32], ptr %add.ptr.i.i, i32 0, i32 %queue.addr.0.i
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.i, align 4
  br label %if.end12.i

if.else9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %tx_coalesce_usecs10.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %12 = ptrtoint ptr %tx_coalesce_usecs10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_coalesce_usecs10.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else9.i, %if.then7.i
  %.sink.i = phi i32 [ %11, %if.then7.i ], [ 0, %if.else9.i ]
  %13 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i, ptr %13, align 4
  %use_riwt.i = getelementptr i8, ptr %dev, i32 18192
  %15 = ptrtoint ptr %use_riwt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %use_riwt.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %queue.addr.0.i, i32 %3)
  %cmp13.i = icmp ult i32 %queue.addr.0.i, %3
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %if.then14.i, label %if.else18.i

if.then14.i:                                      ; preds = %if.end12.i
  %arrayidx15.i = getelementptr %struct.stmmac_priv, ptr %add.ptr.i.i, i32 0, i32 2, i32 %queue.addr.0.i
  %17 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15.i, align 4
  %rx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %19 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rx_max_coalesced_frames.i, align 4
  %arrayidx16.i = getelementptr %struct.stmmac_priv, ptr %add.ptr.i.i, i32 0, i32 11, i32 %queue.addr.0.i
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16.i, align 4
  %22 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plat.i, align 128
  %stmmac_clk.i.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %23, i32 0, i32 47
  %24 = ptrtoint ptr %stmmac_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stmmac_clk.i.i, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %25) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then14.i.if.end4.i.i_crit_edge

if.then14.i.if.end4.i.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.then14.i
  %26 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plat.i, align 128
  %clk_ref_rate.i.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %27, i32 0, i32 51
  %28 = ptrtoint ptr %clk_ref_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_ref_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i.if.end4.i.i_crit_edge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.then.i.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %if.then14.i.if.end4.i.i_crit_edge
  %clk.0.i.i = phi i32 [ %call.i.i, %if.then14.i.if.end4.i.i_crit_edge ], [ %29, %if.then.i.i.if.end4.i.i_crit_edge ]
  %mul.i.i = shl i32 %21, 8
  %div.i.i = udiv i32 %clk.0.i.i, 1000000
  %div5.i.i = udiv i32 %mul.i.i, %div.i.i
  br label %cleanup.sink.split.i

if.else18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %rx_max_coalesced_frames19.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %30 = ptrtoint ptr %rx_max_coalesced_frames19.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rx_max_coalesced_frames19.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else18.i, %if.end4.i.i, %if.then.i.i.cleanup.sink.split.i_crit_edge
  %retval.0.i.sink.i = phi i32 [ 0, %if.else18.i ], [ %div5.i.i, %if.end4.i.i ], [ 0, %if.then.i.i.cleanup.sink.split.i_crit_edge ]
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %31 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.sink.i, ptr %rx_coalesce_usecs.i, align 4
  br label %__stmmac_get_coalesce.exit

__stmmac_get_coalesce.exit:                       ; preds = %cleanup.sink.split.i, %if.else.i.__stmmac_get_coalesce.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.else.i.__stmmac_get_coalesce.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_per_queue_coalesce(ptr nocapture noundef %dev, i32 noundef %queue, ptr nocapture noundef readonly %ec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_set_coalesce(ptr noundef %dev, ptr noundef %ec, i32 noundef %queue)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #3 align 64 {
entry:
  %adv = alloca %struct.rgmii_adv, align 4
  %supported = alloca i32, align 4
  %advertising = alloca i32, align 4
  %lp_advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %pcs = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcs, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end89, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adv) #16
  %6 = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 3
  %9 = call ptr @memset(ptr %adv, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported) #16
  %10 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %supported, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #16
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %advertising, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lp_advertising) #16
  %12 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %lp_advertising, align 4, !annotation !36
  %pcs_link = getelementptr i8, ptr %dev, i32 16720
  %13 = ptrtoint ptr %pcs_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcs_link, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %duplex, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %pcs_duplex = getelementptr i8, ptr %dev, i32 16724
  %17 = ptrtoint ptr %pcs_duplex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcs_duplex, align 4
  %conv = trunc i32 %18 to i8
  %duplex10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %19 = ptrtoint ptr %duplex10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %duplex10, align 4
  %pcs_speed = getelementptr i8, ptr %dev, i32 16728
  %20 = ptrtoint ptr %pcs_speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcs_speed, align 8
  %speed13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %22 = ptrtoint ptr %speed13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %speed13, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool15.not = icmp eq ptr %26, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pcs_get_adv_lp = getelementptr inbounds %struct.stmmac_ops, ptr %26, i32 0, i32 28
  %27 = ptrtoint ptr %pcs_get_adv_lp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcs_get_adv_lp, align 4
  %tobool18.not = icmp eq ptr %28, null
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  %ioaddr = getelementptr i8, ptr %dev, i32 2464
  %29 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr, align 32
  call void %28(ptr noundef %30, ptr noundef nonnull %adv) #16
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %call28 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %supported, ptr noundef %link_modes) #16
  %advertising30 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call32 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising30) #16
  %lp_advertising34 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 2
  %call36 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %lp_advertising, ptr noundef %lp_advertising34) #16
  %31 = ptrtoint ptr %adv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %adv, align 4
  %and37 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then19.if.end40_crit_edge, label %if.then39

if.then19.if.end40_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then39:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %advertising, align 4
  %or = or i32 %34, 8192
  store i32 %or, ptr %advertising, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then19.if.end40_crit_edge
  %and42 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end46_crit_edge, label %if.then44

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %advertising, align 4
  %or45 = or i32 %36, 16384
  store i32 %or45, ptr %advertising, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end40.if.end46_crit_edge
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %7, align 4
  %and47 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lp_advertising, align 4
  %or50 = or i32 %40, 8192
  store i32 %or50, ptr %lp_advertising, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %and53 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end57_crit_edge, label %if.then55

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lp_advertising, align 4
  %or56 = or i32 %42, 16384
  store i32 %or56, ptr %lp_advertising, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51.if.end57_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %43 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %autoneg, align 1
  %44 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %supported, align 4
  %46 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %advertising, align 4
  %48 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lp_advertising, align 4
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool63.not = icmp eq i32 %51, 0
  %. = select i1 %tobool63.not, i32 85, i32 106
  %or67 = or i32 %45, %.
  %52 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or67, ptr %supported, align 4
  %or68 = or i32 %47, %.
  %53 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or68, ptr %advertising, align 4
  %54 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool70.not = icmp eq i32 %55, 0
  %storemerge114.v = select i1 %tobool70.not, i32 85, i32 106
  %storemerge114 = or i32 %storemerge114.v, %49
  %56 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %storemerge114, ptr %lp_advertising, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %57 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %port, align 1
  %58 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %supported, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %59) #16
  %60 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %advertising, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising30, i32 noundef %61) #16
  %62 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lp_advertising, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %lp_advertising34, i32 noundef %63) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ 0, %if.end57 ], [ 0, %if.then6 ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lp_advertising) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adv) #16
  br label %cleanup91

if.end89:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %64 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phylink, align 8
  %call90 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %65, ptr noundef %cmd) #16
  br label %cleanup91

cleanup91:                                        ; preds = %if.end89, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call90, %if.end89 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %pcs = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcs, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end, label %if.then.cleanup23_crit_edge

if.then.cleanup23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup23

if.end:                                           ; preds = %if.then
  %lock = getelementptr i8, ptr %dev, i32 2484
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %pcs_ctrl_ane = getelementptr inbounds %struct.stmmac_ops, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %pcs_ctrl_ane to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs_ctrl_ane, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %land.lhs.true.if.end19_crit_edge, label %if.then13

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %ioaddr = getelementptr i8, ptr %dev, i32 2464
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 32
  %ps = getelementptr inbounds %struct.mac_device_info, ptr %9, i32 0, i32 17
  %16 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18 = icmp ne i32 %17, 0
  tail call void %13(ptr noundef %15, i1 noundef zeroext true, i1 noundef zeroext %tobool18, i1 noundef zeroext false) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup23

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %phylink = getelementptr i8, ptr %dev, i32 16296
  %18 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phylink, align 8
  %call22 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %19, ptr noundef %cmd) #16
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21, %if.end19, %if.then.cleanup23_crit_edge
  %retval.1 = phi i32 [ %call22, %if.end21 ], [ 0, %if.end19 ], [ -22, %if.then.cleanup23_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_set_coalesce(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ec, i32 noundef %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %plat = getelementptr i8, ptr %dev, i32 17408
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_queues_to_use, align 4
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queues_to_use, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp2 = icmp slt i32 %queue, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %queue)
  %cmp3.not = icmp ugt i32 %6, %queue
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %entry
  %use_riwt = getelementptr i8, ptr %dev, i32 18192
  %7 = ptrtoint ptr %use_riwt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use_riwt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end5.if.end56_crit_edge, label %land.lhs.true

if.end5.if.end56_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end5
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.not = icmp eq i32 %10, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end56_crit_edge, label %if.then7

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then7:                                         ; preds = %land.lhs.true
  %stmmac_clk.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 47
  %11 = ptrtoint ptr %stmmac_clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stmmac_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.stmmac_usec2riwt.exit_crit_edge

if.then7.stmmac_usec2riwt.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %stmmac_usec2riwt.exit

if.then.i:                                        ; preds = %if.then7
  %13 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plat, align 128
  %clk_ref_rate.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 51
  %15 = ptrtoint ptr %clk_ref_rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_ref_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp eq i32 %16, 0
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.stmmac_usec2riwt.exit_crit_edge

if.then.i.stmmac_usec2riwt.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %stmmac_usec2riwt.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

stmmac_usec2riwt.exit:                            ; preds = %if.then.i.stmmac_usec2riwt.exit_crit_edge, %if.then7.stmmac_usec2riwt.exit_crit_edge
  %clk.0.i = phi i32 [ %call.i, %if.then7.stmmac_usec2riwt.exit_crit_edge ], [ %16, %if.then.i.stmmac_usec2riwt.exit_crit_edge ]
  %div.i = udiv i32 %clk.0.i, 1000000
  %mul.i = mul i32 %div.i, %10
  %div59.i = lshr i32 %mul.i, 8
  %17 = add i32 %mul.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61440, i32 %17)
  %18 = icmp ult i32 %17, -61440
  br i1 %18, label %stmmac_usec2riwt.exit.cleanup_crit_edge, label %if.end13

stmmac_usec2riwt.exit.cleanup_crit_edge:          ; preds = %stmmac_usec2riwt.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %stmmac_usec2riwt.exit
  br i1 %cmp2, label %for.cond.preheader, label %if.else30

for.cond.preheader:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16168.not = icmp eq i32 %3, 0
  br i1 %cmp16168.not, label %for.cond.preheader.if.end56_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hw = getelementptr i8, ptr %dev, i32 2476
  %ioaddr = getelementptr i8, ptr %dev, i32 2464
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end27.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %i.0169
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div59.i, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.mac_device_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %for.body.if.end27_crit_edge, label %land.lhs.true19

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

land.lhs.true19:                                  ; preds = %for.body
  %rx_watchdog = getelementptr inbounds %struct.stmmac_dma_ops, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %rx_watchdog to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_watchdog, align 4
  %tobool22.not = icmp eq ptr %25, null
  br i1 %tobool22.not, label %land.lhs.true19.if.end27_crit_edge, label %if.then23

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 32
  tail call void %25(ptr noundef %27, i32 noundef %div59.i, i32 noundef %i.0169) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true19.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %28 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_max_coalesced_frames, align 4
  %arrayidx29 = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %i.0169
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx29, align 4
  %inc = add nuw i32 %i.0169, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end27.if.end56_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end27.if.end56_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.else30:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %queue)
  %cmp31 = icmp ugt i32 %3, %queue
  br i1 %cmp31, label %if.then32, label %if.else30.if.end56_crit_edge

if.else30.if.end56_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then32:                                        ; preds = %if.else30
  %arrayidx34 = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %queue
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div59.i, ptr %arrayidx34, align 4
  %hw36 = getelementptr i8, ptr %dev, i32 2476
  %32 = ptrtoint ptr %hw36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw36, align 4
  %dma37 = getelementptr inbounds %struct.mac_device_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dma37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma37, align 4
  %tobool38.not = icmp eq ptr %35, null
  br i1 %tobool38.not, label %if.then32.if.end49_crit_edge, label %land.lhs.true39

if.then32.if.end49_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true39:                                  ; preds = %if.then32
  %rx_watchdog42 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %rx_watchdog42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_watchdog42, align 4
  %tobool43.not = icmp eq ptr %37, null
  br i1 %tobool43.not, label %land.lhs.true39.if.end49_crit_edge, label %if.then44

land.lhs.true39.if.end49_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then44:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  %ioaddr48 = getelementptr i8, ptr %dev, i32 2464
  %38 = ptrtoint ptr %ioaddr48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr48, align 32
  tail call void %37(ptr noundef %39, i32 noundef %div59.i, i32 noundef %queue) #16
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %land.lhs.true39.if.end49_crit_edge, %if.then32.if.end49_crit_edge
  %rx_max_coalesced_frames51 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %40 = ptrtoint ptr %rx_max_coalesced_frames51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_max_coalesced_frames51, align 4
  %arrayidx53 = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %queue
  %42 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx53, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end49, %if.else30.if.end56_crit_edge, %if.end27.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.end5.if.end56_crit_edge
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %43 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp57 = icmp eq i32 %44, 0
  br i1 %cmp57, label %land.lhs.true58, label %if.end61

land.lhs.true58:                                  ; preds = %if.end56
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %45 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp59 = icmp eq i32 %46, 0
  br i1 %cmp59, label %land.lhs.true58.cleanup_crit_edge, label %land.lhs.true58.lor.lhs.false64_crit_edge

land.lhs.true58.lor.lhs.false64_crit_edge:        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false64

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %44)
  %cmp63 = icmp ugt i32 %44, 100000
  br i1 %cmp63, label %if.end61.cleanup_crit_edge, label %if.end61.lor.lhs.false64_crit_edge

if.end61.lor.lhs.false64_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false64

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false64:                                  ; preds = %if.end61.lor.lhs.false64_crit_edge, %land.lhs.true58.lor.lhs.false64_crit_edge
  %tx_max_coalesced_frames65 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %47 = ptrtoint ptr %tx_max_coalesced_frames65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_max_coalesced_frames65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %48)
  %cmp66 = icmp ugt i32 %48, 256
  br i1 %cmp66, label %lor.lhs.false64.cleanup_crit_edge, label %if.end68

lor.lhs.false64.cleanup_crit_edge:                ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end68:                                         ; preds = %lor.lhs.false64
  br i1 %cmp2, label %for.cond72.preheader, label %if.else82

for.cond72.preheader:                             ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp73170.not = icmp eq i32 %5, 0
  br i1 %cmp73170.not, label %for.cond72.preheader.cleanup_crit_edge, label %for.cond72.preheader.for.body74_crit_edge

for.cond72.preheader.for.body74_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body74

for.cond72.preheader.cleanup_crit_edge:           ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %for.cond72.preheader.for.body74_crit_edge
  %i71.0171 = phi i32 [ %inc80, %for.body74.for.body74_crit_edge ], [ 0, %for.cond72.preheader.for.body74_crit_edge ]
  %49 = ptrtoint ptr %tx_max_coalesced_frames65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_max_coalesced_frames65, align 4
  %arrayidx76 = getelementptr [8 x i32], ptr %add.ptr.i, i32 0, i32 %i71.0171
  %51 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx76, align 4
  %52 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_coalesce_usecs, align 4
  %arrayidx78 = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 1, i32 %i71.0171
  %54 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx78, align 4
  %inc80 = add nuw i32 %i71.0171, 1
  %exitcond172.not = icmp eq i32 %inc80, %5
  br i1 %exitcond172.not, label %for.body74.cleanup_crit_edge, label %for.body74.for.body74_crit_edge

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body74

for.body74.cleanup_crit_edge:                     ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else82:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %queue)
  %cmp83 = icmp ugt i32 %5, %queue
  br i1 %cmp83, label %if.then84, label %if.else82.cleanup_crit_edge

if.else82.cleanup_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then84:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx87 = getelementptr [8 x i32], ptr %add.ptr.i, i32 0, i32 %queue
  %55 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %48, ptr %arrayidx87, align 4
  %56 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_coalesce_usecs, align 4
  %arrayidx90 = getelementptr %struct.stmmac_priv, ptr %add.ptr.i, i32 0, i32 1, i32 %queue
  %58 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx90, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.else82.cleanup_crit_edge, %for.body74.cleanup_crit_edge, %for.cond72.preheader.cleanup_crit_edge, %lor.lhs.false64.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %land.lhs.true58.cleanup_crit_edge, %stmmac_usec2riwt.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %stmmac_usec2riwt.exit.cleanup_crit_edge ], [ -22, %land.lhs.true58.cleanup_crit_edge ], [ -22, %lor.lhs.false64.cleanup_crit_edge ], [ -22, %if.end61.cleanup_crit_edge ], [ 0, %if.else82.cleanup_crit_edge ], [ 0, %if.then84 ], [ -22, %if.then.i.cleanup_crit_edge ], [ 0, %for.cond72.preheader.cleanup_crit_edge ], [ 0, %for.body74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_reinit_ringparam(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_selftest_get_strings(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_get_eee_err(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_selftest_get_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_reinit_queues(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_config_eee(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_disable_eee_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stmmac_eee_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @stmmac_ethtool_ops, !1, !"stmmac_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 1160, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 290, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 292, i32 25}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 294, i32 25}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 762, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @stmmac_set_wol._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @stmmac_set_wol._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @stmmac_mmc, !15, !"stmmac_mmc", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 183, i32 34}
!16 = !{ptr @stmmac_gstrings_stats, !17, !"stmmac_gstrings_stats", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 48, i32 34}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 663, i32 36}
!20 = !{ptr @stmmac_qstats_tx_string, !21, !"stmmac_qstats_tx_string", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 272, i32 19}
!22 = !{ptr @stmmac_qstats_rx_string, !23, !"stmmac_qstats_rx_string", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 278, i32 19}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c", i32 804, i32 8}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i32 0, i32 33}
!36 = !{!"auto-init"}
