; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_test = type { [32 x i8], i32, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.188, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.188 = type { ptr }
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
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_packet_attrs = type { i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i16, i64 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.213, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.213 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.214, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%union.anon.214 = type { ptr }
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
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.209, %struct.anon.210 }
%struct.anon.209 = type { i32, i32, i32 }
%struct.anon.210 = type { i32, i32, i32, i32 }
%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.stmmac_test_priv = type { ptr, %struct.packet_type, %struct.completion, i32, i32, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_cls_u32_offload = type { %struct.flow_cls_common_offload, i32, %union.anon.195 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%union.anon.195 = type { %struct.tc_cls_u32_knode }
%struct.tc_cls_u32_knode = type { ptr, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.tc_u32_sel = type { i8, i8, i8, i16, i16, i16, i16, i32, [0 x %struct.tc_u32_key] }
%struct.tc_u32_key = type { i32, i32, i32, i32 }
%struct.stmmac_tc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.tc_etf_qopt_offload = type { i8, i32 }
%struct.stmmac_hwtimestamp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.stmmachdr = type <{ i32, i64, i8 }>
%struct.anon.158 = type { i16, i16 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.196, ptr }
%union.anon.196 = type { %struct.anon.201 }
%struct.anon.201 = type { i32, i64, i64, i64, i32 }
%struct.anon.219 = type { %struct.flow_dissector_key_basic, %struct.flow_dissector_key_ports }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_ports = type { %union.anon.220 }
%union.anon.220 = type { i32 }
%struct.anon.222 = type { %struct.flow_dissector_key_basic, %struct.flow_dissector_key_ports }
%struct.anon.221 = type { i16, i16 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }

@stmmac_test_next_id = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Only offline tests are supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"You need valid Link to execute tests\0A\00", [58 x i8] zeroinitializer }, align 32
@stmmac_selftests = internal constant { [32 x %struct.stmmac_test], [320 x i8] } { [32 x %struct.stmmac_test] [%struct.stmmac_test { [32 x i8] c"MAC Loopback               \00\00\00\00\00", i32 1, ptr @stmmac_test_mac_loopback }, %struct.stmmac_test { [32 x i8] c"PHY Loopback               \00\00\00\00\00", i32 0, ptr @stmmac_test_phy_loopback }, %struct.stmmac_test { [32 x i8] c"MMC Counters               \00\00\00\00\00", i32 2, ptr @stmmac_test_mmc }, %struct.stmmac_test { [32 x i8] c"EEE                        \00\00\00\00\00", i32 2, ptr @stmmac_test_eee }, %struct.stmmac_test { [32 x i8] c"Hash Filter MC             \00\00\00\00\00", i32 2, ptr @stmmac_test_hfilt }, %struct.stmmac_test { [32 x i8] c"Perfect Filter UC          \00\00\00\00\00", i32 2, ptr @stmmac_test_pfilt }, %struct.stmmac_test { [32 x i8] c"MC Filter                  \00\00\00\00\00", i32 2, ptr @stmmac_test_mcfilt }, %struct.stmmac_test { [32 x i8] c"UC Filter                  \00\00\00\00\00", i32 2, ptr @stmmac_test_ucfilt }, %struct.stmmac_test { [32 x i8] c"Flow Control               \00\00\00\00\00", i32 2, ptr @stmmac_test_flowctrl }, %struct.stmmac_test { [32 x i8] c"RSS                        \00\00\00\00\00", i32 2, ptr @stmmac_test_rss }, %struct.stmmac_test { [32 x i8] c"VLAN Filtering             \00\00\00\00\00", i32 2, ptr @stmmac_test_vlanfilt }, %struct.stmmac_test { [32 x i8] c"VLAN Filtering (perf)      \00\00\00\00\00", i32 2, ptr @stmmac_test_vlanfilt_perfect }, %struct.stmmac_test { [32 x i8] c"Double VLAN Filter         \00\00\00\00\00", i32 2, ptr @stmmac_test_dvlanfilt }, %struct.stmmac_test { [32 x i8] c"Double VLAN Filter (perf)  \00\00\00\00\00", i32 2, ptr @stmmac_test_dvlanfilt_perfect }, %struct.stmmac_test { [32 x i8] c"Flexible RX Parser         \00\00\00\00\00", i32 2, ptr @stmmac_test_rxp }, %struct.stmmac_test { [32 x i8] c"SA Insertion (desc)        \00\00\00\00\00", i32 2, ptr @stmmac_test_desc_sai }, %struct.stmmac_test { [32 x i8] c"SA Replacement (desc)      \00\00\00\00\00", i32 2, ptr @stmmac_test_desc_sar }, %struct.stmmac_test { [32 x i8] c"SA Insertion (reg)         \00\00\00\00\00", i32 2, ptr @stmmac_test_reg_sai }, %struct.stmmac_test { [32 x i8] c"SA Replacement (reg)       \00\00\00\00\00", i32 2, ptr @stmmac_test_reg_sar }, %struct.stmmac_test { [32 x i8] c"VLAN TX Insertion          \00\00\00\00\00", i32 2, ptr @stmmac_test_vlanoff }, %struct.stmmac_test { [32 x i8] c"SVLAN TX Insertion         \00\00\00\00\00", i32 2, ptr @stmmac_test_svlanoff }, %struct.stmmac_test { [32 x i8] c"L3 DA Filtering            \00\00\00\00\00", i32 2, ptr @stmmac_test_l3filt_da }, %struct.stmmac_test { [32 x i8] c"L3 SA Filtering            \00\00\00\00\00", i32 2, ptr @stmmac_test_l3filt_sa }, %struct.stmmac_test { [32 x i8] c"L4 DA TCP Filtering        \00\00\00\00\00", i32 2, ptr @stmmac_test_l4filt_da_tcp }, %struct.stmmac_test { [32 x i8] c"L4 SA TCP Filtering        \00\00\00\00\00", i32 2, ptr @stmmac_test_l4filt_sa_tcp }, %struct.stmmac_test { [32 x i8] c"L4 DA UDP Filtering        \00\00\00\00\00", i32 2, ptr @stmmac_test_l4filt_da_udp }, %struct.stmmac_test { [32 x i8] c"L4 SA UDP Filtering        \00\00\00\00\00", i32 2, ptr @stmmac_test_l4filt_sa_udp }, %struct.stmmac_test { [32 x i8] c"ARP Offload                \00\00\00\00\00", i32 2, ptr @stmmac_test_arpoffload }, %struct.stmmac_test { [32 x i8] c"Jumbo Frame                \00\00\00\00\00", i32 2, ptr @stmmac_test_jumbo }, %struct.stmmac_test { [32 x i8] c"Multichannel Jumbo         \00\00\00\00\00", i32 2, ptr @stmmac_test_mjumbo }, %struct.stmmac_test { [32 x i8] c"Split Header               \00\00\00\00\00", i32 2, ptr @stmmac_test_sph }, %struct.stmmac_test { [32 x i8] c"TBS (ETF Scheduler)        \00\00\00\00\00", i32 2, ptr @stmmac_test_tbs }], [320 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Loopback is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%2d. %s\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__const.stmmac_test_hfilt.gd_addr = private unnamed_addr constant [6 x i8] c"\F1\EE\DD\CC\BB\AA", align 1
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Test can't be run in promiscuous mode!\0A\00", [56 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@__const.stmmac_test_pfilt.gd_addr = private unnamed_addr constant [6 x i8] c"\F0\01DUfw", align 1
@__const.stmmac_test_ucfilt.uc_addr = private unnamed_addr constant [6 x i8] c"\F0\FF\FF\FF\FF\FF", align 1
@__const.stmmac_test_ucfilt.mc_addr = private unnamed_addr constant [6 x i8] c"\F1\FF\FF\FF\FF\FF", align 1
@__const.stmmac_test_flowctrl.paddr = private unnamed_addr constant [6 x i8] c"\01\80\C2\00\00\01", align 1
@__const.stmmac_test_rxp.addr = private unnamed_addr constant [6 x i8] c"\DE\AD\BE\EF\00\00", align 1
@__const.stmmac_test_arpoffload.src = private unnamed_addr constant [6 x i8] c"\01\02\03\04\05\06", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"stmmac_test_next_id\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 57, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1966, i32 25 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1970, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"stmmac_selftests\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1823, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 2004, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 2037, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 87, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [58 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 492, i32 25 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @stmmac_test_next_id, ptr @.str, ptr @.str.1, ptr @stmmac_selftests, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_test_next_id to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_selftests to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_selftest_run(ptr noundef %dev, ptr nocapture noundef %etest, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = call ptr @memset(ptr %buf, i32 0, i32 256)
  store i8 0, ptr @stmmac_test_next_id, align 1
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.else, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end9, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.else
  tail call void @msleep(i32 noundef 200) #14
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %hw = getelementptr i8, ptr %dev, i32 2476
  %ioaddr = getelementptr i8, ptr %dev, i32 2464
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %i.0122 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %lb = getelementptr [32 x %struct.stmmac_test], ptr @stmmac_selftests, i32 0, i32 %i.0122, i32 1
  %6 = ptrtoint ptr %lb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lb, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %for.body.cleanup.sink.split_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %for.body.sw.bb18_crit_edge
    i32 0, label %for.body.if.end33_crit_edge
  ]

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

for.body.sw.bb18_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %for.body
  %9 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.bb.sw.bb18_crit_edge, label %if.end14

sw.bb.sw.bb18_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

if.end14:                                         ; preds = %sw.bb
  %call13 = tail call i32 @phy_loopback(ptr noundef nonnull %10, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end14.if.end33_crit_edge, label %if.end14.sw.bb18_crit_edge

if.end14.sw.bb18_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

sw.bb18:                                          ; preds = %if.end14.sw.bb18_crit_edge, %sw.bb.sw.bb18_crit_edge, %for.body.sw.bb18_crit_edge
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %sw.bb18.cleanup.sink.split_crit_edge, label %land.lhs.true

sw.bb18.cleanup.sink.split_crit_edge:             ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %sw.bb18
  %set_mac_loopback = getelementptr inbounds %struct.stmmac_ops, ptr %14, i32 0, i32 34
  %15 = ptrtoint ptr %set_mac_loopback to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_mac_loopback, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %if.then23

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr, align 32
  tail call void %16(ptr noundef %18, i1 noundef zeroext true) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then23, %if.end14.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %fn = getelementptr [32 x %struct.stmmac_test], ptr @stmmac_selftests, i32 0, i32 %i.0122, i32 2
  %19 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fn, align 4
  %call35 = tail call i32 %20(ptr noundef %add.ptr.i) #14
  %21 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call35, label %if.then39 [
    i32 0, label %if.end33.if.end42_crit_edge
    i32 -95, label %if.end33.if.end42_crit_edge123
  ]

if.end33.if.end42_crit_edge123:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or41 = or i32 %23, 2
  store i32 %or41, ptr %flags, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end33.if.end42_crit_edge, %if.end33.if.end42_crit_edge123
  %conv = sext i32 %call35 to i64
  %arrayidx43 = getelementptr i64, ptr %buf, i32 %i.0122
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %arrayidx43, align 8
  %25 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %7, label %if.end42.for.inc_crit_edge [
    i32 2, label %sw.bb46
    i32 1, label %if.end42.sw.bb56_crit_edge
  ]

if.end42.sw.bb56_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb56

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb46:                                          ; preds = %if.end42
  %26 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phydev, align 16
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %sw.bb46.sw.bb56_crit_edge, label %if.end52

sw.bb46.sw.bb56_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb56

if.end52:                                         ; preds = %sw.bb46
  %call51 = tail call i32 @phy_loopback(ptr noundef nonnull %27, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool53.not = icmp eq i32 %call51, 0
  br i1 %tobool53.not, label %if.end52.for.inc_crit_edge, label %if.end52.sw.bb56_crit_edge

if.end52.sw.bb56_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb56

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb56:                                          ; preds = %if.end52.sw.bb56_crit_edge, %sw.bb46.sw.bb56_crit_edge, %if.end42.sw.bb56_crit_edge
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool60.not = icmp eq ptr %31, null
  br i1 %tobool60.not, label %sw.bb56.for.inc_crit_edge, label %land.lhs.true61

sw.bb56.for.inc_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true61:                                  ; preds = %sw.bb56
  %set_mac_loopback64 = getelementptr inbounds %struct.stmmac_ops, ptr %31, i32 0, i32 34
  %32 = ptrtoint ptr %set_mac_loopback64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mac_loopback64, align 4
  %tobool65.not = icmp eq ptr %33, null
  br i1 %tobool65.not, label %land.lhs.true61.for.inc_crit_edge, label %if.then66

land.lhs.true61.for.inc_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then66:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr, align 32
  tail call void %33(ptr noundef %35, i1 noundef zeroext false) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %land.lhs.true61.for.inc_crit_edge, %sw.bb56.for.inc_crit_edge, %if.end52.for.inc_crit_edge, %if.end42.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %sw.bb18.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.2.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.1, %if.else.cleanup.sink.split_crit_edge ], [ @.str.2, %for.body.cleanup.sink.split_crit_edge ], [ @.str.2, %land.lhs.true.cleanup.sink.split_crit_edge ], [ @.str.2, %sw.bb18.cleanup.sink.split_crit_edge ]
  %dev30 = getelementptr i8, ptr %dev, i32 2468
  %36 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull %.str.2.sink) #17
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %or32 = or i32 %39, 2
  store i32 %or32, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @stmmac_selftest_get_count(ptr nocapture readnone %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_loopback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_selftest_get_strings(ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %data) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %p.06 = phi ptr [ %data, %entry ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.07, 1
  %arrayidx = getelementptr [32 x %struct.stmmac_test], ptr @stmmac_selftests, i32 0, i32 %i.07
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.06, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %add, ptr noundef %arrayidx)
  %add.ptr = getelementptr i8, ptr %p.06, i32 32
  %exitcond.not = icmp eq i32 %add, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_mac_loopback(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %0 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dst, align 8
  %call = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_phy_loopback(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %0 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 145
  %3 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @phy_loopback(ptr noundef nonnull %4, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dst, align 8
  %call7 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %phydev9 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 145
  %12 = ptrtoint ptr %phydev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev9, align 16
  %call10 = call i32 @phy_loopback(ptr noundef %13, i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_mmc(ptr noundef %priv) #0 align 64 {
entry:
  %attr.i = alloca %struct.stmmac_packet_attrs, align 8
  %final = alloca %struct.stmmac_counters, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 340, ptr nonnull %final) #14
  %0 = call ptr @memset(ptr %final, i32 0, i32 340)
  %rmon = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 9
  %1 = ptrtoint ptr %rmon to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rmon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %mmc = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %read = getelementptr inbounds %struct.stmmac_mmc_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end10_crit_edge, label %if.then5

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %mmcaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 67
  %9 = ptrtoint ptr %mmcaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmcaddr, align 32
  %mmc9 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 38
  tail call void %8(ptr noundef %10, ptr noundef %mmc9) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr.i) #14
  %11 = call ptr @memset(ptr %attr.i, i32 0, i32 88)
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i, align 64
  %dst.i = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr.i, i32 0, i32 4
  %16 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dst.i, align 8
  %call.i = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr.i) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %mmc16 = getelementptr inbounds %struct.mac_device_info, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %mmc16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc16, align 4
  %tobool17.not = icmp eq ptr %20, null
  br i1 %tobool17.not, label %if.end13.if.end28_crit_edge, label %land.lhs.true18

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true18:                                  ; preds = %if.end13
  %read21 = getelementptr inbounds %struct.stmmac_mmc_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read21, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %land.lhs.true18.if.end28_crit_edge, label %if.then23

land.lhs.true18.if.end28_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  %mmcaddr27 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 67
  %23 = ptrtoint ptr %mmcaddr27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmcaddr27, align 32
  call void %22(ptr noundef %24, ptr noundef nonnull %final) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %land.lhs.true18.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %mmc_tx_framecount_g = getelementptr inbounds %struct.stmmac_counters, ptr %final, i32 0, i32 21
  %25 = ptrtoint ptr %mmc_tx_framecount_g to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mmc_tx_framecount_g, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  %. = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ], [ %., %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 340, ptr nonnull %final) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_eee(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %attr.i = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eee = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 12
  %0 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %eee_active = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 48
  %2 = ptrtoint ptr %eee_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eee_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 640) #18
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 640) #18
  %tobool6.not = icmp eq ptr %call7.i.i49, null
  br i1 %tobool6.not, label %if.end4.out_free_initial_crit_edge, label %if.end8

if.end4.out_free_initial_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_initial

if.end8:                                          ; preds = %if.end4
  %xstats = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 34
  %6 = call ptr @memcpy(ptr %call7.i.i, ptr %xstats, i32 640)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr.i) #14
  %7 = call ptr @memset(ptr %attr.i, i32 0, i32 88)
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr.i, align 64
  %dst.i = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr.i, i32 0, i32 4
  %12 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dst.i, align 8
  %call.i = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr.i) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %while.cond.preheader, label %if.end8.out_free_final_crit_edge

if.end8.out_free_final_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_final

while.cond.preheader:                             ; preds = %if.end8
  %irq_tx_path_in_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %call7.i.i49, i32 0, i32 51
  %irq_tx_path_in_lpi_mode_n15 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %call7.i.i, i32 0, i32 51
  %13 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %14 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %16 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ugt i32 %15, %17
  br i1 %cmp, label %while.cond.preheader.if.end25_crit_edge, label %if.end17

while.cond.preheader.if.end25_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17:                                         ; preds = %while.cond.preheader
  call void @msleep(i32 noundef 100) #14
  %18 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %19 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %21 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.1 = icmp ugt i32 %20, %22
  br i1 %cmp.1, label %if.end17.if.end25_crit_edge, label %if.end17.1

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.1:                                       ; preds = %if.end17
  call void @msleep(i32 noundef 100) #14
  %23 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %24 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %26 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.2 = icmp ugt i32 %25, %27
  br i1 %cmp.2, label %if.end17.1.if.end25_crit_edge, label %if.end17.2

if.end17.1.if.end25_crit_edge:                    ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.2:                                       ; preds = %if.end17.1
  call void @msleep(i32 noundef 100) #14
  %28 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %29 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %31 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.3 = icmp ugt i32 %30, %32
  br i1 %cmp.3, label %if.end17.2.if.end25_crit_edge, label %if.end17.3

if.end17.2.if.end25_crit_edge:                    ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.3:                                       ; preds = %if.end17.2
  call void @msleep(i32 noundef 100) #14
  %33 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %34 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %36 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.4 = icmp ugt i32 %35, %37
  br i1 %cmp.4, label %if.end17.3.if.end25_crit_edge, label %if.end17.4

if.end17.3.if.end25_crit_edge:                    ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.4:                                       ; preds = %if.end17.3
  call void @msleep(i32 noundef 100) #14
  %38 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %39 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %41 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.5 = icmp ugt i32 %40, %42
  br i1 %cmp.5, label %if.end17.4.if.end25_crit_edge, label %if.end17.5

if.end17.4.if.end25_crit_edge:                    ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.5:                                       ; preds = %if.end17.4
  call void @msleep(i32 noundef 100) #14
  %43 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %44 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %46 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp.6 = icmp ugt i32 %45, %47
  br i1 %cmp.6, label %if.end17.5.if.end25_crit_edge, label %if.end17.6

if.end17.5.if.end25_crit_edge:                    ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.6:                                       ; preds = %if.end17.5
  call void @msleep(i32 noundef 100) #14
  %48 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %49 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %51 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp.7 = icmp ugt i32 %50, %52
  br i1 %cmp.7, label %if.end17.6.if.end25_crit_edge, label %if.end17.7

if.end17.6.if.end25_crit_edge:                    ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.7:                                       ; preds = %if.end17.6
  call void @msleep(i32 noundef 100) #14
  %53 = call ptr @memcpy(ptr %call7.i.i49, ptr %xstats, i32 640)
  %54 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %56 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq_tx_path_in_lpi_mode_n15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.8 = icmp ugt i32 %55, %57
  br i1 %cmp.8, label %if.end17.7.if.end25_crit_edge, label %if.end17.8

if.end17.7.if.end25_crit_edge:                    ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end17.8:                                       ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #16
  call void @msleep(i32 noundef 100) #14
  br label %out_free_final

if.end25:                                         ; preds = %if.end17.7.if.end25_crit_edge, %if.end17.6.if.end25_crit_edge, %if.end17.5.if.end25_crit_edge, %if.end17.4.if.end25_crit_edge, %if.end17.3.if.end25_crit_edge, %if.end17.2.if.end25_crit_edge, %if.end17.1.if.end25_crit_edge, %if.end17.if.end25_crit_edge, %while.cond.preheader.if.end25_crit_edge
  %irq_tx_path_exit_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %call7.i.i49, i32 0, i32 52
  %58 = ptrtoint ptr %irq_tx_path_exit_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq_tx_path_exit_lpi_mode_n, align 16
  %irq_tx_path_exit_lpi_mode_n26 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %call7.i.i, i32 0, i32 52
  %60 = ptrtoint ptr %irq_tx_path_exit_lpi_mode_n26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq_tx_path_exit_lpi_mode_n26, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp27.not = icmp ugt i32 %59, %61
  %spec.select = select i1 %cmp27.not, i32 0, i32 -22
  br label %out_free_final

out_free_final:                                   ; preds = %if.end25, %if.end17.8, %if.end8.out_free_final_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end8.out_free_final_crit_edge ], [ %spec.select, %if.end25 ], [ -110, %if.end17.8 ]
  call void @kfree(ptr noundef nonnull %call7.i.i49) #14
  br label %out_free_initial

out_free_initial:                                 ; preds = %out_free_final, %if.end4.out_free_initial_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free_final ], [ -12, %if.end4.out_free_initial_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free_initial, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free_initial ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_hfilt(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %gd_addr = alloca [6 x i8], align 1
  %bd_addr = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %gd_addr) #14
  %0 = call ptr @memcpy(ptr %gd_addr, ptr @__const.stmmac_test_hfilt.gd_addr, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bd_addr) #14
  %1 = call ptr @memcpy(ptr %bd_addr, ptr @__const.stmmac_test_ucfilt.mc_addr, i32 5)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %2 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %stmmac_filter_check.exit

stmmac_filter_check.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #17
  br label %cleanup28

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %multicast_filter_bins = getelementptr inbounds %struct.mac_device_info, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %multicast_filter_bins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp.not = icmp ult i32 %10, %14
  br i1 %cmp.not, label %while.cond.preheader, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

while.cond.preheader:                             ; preds = %if.end
  %arrayidx = getelementptr inbounds [6 x i8], ptr %bd_addr, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %tries.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ 256, %while.cond.preheader ]
  %dec = add nsw i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %while.cond.cleanup28_crit_edge, label %while.body

while.cond.cleanup28_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

while.body:                                       ; preds = %while.cond
  %conv = trunc i32 %dec to i8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx, align 1
  %call4 = call fastcc zeroext i1 @stmmac_hash_check(ptr noundef %priv, ptr noundef nonnull %bd_addr)
  br i1 %call4, label %if.end9, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end9:                                          ; preds = %while.body
  %call12 = call i32 @dev_mc_add(ptr noundef %8, ptr noundef nonnull %gd_addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup28_crit_edge

if.end9.cleanup28_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

if.end15:                                         ; preds = %if.end9
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %gd_addr, ptr %dst, align 8
  %call17 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bd_addr, ptr %dst, align 8
  %call23 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %cond = select i1 %tobool24.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end15.cleanup_crit_edge ], [ %cond, %if.end20 ]
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %call27 = call i32 @dev_mc_del(ptr noundef %19, ptr noundef nonnull %gd_addr) #14
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup, %if.end9.cleanup28_crit_edge, %while.cond.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %stmmac_filter_check.exit
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ -95, %stmmac_filter_check.exit ], [ -95, %if.end.cleanup28_crit_edge ], [ %call12, %if.end9.cleanup28_crit_edge ], [ -95, %while.cond.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bd_addr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %gd_addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_pfilt(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %gd_addr = alloca [6 x i8], align 1
  %bd_addr = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %gd_addr) #14
  %0 = call ptr @memcpy(ptr %gd_addr, ptr @__const.stmmac_test_pfilt.gd_addr, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bd_addr) #14
  %1 = call ptr @memcpy(ptr %bd_addr, ptr @__const.stmmac_test_ucfilt.uc_addr, i32 5)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %2 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %stmmac_filter_check.exit

stmmac_filter_check.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #17
  br label %cleanup28

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 65, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unicast_filter_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp.not = icmp ult i32 %10, %14
  br i1 %cmp.not, label %while.cond.preheader, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

while.cond.preheader:                             ; preds = %if.end
  %arrayidx = getelementptr inbounds [6 x i8], ptr %bd_addr, i32 0, i32 5
  %uc.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 65
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body.i
  %dec = add nsw i32 %dec50, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %while.cond.loopexit.cleanup28_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.loopexit.cleanup28_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.cond.preheader
  %dec50 = phi i32 [ 255, %while.cond.preheader ], [ %dec, %while.cond.loopexit.while.body_crit_edge ]
  %conv = trunc i32 %dec50 to i8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body
  %ha.0.in.i = phi ptr [ %uc.i, %while.body ], [ %ha.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %ha.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0.i = load ptr, ptr %ha.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %uc.i
  br i1 %cmp.not.i, label %if.end9, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %addr5.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.i, i32 0, i32 2
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr5.i, ptr noundef nonnull dereferenceable(6) %bd_addr, i32 6) #19
  %tobool.not.i47 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i47, label %while.cond.loopexit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.end9:                                          ; preds = %for.cond.i
  %call12 = call i32 @dev_uc_add(ptr noundef %8, ptr noundef nonnull %gd_addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup28_crit_edge

if.end9.cleanup28_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

if.end15:                                         ; preds = %if.end9
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %gd_addr, ptr %dst, align 8
  %call17 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bd_addr, ptr %dst, align 8
  %call23 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %cond = select i1 %tobool24.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end15.cleanup_crit_edge ], [ %cond, %if.end20 ]
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call27 = call i32 @dev_uc_del(ptr noundef %20, ptr noundef nonnull %gd_addr) #14
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup, %if.end9.cleanup28_crit_edge, %while.cond.loopexit.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %stmmac_filter_check.exit
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ -95, %stmmac_filter_check.exit ], [ -95, %if.end.cleanup28_crit_edge ], [ %call12, %if.end9.cleanup28_crit_edge ], [ -95, %while.cond.loopexit.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bd_addr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %gd_addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_mcfilt(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %uc_addr = alloca [6 x i8], align 1
  %mc_addr = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %uc_addr) #14
  %0 = call ptr @memcpy(ptr %uc_addr, ptr @__const.stmmac_test_ucfilt.uc_addr, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mc_addr) #14
  %1 = call ptr @memcpy(ptr %mc_addr, ptr @__const.stmmac_test_ucfilt.mc_addr, i32 5)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %2 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %stmmac_filter_check.exit

stmmac_filter_check.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #17
  br label %cleanup34

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 65, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unicast_filter_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp.not = icmp ult i32 %10, %14
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup34_crit_edge

if.end.cleanup34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

if.end2:                                          ; preds = %if.end
  %count4 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 66, i32 1
  %15 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count4, align 8
  %multicast_filter_bins = getelementptr inbounds %struct.mac_device_info, ptr %12, i32 0, i32 11
  %17 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %multicast_filter_bins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp6.not = icmp ult i32 %16, %18
  br i1 %cmp6.not, label %while.cond.preheader, label %if.end2.cleanup34_crit_edge

if.end2.cleanup34_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

while.cond.preheader:                             ; preds = %if.end2
  %arrayidx = getelementptr inbounds [6 x i8], ptr %mc_addr, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %tries.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ 256, %while.cond.preheader ]
  %dec = add nsw i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %while.cond.cleanup34_crit_edge, label %while.body

while.cond.cleanup34_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

while.body:                                       ; preds = %while.cond
  %conv = trunc i32 %dec to i8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx, align 1
  %call10 = call fastcc zeroext i1 @stmmac_hash_check(ptr noundef %priv, ptr noundef nonnull %mc_addr)
  br i1 %call10, label %if.end15, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end15:                                         ; preds = %while.body
  %call18 = call i32 @dev_uc_add(ptr noundef %8, ptr noundef nonnull %uc_addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup34_crit_edge

if.end15.cleanup34_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

if.end21:                                         ; preds = %if.end15
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %uc_addr, ptr %dst, align 8
  %call23 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mc_addr, ptr %dst, align 8
  %call29 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %cond = select i1 %tobool30.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end21.cleanup_crit_edge ], [ %cond, %if.end26 ]
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call33 = call i32 @dev_uc_del(ptr noundef %23, ptr noundef nonnull %uc_addr) #14
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup, %if.end15.cleanup34_crit_edge, %while.cond.cleanup34_crit_edge, %if.end2.cleanup34_crit_edge, %if.end.cleanup34_crit_edge, %stmmac_filter_check.exit
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ -95, %stmmac_filter_check.exit ], [ -95, %if.end.cleanup34_crit_edge ], [ -95, %if.end2.cleanup34_crit_edge ], [ %call18, %if.end15.cleanup34_crit_edge ], [ -95, %while.cond.cleanup34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mc_addr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %uc_addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_ucfilt(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %uc_addr = alloca [6 x i8], align 1
  %mc_addr = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %uc_addr) #14
  %0 = call ptr @memcpy(ptr %uc_addr, ptr @__const.stmmac_test_ucfilt.uc_addr, i32 5)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mc_addr) #14
  %1 = call ptr @memcpy(ptr %mc_addr, ptr @__const.stmmac_test_ucfilt.mc_addr, i32 6)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %2 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %stmmac_filter_check.exit

stmmac_filter_check.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #17
  br label %cleanup34

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 65, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unicast_filter_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp.not = icmp ult i32 %10, %14
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup34_crit_edge

if.end.cleanup34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

if.end2:                                          ; preds = %if.end
  %count4 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 66, i32 1
  %15 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count4, align 8
  %multicast_filter_bins = getelementptr inbounds %struct.mac_device_info, ptr %12, i32 0, i32 11
  %17 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %multicast_filter_bins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp6.not = icmp ult i32 %16, %18
  br i1 %cmp6.not, label %while.cond.preheader, label %if.end2.cleanup34_crit_edge

if.end2.cleanup34_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

while.cond.preheader:                             ; preds = %if.end2
  %arrayidx = getelementptr inbounds [6 x i8], ptr %uc_addr, i32 0, i32 5
  %uc.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 65
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body.i
  %dec = add nsw i32 %dec58, -1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %while.cond.loopexit.cleanup34_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.loopexit.cleanup34_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.cond.preheader
  %dec58 = phi i32 [ 255, %while.cond.preheader ], [ %dec, %while.cond.loopexit.while.body_crit_edge ]
  %conv = trunc i32 %dec58 to i8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body
  %ha.0.in.i = phi ptr [ %uc.i, %while.body ], [ %ha.0.i, %for.body.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %ha.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.0.i = load ptr, ptr %ha.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %uc.i
  br i1 %cmp.not.i, label %if.end15, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %addr5.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.i, i32 0, i32 2
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr5.i, ptr noundef nonnull dereferenceable(6) %uc_addr, i32 6) #19
  %tobool.not.i55 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i55, label %while.cond.loopexit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.end15:                                         ; preds = %for.cond.i
  %call18 = call i32 @dev_mc_add(ptr noundef %8, ptr noundef nonnull %mc_addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup34_crit_edge

if.end15.cleanup34_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

if.end21:                                         ; preds = %if.end15
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mc_addr, ptr %dst, align 8
  %call23 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %uc_addr, ptr %dst, align 8
  %call29 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %cond = select i1 %tobool30.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end21.cleanup_crit_edge ], [ %cond, %if.end26 ]
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %call33 = call i32 @dev_mc_del(ptr noundef %24, ptr noundef nonnull %mc_addr) #14
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup, %if.end15.cleanup34_crit_edge, %while.cond.loopexit.cleanup34_crit_edge, %if.end2.cleanup34_crit_edge, %if.end.cleanup34_crit_edge, %stmmac_filter_check.exit
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ -95, %stmmac_filter_check.exit ], [ -95, %if.end.cleanup34_crit_edge ], [ -95, %if.end2.cleanup34_crit_edge ], [ %call18, %if.end15.cleanup34_crit_edge ], [ -95, %while.cond.loopexit.cleanup34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mc_addr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %uc_addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_flowctrl(ptr noundef %priv) #0 align 64 {
entry:
  %paddr = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %paddr) #14
  %0 = call ptr @memcpy(ptr %paddr, ptr @__const.stmmac_test_flowctrl.paddr, i32 6)
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 145
  %3 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev1, align 16
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %5 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 29
  %7 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_queues_to_use, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %lor.lhs.false

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup104

lor.lhs.false:                                    ; preds = %entry
  %pause = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 11
  %9 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 12
  %11 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asym_pause, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup104_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup104_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup104

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 112) #18
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup104_crit_edge, label %if.end6

if.end.cleanup104_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup104

if.end6:                                          ; preds = %if.end
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #14
  %pt = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -30712, ptr %pt, align 4
  %func = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @stmmac_test_flowctrl_validate, ptr %func, align 8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev10, align 8
  %af_packet_priv = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %af_packet_priv, align 8
  tail call void @dev_add_pack(ptr noundef %pt) #14
  %22 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plat, align 128
  %rx_fifo_size = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %if.then15, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %rx_fifo_size16 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 28
  %26 = ptrtoint ptr %rx_fifo_size16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_fifo_size16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end6.if.end17_crit_edge
  %pkt_count.0 = phi i32 [ %25, %if.end6.if.end17_crit_edge ], [ %27, %if.then15 ]
  %div = udiv i32 %pkt_count.0, 1400
  %mul = shl nuw nsw i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp180.not = icmp eq i32 %8, 0
  br i1 %cmp180.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %i.0181 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end27.for.body_crit_edge ]
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.mac_device_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma, align 4
  %tobool18.not = icmp eq ptr %31, null
  br i1 %tobool18.not, label %for.body.if.end27_crit_edge, label %land.lhs.true19

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true19:                                  ; preds = %for.body
  %stop_rx = getelementptr inbounds %struct.stmmac_dma_ops, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %stop_rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stop_rx, align 4
  %tobool22.not = icmp eq ptr %33, null
  br i1 %tobool22.not, label %land.lhs.true19.if.end27_crit_edge, label %if.then23

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr, align 32
  tail call void %33(ptr noundef %35, i32 noundef %i.0181) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true19.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %inc = add nuw i32 %i.0181, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %if.end17.for.end_crit_edge
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %call29 = tail call i32 @dev_set_promiscuity(ptr noundef %37, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.end.cleanup97_crit_edge

for.end.cleanup97_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup97

if.end32:                                         ; preds = %for.end
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %call34 = call i32 @dev_mc_add(ptr noundef %39, ptr noundef nonnull %paddr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond38.preheader, label %if.end32.cleanup97_crit_edge

if.end32.cleanup97_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup97

for.cond38.preheader:                             ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400, i32 %pkt_count.0)
  %40 = icmp ult i32 %pkt_count.0, 1400
  br i1 %40, label %for.cond38.preheader.for.end52_crit_edge, label %for.body40.lr.ph

for.cond38.preheader.for.end52_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end52

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %dont_wait = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 11
  %size = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 13
  %umax = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  br label %for.body40

for.body40:                                       ; preds = %if.end45.for.body40_crit_edge, %for.body40.lr.ph
  %i.1184 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc51, %if.end45.for.body40_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %41 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr, align 64
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %dst, align 8
  %47 = ptrtoint ptr %dont_wait to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %dont_wait, align 4
  %48 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1400, ptr %size, align 4
  %call42 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %cleanup

if.end45:                                         ; preds = %for.body40
  %49 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool47.not = icmp ne i32 %50, 0
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  %inc51 = add nuw nsw i32 %i.1184, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc51, i32 %umax)
  %exitcond191.not = icmp eq i32 %inc51, %umax
  %or.cond = select i1 %tobool47.not, i1 true, i1 %exitcond191.not
  br i1 %or.cond, label %if.end45.for.end52_crit_edge, label %if.end45.for.body40_crit_edge

if.end45.for.body40_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40

if.end45.for.end52_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end52

cleanup:                                          ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  br label %cleanup97

for.end52:                                        ; preds = %if.end45.for.end52_crit_edge, %for.cond38.preheader.for.end52_crit_edge
  call void @msleep(i32 noundef 200) #14
  br i1 %cmp180.not, label %for.end52.for.end91_crit_edge, label %for.body55.lr.ph

for.end52.for.end91_crit_edge:                    ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end91

for.body55.lr.ph:                                 ; preds = %for.end52
  %dma_rx_size = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 21
  %hw59 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %ioaddr70 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  br label %for.body55

for.body55:                                       ; preds = %napi_reschedule.exit.for.body55_crit_edge, %for.body55.lr.ph
  %i.2186 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc90, %napi_reschedule.exit.for.body55_crit_edge ]
  %arrayidx = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 26, i32 %i.2186
  %dma_rx_phy = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 20, i32 %i.2186, i32 15
  %51 = ptrtoint ptr %dma_rx_phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_rx_phy, align 4
  %53 = ptrtoint ptr %dma_rx_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_rx_size, align 128
  %mul57 = shl i32 %54, 4
  %add = add i32 %mul57, %52
  %55 = ptrtoint ptr %hw59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw59, align 4
  %dma60 = getelementptr inbounds %struct.mac_device_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dma60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma60, align 4
  %tobool61.not = icmp eq ptr %58, null
  br i1 %tobool61.not, label %for.body55.if.end71_crit_edge, label %land.lhs.true62

for.body55.if.end71_crit_edge:                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true62:                                  ; preds = %for.body55
  %set_rx_tail_ptr = getelementptr inbounds %struct.stmmac_dma_ops, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %set_rx_tail_ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_rx_tail_ptr, align 4
  %tobool65.not = icmp eq ptr %60, null
  br i1 %tobool65.not, label %land.lhs.true62.if.end71_crit_edge, label %if.then66

land.lhs.true62.if.end71_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then66:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %ioaddr70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr70, align 32
  call void %60(ptr noundef %62, i32 noundef %add, i32 noundef %i.2186) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %land.lhs.true62.if.end71_crit_edge, %for.body55.if.end71_crit_edge
  %63 = ptrtoint ptr %hw59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw59, align 4
  %dma75 = getelementptr inbounds %struct.mac_device_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dma75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma75, align 4
  %tobool76.not = icmp eq ptr %66, null
  br i1 %tobool76.not, label %if.end71.if.end86_crit_edge, label %land.lhs.true77

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

land.lhs.true77:                                  ; preds = %if.end71
  %start_rx = getelementptr inbounds %struct.stmmac_dma_ops, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %start_rx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %start_rx, align 4
  %tobool80.not = icmp eq ptr %68, null
  br i1 %tobool80.not, label %land.lhs.true77.if.end86_crit_edge, label %if.then81

land.lhs.true77.if.end86_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then81:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %ioaddr70 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr70, align 32
  call void %68(ptr noundef %70, i32 noundef %i.2186) #14
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %land.lhs.true77.if.end86_crit_edge, %if.end71.if.end86_crit_edge
  call fastcc void @local_bh_disable()
  %call.i = call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx) #14
  br i1 %call.i, label %if.then.i, label %if.end86.napi_reschedule.exit_crit_edge

if.end86.napi_reschedule.exit_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %napi_reschedule.exit

if.then.i:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  call void @__napi_schedule(ptr noundef %arrayidx) #14
  br label %napi_reschedule.exit

napi_reschedule.exit:                             ; preds = %if.then.i, %if.end86.napi_reschedule.exit_crit_edge
  call fastcc void @local_bh_enable()
  %inc90 = add nuw i32 %i.2186, 1
  %exitcond192.not = icmp eq i32 %inc90, %8
  br i1 %exitcond192.not, label %napi_reschedule.exit.for.end91_crit_edge, label %napi_reschedule.exit.for.body55_crit_edge

napi_reschedule.exit.for.body55_crit_edge:        ; preds = %napi_reschedule.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body55

napi_reschedule.exit.for.end91_crit_edge:         ; preds = %napi_reschedule.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end91

for.end91:                                        ; preds = %napi_reschedule.exit.for.end91_crit_edge, %for.end52.for.end91_crit_edge
  %call94 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %71 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool96.not = icmp eq i32 %72, 0
  %cond = select i1 %tobool96.not, i32 -110, i32 0
  br label %cleanup97

cleanup97:                                        ; preds = %for.end91, %cleanup, %if.end32.cleanup97_crit_edge, %for.end.cleanup97_crit_edge
  %ret.0 = phi i32 [ %call29, %for.end.cleanup97_crit_edge ], [ %call34, %if.end32.cleanup97_crit_edge ], [ %call42, %cleanup ], [ %cond, %for.end91 ]
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %call100 = call i32 @dev_mc_del(ptr noundef %74, ptr noundef nonnull %paddr) #14
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %call102 = call i32 @dev_set_promiscuity(ptr noundef %76, i32 noundef -1) #14
  call void @dev_remove_pack(ptr noundef %pt) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup104

cleanup104:                                       ; preds = %cleanup97, %if.end.cleanup104_crit_edge, %land.lhs.true.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup97 ], [ -95, %land.lhs.true.cleanup104_crit_edge ], [ -95, %entry.cleanup104_crit_edge ], [ -12, %if.end.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %paddr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_rss(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %0 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %rssen = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 34
  %1 = ptrtoint ptr %rssen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rssen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rss = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 99
  %3 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dst, align 8
  %exp_hash = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 10
  %10 = ptrtoint ptr %exp_hash to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %exp_hash, align 8
  %sport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 8
  %11 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 801, ptr %sport, align 8
  %dport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 9
  %12 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 291, ptr %dport, align 4
  %call = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_vlanfilt(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vlhash = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 35
  %0 = ptrtoint ptr %vlhash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vlhash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @__stmmac_test_vlanfilt(ptr noundef %priv)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_vlanfilt_perfect(ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vlhash = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 35
  %4 = ptrtoint ptr %vlhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vlhash, align 4
  store i32 0, ptr %vlhash, align 4
  %call = tail call fastcc i32 @__stmmac_test_vlanfilt(ptr noundef %priv)
  %6 = ptrtoint ptr %vlhash to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vlhash, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_dvlanfilt(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vlhash = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 35
  %0 = ptrtoint ptr %vlhash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vlhash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @__stmmac_test_dvlanfilt(ptr noundef %priv)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_dvlanfilt_perfect(ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vlhash = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 35
  %4 = ptrtoint ptr %vlhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vlhash, align 4
  store i32 0, ptr %vlhash, align 4
  %call = tail call fastcc i32 @__stmmac_test_dvlanfilt(ptr noundef %priv)
  %6 = ptrtoint ptr %vlhash to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vlhash, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_rxp(ptr noundef %priv) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %cls_u32 = alloca %struct.tc_cls_u32_offload, align 4
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = call ptr @memcpy(ptr %addr, ptr @__const.stmmac_test_rxp.addr, i32 6)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32) #14
  %1 = call ptr @memset(ptr %cls_u32, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %2 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features.i, align 16
  %and.i = and i64 %6, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %frpsel = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 30
  %7 = ptrtoint ptr %frpsel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frpsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 32) #18
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i116 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #18
  %tobool9.not = icmp eq ptr %call7.i.i116, null
  br i1 %tobool9.not, label %if.end7.cleanup_sel_crit_edge, label %if.end11

if.end7.cleanup_sel_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_sel

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4) #18
  %tobool13.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_exts_crit_edge, label %if.end15

if.end11.cleanup_exts_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_exts

if.end15:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 272) #18
  %tobool17.not = icmp eq ptr %call7.i.i.i117, null
  br i1 %tobool17.not, label %if.end15.cleanup_actions_crit_edge, label %if.end19

if.end15.cleanup_actions_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_actions

if.end19:                                         ; preds = %if.end15
  %command = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 1
  %13 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %command, align 4
  %14 = ptrtoint ptr %cls_u32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cls_u32, align 4
  %protocol = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32, i32 0, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3, ptr %protocol, align 4
  %16 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i116, ptr %16, align 4
  %sel22 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %sel22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %sel22, align 4
  %handle = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 291, ptr %handle, align 4
  %nr_actions = getelementptr inbounds %struct.tcf_exts, ptr %call7.i.i116, i32 0, i32 1
  %20 = ptrtoint ptr %nr_actions to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %nr_actions, align 4
  %actions23 = getelementptr inbounds %struct.tcf_exts, ptr %call7.i.i116, i32 0, i32 2
  %21 = ptrtoint ptr %actions23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i, ptr %actions23, align 8
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i117, ptr %call7.i.i.i, align 8
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %call7.i.i.i117, i32 0, i32 6
  %23 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %tcfa_action, align 8
  %nkeys = getelementptr inbounds %struct.tc_u32_sel, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %nkeys to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %nkeys, align 2
  %offshift = getelementptr inbounds %struct.tc_u32_sel, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %offshift to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %offshift, align 1
  %keys = getelementptr inbounds %struct.tc_u32_sel, ptr %call7.i.i, i32 0, i32 8
  %off = getelementptr inbounds %struct.tc_u32_sel, ptr %call7.i.i, i32 1, i32 5
  %26 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %off, align 8
  %val = getelementptr inbounds %struct.tc_u32_sel, ptr %call7.i.i, i32 1, i32 3
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -559038737, ptr %val, align 4
  %28 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %keys, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %tc = getelementptr inbounds %struct.mac_device_info, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tc, align 4
  %tobool32.not = icmp eq ptr %32, null
  br i1 %tobool32.not, label %if.end19.cleanup_act_crit_edge, label %land.lhs.true

if.end19.cleanup_act_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_act

land.lhs.true:                                    ; preds = %if.end19
  %setup_cls_u32 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %setup_cls_u32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %setup_cls_u32, align 4
  %tobool35.not = icmp eq ptr %34, null
  br i1 %tobool35.not, label %land.lhs.true.cleanup_act_crit_edge, label %if.end41

land.lhs.true.cleanup_act_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_act

if.end41:                                         ; preds = %land.lhs.true
  %call40 = call i32 %34(ptr noundef %priv, ptr noundef nonnull %cls_u32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup_act_crit_edge

if.end41.cleanup_act_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_act

if.end44:                                         ; preds = %if.end41
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %dst, align 8
  %src = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 3
  %40 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %addr, ptr %src, align 4
  %call46 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  %cond = select i1 %tobool47.not, i32 -22, i32 0
  %41 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %command, align 4
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %tc51 = getelementptr inbounds %struct.mac_device_info, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %tc51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tc51, align 4
  %tobool52.not = icmp eq ptr %45, null
  br i1 %tobool52.not, label %if.end44.cleanup_act_crit_edge, label %land.lhs.true53

if.end44.cleanup_act_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_act

land.lhs.true53:                                  ; preds = %if.end44
  %setup_cls_u3256 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %setup_cls_u3256 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %setup_cls_u3256, align 4
  %tobool57.not = icmp eq ptr %47, null
  br i1 %tobool57.not, label %land.lhs.true53.cleanup_act_crit_edge, label %if.then58

land.lhs.true53.cleanup_act_crit_edge:            ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_act

if.then58:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  %call62 = call i32 %47(ptr noundef %priv, ptr noundef nonnull %cls_u32) #14
  br label %cleanup_act

cleanup_act:                                      ; preds = %if.then58, %land.lhs.true53.cleanup_act_crit_edge, %if.end44.cleanup_act_crit_edge, %if.end41.cleanup_act_crit_edge, %land.lhs.true.cleanup_act_crit_edge, %if.end19.cleanup_act_crit_edge
  %ret.0 = phi i32 [ %call40, %if.end41.cleanup_act_crit_edge ], [ %cond, %if.then58 ], [ %cond, %land.lhs.true53.cleanup_act_crit_edge ], [ %cond, %if.end44.cleanup_act_crit_edge ], [ -22, %land.lhs.true.cleanup_act_crit_edge ], [ -22, %if.end19.cleanup_act_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i117) #14
  br label %cleanup_actions

cleanup_actions:                                  ; preds = %cleanup_act, %if.end15.cleanup_actions_crit_edge
  %ret.1 = phi i32 [ %ret.0, %cleanup_act ], [ -12, %if.end15.cleanup_actions_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup_exts

cleanup_exts:                                     ; preds = %cleanup_actions, %if.end11.cleanup_exts_crit_edge
  %ret.2 = phi i32 [ %ret.1, %cleanup_actions ], [ -12, %if.end11.cleanup_exts_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i116) #14
  br label %cleanup_sel

cleanup_sel:                                      ; preds = %cleanup_exts, %if.end7.cleanup_sel_crit_edge
  %ret.3 = phi i32 [ %ret.2, %cleanup_exts ], [ -12, %if.end7.cleanup_sel_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup_sel, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %cleanup_sel ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_desc_sai(ptr nocapture noundef %priv) #0 align 64 {
entry:
  %src = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #14
  %0 = call ptr @memset(ptr %src, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %1 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %vlins = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 37
  %2 = ptrtoint ptr %vlins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %remove_sa = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 15
  %4 = ptrtoint ptr %remove_sa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %remove_sa, align 4
  %sarc = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 17
  %5 = ptrtoint ptr %sarc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %sarc, align 4
  %src1 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %src1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %src, ptr %src1, align 4
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dst, align 8
  %sarc_type = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 8
  %12 = ptrtoint ptr %sarc_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %sarc_type, align 16
  %call = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  %13 = ptrtoint ptr %sarc_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sarc_type, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_desc_sar(ptr nocapture noundef %priv) #0 align 64 {
entry:
  %src = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #14
  %0 = call ptr @memset(ptr %src, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %1 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %vlins = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 37
  %2 = ptrtoint ptr %vlins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sarc = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 17
  %4 = ptrtoint ptr %sarc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sarc, align 4
  %src1 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %src1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %src, ptr %src1, align 4
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dst, align 8
  %sarc_type = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 8
  %11 = ptrtoint ptr %sarc_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %sarc_type, align 16
  %call = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  %12 = ptrtoint ptr %sarc_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sarc_type, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_reg_sai(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %src = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #14
  %0 = call ptr @memset(ptr %src, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %1 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %vlins = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 37
  %2 = ptrtoint ptr %vlins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %remove_sa = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 15
  %4 = ptrtoint ptr %remove_sa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %remove_sa, align 4
  %sarc = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 17
  %5 = ptrtoint ptr %sarc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %sarc, align 4
  %src1 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %src1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %src, ptr %src1, align 4
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dst, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %sarc_configure = getelementptr inbounds %struct.stmmac_ops, ptr %15, i32 0, i32 42
  %16 = ptrtoint ptr %sarc_configure to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sarc_configure, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 32
  call void %17(ptr noundef %19, i32 noundef 2) #14
  %call = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %if.then6.cleanup_crit_edge, label %land.lhs.true18

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.then6
  %sarc_configure21 = getelementptr inbounds %struct.stmmac_ops, ptr %23, i32 0, i32 42
  %24 = ptrtoint ptr %sarc_configure21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sarc_configure21, align 4
  %tobool22.not = icmp eq ptr %25, null
  br i1 %tobool22.not, label %land.lhs.true18.cleanup_crit_edge, label %if.then23

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 32
  call void %25(ptr noundef %27, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true18.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.then23 ], [ %call, %land.lhs.true18.cleanup_crit_edge ], [ %call, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_reg_sar(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %src = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #14
  %0 = call ptr @memset(ptr %src, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %1 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %vlins = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 37
  %2 = ptrtoint ptr %vlins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sarc = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 17
  %4 = ptrtoint ptr %sarc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sarc, align 4
  %src1 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %src1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %src, ptr %src1, align 4
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dst, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %sarc_configure = getelementptr inbounds %struct.stmmac_ops, ptr %14, i32 0, i32 42
  %15 = ptrtoint ptr %sarc_configure to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sarc_configure, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr, align 32
  call void %16(ptr noundef %18, i32 noundef 3) #14
  %call = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %if.then6.cleanup_crit_edge, label %land.lhs.true18

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.then6
  %sarc_configure21 = getelementptr inbounds %struct.stmmac_ops, ptr %22, i32 0, i32 42
  %23 = ptrtoint ptr %sarc_configure21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sarc_configure21, align 4
  %tobool22.not = icmp eq ptr %24, null
  br i1 %tobool22.not, label %land.lhs.true18.cleanup_crit_edge, label %if.then23

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 32
  call void %24(ptr noundef %26, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true18.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.then23 ], [ %call, %land.lhs.true18.cleanup_crit_edge ], [ %call, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_vlanoff(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @stmmac_test_vlanoff_common(ptr noundef %priv, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_svlanoff(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dvlan = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 38
  %0 = ptrtoint ptr %dvlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dvlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @stmmac_test_vlanoff_common(ptr noundef %priv, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_l3filt_da(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_test_l3filt(ptr noundef %priv, i32 noundef 270544960, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_l3filt_sa(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_test_l3filt(ptr noundef %priv, i32 noundef 0, i32 noundef 270544960, i32 noundef 0, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_l4filt_da_tcp(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_test_l4filt(ptr noundef %priv, i32 noundef 291, i32 noundef 0, i32 noundef -1, i32 noundef 0, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_l4filt_sa_tcp(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_test_l4filt(ptr noundef %priv, i32 noundef 0, i32 noundef 291, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_l4filt_da_udp(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_test_l4filt(ptr noundef %priv, i32 noundef 291, i32 noundef 0, i32 noundef -1, i32 noundef 0, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_l4filt_sa_udp(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__stmmac_test_l4filt(ptr noundef %priv, i32 noundef 0, i32 noundef 291, i32 noundef 0, i32 noundef -1, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_arpoffload(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %src = alloca [6 x i8], align 1
  %dst = alloca [6 x i8], align 1
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #14
  %0 = call ptr @memcpy(ptr %src, ptr @__const.stmmac_test_arpoffload.src, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst) #14
  %1 = call ptr @memset(ptr %dst, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %2 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %arpoffsel = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 40
  %3 = ptrtoint ptr %arpoffsel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arpoffsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup63

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 112) #18
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup63_crit_edge, label %if.end3

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup63

if.end3:                                          ; preds = %if.end
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #14
  %pt = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2054, ptr %pt, align 4
  %func = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @stmmac_test_arp_validate, ptr %func, align 8
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dev6, align 8
  %af_packet_priv = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %af_packet_priv, align 8
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %attr, ptr %call7.i.i, align 8
  call void @dev_add_pack(ptr noundef %pt) #14
  %src9 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 3
  %15 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %src, ptr %src9, align 4
  %ip_src10 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 5
  %16 = ptrtoint ptr %ip_src10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -559038737, ptr %ip_src10, align 4
  %dst12 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %17 = ptrtoint ptr %dst12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dst, ptr %dst12, align 8
  %ip_dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 6
  %18 = ptrtoint ptr %ip_dst to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -559035650, ptr %ip_dst, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i = call ptr @arp_create(i32 noundef 1, i32 noundef 2054, i32 noundef -559035650, ptr noundef %20, i32 noundef -559038737, ptr noundef null, ptr noundef nonnull %src, ptr noundef nonnull %dst) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.end16

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %21 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool17.not = icmp eq ptr %29, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %land.lhs.true

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end16
  %set_arp_offload = getelementptr inbounds %struct.stmmac_ops, ptr %29, i32 0, i32 45
  %30 = ptrtoint ptr %set_arp_offload to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_arp_offload, align 4
  %tobool20.not = icmp eq ptr %31, null
  br i1 %tobool20.not, label %land.lhs.true.cleanup_crit_edge, label %if.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true
  call void %31(ptr noundef %27, i1 noundef zeroext true, i32 noundef -559035650) #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call31 = call i32 @dev_set_promiscuity(ptr noundef %33, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %call.i104 = call i32 @__dev_direct_xmit(ptr noundef nonnull %call.i, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i104)
  %cmp.i.i = icmp slt i32 %call.i104, 15
  br i1 %cmp.i.i, label %dev_direct_xmit.exit, label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.thread:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #14
  br label %cleanup_promisc

dev_direct_xmit.exit:                             ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool36.not = icmp eq i32 %call.i104, 0
  br i1 %tobool36.not, label %if.end38, label %dev_direct_xmit.exit.cleanup_promisc_crit_edge

dev_direct_xmit.exit.cleanup_promisc_crit_edge:   ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_promisc

if.end38:                                         ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call41 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %34 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool43.not = icmp eq i32 %35, 0
  %cond = select i1 %tobool43.not, i32 -110, i32 0
  br label %cleanup_promisc

cleanup_promisc:                                  ; preds = %if.end38, %dev_direct_xmit.exit.cleanup_promisc_crit_edge, %dev_direct_xmit.exit.thread
  %ret.0 = phi i32 [ %call.i104, %dev_direct_xmit.exit.cleanup_promisc_crit_edge ], [ %cond, %if.end38 ], [ %call.i104, %dev_direct_xmit.exit.thread ]
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %call45 = call i32 @dev_set_promiscuity(ptr noundef %37, i32 noundef -1) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup_promisc, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %ret.1 = phi i32 [ %call31, %if.end29.cleanup_crit_edge ], [ %ret.0, %cleanup_promisc ], [ -12, %if.end3.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ]
  %hw47 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %38 = ptrtoint ptr %hw47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw47, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool49.not = icmp eq ptr %41, null
  br i1 %tobool49.not, label %cleanup.if.end60_crit_edge, label %land.lhs.true50

cleanup.if.end60_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true50:                                  ; preds = %cleanup
  %set_arp_offload53 = getelementptr inbounds %struct.stmmac_ops, ptr %41, i32 0, i32 45
  %42 = ptrtoint ptr %set_arp_offload53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_arp_offload53, align 4
  %tobool54.not = icmp eq ptr %43, null
  br i1 %tobool54.not, label %land.lhs.true50.if.end60_crit_edge, label %if.then55

land.lhs.true50.if.end60_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then55:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  call void %43(ptr noundef %39, i1 noundef zeroext false, i32 noundef 0) #14
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %land.lhs.true50.if.end60_crit_edge, %cleanup.if.end60_crit_edge
  call void @dev_remove_pack(ptr noundef %pt) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup63

cleanup63:                                        ; preds = %if.end60, %if.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end60 ], [ -95, %entry.cleanup63_crit_edge ], [ -12, %if.end.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_jumbo(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %attr.i = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr.i) #14
  %0 = call ptr @memset(ptr %attr.i, i32 0, i32 88)
  %dma_buf_sz.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 9
  %1 = ptrtoint ptr %dma_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_buf_sz.i, align 4
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr.i, align 64
  %dst.i = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr.i, i32 0, i32 4
  %7 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dst.i, align 8
  %sub.i = add i32 %2, -4
  %max_size.i = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr.i, i32 0, i32 14
  %8 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %max_size.i, align 8
  %call.i = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr.i) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr.i) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_mjumbo(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %attr.i = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_queues_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dma_buf_sz.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 9
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %dst.i = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr.i, i32 0, i32 4
  %max_size.i = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr.i, i32 0, i32 14
  %queue_mapping.i = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr.i, i32 0, i32 18
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %chan.012, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %chan.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv = trunc i32 %chan.012 to i16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr.i) #14
  %4 = call ptr @memset(ptr %attr.i, i32 0, i32 88)
  %5 = ptrtoint ptr %dma_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_buf_sz.i, align 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr.i, align 64
  %11 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dst.i, align 8
  %sub.i = add i32 %6, -4
  %12 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i, ptr %max_size.i, align 8
  %13 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %queue_mapping.i, align 8
  %call.i = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr.i) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_sph(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_split_hdr_pkt_n = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 34, i32 27
  %0 = ptrtoint ptr %rx_split_hdr_pkt_n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_split_hdr_pkt_n, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %2 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %sph = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 6
  %3 = ptrtoint ptr %sph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sph, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dst, align 8
  %tcp = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 7
  %call = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %10 = ptrtoint ptr %rx_split_hdr_pkt_n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_split_hdr_pkt_n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp.not = icmp ugt i32 %11, %1
  br i1 %cmp.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev_addr9 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr9, align 64
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dst, align 8
  %17 = ptrtoint ptr %tcp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tcp, align 4
  %call12 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %rx_split_hdr_pkt_n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_split_hdr_pkt_n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp18.not = icmp ugt i32 %19, %11
  %. = select i1 %cmp18.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ], [ %., %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_tbs(ptr noundef %priv) #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  %qopt = alloca %struct.tc_etf_qopt_offload, align 8
  %curr_time = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %0 = call ptr @memset(ptr %attr, i32 0, i32 88)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qopt) #14
  %1 = ptrtoint ptr %qopt to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 144115188075855871, ptr %qopt, align 8, !annotation !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %curr_time) #14
  %2 = ptrtoint ptr %curr_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %curr_time, align 8
  %hwts_tx_en = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwts_tx_en, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %5 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plat, align 128
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 30
  %7 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_queues_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp154.not = icmp eq i32 %8, 0
  br i1 %cmp154.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0155 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %tbs = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 23, i32 %i.0155, i32 1
  %9 = ptrtoint ptr %tbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tbs, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.inc, label %if.end8

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %queue = getelementptr inbounds %struct.tc_etf_qopt_offload, ptr %qopt, i32 0, i32 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.0155, ptr %queue, align 4
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %tc = getelementptr inbounds %struct.mac_device_info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tc, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %setup_etf = getelementptr inbounds %struct.stmmac_tc_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %setup_etf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup_etf, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true
  %call = call i32 %17(ptr noundef %priv, ptr noundef nonnull %qopt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %do.body21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body21:                                        ; preds = %if.end17
  %ptp_lock = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 65
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #14
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %ptp = getelementptr inbounds %struct.mac_device_info, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptp, align 4
  %tobool30.not = icmp eq ptr %21, null
  br i1 %tobool30.not, label %do.body21.if.end39_crit_edge, label %land.lhs.true31

do.body21.if.end39_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true31:                                  ; preds = %do.body21
  %get_systime = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %get_systime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_systime, align 4
  %tobool34.not = icmp eq ptr %23, null
  br i1 %tobool34.not, label %land.lhs.true31.if.end39_crit_edge, label %if.then35

land.lhs.true31.if.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  %ptpaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 68
  %24 = ptrtoint ptr %ptpaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptpaddr, align 4
  call void %23(ptr noundef %25, ptr noundef nonnull %curr_time) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true31.if.end39_crit_edge, %do.body21.if.end39_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call25) #14
  %26 = ptrtoint ptr %curr_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %curr_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool42.not = icmp eq i64 %27, 0
  br i1 %tobool42.not, label %if.end39.fail_disable_crit_edge, label %if.end44

if.end39.fail_disable_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_disable

if.end44:                                         ; preds = %if.end39
  %add = add i64 %27, 500000000
  %28 = ptrtoint ptr %curr_time to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add, ptr %curr_time, align 8
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %dst, align 8
  %timestamp = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 19
  %34 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add, ptr %timestamp, align 8
  %call45 = call i32 @nsecs_to_jiffies(i64 noundef 1000000000) #14
  %timeout = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 12
  %35 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call45, ptr %timeout, align 8
  %conv46 = trunc i32 %i.0155 to i16
  %queue_mapping = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 18
  %36 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv46, ptr %queue_mapping, align 8
  %call47 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body52, label %if.end44.fail_disable_crit_edge

if.end44.fail_disable_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_disable

do.body52:                                        ; preds = %if.end44
  %call60 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #14
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %ptp67 = getelementptr inbounds %struct.mac_device_info, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ptp67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptp67, align 4
  %tobool68.not = icmp eq ptr %40, null
  br i1 %tobool68.not, label %do.body52.if.end79_crit_edge, label %land.lhs.true69

do.body52.if.end79_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

land.lhs.true69:                                  ; preds = %do.body52
  %get_systime72 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %get_systime72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_systime72, align 4
  %tobool73.not = icmp eq ptr %42, null
  br i1 %tobool73.not, label %land.lhs.true69.if.end79_crit_edge, label %if.then74

land.lhs.true69.if.end79_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then74:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  %ptpaddr78 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 68
  %43 = ptrtoint ptr %ptpaddr78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ptpaddr78, align 4
  call void %42(ptr noundef %44, ptr noundef nonnull %curr_time) #14
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %land.lhs.true69.if.end79_crit_edge, %do.body52.if.end79_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call60) #14
  %45 = ptrtoint ptr %curr_time to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %curr_time, align 8
  %sub = sub i64 %46, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 500000000, i64 %sub)
  %cmp82 = icmp ult i64 %sub, 500000000
  %spec.select = select i1 %cmp82, i32 -22, i32 0
  br label %fail_disable

fail_disable:                                     ; preds = %if.end79, %if.end44.fail_disable_crit_edge, %if.end39.fail_disable_crit_edge
  %ret.0 = phi i32 [ %call47, %if.end44.fail_disable_crit_edge ], [ -95, %if.end39.fail_disable_crit_edge ], [ %spec.select, %if.end79 ]
  %47 = ptrtoint ptr %qopt to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %qopt, align 8
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %tc89 = getelementptr inbounds %struct.mac_device_info, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %tc89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tc89, align 4
  %tobool90.not = icmp eq ptr %51, null
  br i1 %tobool90.not, label %fail_disable.cleanup_crit_edge, label %land.lhs.true91

fail_disable.cleanup_crit_edge:                   ; preds = %fail_disable
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true91:                                  ; preds = %fail_disable
  %setup_etf94 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %setup_etf94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %setup_etf94, align 4
  %tobool95.not = icmp eq ptr %53, null
  br i1 %tobool95.not, label %land.lhs.true91.cleanup_crit_edge, label %if.then96

land.lhs.true91.cleanup_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then96:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #16
  %call100 = call i32 %53(ptr noundef %priv, ptr noundef nonnull %qopt) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %land.lhs.true91.cleanup_crit_edge, %fail_disable.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end17.cleanup_crit_edge ], [ %ret.0, %if.then96 ], [ %ret.0, %land.lhs.true91.cleanup_crit_edge ], [ %ret.0, %fail_disable.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -95, %for.cond.preheader.cleanup_crit_edge ], [ -95, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %curr_time) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qopt) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_test_loopback(ptr nocapture noundef readonly %priv, ptr noundef %attr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %if.end

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

if.end:                                           ; preds = %entry
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #14
  %pt = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2048, ptr %pt, align 4
  %func = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stmmac_test_loopback_validate, ptr %func, align 8
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dev3, align 8
  %af_packet_priv = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %af_packet_priv, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %call7.i.i, align 8
  %dont_wait = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 11
  %10 = ptrtoint ptr %dont_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dont_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_add_pack(ptr noundef %pt) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef %attr)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %queue_mapping = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 18
  %12 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queue_mapping, align 8
  %call.i = tail call i32 @__dev_direct_xmit(ptr noundef nonnull %call9, i16 noundef zeroext %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i)
  %cmp.i.i = icmp slt i32 %call.i, 15
  br i1 %cmp.i.i, label %dev_direct_xmit.exit, label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.thread:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call9, i32 noundef 0) #14
  br label %cleanup

dev_direct_xmit.exit:                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %dev_direct_xmit.exit.cleanup_crit_edge

dev_direct_xmit.exit.cleanup_crit_edge:           ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %dev_direct_xmit.exit
  %14 = ptrtoint ptr %dont_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dont_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.if.end35_crit_edge

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end20:                                         ; preds = %if.end16
  %timeout = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 12
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %timeout, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout, align 8
  %call28 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef %20) #14
  %21 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool30.not = icmp eq i32 %22, 0
  %cond = select i1 %tobool30.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %dev_direct_xmit.exit.cleanup_crit_edge, %dev_direct_xmit.exit.thread, %if.end8.cleanup_crit_edge
  %ret.0.ph = phi i32 [ %call.i, %dev_direct_xmit.exit.thread ], [ -12, %if.end8.cleanup_crit_edge ], [ %cond, %if.end25 ], [ %call.i, %dev_direct_xmit.exit.cleanup_crit_edge ]
  %23 = ptrtoint ptr %dont_wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %dont_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool32.not = icmp eq i32 %.pr, 0
  br i1 %tobool32.not, label %if.then33, label %cleanup.if.end35_crit_edge

cleanup.if.end35_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then33:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_remove_pack(ptr noundef %pt) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %cleanup.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  %ret.066 = phi i32 [ %ret.0.ph, %if.then33 ], [ %ret.0.ph, %cleanup.if.end35_crit_edge ], [ 0, %if.end16.if.end35_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup36

cleanup36:                                        ; preds = %if.end35, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ %ret.066, %if.end35 ], [ -12, %entry.cleanup36_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_loopback_validate(ptr noundef %skb, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readonly %pt, ptr nocapture noundef readnone %orig_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %af_packet_priv = getelementptr inbounds %struct.packet_type, ptr %pt, i32 0, i32 8
  %0 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %af_packet_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dst1 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dst1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1, align 8
  %src3 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %src3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src3, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %8 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

entry.skb_unshare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #14
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %skb_unshare.exit.thread155, !prof !29

skb_unshare.exit.thread155:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.end

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %out

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %entry.skb_unshare.exit_crit_edge
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_unshare.exit.out_crit_edge, label %skb_unshare.exit.if.end_crit_edge

skb_unshare.exit.if.end_crit_edge:                ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

skb_unshare.exit.out_crit_edge:                   ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %skb_unshare.exit.if.end_crit_edge, %skb_unshare.exit.thread155
  %skb.addr.0.i158 = phi ptr [ %call7.i, %skb_unshare.exit.thread155 ], [ %skb, %skb_unshare.exit.if.end_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i158, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.end.if.end7_crit_edge, label %cond.true.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

cond.true.i:                                      ; preds = %if.end
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i158, i32 noundef %14) #14
  %tobool.not.i.i132 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i132, label %cond.true.i.out_crit_edge, label %cond.true.i.if.end7_crit_edge

cond.true.i.if.end7_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

cond.true.i.out_crit_edge:                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end7:                                          ; preds = %cond.true.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i158, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %sub.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 33
  br i1 %cmp, label %if.end7.out_crit_edge, label %if.end10

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end10:                                         ; preds = %if.end7
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i158, i32 0, i32 18
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i158, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %20, i32 %conv.i
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %5, align 4
  %xor.i.i = xor i32 %26, %24
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 4
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %30, %28
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then13.if.end17_crit_edge, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %if.then13.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %sarc = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %sarc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sarc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool19.not = icmp eq i32 %34, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %35 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %h_source, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %xor.i.i133 = xor i32 %38, %36
  %add.ptr.i.i134 = getelementptr i8, ptr %h_source, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i.i134, align 2
  %add.ptr1.i.i135 = getelementptr i8, ptr %add.ptr.i, i32 4
  %41 = ptrtoint ptr %add.ptr1.i.i135 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr1.i.i135, align 2
  %xor37.i.i136 = xor i16 %42, %40
  %xor3.i.i137 = zext i16 %xor37.i.i136 to i32
  %or.i.i138 = or i32 %xor.i.i133, %xor3.i.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i138)
  %cmp.i.i139 = icmp eq i32 %or.i.i138, 0
  br i1 %cmp.i.i139, label %if.then20.if.end35_crit_edge, label %if.then20.out_crit_edge

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then20.if.end35_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.else:                                          ; preds = %if.end17
  %tobool27.not = icmp eq ptr %7, null
  br i1 %tobool27.not, label %if.else.if.end35_crit_edge, label %if.then28

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then28:                                        ; preds = %if.else
  %h_source29 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %43 = ptrtoint ptr %h_source29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %h_source29, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %7, align 4
  %xor.i.i140 = xor i32 %46, %44
  %add.ptr.i.i141 = getelementptr i8, ptr %h_source29, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i141 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i141, align 2
  %add.ptr1.i.i142 = getelementptr i8, ptr %7, i32 4
  %49 = ptrtoint ptr %add.ptr1.i.i142 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr1.i.i142, align 2
  %xor37.i.i143 = xor i16 %50, %48
  %xor3.i.i144 = zext i16 %xor37.i.i143 to i32
  %or.i.i145 = or i32 %xor.i.i140, %xor3.i.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i145)
  %cmp.i.i146 = icmp eq i32 %or.i.i145, 0
  br i1 %cmp.i.i146, label %if.then28.if.end35_crit_edge, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end35:                                         ; preds = %if.then28.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.then20.if.end35_crit_edge
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i158, i32 0, i32 15, i32 0, i32 20
  %51 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %52 to i32
  %add.ptr.i.i147 = getelementptr i8, ptr %20, i32 %conv.i.i
  %double_vlan = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %double_vlan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %double_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool37.not = icmp eq i32 %54, 0
  %spec.select.idx = select i1 %tobool37.not, i32 0, i32 4
  %spec.select = getelementptr i8, ptr %add.ptr.i.i147, i32 %spec.select.idx
  %tcp = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %32, i32 0, i32 7
  %55 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool42.not = icmp eq i32 %56, 0
  %protocol60 = getelementptr inbounds %struct.iphdr, ptr %spec.select, i32 0, i32 6
  %57 = ptrtoint ptr %protocol60 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %protocol60, align 1
  br i1 %tobool42.not, label %if.else59, label %if.then43

if.then43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %58)
  %cmp44.not = icmp eq i8 %58, 6
  br i1 %cmp44.not, label %if.end47, label %if.then43.out_crit_edge

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end47:                                         ; preds = %if.then43
  %59 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %spec.select, align 4
  %bf.clear = shl i8 %bf.load, 2
  %60 = and i8 %bf.clear, 60
  %mul = zext i8 %60 to i32
  %add.ptr49 = getelementptr i8, ptr %spec.select, i32 %mul
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr49, i32 0, i32 1
  %61 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dest, align 2
  %dport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %32, i32 0, i32 9
  %63 = ptrtoint ptr %dport to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dport, align 4
  %65 = trunc i32 %64 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %65)
  %cmp54.not = icmp eq i16 %62, %65
  br i1 %cmp54.not, label %if.end57, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr58 = getelementptr i8, ptr %add.ptr49, i32 20
  br label %if.end82

if.else59:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %58)
  %cmp62.not = icmp eq i8 %58, 17
  br i1 %cmp62.not, label %if.end65, label %if.else59.out_crit_edge

if.else59.out_crit_edge:                          ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end65:                                         ; preds = %if.else59
  %66 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load66 = load i8, ptr %spec.select, align 4
  %bf.clear67 = shl i8 %bf.load66, 2
  %67 = and i8 %bf.clear67, 60
  %mul69 = zext i8 %67 to i32
  %add.ptr70 = getelementptr i8, ptr %spec.select, i32 %mul69
  %dest71 = getelementptr inbounds %struct.udphdr, ptr %add.ptr70, i32 0, i32 1
  %68 = ptrtoint ptr %dest71 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %dest71, align 2
  %dport74 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %32, i32 0, i32 9
  %70 = ptrtoint ptr %dport74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dport74, align 4
  %72 = trunc i32 %71 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %72)
  %cmp77.not = icmp eq i16 %69, %72
  br i1 %cmp77.not, label %if.end80, label %if.end65.out_crit_edge

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end80:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr81 = getelementptr i8, ptr %add.ptr70, i32 8
  br label %if.end82

if.end82:                                         ; preds = %if.end80, %if.end57
  %shdr.0 = phi ptr [ %add.ptr58, %if.end57 ], [ %add.ptr81, %if.end80 ]
  %magic = getelementptr inbounds %struct.stmmachdr, ptr %shdr.0, i32 0, i32 1
  %73 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401039830642401619, i64 %74)
  %cmp83.not = icmp eq i64 %74, -2401039830642401619
  br i1 %cmp83.not, label %if.end86, label %if.end82.out_crit_edge

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end86:                                         ; preds = %if.end82
  %exp_hash = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %32, i32 0, i32 10
  %75 = ptrtoint ptr %exp_hash to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %exp_hash, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool88.not = icmp eq i32 %76, 0
  br i1 %tobool88.not, label %if.end86.if.end91_crit_edge, label %land.lhs.true

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end86
  %hash = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i158, i32 0, i32 15, i32 0, i32 8
  %77 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool89.not = icmp eq i32 %78, 0
  br i1 %tobool89.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end91_crit_edge

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end91:                                         ; preds = %land.lhs.true.if.end91_crit_edge, %if.end86.if.end91_crit_edge
  %id = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %32, i32 0, i32 16
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %id, align 8
  %id94 = getelementptr inbounds %struct.stmmachdr, ptr %shdr.0, i32 0, i32 2
  %81 = ptrtoint ptr %id94 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %id94, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %82)
  %cmp96.not = icmp eq i8 %80, %82
  br i1 %cmp96.not, label %if.end99, label %if.end91.out_crit_edge

if.end91.out_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 5
  %83 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %comp) #14
  br label %out

out:                                              ; preds = %if.end99, %if.end91.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end82.out_crit_edge, %if.end65.out_crit_edge, %if.else59.out_crit_edge, %if.end47.out_crit_edge, %if.then43.out_crit_edge, %if.then28.out_crit_edge, %if.then20.out_crit_edge, %if.then13.out_crit_edge, %if.end7.out_crit_edge, %cond.true.i.out_crit_edge, %skb_unshare.exit.out_crit_edge, %skb_unshare.exit.thread
  %skb.addr.0.i153 = phi ptr [ null, %skb_unshare.exit.thread ], [ %skb.addr.0.i158, %if.end91.out_crit_edge ], [ %skb.addr.0.i158, %land.lhs.true.out_crit_edge ], [ %skb.addr.0.i158, %if.end82.out_crit_edge ], [ %skb.addr.0.i158, %if.end65.out_crit_edge ], [ %skb.addr.0.i158, %if.else59.out_crit_edge ], [ %skb.addr.0.i158, %if.end47.out_crit_edge ], [ %skb.addr.0.i158, %if.then43.out_crit_edge ], [ %skb.addr.0.i158, %if.then28.out_crit_edge ], [ %skb.addr.0.i158, %if.then20.out_crit_edge ], [ %skb.addr.0.i158, %if.then13.out_crit_edge ], [ %skb.addr.0.i158, %if.end7.out_crit_edge ], [ null, %skb_unshare.exit.out_crit_edge ], [ %skb.addr.0.i158, %if.end99 ], [ %skb.addr.0.i158, %cond.true.i.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i153, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stmmac_test_get_udp_skb(ptr nocapture noundef readonly %priv, ptr noundef %attr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 13
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  %spec.select.v = select i1 %cmp, i32 55, i32 51
  %size.0.v = select i1 %tobool.not, i32 47, i32 %spec.select.v
  %size.0 = add i32 %size.0.v, %1
  %tcp = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 7
  %4 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  %size.1.v = select i1 %tobool7.not, i32 8, i32 20
  %size.1 = add i32 %size.0, %size.1.v
  %max_size = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 14
  %6 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %size.1)
  %cmp14 = icmp sgt i32 %7, %size.1
  %or.cond = select i1 %tobool12.not, i1 %cmp14, i1 false
  %size.2 = select i1 %or.cond, i32 %7, i32 %size.1
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %9, i32 noundef %size.2, i32 noundef 2592) #14
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %entry.cleanup_crit_edge, label %if.end20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1)
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp22 = icmp sgt i32 %13, 1
  br i1 %cmp22, label %if.end20.if.end38_crit_edge, label %if.else25

if.end20.if.end38_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.else25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool27.not = icmp eq i32 %13, 0
  br i1 %tobool27.not, label %if.else30, label %if.else25.if.end38_crit_edge

if.else25.if.end38_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.else30:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  %remove_sa = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 15
  %14 = ptrtoint ptr %remove_sa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %remove_sa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool31.not = icmp eq i32 %15, 0
  %. = select i1 %tobool31.not, i32 14, i32 8
  br label %if.end38

if.end38:                                         ; preds = %if.else30, %if.else25.if.end38_crit_edge, %if.end20.if.end38_crit_edge
  %.sink356 = phi i32 [ 22, %if.end20.if.end38_crit_edge ], [ 18, %if.else25.if.end38_crit_edge ], [ %., %if.else30 ]
  %call29 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef %.sink356) #14
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %20 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %23 = trunc i32 %22 to i16
  %conv1.i = add i16 %conv.i, %23
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %call39 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #14
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i346 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i347 = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i348 = sub i32 %sub.ptr.lhs.cast.i.i346, %sub.ptr.rhs.cast.i.i347
  %conv.i.i349 = trunc i32 %sub.ptr.sub.i.i348 to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %31 = trunc i32 %26 to i16
  %conv1.i350 = add i16 %conv.i.i349, %31
  %32 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i350, ptr %transport_header.i.i, align 2
  %33 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool42.not = icmp eq i32 %34, 0
  br i1 %tobool42.not, label %if.else45, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #14
  br label %if.end47

if.else45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #14
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then43
  %uhdr.0 = phi ptr [ null, %if.then43 ], [ %call46, %if.else45 ]
  %thdr.0 = phi ptr [ %call44, %if.then43 ], [ null, %if.else45 ]
  %remove_sa48 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 15
  %35 = ptrtoint ptr %remove_sa48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %remove_sa48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool49.not = icmp eq i32 %36, 0
  br i1 %tobool49.not, label %if.then50, label %if.end47.if.end51_crit_edge

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %call29, i32 0, i32 1
  %37 = call ptr @memset(ptr %h_source, i32 0, i32 6)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  %38 = call ptr @memset(ptr %call29, i32 0, i32 6)
  %src = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 3
  %39 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %src, align 4
  %tobool53.not = icmp eq ptr %40, null
  br i1 %tobool53.not, label %if.end51.if.end61_crit_edge, label %land.lhs.true54

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

land.lhs.true54:                                  ; preds = %if.end51
  %41 = ptrtoint ptr %remove_sa48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %remove_sa48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool56.not = icmp eq i32 %42, 0
  br i1 %tobool56.not, label %if.then57, label %land.lhs.true54.if.end61_crit_edge

land.lhs.true54.if.end61_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then57:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #16
  %h_source58 = getelementptr inbounds %struct.ethhdr, ptr %call29, i32 0, i32 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %45 = ptrtoint ptr %h_source58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %h_source58, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ethhdr, ptr %call29, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %add.ptr1.i, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true54.if.end61_crit_edge, %if.end51.if.end61_crit_edge
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %49 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dst, align 8
  %tobool62.not = icmp eq ptr %50, null
  br i1 %tobool62.not, label %if.end61.if.end67_crit_edge, label %if.then63

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = ptrtoint ptr %call29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %call29, align 4
  %add.ptr.i351 = getelementptr i8, ptr %50, i32 4
  %54 = ptrtoint ptr %add.ptr.i351 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i351, align 2
  %add.ptr1.i352 = getelementptr i8, ptr %call29, i32 4
  %56 = ptrtoint ptr %add.ptr1.i352 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %add.ptr1.i352, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end61.if.end67_crit_edge
  %57 = ptrtoint ptr %remove_sa48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %remove_sa48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool69.not = icmp eq i32 %58, 0
  br i1 %tobool69.not, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %call29, i32 0, i32 2
  %59 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 2048, ptr %h_proto, align 1
  br label %if.end72

if.else71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i16, ptr %call29, i32 3
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2048, ptr %arrayidx, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  %61 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool74.not = icmp eq i32 %62, 0
  br i1 %tobool74.not, label %if.end72.if.end98_crit_edge, label %if.then75

if.end72.if.end98_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then75:                                        ; preds = %if.end72
  %63 = ptrtoint ptr %remove_sa48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %remove_sa48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool77.not = icmp eq i32 %64, 0
  %tag.0.v = select i1 %tobool77.not, i32 14, i32 8
  %tag.0 = getelementptr i8, ptr %call29, i32 %tag.0.v
  %proto.0.v = select i1 %tobool77.not, i32 12, i32 6
  %proto.0 = getelementptr i8, ptr %call29, i32 %proto.0.v
  %65 = ptrtoint ptr %proto.0 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -32512, ptr %proto.0, align 2
  %vlan_id_out = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 2
  %66 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vlan_id_out, align 8
  %conv = trunc i32 %67 to i16
  %68 = ptrtoint ptr %tag.0 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv, ptr %tag.0, align 2
  %arrayidx87 = getelementptr i16, ptr %tag.0, i32 1
  %69 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 2048, ptr %arrayidx87, align 2
  %70 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp89 = icmp sgt i32 %71, 1
  br i1 %cmp89, label %if.then91, label %if.then75.if.end98_crit_edge

if.then75.if.end98_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then91:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %proto.0 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -30552, ptr %proto.0, align 2
  %73 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -32512, ptr %arrayidx87, align 2
  %vlan_id_in = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 1
  %74 = ptrtoint ptr %vlan_id_in to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vlan_id_in, align 4
  %conv94 = trunc i32 %75 to i16
  %arrayidx95 = getelementptr i16, ptr %tag.0, i32 2
  %76 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv94, ptr %arrayidx95, align 2
  %arrayidx96 = getelementptr i16, ptr %tag.0, i32 3
  %77 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 2048, ptr %arrayidx96, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.then75.if.end98_crit_edge, %if.end72.if.end98_crit_edge
  %78 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool100.not = icmp eq i32 %79, 0
  %sport105 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 8
  %80 = ptrtoint ptr %sport105 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sport105, align 8
  %conv106 = trunc i32 %81 to i16
  br i1 %tobool100.not, label %if.else104, label %if.then101

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %thdr.0 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv106, ptr %thdr.0, align 4
  %dport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 9
  %83 = ptrtoint ptr %dport to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dport, align 4
  %conv103 = trunc i32 %84 to i16
  %dest = getelementptr inbounds %struct.tcphdr, ptr %thdr.0, i32 0, i32 1
  %85 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv103, ptr %dest, align 2
  %doff = getelementptr inbounds %struct.tcphdr, ptr %thdr.0, i32 0, i32 4
  %86 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load = load i16, ptr %doff, align 4
  %bf.clear = and i16 %bf.load, 4095
  %bf.set = or i16 %bf.clear, 20480
  store i16 %bf.set, ptr %doff, align 4
  %check = getelementptr inbounds %struct.tcphdr, ptr %thdr.0, i32 0, i32 6
  %87 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %check, align 4
  br label %if.end123

if.else104:                                       ; preds = %if.end98
  %88 = ptrtoint ptr %uhdr.0 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv106, ptr %uhdr.0, align 2
  %dport108 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 9
  %89 = ptrtoint ptr %dport108 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dport108, align 4
  %conv109 = trunc i32 %90 to i16
  %dest110 = getelementptr inbounds %struct.udphdr, ptr %uhdr.0, i32 0, i32 1
  %91 = ptrtoint ptr %dest110 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv109, ptr %dest110, align 2
  %92 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size1, align 4
  %94 = trunc i32 %93 to i16
  %conv113 = add i16 %94, 21
  %len114 = getelementptr inbounds %struct.udphdr, ptr %uhdr.0, i32 0, i32 2
  %95 = ptrtoint ptr %len114 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv113, ptr %len114, align 2
  %96 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool116.not = icmp eq i32 %97, 0
  br i1 %tobool116.not, label %if.else104.if.end121_crit_edge, label %if.then117

if.else104.if.end121_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.then117:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #16
  %98 = trunc i32 %97 to i16
  %conv119 = add i16 %98, -34
  %99 = ptrtoint ptr %len114 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv119, ptr %len114, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.else104.if.end121_crit_edge
  %check122 = getelementptr inbounds %struct.udphdr, ptr %uhdr.0, i32 0, i32 3
  %100 = ptrtoint ptr %check122 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %check122, align 2
  br label %if.end123

if.end123:                                        ; preds = %if.end121, %if.then101
  %ttl = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 5
  %101 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 32, ptr %ttl, align 4
  %102 = ptrtoint ptr %call39 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 69, ptr %call39, align 4
  %103 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool131.not = icmp eq i32 %104, 0
  %spec.select = select i1 %tobool131.not, i8 17, i8 6
  %105 = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 6
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %spec.select, ptr %105, align 1
  %107 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size1, align 4
  %109 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool139.not = icmp eq i32 %110, 0
  %iplen.0.v = select i1 %tobool139.not, i32 41, i32 53
  %iplen.0 = add i32 %iplen.0.v, %108
  %111 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool146.not = icmp eq i32 %112, 0
  %sub149 = add i32 %112, 65522
  %iplen.1 = select i1 %tobool146.not, i32 %iplen.0, i32 %sub149
  %conv151 = trunc i32 %iplen.1 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 2
  %113 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv151, ptr %tot_len, align 2
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 4
  %114 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %frag_off, align 2
  %ip_src = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 5
  %115 = ptrtoint ptr %ip_src to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ip_src, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 8
  %117 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %saddr, align 4
  %ip_dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 6
  %118 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ip_dst, align 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 9
  %120 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %daddr, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 1
  %121 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %tos, align 1
  %id = getelementptr inbounds %struct.iphdr, ptr %call39, i32 0, i32 3
  %122 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %id, align 4
  tail call void @ip_send_check(ptr noundef %call39) #14
  %call152 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 13) #14
  %123 = ptrtoint ptr %call152 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 0, ptr %call152, align 1
  %magic = getelementptr inbounds %struct.stmmachdr, ptr %call152, i32 0, i32 1
  %124 = ptrtoint ptr %magic to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 -2401039830642401619, ptr %magic, align 1
  %125 = load i8, ptr @stmmac_test_next_id, align 1
  %id153 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 16
  %126 = ptrtoint ptr %id153 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %id153, align 8
  %inc = add i8 %125, 1
  store i8 %inc, ptr @stmmac_test_next_id, align 1
  %id154 = getelementptr inbounds %struct.stmmachdr, ptr %call152, i32 0, i32 2
  %127 = ptrtoint ptr %id154 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %125, ptr %id154, align 1
  %128 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool156.not = icmp eq i32 %129, 0
  br i1 %tobool156.not, label %if.end123.if.end160_crit_edge, label %if.then157

if.end123.if.end160_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

if.then157:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %call159 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %129) #14
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.end123.if.end160_crit_edge
  %130 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool162.not = icmp eq i32 %131, 0
  br i1 %tobool162.not, label %if.end160.if.end173_crit_edge, label %land.lhs.true163

if.end160.if.end173_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

land.lhs.true163:                                 ; preds = %if.end160
  %132 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp166 = icmp ugt i32 %131, %133
  br i1 %cmp166, label %if.then168, label %land.lhs.true163.if.end173_crit_edge

land.lhs.true163.if.end173_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then168:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #16
  %sub171 = sub i32 %131, %133
  %call172 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub171) #14
  br label %if.end173

if.end173:                                        ; preds = %if.then168, %land.lhs.true163.if.end173_crit_edge, %if.end160.if.end173_crit_edge
  %134 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 5
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %134, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %136 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load174 = load i16, ptr %ip_summed, align 8
  %bf.set176 = or i16 %bf.load174, 1536
  store i16 %bf.set176, ptr %ip_summed, align 8
  %137 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tcp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool178.not = icmp eq i32 %138, 0
  br i1 %tobool178.not, label %if.else189, label %if.then179

if.then179:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  %139 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %len, align 4
  %141 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %saddr, align 4
  %143 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %daddr, align 4
  %add.i.i.i = add i32 %140, 6
  %145 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %144, i32 %142, i32 %add.i.i.i) #20, !srcloc !30
  %146 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %145) #20, !srcloc !31
  %neg.i.i.i = xor i32 %146, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %neg = xor i16 %conv.i.i.i, -1
  %check186 = getelementptr inbounds %struct.tcphdr, ptr %thdr.0, i32 0, i32 6
  %147 = ptrtoint ptr %check186 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %neg, ptr %check186, align 4
  %148 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %transport_header.i.i, align 2
  %150 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %134, align 8
  %csum_offset = getelementptr inbounds %struct.anon.158, ptr %134, i32 0, i32 1
  %151 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 16, ptr %csum_offset, align 2
  br label %if.end192

if.else189:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %saddr, align 4
  %154 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %daddr, align 4
  tail call void @udp4_hwcsum(ptr noundef nonnull %call.i, i32 noundef %153, i32 noundef %155) #14
  br label %if.end192

if.end192:                                        ; preds = %if.else189, %if.then179
  %protocol193 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %156 = ptrtoint ptr %protocol193 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 2048, ptr %protocol193, align 8
  %157 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %157)
  %bf.load194 = load i16, ptr %ip_summed, align 8
  %bf.clear195 = and i16 %bf.load194, 8191
  store i16 %bf.clear195, ptr %ip_summed, align 8
  %158 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev, align 4
  %160 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %159, ptr %160, align 8
  %timestamp = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 19
  %162 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %163)
  %tobool198.not = icmp eq i64 %163, 0
  br i1 %tobool198.not, label %if.end192.cleanup_crit_edge, label %if.then199

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then199:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  %164 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 2
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %163, ptr %164, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then199, %if.end192.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp4_hwcsum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_direct_xmit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @stmmac_hash_check(ptr nocapture noundef readonly %priv, ptr noundef %addr) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcast_bits_log2, align 4
  %sub = sub i32 32, %3
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #21
  %neg = xor i32 %call, -1
  %4 = lshr i32 %neg, 8
  %conv4.i.i = and i32 %4, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %5 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %conv6.i.i, 16
  %8 = and i32 %neg, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %10 to i32
  %11 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %7, %11
  %sum.shift.i = lshr i32 %neg, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %12 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %13 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %neg, 16
  %14 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %16 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %shr22 = lshr i32 %or.i, %sub
  %and24 = and i32 %shr22, 31
  %shl25 = shl nuw i32 1, %and24
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 66
  %19 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0129 = load ptr, ptr %mc, align 4
  %cmp.not130 = icmp eq ptr %ha.0129, %mc
  br i1 %cmp.not130, label %entry.cleanup77_crit_edge, label %entry.cond.end64_crit_edge

entry.cond.end64_crit_edge:                       ; preds = %entry
  br label %cond.end64

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup77

cond.end64:                                       ; preds = %for.inc.critedge.cond.end64_crit_edge, %entry.cond.end64_crit_edge
  %ha.0131 = phi ptr [ %ha.0, %for.inc.critedge.cond.end64_crit_edge ], [ %ha.0129, %entry.cond.end64_crit_edge ]
  %addr32 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0131, i32 0, i32 2
  %call33 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr32, i32 noundef 6) #21
  %neg34 = xor i32 %call33, -1
  %20 = lshr i32 %neg34, 8
  %conv4.i.i116 = and i32 %20, 255
  %arrayidx.i10.i.i117 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i116
  %21 = ptrtoint ptr %arrayidx.i10.i.i117 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i10.i.i117, align 1
  %conv6.i.i118 = zext i8 %22 to i32
  %23 = shl nuw nsw i32 %conv6.i.i118, 16
  %24 = and i32 %neg34, 255
  %arrayidx.i.i.i114 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i.i114 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i.i114, align 1
  %conv2.i.i115 = zext i8 %26 to i32
  %27 = shl nuw i32 %conv2.i.i115, 24
  %or.i13.i126 = or i32 %23, %27
  %sum.shift.i123 = lshr i32 %neg34, 24
  %arrayidx.i10.i11.i124 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i123
  %28 = ptrtoint ptr %arrayidx.i10.i11.i124 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i10.i11.i124, align 1
  %conv6.i12.i125 = zext i8 %29 to i32
  %shl.i127 = or i32 %or.i13.i126, %conv6.i12.i125
  %shr.i119 = lshr i32 %neg34, 16
  %30 = and i32 %shr.i119, 255
  %arrayidx.i.i7.i120 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i7.i120 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i7.i120, align 1
  %conv2.i8.i121 = zext i8 %32 to i32
  %shl.i9.i122 = shl nuw nsw i32 %conv2.i8.i121, 8
  %or.i128 = or i32 %shl.i127, %shl.i9.i122
  %shr66 = lshr i32 %or.i128, %sub
  %cmp68.unshifted = xor i32 %shr66, %shr22
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cmp68.unshifted)
  %cmp68 = icmp ult i32 %cmp68.unshifted, 32
  br i1 %cmp68, label %land.lhs.true, label %cond.end64.for.inc.critedge_crit_edge

cond.end64.for.inc.critedge_crit_edge:            ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %cond.end64
  %and69 = and i32 %shr66, 31
  %shl70 = shl nuw i32 1, %and69
  call void @__sanitizer_cov_trace_cmp4(i32 %shl70, i32 %shl25)
  %cmp71 = icmp eq i32 %shl70, %shl25
  br i1 %cmp71, label %land.lhs.true.cleanup77_crit_edge, label %land.lhs.true.for.inc.critedge_crit_edge

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.critedge

land.lhs.true.cleanup77_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup77

for.inc.critedge:                                 ; preds = %land.lhs.true.for.inc.critedge_crit_edge, %cond.end64.for.inc.critedge_crit_edge
  %33 = ptrtoint ptr %ha.0131 to i32
  call void @__asan_load4_noabort(i32 %33)
  %ha.0 = load ptr, ptr %ha.0131, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.inc.critedge.cleanup77_crit_edge, label %for.inc.critedge.cond.end64_crit_edge

for.inc.critedge.cond.end64_crit_edge:            ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end64

for.inc.critedge.cleanup77_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup77

cleanup77:                                        ; preds = %for.inc.critedge.cleanup77_crit_edge, %land.lhs.true.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %cmp.not.lcssa = phi i1 [ true, %entry.cleanup77_crit_edge ], [ true, %for.inc.critedge.cleanup77_crit_edge ], [ false, %land.lhs.true.cleanup77_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_flowctrl_validate(ptr noundef %skb, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readonly %pt, ptr nocapture noundef readonly %orig_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %af_packet_priv = getelementptr inbounds %struct.packet_type, ptr %pt, i32 0, i32 8
  %0 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %af_packet_priv, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %orig_ndev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_source, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %xor.i.i = xor i32 %11, %9
  %add.ptr.i.i = getelementptr i8, ptr %h_source, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %15, %13
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30712, i16 %17)
  %cmp.not = icmp eq i16 %17, -30712
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %comp) #14
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_test_vlanfilt(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %0 = call ptr @memset(ptr %attr, i32 0, i32 88)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup43

if.end:                                           ; preds = %entry
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #14
  %pt = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %pt, align 4
  %func = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stmmac_test_vlan_validate, ptr %func, align 8
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev3, align 8
  %af_packet_priv = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %af_packet_priv, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %attr, ptr %call7.i.i, align 8
  %vlan_id = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 291, ptr %vlan_id, align 8
  call void @dev_add_pack(ptr noundef %pt) #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vlan_id, align 8
  %conv = trunc i32 %15 to i16
  %call8 = call i32 @vlan_vid_add(ptr noundef %13, i16 noundef zeroext -32512, i16 noundef zeroext %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %vlan_id_out = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 2
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %sport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 8
  %dport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 9
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %attr, align 8
  %17 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vlan_id, align 8
  %19 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vlan_id_out, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %dst, align 8
  %25 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 9, ptr %sport, align 8
  %26 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 9, ptr %dport, align 4
  %call15 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %for.cond.preheader.vlan_del_crit_edge, label %if.end18

for.cond.preheader.vlan_del_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18:                                         ; preds = %for.cond.preheader
  %call.i = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i)
  %cmp.i.i = icmp slt i32 %call.i, 15
  br i1 %cmp.i.i, label %dev_direct_xmit.exit, label %if.end18.dev_direct_xmit.exit.thread_crit_edge

if.end18.dev_direct_xmit.exit.thread_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.thread:                      ; preds = %if.end18.3.dev_direct_xmit.exit.thread_crit_edge, %if.end18.2.dev_direct_xmit.exit.thread_crit_edge, %if.end18.1.dev_direct_xmit.exit.thread_crit_edge, %if.end18.dev_direct_xmit.exit.thread_crit_edge
  %call15.lcssa82 = phi ptr [ %call15, %if.end18.dev_direct_xmit.exit.thread_crit_edge ], [ %call15.1, %if.end18.1.dev_direct_xmit.exit.thread_crit_edge ], [ %call15.2, %if.end18.2.dev_direct_xmit.exit.thread_crit_edge ], [ %call15.3, %if.end18.3.dev_direct_xmit.exit.thread_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %if.end18.dev_direct_xmit.exit.thread_crit_edge ], [ %call.i.1, %if.end18.1.dev_direct_xmit.exit.thread_crit_edge ], [ %call.i.2, %if.end18.2.dev_direct_xmit.exit.thread_crit_edge ], [ %call.i.3, %if.end18.3.dev_direct_xmit.exit.thread_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call15.lcssa82, i32 noundef 0) #14
  br label %vlan_del

dev_direct_xmit.exit:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end22, label %dev_direct_xmit.exit.vlan_del_crit_edge

dev_direct_xmit.exit.vlan_del_crit_edge:          ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end22:                                         ; preds = %dev_direct_xmit.exit
  %call25 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %27 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool27.not = icmp eq i32 %28, 0
  br i1 %tobool27.not, label %if.end22.vlan_del_crit_edge, label %if.else35

if.end22.vlan_del_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35:                                        ; preds = %if.end22
  %29 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ok, align 4
  %30 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %attr, align 8
  %31 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vlan_id, align 8
  %add.1 = add i32 %32, 1
  %33 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.1, ptr %vlan_id_out, align 8
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dev_addr.1 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr.1, align 64
  %38 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %dst, align 8
  %39 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 9, ptr %sport, align 8
  %40 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 9, ptr %dport, align 4
  %call15.1 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not.1 = icmp eq ptr %call15.1, null
  br i1 %tobool16.not.1, label %if.else35.vlan_del_crit_edge, label %if.end18.1

if.else35.vlan_del_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18.1:                                       ; preds = %if.else35
  %call.i.1 = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15.1, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.1, 15
  br i1 %cmp.i.i.1, label %dev_direct_xmit.exit.1, label %if.end18.1.dev_direct_xmit.exit.thread_crit_edge

if.end18.1.dev_direct_xmit.exit.thread_crit_edge: ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.1:                           ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool20.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool20.not.1, label %if.else.1, label %dev_direct_xmit.exit.1.vlan_del_crit_edge

dev_direct_xmit.exit.1.vlan_del_crit_edge:        ; preds = %dev_direct_xmit.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else.1:                                        ; preds = %dev_direct_xmit.exit.1
  %call25.1 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %41 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool27.not.1 = icmp eq i32 %42, 0
  br i1 %tobool27.not.1, label %if.else35.1, label %if.else.1.vlan_del_crit_edge

if.else.1.vlan_del_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35.1:                                      ; preds = %if.else.1
  %43 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ok, align 4
  %44 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %attr, align 8
  %45 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vlan_id, align 8
  %add.2 = add i32 %46, 2
  %47 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.2, ptr %vlan_id_out, align 8
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %dev_addr.2 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 86
  %50 = ptrtoint ptr %dev_addr.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_addr.2, align 64
  %52 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %dst, align 8
  %53 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 9, ptr %sport, align 8
  %54 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 9, ptr %dport, align 4
  %call15.2 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not.2 = icmp eq ptr %call15.2, null
  br i1 %tobool16.not.2, label %if.else35.1.vlan_del_crit_edge, label %if.end18.2

if.else35.1.vlan_del_crit_edge:                   ; preds = %if.else35.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18.2:                                       ; preds = %if.else35.1
  %call.i.2 = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15.2, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i.2)
  %cmp.i.i.2 = icmp slt i32 %call.i.2, 15
  br i1 %cmp.i.i.2, label %dev_direct_xmit.exit.2, label %if.end18.2.dev_direct_xmit.exit.thread_crit_edge

if.end18.2.dev_direct_xmit.exit.thread_crit_edge: ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.2:                           ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool20.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool20.not.2, label %if.else.2, label %dev_direct_xmit.exit.2.vlan_del_crit_edge

dev_direct_xmit.exit.2.vlan_del_crit_edge:        ; preds = %dev_direct_xmit.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else.2:                                        ; preds = %dev_direct_xmit.exit.2
  %call25.2 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %55 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool27.not.2 = icmp eq i32 %56, 0
  br i1 %tobool27.not.2, label %if.else35.2, label %if.else.2.vlan_del_crit_edge

if.else.2.vlan_del_crit_edge:                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35.2:                                      ; preds = %if.else.2
  %57 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %ok, align 4
  %58 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %attr, align 8
  %59 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vlan_id, align 8
  %add.3 = add i32 %60, 3
  %61 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.3, ptr %vlan_id_out, align 8
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %dev_addr.3 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 86
  %64 = ptrtoint ptr %dev_addr.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_addr.3, align 64
  %66 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %dst, align 8
  %67 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 9, ptr %sport, align 8
  %68 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 9, ptr %dport, align 4
  %call15.3 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not.3 = icmp eq ptr %call15.3, null
  br i1 %tobool16.not.3, label %if.else35.2.vlan_del_crit_edge, label %if.end18.3

if.else35.2.vlan_del_crit_edge:                   ; preds = %if.else35.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18.3:                                       ; preds = %if.else35.2
  %call.i.3 = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15.3, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i.3)
  %cmp.i.i.3 = icmp slt i32 %call.i.3, 15
  br i1 %cmp.i.i.3, label %dev_direct_xmit.exit.3, label %if.end18.3.dev_direct_xmit.exit.thread_crit_edge

if.end18.3.dev_direct_xmit.exit.thread_crit_edge: ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.3:                           ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool20.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool20.not.3, label %if.else.3, label %dev_direct_xmit.exit.3.vlan_del_crit_edge

dev_direct_xmit.exit.3.vlan_del_crit_edge:        ; preds = %dev_direct_xmit.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else.3:                                        ; preds = %dev_direct_xmit.exit.3
  %call25.3 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %69 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool27.not.3 = icmp eq i32 %70, 0
  br i1 %tobool27.not.3, label %if.else35.3, label %if.else.3.vlan_del_crit_edge

if.else.3.vlan_del_crit_edge:                     ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35.3:                                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ok, align 4
  br label %vlan_del

vlan_del:                                         ; preds = %if.else35.3, %if.else.3.vlan_del_crit_edge, %dev_direct_xmit.exit.3.vlan_del_crit_edge, %if.else35.2.vlan_del_crit_edge, %if.else.2.vlan_del_crit_edge, %dev_direct_xmit.exit.2.vlan_del_crit_edge, %if.else35.1.vlan_del_crit_edge, %if.else.1.vlan_del_crit_edge, %dev_direct_xmit.exit.1.vlan_del_crit_edge, %if.else35.vlan_del_crit_edge, %if.end22.vlan_del_crit_edge, %dev_direct_xmit.exit.vlan_del_crit_edge, %dev_direct_xmit.exit.thread, %for.cond.preheader.vlan_del_crit_edge
  %ret.1 = phi i32 [ %call.i.lcssa, %dev_direct_xmit.exit.thread ], [ %call.i, %dev_direct_xmit.exit.vlan_del_crit_edge ], [ -12, %for.cond.preheader.vlan_del_crit_edge ], [ -110, %if.end22.vlan_del_crit_edge ], [ -12, %if.else35.vlan_del_crit_edge ], [ %call.i.1, %dev_direct_xmit.exit.1.vlan_del_crit_edge ], [ -22, %if.else.1.vlan_del_crit_edge ], [ -12, %if.else35.1.vlan_del_crit_edge ], [ %call.i.2, %dev_direct_xmit.exit.2.vlan_del_crit_edge ], [ -22, %if.else.2.vlan_del_crit_edge ], [ -12, %if.else35.2.vlan_del_crit_edge ], [ %call.i.3, %dev_direct_xmit.exit.3.vlan_del_crit_edge ], [ -22, %if.else.3.vlan_del_crit_edge ], [ 0, %if.else35.3 ]
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %74 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vlan_id, align 8
  %conv41 = trunc i32 %75 to i16
  call void @vlan_vid_del(ptr noundef %73, i16 noundef zeroext -32512, i16 noundef zeroext %conv41) #14
  br label %cleanup

cleanup:                                          ; preds = %vlan_del, %if.end.cleanup_crit_edge
  %ret.2 = phi i32 [ %call8, %if.end.cleanup_crit_edge ], [ %ret.1, %vlan_del ]
  call void @dev_remove_pack(ptr noundef %pt) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ %ret.2, %cleanup ], [ -12, %entry.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_vlan_validate(ptr noundef %skb, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readonly %pt, ptr nocapture noundef readnone %orig_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %af_packet_priv = getelementptr inbounds %struct.packet_type, ptr %pt, i32 0, i32 8
  %0 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %af_packet_priv, align 4
  %double_vlan = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %double_vlan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %double_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

entry.skb_unshare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #14
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %skb_unshare.exit.thread87, !prof !29

skb_unshare.exit.thread87:                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.end

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %out

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %entry.skb_unshare.exit_crit_edge
  %tobool1.not = icmp eq ptr %skb, null
  br i1 %tobool1.not, label %skb_unshare.exit.out_crit_edge, label %skb_unshare.exit.if.end_crit_edge

skb_unshare.exit.if.end_crit_edge:                ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

skb_unshare.exit.out_crit_edge:                   ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %skb_unshare.exit.if.end_crit_edge, %skb_unshare.exit.thread87
  %skb.addr.0.i90 = phi ptr [ %call7.i, %skb_unshare.exit.thread87 ], [ %skb, %skb_unshare.exit.if.end_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i90, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %if.end.if.end5_crit_edge, label %cond.true.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

cond.true.i:                                      ; preds = %if.end
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i90, i32 noundef %10) #14
  %tobool.not.i.i78 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i78, label %cond.true.i.out_crit_edge, label %cond.true.i.if.end5_crit_edge

cond.true.i.if.end5_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

cond.true.i.out_crit_edge:                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %cond.true.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i90, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  %sub.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 33
  br i1 %cmp, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %if.end5
  %vlan_id = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.end9.if.end24_crit_edge, label %if.then11

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then11:                                        ; preds = %if.end9
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i90, i32 0, i32 15, i32 0, i32 9
  %17 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan_proto, align 8
  %conv12 = zext i16 %18 to i32
  %conv13 = select i1 %tobool.not, i32 33024, i32 34984
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv12)
  %cmp14.not = icmp eq i32 %conv13, %conv12
  br i1 %cmp14.not, label %if.end17, label %if.then11.out_crit_edge

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end17:                                         ; preds = %if.then11
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i90, i32 0, i32 15, i32 0, i32 10
  %19 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vlan_tci, align 2
  %conv18 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv18)
  %cmp20.not = icmp eq i32 %16, %conv18
  br i1 %cmp20.not, label %if.end17.if.end24_crit_edge, label %if.then22

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %comp) #14
  br label %out

if.end24:                                         ; preds = %if.end17.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i90, i32 0, i32 18
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i90, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %25 to i32
  %add.ptr.i = getelementptr i8, ptr %23, i32 %conv.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst, align 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %xor.i.i = xor i32 %33, %31
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %29, i32 4
  %36 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %37, %35
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end28, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end28:                                         ; preds = %if.end24
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i90, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %39 to i32
  %add.ptr.i.i79 = getelementptr i8, ptr %23, i32 %conv.i.i
  %40 = ptrtoint ptr %double_vlan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %double_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool31.not = icmp eq i32 %41, 0
  %spec.select.idx = select i1 %tobool31.not, i32 0, i32 4
  %spec.select = getelementptr i8, ptr %add.ptr.i.i79, i32 %spec.select.idx
  %protocol = getelementptr inbounds %struct.iphdr, ptr %spec.select, i32 0, i32 6
  %42 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %43)
  %cmp36.not = icmp eq i8 %43, 17
  br i1 %cmp36.not, label %if.end39, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end39:                                         ; preds = %if.end28
  %44 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %spec.select, align 4
  %bf.clear = shl i8 %bf.load, 2
  %45 = and i8 %bf.clear, 60
  %mul = zext i8 %45 to i32
  %add.ptr41 = getelementptr i8, ptr %spec.select, i32 %mul
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr41, i32 0, i32 1
  %46 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dest, align 2
  %dport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %27, i32 0, i32 9
  %48 = ptrtoint ptr %dport to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dport, align 4
  %50 = trunc i32 %49 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %50)
  %cmp46.not = icmp eq i16 %47, %50
  br i1 %cmp46.not, label %if.end49, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end49:                                         ; preds = %if.end39
  %add.ptr50 = getelementptr i8, ptr %add.ptr41, i32 8
  %magic = getelementptr inbounds %struct.stmmachdr, ptr %add.ptr50, i32 0, i32 1
  %51 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2401039830642401619, i64 %52)
  %cmp51.not = icmp eq i64 %52, -2401039830642401619
  br i1 %cmp51.not, label %if.end54, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %ok55 = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %ok55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %ok55, align 4
  %comp56 = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %comp56) #14
  br label %out

out:                                              ; preds = %if.end54, %if.end49.out_crit_edge, %if.end39.out_crit_edge, %if.end28.out_crit_edge, %if.end24.out_crit_edge, %if.then22, %if.then11.out_crit_edge, %if.end5.out_crit_edge, %cond.true.i.out_crit_edge, %skb_unshare.exit.out_crit_edge, %skb_unshare.exit.thread
  %skb.addr.0.i86 = phi ptr [ null, %skb_unshare.exit.thread ], [ %skb.addr.0.i90, %if.end49.out_crit_edge ], [ %skb.addr.0.i90, %if.end39.out_crit_edge ], [ %skb.addr.0.i90, %if.end28.out_crit_edge ], [ %skb.addr.0.i90, %if.end24.out_crit_edge ], [ %skb.addr.0.i90, %if.then11.out_crit_edge ], [ %skb.addr.0.i90, %if.end5.out_crit_edge ], [ null, %skb_unshare.exit.out_crit_edge ], [ %skb.addr.0.i90, %if.end54 ], [ %skb.addr.0.i90, %if.then22 ], [ %skb.addr.0.i90, %cond.true.i.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i86, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_test_dvlanfilt(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %0 = call ptr @memset(ptr %attr, i32 0, i32 88)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup43

if.end:                                           ; preds = %entry
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ok, align 4
  %double_vlan = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %double_vlan to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %double_vlan, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #14
  %pt = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32512, ptr %pt, align 4
  %func = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @stmmac_test_vlan_validate, ptr %func, align 8
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dev3, align 8
  %af_packet_priv = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %af_packet_priv, align 8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %attr, ptr %call7.i.i, align 8
  %vlan_id = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 291, ptr %vlan_id, align 8
  call void @dev_add_pack(ptr noundef %pt) #14
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vlan_id, align 8
  %conv = trunc i32 %16 to i16
  %call8 = call i32 @vlan_vid_add(ptr noundef %14, i16 noundef zeroext -30552, i16 noundef zeroext %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %vlan_id_out = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 2
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %sport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 8
  %dport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 9
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %attr, align 8
  %18 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vlan_id, align 8
  %20 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %vlan_id_out, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %25 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dst, align 8
  %26 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 9, ptr %sport, align 8
  %27 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 9, ptr %dport, align 4
  %call15 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %for.cond.preheader.vlan_del_crit_edge, label %if.end18

for.cond.preheader.vlan_del_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18:                                         ; preds = %for.cond.preheader
  %call.i = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i)
  %cmp.i.i = icmp slt i32 %call.i, 15
  br i1 %cmp.i.i, label %dev_direct_xmit.exit, label %if.end18.dev_direct_xmit.exit.thread_crit_edge

if.end18.dev_direct_xmit.exit.thread_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.thread:                      ; preds = %if.end18.3.dev_direct_xmit.exit.thread_crit_edge, %if.end18.2.dev_direct_xmit.exit.thread_crit_edge, %if.end18.1.dev_direct_xmit.exit.thread_crit_edge, %if.end18.dev_direct_xmit.exit.thread_crit_edge
  %call15.lcssa83 = phi ptr [ %call15, %if.end18.dev_direct_xmit.exit.thread_crit_edge ], [ %call15.1, %if.end18.1.dev_direct_xmit.exit.thread_crit_edge ], [ %call15.2, %if.end18.2.dev_direct_xmit.exit.thread_crit_edge ], [ %call15.3, %if.end18.3.dev_direct_xmit.exit.thread_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %if.end18.dev_direct_xmit.exit.thread_crit_edge ], [ %call.i.1, %if.end18.1.dev_direct_xmit.exit.thread_crit_edge ], [ %call.i.2, %if.end18.2.dev_direct_xmit.exit.thread_crit_edge ], [ %call.i.3, %if.end18.3.dev_direct_xmit.exit.thread_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call15.lcssa83, i32 noundef 0) #14
  br label %vlan_del

dev_direct_xmit.exit:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end22, label %dev_direct_xmit.exit.vlan_del_crit_edge

dev_direct_xmit.exit.vlan_del_crit_edge:          ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end22:                                         ; preds = %dev_direct_xmit.exit
  %call25 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %28 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not = icmp eq i32 %29, 0
  br i1 %tobool27.not, label %if.end22.vlan_del_crit_edge, label %if.else35

if.end22.vlan_del_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35:                                        ; preds = %if.end22
  %30 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ok, align 4
  %31 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %attr, align 8
  %32 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vlan_id, align 8
  %add.1 = add i32 %33, 1
  %34 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.1, ptr %vlan_id_out, align 8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %dev_addr.1 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr.1, align 64
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %dst, align 8
  %40 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 9, ptr %sport, align 8
  %41 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 9, ptr %dport, align 4
  %call15.1 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not.1 = icmp eq ptr %call15.1, null
  br i1 %tobool16.not.1, label %if.else35.vlan_del_crit_edge, label %if.end18.1

if.else35.vlan_del_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18.1:                                       ; preds = %if.else35
  %call.i.1 = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15.1, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.1, 15
  br i1 %cmp.i.i.1, label %dev_direct_xmit.exit.1, label %if.end18.1.dev_direct_xmit.exit.thread_crit_edge

if.end18.1.dev_direct_xmit.exit.thread_crit_edge: ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.1:                           ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool20.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool20.not.1, label %if.else.1, label %dev_direct_xmit.exit.1.vlan_del_crit_edge

dev_direct_xmit.exit.1.vlan_del_crit_edge:        ; preds = %dev_direct_xmit.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else.1:                                        ; preds = %dev_direct_xmit.exit.1
  %call25.1 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %42 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool27.not.1 = icmp eq i32 %43, 0
  br i1 %tobool27.not.1, label %if.else35.1, label %if.else.1.vlan_del_crit_edge

if.else.1.vlan_del_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35.1:                                      ; preds = %if.else.1
  %44 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %ok, align 4
  %45 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %attr, align 8
  %46 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vlan_id, align 8
  %add.2 = add i32 %47, 2
  %48 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.2, ptr %vlan_id_out, align 8
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %dev_addr.2 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr.2, align 64
  %53 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %dst, align 8
  %54 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 9, ptr %sport, align 8
  %55 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 9, ptr %dport, align 4
  %call15.2 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not.2 = icmp eq ptr %call15.2, null
  br i1 %tobool16.not.2, label %if.else35.1.vlan_del_crit_edge, label %if.end18.2

if.else35.1.vlan_del_crit_edge:                   ; preds = %if.else35.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18.2:                                       ; preds = %if.else35.1
  %call.i.2 = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15.2, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i.2)
  %cmp.i.i.2 = icmp slt i32 %call.i.2, 15
  br i1 %cmp.i.i.2, label %dev_direct_xmit.exit.2, label %if.end18.2.dev_direct_xmit.exit.thread_crit_edge

if.end18.2.dev_direct_xmit.exit.thread_crit_edge: ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.2:                           ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool20.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool20.not.2, label %if.else.2, label %dev_direct_xmit.exit.2.vlan_del_crit_edge

dev_direct_xmit.exit.2.vlan_del_crit_edge:        ; preds = %dev_direct_xmit.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else.2:                                        ; preds = %dev_direct_xmit.exit.2
  %call25.2 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %56 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool27.not.2 = icmp eq i32 %57, 0
  br i1 %tobool27.not.2, label %if.else35.2, label %if.else.2.vlan_del_crit_edge

if.else.2.vlan_del_crit_edge:                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35.2:                                      ; preds = %if.else.2
  %58 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ok, align 4
  %59 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %attr, align 8
  %60 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vlan_id, align 8
  %add.3 = add i32 %61, 3
  %62 = ptrtoint ptr %vlan_id_out to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.3, ptr %vlan_id_out, align 8
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %dev_addr.3 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 86
  %65 = ptrtoint ptr %dev_addr.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_addr.3, align 64
  %67 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %dst, align 8
  %68 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 9, ptr %sport, align 8
  %69 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 9, ptr %dport, align 4
  %call15.3 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool16.not.3 = icmp eq ptr %call15.3, null
  br i1 %tobool16.not.3, label %if.else35.2.vlan_del_crit_edge, label %if.end18.3

if.else35.2.vlan_del_crit_edge:                   ; preds = %if.else35.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end18.3:                                       ; preds = %if.else35.2
  %call.i.3 = call i32 @__dev_direct_xmit(ptr noundef nonnull %call15.3, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i.3)
  %cmp.i.i.3 = icmp slt i32 %call.i.3, 15
  br i1 %cmp.i.i.3, label %dev_direct_xmit.exit.3, label %if.end18.3.dev_direct_xmit.exit.thread_crit_edge

if.end18.3.dev_direct_xmit.exit.thread_crit_edge: ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.3:                           ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool20.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool20.not.3, label %if.else.3, label %dev_direct_xmit.exit.3.vlan_del_crit_edge

dev_direct_xmit.exit.3.vlan_del_crit_edge:        ; preds = %dev_direct_xmit.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else.3:                                        ; preds = %dev_direct_xmit.exit.3
  %call25.3 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %70 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool27.not.3 = icmp eq i32 %71, 0
  br i1 %tobool27.not.3, label %if.else35.3, label %if.else.3.vlan_del_crit_edge

if.else.3.vlan_del_crit_edge:                     ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.else35.3:                                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %ok, align 4
  br label %vlan_del

vlan_del:                                         ; preds = %if.else35.3, %if.else.3.vlan_del_crit_edge, %dev_direct_xmit.exit.3.vlan_del_crit_edge, %if.else35.2.vlan_del_crit_edge, %if.else.2.vlan_del_crit_edge, %dev_direct_xmit.exit.2.vlan_del_crit_edge, %if.else35.1.vlan_del_crit_edge, %if.else.1.vlan_del_crit_edge, %dev_direct_xmit.exit.1.vlan_del_crit_edge, %if.else35.vlan_del_crit_edge, %if.end22.vlan_del_crit_edge, %dev_direct_xmit.exit.vlan_del_crit_edge, %dev_direct_xmit.exit.thread, %for.cond.preheader.vlan_del_crit_edge
  %ret.1 = phi i32 [ %call.i.lcssa, %dev_direct_xmit.exit.thread ], [ %call.i, %dev_direct_xmit.exit.vlan_del_crit_edge ], [ -12, %for.cond.preheader.vlan_del_crit_edge ], [ -110, %if.end22.vlan_del_crit_edge ], [ -12, %if.else35.vlan_del_crit_edge ], [ %call.i.1, %dev_direct_xmit.exit.1.vlan_del_crit_edge ], [ -22, %if.else.1.vlan_del_crit_edge ], [ -12, %if.else35.1.vlan_del_crit_edge ], [ %call.i.2, %dev_direct_xmit.exit.2.vlan_del_crit_edge ], [ -22, %if.else.2.vlan_del_crit_edge ], [ -12, %if.else35.2.vlan_del_crit_edge ], [ %call.i.3, %dev_direct_xmit.exit.3.vlan_del_crit_edge ], [ -22, %if.else.3.vlan_del_crit_edge ], [ 0, %if.else35.3 ]
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %75 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vlan_id, align 8
  %conv41 = trunc i32 %76 to i16
  call void @vlan_vid_del(ptr noundef %74, i16 noundef zeroext -30552, i16 noundef zeroext %conv41) #14
  br label %cleanup

cleanup:                                          ; preds = %vlan_del, %if.end.cleanup_crit_edge
  %ret.2 = phi i32 [ %call8, %if.end.cleanup_crit_edge ], [ %ret.1, %vlan_del ]
  call void @dev_remove_pack(ptr noundef %pt) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ %ret.2, %cleanup ], [ -12, %entry.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_test_vlanoff_common(ptr nocapture noundef readonly %priv, i1 noundef zeroext %svlan) unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %0 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %vlins = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 37
  %1 = ptrtoint ptr %vlins to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vlins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup44

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 112) #18
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup44_crit_edge, label %if.end3

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup44

if.end3:                                          ; preds = %if.end
  %conv = select i1 %svlan, i16 -30552, i16 -32512
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ok, align 4
  %conv6 = zext i1 %svlan to i32
  %double_vlan = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %double_vlan to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv6, ptr %double_vlan, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #14
  %conv10 = select i1 %svlan, i16 -32512, i16 2048
  %pt = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pt to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv10, ptr %pt, align 4
  %func = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @stmmac_test_vlan_validate, ptr %func, align 8
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev13, align 8
  %af_packet_priv = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %af_packet_priv, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %attr, ptr %call7.i.i, align 8
  %vlan_id = getelementptr inbounds %struct.stmmac_test_priv, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 291, ptr %vlan_id, align 8
  call void @dev_add_pack(ptr noundef %pt) #14
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vlan_id, align 8
  %conv18 = trunc i32 %18 to i16
  %call19 = call i32 @vlan_vid_add(ptr noundef %16, i16 noundef zeroext %conv, i16 noundef zeroext %conv18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  %dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dst, align 8
  %call24 = call fastcc ptr @stmmac_test_get_udp_skb(ptr noundef %priv, ptr noundef nonnull %attr)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.vlan_del_crit_edge, label %if.end27

if.end22.vlan_del_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end27:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vlan_id, align 8
  %conv29 = trunc i32 %25 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 9
  %26 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 10
  %27 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv29, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 3
  %28 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %protocol, align 8
  %call.i = call i32 @__dev_direct_xmit(ptr noundef nonnull %call24, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i)
  %cmp.i.i = icmp slt i32 %call.i, 15
  br i1 %cmp.i.i, label %dev_direct_xmit.exit, label %dev_direct_xmit.exit.thread

dev_direct_xmit.exit.thread:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef nonnull %call24, i32 noundef 0) #14
  br label %vlan_del

dev_direct_xmit.exit:                             ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.end33, label %dev_direct_xmit.exit.vlan_del_crit_edge

dev_direct_xmit.exit.vlan_del_crit_edge:          ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_del

if.end33:                                         ; preds = %dev_direct_xmit.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 20) #14
  %30 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool38.not = icmp eq i32 %31, 0
  %cond39 = select i1 %tobool38.not, i32 -110, i32 0
  br label %vlan_del

vlan_del:                                         ; preds = %if.end33, %dev_direct_xmit.exit.vlan_del_crit_edge, %dev_direct_xmit.exit.thread, %if.end22.vlan_del_crit_edge
  %ret.0 = phi i32 [ %call.i, %dev_direct_xmit.exit.vlan_del_crit_edge ], [ %cond39, %if.end33 ], [ -12, %if.end22.vlan_del_crit_edge ], [ %call.i, %dev_direct_xmit.exit.thread ]
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vlan_id, align 8
  %conv42 = trunc i32 %35 to i16
  call void @vlan_vid_del(ptr noundef %33, i16 noundef zeroext %conv, i16 noundef zeroext %conv42) #14
  br label %cleanup

cleanup:                                          ; preds = %vlan_del, %if.end3.cleanup_crit_edge
  %ret.1 = phi i32 [ %call19, %if.end3.cleanup_crit_edge ], [ %ret.0, %vlan_del ]
  call void @dev_remove_pack(ptr noundef %pt) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup, %if.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %ret.1, %cleanup ], [ -95, %entry.cleanup44_crit_edge ], [ -12, %if.end.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_test_l3filt(ptr noundef %priv, i32 noundef %dst, i32 noundef %src, i32 noundef %dst_mask, i32 noundef %src_mask) unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.flow_dissector_key_ipv4_addrs, align 4
  %mask = alloca %struct.flow_dissector_key_ipv4_addrs, align 4
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #14
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %key, align 4, !annotation !28
  %1 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #14
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask, align 4, !annotation !28
  %4 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %mask, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %6 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features.i, align 16
  %and.i = and i64 %10, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %l3l4fnum = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 39
  %11 = ptrtoint ptr %l3l4fnum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l3l4fnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %rss = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 99
  %13 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %if.end2.if.end20_crit_edge, label %if.then4

if.end2.if.end20_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then4:                                         ; preds = %if.end2
  %15 = ptrtoint ptr %rss to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rss, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.then4.if.end20_crit_edge, label %land.lhs.true

if.then4.if.end20_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then4
  %rss_configure = getelementptr inbounds %struct.stmmac_ops, ptr %19, i32 0, i32 35
  %20 = ptrtoint ptr %rss_configure to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rss_configure, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %land.lhs.true.if.end20_crit_edge, label %if.then13

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %22 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %23, i32 0, i32 29
  %24 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_queues_to_use, align 4
  %call18 = tail call i32 %21(ptr noundef %17, ptr noundef null, i32 noundef %25) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %land.lhs.true.if.end20_crit_edge, %if.then4.if.end20_crit_edge, %if.end2.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 60) #18
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end20.cleanup_rss_crit_edge, label %if.end24

if.end20.cleanup_rss_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rss

if.end24:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call7.i.i, align 8
  %or = or i32 %28, 4
  store i32 %or, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %arrayidx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i185 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 80) #18
  %tobool26.not = icmp eq ptr %call7.i.i185, null
  br i1 %tobool26.not, label %if.end24.cleanup_dissector_crit_edge, label %if.end28

if.end24.cleanup_dissector_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_dissector

if.end28:                                         ; preds = %if.end24
  %31 = ptrtoint ptr %call7.i.i185 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %call7.i.i185, align 8
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %call7.i.i185, i32 0, i32 1
  %32 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %command, align 8
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %call7.i.i185, i32 0, i32 2
  %33 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -559038737, ptr %cookie, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i186 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 96) #18
  %tobool31.not = icmp eq ptr %call7.i.i186, null
  br i1 %tobool31.not, label %if.end28.cleanup_cls_crit_edge, label %if.end33

if.end28.cleanup_cls_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_cls

if.end33:                                         ; preds = %if.end28
  %35 = ptrtoint ptr %call7.i.i186 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %call7.i.i186, align 8
  %key36 = getelementptr inbounds %struct.flow_match, ptr %call7.i.i186, i32 0, i32 2
  %36 = ptrtoint ptr %key36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %key, ptr %key36, align 8
  %mask38 = getelementptr inbounds %struct.flow_match, ptr %call7.i.i186, i32 0, i32 1
  %37 = ptrtoint ptr %mask38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mask, ptr %mask38, align 4
  %38 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %src, ptr %key, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %dst, ptr %1, align 4
  %40 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %src_mask, ptr %mask, align 4
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dst_mask, ptr %4, align 4
  %rule43 = getelementptr inbounds %struct.flow_cls_offload, ptr %call7.i.i185, i32 0, i32 3
  %42 = ptrtoint ptr %rule43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i186, ptr %rule43, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %call7.i.i186, i32 0, i32 1
  %entries = getelementptr inbounds %struct.flow_rule, ptr %call7.i.i186, i32 1
  %43 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %entries, align 8
  %hw_stats = getelementptr inbounds %struct.flow_rule, ptr %call7.i.i186, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %hw_stats, align 8
  %45 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %action, align 8
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 86
  %48 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_addr, align 64
  %dst50 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %50 = ptrtoint ptr %dst50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %dst50, align 8
  %ip_dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 6
  %51 = ptrtoint ptr %ip_dst to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dst, ptr %ip_dst, align 8
  %ip_src = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 5
  %52 = ptrtoint ptr %ip_src to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %src, ptr %ip_src, align 4
  %call51 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end33.cleanup_rule_crit_edge

if.end33.cleanup_rule_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.end54:                                         ; preds = %if.end33
  %hw56 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %53 = ptrtoint ptr %hw56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw56, align 4
  %tc = getelementptr inbounds %struct.mac_device_info, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tc, align 4
  %tobool57.not = icmp eq ptr %56, null
  br i1 %tobool57.not, label %if.end54.cleanup_rule_crit_edge, label %land.lhs.true58

if.end54.cleanup_rule_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

land.lhs.true58:                                  ; preds = %if.end54
  %setup_cls = getelementptr inbounds %struct.stmmac_tc_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %setup_cls to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %setup_cls, align 4
  %tobool61.not = icmp eq ptr %58, null
  br i1 %tobool61.not, label %land.lhs.true58.cleanup_rule_crit_edge, label %if.end67

land.lhs.true58.cleanup_rule_crit_edge:           ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.end67:                                         ; preds = %land.lhs.true58
  %call66 = call i32 %58(ptr noundef %priv, ptr noundef nonnull %call7.i.i185) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool69.not = icmp eq i32 %call66, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.cleanup_rule_crit_edge

if.end67.cleanup_rule_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.end71:                                         ; preds = %if.end67
  %call72 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  %cond = select i1 %tobool73.not, i32 -22, i32 0
  %59 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %command, align 8
  %60 = ptrtoint ptr %hw56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw56, align 4
  %tc77 = getelementptr inbounds %struct.mac_device_info, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %tc77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tc77, align 4
  %tobool78.not = icmp eq ptr %63, null
  br i1 %tobool78.not, label %if.end71.cleanup_rule_crit_edge, label %land.lhs.true79

if.end71.cleanup_rule_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

land.lhs.true79:                                  ; preds = %if.end71
  %setup_cls82 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %setup_cls82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %setup_cls82, align 4
  %tobool83.not = icmp eq ptr %65, null
  br i1 %tobool83.not, label %land.lhs.true79.cleanup_rule_crit_edge, label %if.then84

land.lhs.true79.cleanup_rule_crit_edge:           ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.then84:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  %call88 = call i32 %65(ptr noundef %priv, ptr noundef nonnull %call7.i.i185) #14
  br label %cleanup_rule

cleanup_rule:                                     ; preds = %if.then84, %land.lhs.true79.cleanup_rule_crit_edge, %if.end71.cleanup_rule_crit_edge, %if.end67.cleanup_rule_crit_edge, %land.lhs.true58.cleanup_rule_crit_edge, %if.end54.cleanup_rule_crit_edge, %if.end33.cleanup_rule_crit_edge
  %ret.0 = phi i32 [ %call51, %if.end33.cleanup_rule_crit_edge ], [ %call66, %if.end67.cleanup_rule_crit_edge ], [ %cond, %if.then84 ], [ %cond, %land.lhs.true79.cleanup_rule_crit_edge ], [ %cond, %if.end71.cleanup_rule_crit_edge ], [ -22, %land.lhs.true58.cleanup_rule_crit_edge ], [ -22, %if.end54.cleanup_rule_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i186) #14
  br label %cleanup_cls

cleanup_cls:                                      ; preds = %cleanup_rule, %if.end28.cleanup_cls_crit_edge
  %ret.1 = phi i32 [ %ret.0, %cleanup_rule ], [ -12, %if.end28.cleanup_cls_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i185) #14
  br label %cleanup_dissector

cleanup_dissector:                                ; preds = %cleanup_cls, %if.end24.cleanup_dissector_crit_edge
  %ret.2 = phi i32 [ %ret.1, %cleanup_cls ], [ -12, %if.end24.cleanup_dissector_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup_rss

cleanup_rss:                                      ; preds = %cleanup_dissector, %if.end20.cleanup_rss_crit_edge
  %ret.3 = phi i32 [ %ret.2, %cleanup_dissector ], [ -12, %if.end20.cleanup_rss_crit_edge ]
  br i1 %tobool3.not, label %cleanup_rss.cleanup_crit_edge, label %if.then92

cleanup_rss.cleanup_crit_edge:                    ; preds = %cleanup_rss
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then92:                                        ; preds = %cleanup_rss
  %66 = ptrtoint ptr %rss to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %14, ptr %rss, align 8
  %hw96 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %67 = ptrtoint ptr %hw96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw96, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool98.not = icmp eq ptr %70, null
  br i1 %tobool98.not, label %if.then92.cleanup_crit_edge, label %land.lhs.true99

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true99:                                  ; preds = %if.then92
  %rss_configure102 = getelementptr inbounds %struct.stmmac_ops, ptr %70, i32 0, i32 35
  %71 = ptrtoint ptr %rss_configure102 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rss_configure102, align 4
  %tobool103.not = icmp eq ptr %72, null
  br i1 %tobool103.not, label %land.lhs.true99.cleanup_crit_edge, label %if.then104

land.lhs.true99.cleanup_crit_edge:                ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then104:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #16
  %plat110 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %73 = ptrtoint ptr %plat110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %plat110, align 128
  %rx_queues_to_use111 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %74, i32 0, i32 29
  %75 = ptrtoint ptr %rx_queues_to_use111 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_queues_to_use111, align 4
  %call112 = call i32 %72(ptr noundef %68, ptr noundef %rss, i32 noundef %76) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %land.lhs.true99.cleanup_crit_edge, %if.then92.cleanup_crit_edge, %cleanup_rss.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %ret.3, %if.then92.cleanup_crit_edge ], [ %ret.3, %land.lhs.true99.cleanup_crit_edge ], [ %ret.3, %if.then104 ], [ %ret.3, %cleanup_rss.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_test_l4filt(ptr noundef %priv, i32 noundef %dst, i32 noundef %src, i32 noundef %dst_mask, i32 noundef %src_mask, i1 noundef zeroext %udp) unnamed_addr #0 align 64 {
entry:
  %keys = alloca %struct.anon.219, align 8
  %masks = alloca %struct.anon.222, align 8
  %attr = alloca %struct.stmmac_packet_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keys) #14
  %0 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %keys, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.219, ptr %keys, i32 0, i32 1
  %2 = ptrtoint ptr %keys to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %keys, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %masks) #14
  %3 = getelementptr inbounds %struct.anon.222, ptr %masks, i32 0, i32 1
  %4 = ptrtoint ptr %masks to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %masks, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attr) #14
  %5 = call ptr @memset(ptr %attr, i32 0, i32 88)
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i, align 16
  %and.i = and i64 %9, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %l3l4fnum = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 39
  %10 = ptrtoint ptr %l3l4fnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l3l4fnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %rss = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 99
  %12 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.end2.if.end20_crit_edge, label %if.then4

if.end2.if.end20_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then4:                                         ; preds = %if.end2
  %14 = ptrtoint ptr %rss to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rss, align 8
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.then4.if.end20_crit_edge, label %land.lhs.true

if.then4.if.end20_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then4
  %rss_configure = getelementptr inbounds %struct.stmmac_ops, ptr %18, i32 0, i32 35
  %19 = ptrtoint ptr %rss_configure to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rss_configure, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %land.lhs.true.if.end20_crit_edge, label %if.then13

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %21 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %plat, align 128
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %22, i32 0, i32 29
  %23 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_queues_to_use, align 4
  %call18 = tail call i32 %20(ptr noundef %16, ptr noundef null, i32 noundef %24) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %land.lhs.true.if.end20_crit_edge, %if.then4.if.end20_crit_edge, %if.end2.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 60) #18
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end20.cleanup_rss_crit_edge, label %if.end24

if.end20.cleanup_rss_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rss

if.end24:                                         ; preds = %if.end20
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call7.i.i, align 8
  %or26 = or i32 %27, 18
  store i32 %or26, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %arrayidx, align 2
  %arrayidx28 = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4, ptr %arrayidx28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i201 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 80) #18
  %tobool30.not = icmp eq ptr %call7.i.i201, null
  br i1 %tobool30.not, label %if.end24.cleanup_dissector_crit_edge, label %if.end32

if.end24.cleanup_dissector_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_dissector

if.end32:                                         ; preds = %if.end24
  %31 = ptrtoint ptr %call7.i.i201 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %call7.i.i201, align 8
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %call7.i.i201, i32 0, i32 1
  %32 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %command, align 8
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %call7.i.i201, i32 0, i32 2
  %33 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -559038737, ptr %cookie, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i202 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 96) #18
  %tobool35.not = icmp eq ptr %call7.i.i202, null
  br i1 %tobool35.not, label %if.end32.cleanup_cls_crit_edge, label %if.end37

if.end32.cleanup_cls_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_cls

if.end37:                                         ; preds = %if.end32
  %35 = ptrtoint ptr %call7.i.i202 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %call7.i.i202, align 8
  %key = getelementptr inbounds %struct.flow_match, ptr %call7.i.i202, i32 0, i32 2
  %36 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %keys, ptr %key, align 8
  %mask = getelementptr inbounds %struct.flow_match, ptr %call7.i.i202, i32 0, i32 1
  %37 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %masks, ptr %mask, align 4
  %conv = select i1 %udp, i8 17, i8 6
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %0, align 2
  %conv42 = trunc i32 %src to i16
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv42, ptr %1, align 4
  %conv45 = trunc i32 %dst to i16
  %dst47 = getelementptr inbounds %struct.anon.221, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dst47 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv45, ptr %dst47, align 2
  %conv48 = trunc i32 %src_mask to i16
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv48, ptr %3, align 4
  %conv51 = trunc i32 %dst_mask to i16
  %dst53 = getelementptr inbounds %struct.anon.221, ptr %3, i32 0, i32 1
  %42 = ptrtoint ptr %dst53 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv51, ptr %dst53, align 2
  %rule54 = getelementptr inbounds %struct.flow_cls_offload, ptr %call7.i.i201, i32 0, i32 3
  %43 = ptrtoint ptr %rule54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i202, ptr %rule54, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %call7.i.i202, i32 0, i32 1
  %entries = getelementptr inbounds %struct.flow_rule, ptr %call7.i.i202, i32 1
  %44 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %entries, align 8
  %hw_stats = getelementptr inbounds %struct.flow_rule, ptr %call7.i.i202, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %hw_stats, align 8
  %46 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %action, align 8
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 86
  %49 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr, align 64
  %dst61 = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 4
  %51 = ptrtoint ptr %dst61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dst61, align 8
  %lnot = xor i1 %udp, true
  %lnot.ext = zext i1 %lnot to i32
  %tcp = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 7
  %52 = ptrtoint ptr %tcp to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %lnot.ext, ptr %tcp, align 4
  %sport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 8
  %53 = ptrtoint ptr %sport to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %src, ptr %sport, align 8
  %dport = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 9
  %54 = ptrtoint ptr %dport to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %dst, ptr %dport, align 4
  %ip_dst = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %attr, i32 0, i32 6
  %55 = ptrtoint ptr %ip_dst to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %ip_dst, align 8
  %call63 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end37.cleanup_rule_crit_edge

if.end37.cleanup_rule_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.end66:                                         ; preds = %if.end37
  %hw68 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %56 = ptrtoint ptr %hw68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw68, align 4
  %tc = getelementptr inbounds %struct.mac_device_info, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tc, align 4
  %tobool69.not = icmp eq ptr %59, null
  br i1 %tobool69.not, label %if.end66.cleanup_rule_crit_edge, label %land.lhs.true70

if.end66.cleanup_rule_crit_edge:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

land.lhs.true70:                                  ; preds = %if.end66
  %setup_cls = getelementptr inbounds %struct.stmmac_tc_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %setup_cls to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %setup_cls, align 4
  %tobool73.not = icmp eq ptr %61, null
  br i1 %tobool73.not, label %land.lhs.true70.cleanup_rule_crit_edge, label %if.end79

land.lhs.true70.cleanup_rule_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.end79:                                         ; preds = %land.lhs.true70
  %call78 = call i32 %61(ptr noundef %priv, ptr noundef nonnull %call7.i.i201) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool81.not = icmp eq i32 %call78, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.cleanup_rule_crit_edge

if.end79.cleanup_rule_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.end83:                                         ; preds = %if.end79
  %call84 = call fastcc i32 @__stmmac_test_loopback(ptr noundef %priv, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  %cond86 = select i1 %tobool85.not, i32 -22, i32 0
  %62 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %command, align 8
  %63 = ptrtoint ptr %hw68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw68, align 4
  %tc90 = getelementptr inbounds %struct.mac_device_info, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %tc90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tc90, align 4
  %tobool91.not = icmp eq ptr %66, null
  br i1 %tobool91.not, label %if.end83.cleanup_rule_crit_edge, label %land.lhs.true92

if.end83.cleanup_rule_crit_edge:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

land.lhs.true92:                                  ; preds = %if.end83
  %setup_cls95 = getelementptr inbounds %struct.stmmac_tc_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %setup_cls95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %setup_cls95, align 4
  %tobool96.not = icmp eq ptr %68, null
  br i1 %tobool96.not, label %land.lhs.true92.cleanup_rule_crit_edge, label %if.then97

land.lhs.true92.cleanup_rule_crit_edge:           ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_rule

if.then97:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  %call101 = call i32 %68(ptr noundef %priv, ptr noundef nonnull %call7.i.i201) #14
  br label %cleanup_rule

cleanup_rule:                                     ; preds = %if.then97, %land.lhs.true92.cleanup_rule_crit_edge, %if.end83.cleanup_rule_crit_edge, %if.end79.cleanup_rule_crit_edge, %land.lhs.true70.cleanup_rule_crit_edge, %if.end66.cleanup_rule_crit_edge, %if.end37.cleanup_rule_crit_edge
  %ret.0 = phi i32 [ %call63, %if.end37.cleanup_rule_crit_edge ], [ %call78, %if.end79.cleanup_rule_crit_edge ], [ %cond86, %if.then97 ], [ %cond86, %land.lhs.true92.cleanup_rule_crit_edge ], [ %cond86, %if.end83.cleanup_rule_crit_edge ], [ -22, %land.lhs.true70.cleanup_rule_crit_edge ], [ -22, %if.end66.cleanup_rule_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i202) #14
  br label %cleanup_cls

cleanup_cls:                                      ; preds = %cleanup_rule, %if.end32.cleanup_cls_crit_edge
  %ret.1 = phi i32 [ %ret.0, %cleanup_rule ], [ -12, %if.end32.cleanup_cls_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i201) #14
  br label %cleanup_dissector

cleanup_dissector:                                ; preds = %cleanup_cls, %if.end24.cleanup_dissector_crit_edge
  %ret.2 = phi i32 [ %ret.1, %cleanup_cls ], [ -12, %if.end24.cleanup_dissector_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup_rss

cleanup_rss:                                      ; preds = %cleanup_dissector, %if.end20.cleanup_rss_crit_edge
  %ret.3 = phi i32 [ %ret.2, %cleanup_dissector ], [ -12, %if.end20.cleanup_rss_crit_edge ]
  br i1 %tobool3.not, label %cleanup_rss.cleanup_crit_edge, label %if.then105

cleanup_rss.cleanup_crit_edge:                    ; preds = %cleanup_rss
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then105:                                       ; preds = %cleanup_rss
  %69 = ptrtoint ptr %rss to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %13, ptr %rss, align 8
  %hw109 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %70 = ptrtoint ptr %hw109 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw109, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tobool111.not = icmp eq ptr %73, null
  br i1 %tobool111.not, label %if.then105.cleanup_crit_edge, label %land.lhs.true112

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true112:                                 ; preds = %if.then105
  %rss_configure115 = getelementptr inbounds %struct.stmmac_ops, ptr %73, i32 0, i32 35
  %74 = ptrtoint ptr %rss_configure115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rss_configure115, align 4
  %tobool116.not = icmp eq ptr %75, null
  br i1 %tobool116.not, label %land.lhs.true112.cleanup_crit_edge, label %if.then117

land.lhs.true112.cleanup_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then117:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #16
  %plat123 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %76 = ptrtoint ptr %plat123 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %plat123, align 128
  %rx_queues_to_use124 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %77, i32 0, i32 29
  %78 = ptrtoint ptr %rx_queues_to_use124 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_queues_to_use124, align 4
  %call125 = call i32 %75(ptr noundef %71, ptr noundef %rss, i32 noundef %79) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %land.lhs.true112.cleanup_crit_edge, %if.then105.cleanup_crit_edge, %cleanup_rss.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %ret.3, %if.then105.cleanup_crit_edge ], [ %ret.3, %land.lhs.true112.cleanup_crit_edge ], [ %ret.3, %if.then117 ], [ %ret.3, %cleanup_rss.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attr) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %masks) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keys) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_test_arp_validate(ptr noundef %skb, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readonly %pt, ptr nocapture noundef readnone %orig_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %af_packet_priv = getelementptr inbounds %struct.packet_type, ptr %pt, i32 0, i32 8
  %0 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %af_packet_priv, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %src = getelementptr inbounds %struct.stmmac_packet_attrs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %xor.i.i = xor i32 %13, %11
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 4
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %17, %15
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i10 = getelementptr i8, ptr %3, i32 %conv.i.i
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i10, i32 0, i32 4
  %20 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %cmp.not = icmp eq i16 %21, 2
  br i1 %cmp.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ok = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %ok to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %ok, align 4
  %comp = getelementptr inbounds %struct.stmmac_test_priv, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %comp) #14
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arp_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c", i32 1966, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c", i32 1970, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c", i32 2004, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c", i32 2037, i32 32}
!8 = !{ptr @stmmac_test_next_id, !9, !"stmmac_test_next_id", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c", i32 57, i32 11}
!10 = !{ptr @stmmac_selftests, !11, !"stmmac_selftests", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c", i32 1823, i32 3}
!12 = !{ptr @init_completion.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/completion.h", i32 87, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c", i32 492, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 6605239, i64 6605280, i64 6605325}
!31 = !{i64 6604137}
