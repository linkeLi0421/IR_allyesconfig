; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c"
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
%struct.hnae_handle = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.list_head, ptr, [0 x ptr] }
%struct.hnae_ae_dev = type { %struct.device, ptr, ptr, %struct.list_head, ptr, i32, [16 x i8], %struct.list_head, %struct.spinlock }
%struct.hnae_ae_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hnae_queue = type { ptr, i32, ptr, [116 x i8], %struct.hnae_ring, [64 x i8], %struct.hnae_ring, ptr, [60 x i8] }
%struct.hnae_ring = type { ptr, ptr, ptr, ptr, i32, [20 x i8], %struct.ring_stats, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ring_stats = type { i64, i64, i64, %union.anon.129 }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.hns_nic_ring_data = type { ptr, %struct.napi_struct, %struct.cpumask, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@hns_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 2029107, i32 0, ptr @hns_nic_get_drvinfo, ptr @hns_get_regs_len, ptr @hns_get_regs, ptr null, ptr null, ptr null, ptr null, ptr @hns_nic_nway_reset, ptr @hns_nic_get_link, ptr null, ptr null, ptr null, ptr null, ptr @hns_get_coalesce, ptr @hns_set_coalesce, ptr @hns_get_ringparam, ptr null, ptr null, ptr @hns_get_pauseparam, ptr @hns_set_pauseparam, ptr @hns_nic_self_test, ptr @hns_get_strings, ptr @hns_set_phys_id, ptr @hns_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @hns_get_sset_count, ptr @hns_get_rxnfc, ptr null, ptr null, ptr null, ptr @hns_get_rss_key_size, ptr @hns_get_rss_indir_size, ptr @hns_get_rss, ptr @hns_set_rss, ptr null, ptr null, ptr @hns_get_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hns_nic_get_link_ksettings, ptr @hns_nic_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ops->get_regs_len is null!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ops->get_regs is null!\0A\00", [40 x i8] zeroinitializer }, align 32
@__lb_run_test._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 522, ptr @.str.8, ptr @.str.9 }, align 1
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s sent fail, cnt=0x%x, budget=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__lb_run_test\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_ethtool.c\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__lb_run_test._entry_ptr = internal global ptr @__lb_run_test._entry, section ".printk_index", align 4
@hns_nic_test_strs = internal constant { [3 x [32 x i8]], [32 x i8] } { [3 x [32 x i8]] [[32 x i8] c"Mac    Loopback test\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Serdes Loopback test\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Phy    Loopback test\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@__lb_run_test._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 536, ptr @.str.8, ptr @.str.9 }, align 1
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s recv fail, cnt=0x%x, budget=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@__lb_run_test._entry_ptr.12 = internal global ptr @__lb_run_test._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"skb alloc failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@__lb_other_process._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 439, ptr null, ptr null }, align 1
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__lb_other_process\00", [45 x i8] zeroinitializer }, align 32
@__lb_other_process._entry_ptr = internal global ptr @__lb_other_process._entry, section ".printk_index", align 4
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: __lb_setup return error(%d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.__lb_down = private unnamed_addr constant [10 x i8] c"__lb_down\00", align 1
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"h->dev->ops->get_strings is null!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_dropped\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_dropped\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multicast\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"collisions\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_over_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_crc_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_frame_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_fifo_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_missed_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_aborted_errors\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_carrier_errors\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_fifo_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_heartbeat_errors\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_length_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_window_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_compressed\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_compressed\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netdev_rx_dropped\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netdev_tx_dropped\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netdev_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mdiobus_write fail !\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"get_stats or update_stats is null!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_sset_count is null!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RSS feature is not supported on this hardware\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid hfunc!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s get_info error!\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.hns_nic_get_link_ksettings = private unnamed_addr constant [27 x i8] c"hns_nic_get_link_ksettings\00", align 1
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Not supported!\00", [17 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"N/A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 15]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 15]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"hns_ethtool_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1252, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1127, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1107, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 520, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"hns_nic_test_strs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 251, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 534, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 418, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 437, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 439, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 561, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 912, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 927, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 928, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 929, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 930, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 931, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 932, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 933, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 934, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 935, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 936, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 937, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 938, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 939, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 940, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 941, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 942, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 943, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 944, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 945, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 946, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 947, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 948, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 949, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 950, i32 26 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 951, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 953, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1009, i32 22 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 857, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 973, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1168, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1228, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 133, i32 23 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [52 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 236, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"str.52\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"str.53\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__lb_other_process._entry, ptr @__lb_other_process._entry_ptr, ptr @__lb_run_test._entry, ptr @__lb_run_test._entry.10, ptr @__lb_run_test._entry_ptr, ptr @__lb_run_test._entry_ptr.12, ptr @hns_ethtool_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hns_nic_test_strs, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @str, ptr @str.52, ptr @str.53], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_test_strs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hns_ethtool_set_ops(ptr nocapture noundef writeonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hns_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hns_nic_get_drvinfo(ptr nocapture noundef readonly %net_dev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %version, ptr @str, i32 31)
  %arrayidx = getelementptr %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2, i32 31
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 1
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %driver, ptr @str.52, i32 31)
  %arrayidx6 = getelementptr %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1, i32 31
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx6, align 1
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %dev = getelementptr i8, ptr %net_dev, i32 2328
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %bus = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call8 = tail call ptr @strncpy(ptr noundef %bus_info, ptr noundef %9, i32 noundef 32)
  %arrayidx10 = getelementptr %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4, i32 31
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx10, align 1
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %fw_version, ptr @str.53, i32 32)
  %eedump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 10
  %12 = ptrtoint ptr %eedump_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %eedump_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_get_regs_len(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %get_regs_len = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %get_regs_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_regs_len, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 %7(ptr noundef %1) #10
  %mul = shl i32 %call4, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ %mul, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_get_regs(ptr noundef %net_dev, ptr nocapture noundef writeonly %cmd, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 660, ptr %version, align 4
  %get_regs = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 38
  %7 = ptrtoint ptr %get_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_regs, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ae_handle, align 4
  tail call void %8(ptr noundef %10, ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_nway_reset(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %autoneg, align 8
  %5 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.not = icmp eq i16 %5, 0
  br i1 %cmp.not.not, label %if.end2.cleanup_crit_edge, label %if.end4

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @genphy_restart_aneg(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_get_link(ptr nocapture noundef readonly %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr i8, ptr %net_dev, i32 2352
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 8
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %2 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_handle, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @genphy_read_status(ptr noundef nonnull %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %link6 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %link6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %link6, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %link_stat.0 = phi i32 [ %bf.cast, %if.then4 ], [ %1, %entry.if.end7_crit_edge ], [ 0, %if.then.if.end7_crit_edge ]
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.if.end23_crit_edge, label %land.lhs.true

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end7
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true11

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true11:                                  ; preds = %land.lhs.true
  %get_status = getelementptr inbounds %struct.hnae_ae_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_status, align 4
  %tobool14.not = icmp eq ptr %14, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_stat.0)
  %tobool16.not = icmp eq i32 %link_stat.0, 0
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %land.lhs.true11.if.end23_crit_edge, label %land.rhs

land.lhs.true11.if.end23_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.rhs:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 %14(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21 = icmp ne i32 %call20, 0
  %phi.cast = zext i1 %tobool21 to i32
  br label %if.end23

if.end23:                                         ; preds = %land.rhs, %land.lhs.true11.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %link_stat.1 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true11.if.end23_crit_edge ], [ 0, %land.lhs.true.if.end23_crit_edge ], [ 0, %if.end7.if.end23_crit_edge ]
  ret i32 %link_stat.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_get_coalesce(ptr nocapture noundef readonly %net_dev, ptr noundef %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %coal_adapt_en = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %coal_adapt_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coal_adapt_en, align 4, !range !118
  %8 = zext i8 %7 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %9 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %use_adaptive_rx_coalesce, align 4
  %10 = load ptr, ptr %ae_handle, align 4
  %coal_adapt_en4 = getelementptr inbounds %struct.hnae_handle, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %coal_adapt_en4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %coal_adapt_en4, align 4, !range !118
  %13 = zext i8 %12 to i32
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %14 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %use_adaptive_tx_coalesce, align 4
  %get_coalesce_usecs = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 18
  %15 = ptrtoint ptr %get_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_coalesce_usecs, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_max_coalesced_frames = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 19
  %17 = ptrtoint ptr %get_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_max_coalesced_frames, align 4
  %tobool8.not = icmp eq ptr %18, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ae_handle, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  tail call void %16(ptr noundef %20, ptr noundef %tx_coalesce_usecs, ptr noundef %rx_coalesce_usecs) #10
  %21 = ptrtoint ptr %get_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_max_coalesced_frames, align 4
  %23 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ae_handle, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  tail call void %22(ptr noundef %24, ptr noundef %tx_max_coalesced_frames, ptr noundef %rx_max_coalesced_frames) #10
  %get_coalesce_range = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 22
  %25 = ptrtoint ptr %get_coalesce_range to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_coalesce_range, align 4
  %27 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ae_handle, align 4
  %tx_max_coalesced_frames_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 16
  %rx_max_coalesced_frames_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 14
  %tx_max_coalesced_frames_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 21
  %rx_max_coalesced_frames_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 19
  %tx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 15
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 13
  %tx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 20
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 18
  tail call void %26(ptr noundef %28, ptr noundef %tx_max_coalesced_frames_low, ptr noundef %rx_max_coalesced_frames_low, ptr noundef %tx_max_coalesced_frames_high, ptr noundef %rx_max_coalesced_frames_high, ptr noundef %tx_coalesce_usecs_low, ptr noundef %rx_coalesce_usecs_low, ptr noundef %tx_coalesce_usecs_high, ptr noundef %rx_coalesce_usecs_high) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -3, %lor.lhs.false.cleanup_crit_edge ], [ -3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_set_coalesce(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %6 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_coalesce_usecs, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_coalesce_usecs = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %set_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_coalesce_usecs, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %set_coalesce_frames = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 21
  %12 = ptrtoint ptr %set_coalesce_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_coalesce_frames, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %14 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %coal_adapt_en = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %coal_adapt_en to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %coal_adapt_en, align 4, !range !118
  %18 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp7.not = icmp eq i32 %15, %18
  br i1 %cmp7.not, label %if.end4.if.end14_crit_edge, label %if.then9

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11 = icmp ne i32 %15, 0
  %frombool = zext i1 %tobool11 to i8
  %19 = ptrtoint ptr %coal_adapt_en to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %coal_adapt_en, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end4.if.end14_crit_edge
  %20 = ptrtoint ptr %set_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_coalesce_usecs, align 4
  %22 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ae_handle, align 4
  %24 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_coalesce_usecs, align 4
  %call18 = tail call i32 %21(ptr noundef %23, i32 noundef %25) #10
  %26 = ptrtoint ptr %set_coalesce_frames to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_coalesce_frames, align 4
  %28 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ae_handle, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %30 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_max_coalesced_frames, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %32 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_max_coalesced_frames, align 4
  %call21 = tail call i32 %27(ptr noundef %29, i32 noundef %31, i32 noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool22.not = icmp eq i32 %call18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool24.not = icmp eq i32 %call21, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool24.not, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -3, %lor.lhs.false.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_get_ringparam(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %uplimit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uplimit) #10
  %0 = ptrtoint ptr %uplimit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %uplimit, align 4
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %1 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ae_handle, align 4
  %qs = getelementptr inbounds %struct.hnae_handle, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %qs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qs, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %ops2 = getelementptr inbounds %struct.hnae_ae_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops2, align 4
  %get_ring_bdnum_limit = getelementptr inbounds %struct.hnae_ae_ops, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %get_ring_bdnum_limit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_ring_bdnum_limit, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void %10(ptr noundef %4, ptr noundef nonnull %uplimit) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %uplimit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uplimit, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 1
  %13 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 4
  %14 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %tx_max_pending, align 4
  %desc_num = getelementptr inbounds %struct.hnae_queue, ptr %4, i32 0, i32 4, i32 9
  %15 = ptrtoint ptr %desc_num to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %desc_num, align 16
  %conv = zext i16 %16 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %17 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %rx_pending, align 4
  %desc_num4 = getelementptr inbounds %struct.hnae_queue, ptr %4, i32 0, i32 6, i32 9
  %18 = ptrtoint ptr %desc_num4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %desc_num4, align 16
  %conv5 = zext i16 %19 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %20 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv5, ptr %tx_pending, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uplimit) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_get_pauseparam(ptr nocapture noundef readonly %net_dev, ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %get_pauseparam = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %get_pauseparam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pauseparam, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %param, i32 0, i32 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %param, i32 0, i32 2
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %param, i32 0, i32 3
  tail call void %7(ptr noundef %1, ptr noundef %autoneg, ptr noundef %rx_pause, ptr noundef %tx_pause) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_set_pauseparam(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %set_pauseparam = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %set_pauseparam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_pauseparam, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %param, i32 0, i32 1
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %autoneg, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %param, i32 0, i32 2
  %10 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %param, i32 0, i32 3
  %12 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pause, align 4
  %call4 = tail call i32 %7(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_self_test(ptr noundef %ndev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #2 align 64 {
entry:
  %st_param = alloca [3 x [2 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %st_param) #10
  %2 = getelementptr inbounds [2 x i32], ptr %st_param, i32 0, i32 1
  %3 = getelementptr inbounds [3 x [2 x i32]], ptr %st_param, i32 0, i32 1
  %4 = getelementptr inbounds [3 x [2 x i32]], ptr %st_param, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds [3 x [2 x i32]], ptr %st_param, i32 0, i32 2
  %6 = getelementptr inbounds [3 x [2 x i32]], ptr %st_param, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %st_param to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %st_param, align 4
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %8 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ae_handle, align 4
  %phy_if = getelementptr inbounds %struct.hnae_handle, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp = icmp ne i32 %11, 15
  %conv = zext i1 %cmp to i32
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %5, align 4
  %phy_dev = getelementptr inbounds %struct.hnae_handle, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_dev, align 4
  %tobool.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool.not, i32 0, i32 %conv
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %6, align 4
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp18 = icmp eq i32 %20, 1
  br i1 %cmp18, label %if.then, label %entry.if.end57_crit_edge

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %ndev, i32 2368
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #10
  br i1 %tobool.i.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_close(ptr noundef %ndev) #10
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %flags.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %enet_ver.i.i = getelementptr i8, ptr %ndev, i32 2308
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %ring_data.i = getelementptr i8, ptr %ndev, i32 2348
  %dev.i87 = getelementptr i8, ptr %ndev, i32 2328
  %netdev.i.i = getelementptr i8, ptr %ndev, i32 2324
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %test_index.0130 = phi i32 [ 0, %if.end ], [ %test_index.1, %for.inc.for.body_crit_edge ]
  %i.0128 = phi i32 [ 0, %if.end ], [ %inc51, %for.inc.for.body_crit_edge ]
  %arrayidx25 = getelementptr [3 x [2 x i32]], ptr %st_param, i32 0, i32 %i.0128, i32 1
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool26.not = icmp eq i32 %22, 0
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %arrayidx24 = getelementptr [3 x [2 x i32]], ptr %st_param, i32 0, i32 %i.0128
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24, align 4
  %25 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ae_handle, align 4
  tail call void @hns_nic_net_reset(ptr noundef %ndev) #10
  %27 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phydev.i, align 16
  %29 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ae_handle, align 4
  %31 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end28.__lb_up.exit.thread_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb3.i
    i32 1, label %sw.bb15.i
    i32 3, label %sw.bb26.i
    i32 4, label %if.end28.land.lhs.true30.i_crit_edge
  ]

if.end28.land.lhs.true30.i_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true30.i

if.end28.__lb_up.exit.thread_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

sw.bb.i:                                          ; preds = %if.end28
  %call.i.i108 = tail call i32 @phy_resume(ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool1.not.i.i = icmp eq i32 %call.i.i108, 0
  br i1 %tobool1.not.i.i, label %hns_nic_config_phy_loopback.exit.i, label %sw.bb.i.__lb_up.exit.thread_crit_edge

sw.bb.i.__lb_up.exit.thread_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

hns_nic_config_phy_loopback.exit.i:               ; preds = %sw.bb.i
  %call3.i.i = tail call i32 @phy_loopback(ptr noundef %28, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i109 = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i109, label %if.then.i113, label %hns_nic_config_phy_loopback.exit.i.__lb_up.exit.thread_crit_edge

hns_nic_config_phy_loopback.exit.i.__lb_up.exit.thread_crit_edge: ; preds = %hns_nic_config_phy_loopback.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

if.then.i113:                                     ; preds = %hns_nic_config_phy_loopback.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i110 = getelementptr inbounds %struct.hnae_handle, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i110 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i110, align 4
  %ops.i111 = getelementptr inbounds %struct.hnae_ae_dev, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ops.i111 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i111, align 4
  %set_loopback.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %set_loopback.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_loopback.i, align 4
  %call2.i112 = tail call i32 %37(ptr noundef %30, i32 noundef 2, i32 noundef 1) #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end28
  %dev4.i = getelementptr inbounds %struct.hnae_handle, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev4.i, align 4
  %ops5.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops5.i, align 4
  %set_loopback6.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %set_loopback6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_loopback6.i, align 4
  %tobool7.not.i114 = icmp eq ptr %43, null
  br i1 %tobool7.not.i114, label %sw.bb3.i.if.else.i118_crit_edge, label %land.lhs.true.i

sw.bb3.i.if.else.i118_crit_edge:                  ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i118

land.lhs.true.i:                                  ; preds = %sw.bb3.i
  %phy_if.i115 = getelementptr inbounds %struct.hnae_handle, ptr %30, i32 0, i32 3
  %44 = ptrtoint ptr %phy_if.i115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_if.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %45)
  %cmp.not.i116 = icmp eq i32 %45, 15
  br i1 %cmp.not.i116, label %land.lhs.true.i.if.else.i118_crit_edge, label %if.then9.i

land.lhs.true.i.if.else.i118_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i118

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 %43(ptr noundef %30, i32 noundef 0, i32 noundef 1) #10
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end28
  %dev16.i = getelementptr inbounds %struct.hnae_handle, ptr %30, i32 0, i32 1
  %46 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev16.i, align 4
  %ops17.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ops17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops17.i, align 4
  %set_loopback18.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %set_loopback18.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_loopback18.i, align 4
  %tobool19.not.i = icmp eq ptr %51, null
  br i1 %tobool19.not.i, label %sw.bb15.i.if.else.i118_crit_edge, label %if.then20.i117

sw.bb15.i.if.else.i118_crit_edge:                 ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i118

if.then20.i117:                                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call24.i = tail call i32 %51(ptr noundef %30, i32 noundef 1, i32 noundef 1) #10
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end28
  %call4.i.i = tail call i32 @phy_loopback(ptr noundef %28, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %sw.bb28.i, label %sw.bb26.i.__lb_up.exit.thread_crit_edge

sw.bb26.i.__lb_up.exit.thread_crit_edge:          ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

sw.bb28.i:                                        ; preds = %sw.bb26.i
  %call8.i.i = tail call i32 @phy_suspend(ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool29.not.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool29.not.i, label %sw.bb28.i.land.lhs.true30.i_crit_edge, label %sw.bb28.i.__lb_up.exit.thread_crit_edge

sw.bb28.i.__lb_up.exit.thread_crit_edge:          ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

sw.bb28.i.land.lhs.true30.i_crit_edge:            ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true30.i

land.lhs.true30.i:                                ; preds = %sw.bb28.i.land.lhs.true30.i_crit_edge, %if.end28.land.lhs.true30.i_crit_edge
  %dev31.i = getelementptr inbounds %struct.hnae_handle, ptr %30, i32 0, i32 1
  %52 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev31.i, align 4
  %ops32.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ops32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops32.i, align 4
  %set_loopback33.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %set_loopback33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_loopback33.i, align 4
  %tobool34.not.i = icmp eq ptr %57, null
  br i1 %tobool34.not.i, label %land.lhs.true30.i.if.then54.i_crit_edge, label %if.then35.i

land.lhs.true30.i.if.then54.i_crit_edge:          ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

if.then35.i:                                      ; preds = %land.lhs.true30.i
  %58 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ae_handle, align 4
  %phy_if37.i = getelementptr inbounds %struct.hnae_handle, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %phy_if37.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phy_if37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %61)
  %cmp38.not.i = icmp eq i32 %61, 15
  br i1 %cmp38.not.i, label %if.then35.i.if.then46.i_crit_edge, label %if.end44.i

if.then35.i.if.then46.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i

if.end44.i:                                       ; preds = %if.then35.i
  %call43.i = tail call i32 %57(ptr noundef %30, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool45.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.then46.i_crit_edge, label %if.end44.i.__lb_up.exit.thread_crit_edge

if.end44.i.__lb_up.exit.thread_crit_edge:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

if.end44.i.if.then46.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i

if.then46.i:                                      ; preds = %if.end44.i.if.then46.i_crit_edge, %if.then35.i.if.then46.i_crit_edge
  %62 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev31.i, align 4
  %ops48.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %ops48.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops48.i, align 4
  %set_loopback49.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %set_loopback49.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_loopback49.i, align 4
  %call50.i = tail call i32 %67(ptr noundef %30, i32 noundef 1, i32 noundef 0) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then46.i, %if.then20.i117, %if.then9.i, %if.then.i113
  %ret.2.i = phi i32 [ %call50.i, %if.then46.i ], [ %call24.i, %if.then20.i117 ], [ %call13.i, %if.then9.i ], [ %call2.i112, %if.then.i113 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool53.not.i = icmp eq i32 %ret.2.i, 0
  br i1 %tobool53.not.i, label %sw.epilog.i.if.then54.i_crit_edge, label %sw.epilog.i.__lb_up.exit.thread_crit_edge

sw.epilog.i.__lb_up.exit.thread_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

sw.epilog.i.if.then54.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

if.then54.i:                                      ; preds = %sw.epilog.i.if.then54.i_crit_edge, %land.lhs.true30.i.if.then54.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp55.i = icmp eq i32 %24, 4
  br i1 %cmp55.i, label %if.then56.i, label %if.then54.i.if.else.i118_crit_edge

if.then54.i.if.else.i118_crit_edge:               ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i118

if.then56.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev57.i = getelementptr inbounds %struct.hnae_handle, ptr %30, i32 0, i32 1
  %68 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev57.i, align 4
  %ops58.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %ops58.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops58.i, align 4
  %set_promisc_mode.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %71, i32 0, i32 23
  %72 = ptrtoint ptr %set_promisc_mode.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set_promisc_mode.i, align 4
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %75, 256
  tail call void %73(ptr noundef %30, i32 noundef %and.i) #10
  br label %if.end.i

if.else.i118:                                     ; preds = %if.then54.i.if.else.i118_crit_edge, %sw.bb15.i.if.else.i118_crit_edge, %land.lhs.true.i.if.else.i118_crit_edge, %sw.bb3.i.if.else.i118_crit_edge
  %dev59.i = getelementptr inbounds %struct.hnae_handle, ptr %30, i32 0, i32 1
  %76 = ptrtoint ptr %dev59.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev59.i, align 4
  %ops60.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %ops60.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops60.i, align 4
  %set_promisc_mode61.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %79, i32 0, i32 23
  %80 = ptrtoint ptr %set_promisc_mode61.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %set_promisc_mode61.i, align 4
  tail call void %81(ptr noundef %30, i32 noundef 1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i118, %if.then56.i
  tail call void @msleep(i32 noundef 200) #10
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %26, i32 0, i32 1
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %ops.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i, align 4
  %start.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %start.i, align 4
  %tobool2.not.i = icmp eq ptr %87, null
  br i1 %tobool2.not.i, label %if.end.i.if.then36_crit_edge, label %cond.end.i

if.end.i.if.then36_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

cond.end.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 %87(ptr noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %cond.end.i.if.then36_crit_edge, label %cond.end.i.__lb_up.exit.thread_crit_edge

cond.end.i.__lb_up.exit.thread_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_up.exit.thread

cond.end.i.if.then36_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

__lb_up.exit.thread:                              ; preds = %cond.end.i.__lb_up.exit.thread_crit_edge, %sw.epilog.i.__lb_up.exit.thread_crit_edge, %if.end44.i.__lb_up.exit.thread_crit_edge, %sw.bb28.i.__lb_up.exit.thread_crit_edge, %sw.bb26.i.__lb_up.exit.thread_crit_edge, %hns_nic_config_phy_loopback.exit.i.__lb_up.exit.thread_crit_edge, %sw.bb.i.__lb_up.exit.thread_crit_edge, %if.end28.__lb_up.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.i, %cond.end.i.__lb_up.exit.thread_crit_edge ], [ %call4.i.i, %sw.bb26.i.__lb_up.exit.thread_crit_edge ], [ %call.i.i108, %sw.bb.i.__lb_up.exit.thread_crit_edge ], [ %call8.i.i, %sw.bb28.i.__lb_up.exit.thread_crit_edge ], [ %call43.i, %if.end44.i.__lb_up.exit.thread_crit_edge ], [ %call3.i.i, %hns_nic_config_phy_loopback.exit.i.__lb_up.exit.thread_crit_edge ], [ -22, %if.end28.__lb_up.exit.thread_crit_edge ], [ %ret.2.i, %sw.epilog.i.__lb_up.exit.thread_crit_edge ]
  %conv32122 = sext i32 %retval.0.i.ph to i64
  %arrayidx33123 = getelementptr i64, ptr %data, i32 %test_index.0130
  %88 = ptrtoint ptr %arrayidx33123 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv32122, ptr %arrayidx33123, align 8
  br label %if.end45

if.then36:                                        ; preds = %cond.end.i.if.then36_crit_edge, %if.end.i.if.then36_crit_edge
  %89 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ae_handle, align 4
  %phy_if.i = getelementptr inbounds %struct.hnae_handle, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %phy_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %92)
  %cmp.not.i = icmp eq i32 %92, 15
  %..i = select i1 %cmp.not.i, i32 10000, i32 1000
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  %ops14.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %ops14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops14.i, align 4
  %adjust_link.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %adjust_link.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %adjust_link.i, align 4
  tail call void %98(ptr noundef %26, i32 noundef %..i, i32 noundef 1) #10
  tail call void @msleep(i32 noundef 300) #10
  %arrayidx33 = getelementptr i64, ptr %data, i32 %test_index.0130
  %99 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 0, ptr %arrayidx33, align 8
  %100 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ae_handle, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i85 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i85, label %if.then36.__lb_run_test.exit_crit_edge, label %if.end.i86

if.then36.__lb_run_test.exit_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_run_test.exit

if.end.i86:                                       ; preds = %if.then36
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 128) #10
  %102 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %ndev, ptr %102, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %104 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %106 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i, align 4
  %108 = call ptr @memset(ptr %107, i32 255, i32 %105)
  %109 = ptrtoint ptr %enet_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %enet_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %110)
  %cmp.i.i = icmp eq i32 %110, 3552816
  br i1 %cmp.i.i, label %if.end.i86.__lb_other_process.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i86.__lb_other_process.exit.i_crit_edge:   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_other_process.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i86
  %111 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ae_handle, align 4
  %port_type.i.i = getelementptr inbounds %struct.hnae_handle, ptr %112, i32 0, i32 13
  %113 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp1.i.i = icmp eq i32 %114, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %land.lhs.true.i.i.__lb_other_process.exit.i_crit_edge

land.lhs.true.i.i.__lb_other_process.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_other_process.exit.i

if.then2.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i.i, align 4
  %117 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_addr.i.i, align 64
  %119 = call ptr @memcpy(ptr %116, ptr %118, i32 6)
  %120 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %120, i32 5
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i.i, align 1
  %add.i.i = add i8 %122, 31
  store i8 %add.i.i, ptr %arrayidx.i.i, align 1
  br label %__lb_other_process.exit.i

__lb_other_process.exit.i:                        ; preds = %if.then2.i.i, %land.lhs.true.i.i.__lb_other_process.exit.i_crit_edge, %if.end.i86.__lb_other_process.exit.i_crit_edge
  %123 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data.i.i, align 4
  %div137.i.i = lshr i32 %105, 1
  %arrayidx7.i.i = getelementptr i8, ptr %124, i32 %div137.i.i
  %sub.i.i = add nsw i32 %div137.i.i, -1
  %125 = call ptr @memset(ptr %arrayidx7.i.i, i32 170, i32 %sub.i.i)
  %126 = load ptr, ptr %data.i.i, align 4
  %add11.i.i = add nuw i32 %div137.i.i, 10
  %arrayidx12.i.i = getelementptr i8, ptr %126, i32 %add11.i.i
  %sub14.i.i = add nsw i32 %div137.i.i, -11
  %127 = call ptr @memset(ptr %arrayidx12.i.i, i32 190, i32 %sub14.i.i)
  %128 = load ptr, ptr %data.i.i, align 4
  %add17.i.i = add nuw i32 %div137.i.i, 12
  %arrayidx18.i.i = getelementptr i8, ptr %128, i32 %add17.i.i
  %sub20.i.i = add nsw i32 %div137.i.i, -13
  %129 = call ptr @memset(ptr %arrayidx18.i.i, i32 175, i32 %sub20.i.i)
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %130 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %queue_mapping.i, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %131 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !119
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %__lb_other_process.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !120

__lb_other_process.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %__lb_other_process.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__lb_other_process.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %132 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %132)
  %.not.i.i.i.i.i = icmp sgt i32 %132, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !121

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %__lb_other_process.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %__lb_other_process.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %133 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ring_data.i, align 4
  %135 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %queue_mapping.i, align 8
  %idxprom.i = zext i16 %136 to i32
  %arrayidx.i = getelementptr %struct.hns_nic_ring_data, ptr %134, i32 %idxprom.i
  %call8.i = tail call i32 @hns_nic_net_xmit_hw(ptr noundef %ndev, ptr noundef nonnull %call.i.i, ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i87, align 8
  %arrayidx15.i = getelementptr [3 x [32 x i8]], ptr @hns_nic_test_strs, i32 0, i32 %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.5, ptr noundef %arrayidx15.i, i32 noundef 0, i32 noundef 1) #13
  br label %for.end31.i

if.end16.i:                                       ; preds = %skb_get.exit.i
  tail call void @msleep(i32 noundef 100) #10
  %q_num.i = getelementptr inbounds %struct.hnae_handle, ptr %101, i32 0, i32 5
  %139 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %q_num.i, align 4
  %mul.i = shl i32 %140, 1
  %sub.i = add i32 %mul.i, -1
  %141 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %netdev.i.i, align 4
  %stats.i.i = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 36
  %143 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %stats.i.i, align 8
  %rx_bytes3.i.i = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 36, i32 2
  %145 = ptrtoint ptr %rx_bytes3.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rx_bytes3.i.i, align 8
  %rx_frame_errors5.i.i = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 36, i32 13
  %147 = ptrtoint ptr %rx_frame_errors5.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rx_frame_errors5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %sub.i)
  %cmp.not26.i.i = icmp sgt i32 %140, %sub.i
  br i1 %cmp.not26.i.i, label %if.end16.i.__lb_clean_rings.exit.i_crit_edge, label %if.end16.i.for.body.i.i_crit_edge

if.end16.i.for.body.i.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body.i.i

if.end16.i.__lb_clean_rings.exit.i_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_clean_rings.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end16.i.for.body.i.i_crit_edge
  %i.027.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %140, %if.end16.i.for.body.i.i_crit_edge ]
  %149 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ring_data.i, align 4
  %arrayidx.i65.i = getelementptr %struct.hns_nic_ring_data, ptr %150, i32 %i.027.i.i
  %poll_one.i.i = getelementptr %struct.hns_nic_ring_data, ptr %150, i32 %i.027.i.i, i32 4
  %151 = ptrtoint ptr %poll_one.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %poll_one.i.i, align 8
  %call.i66.i = tail call i32 %152(ptr noundef %arrayidx.i65.i, i32 noundef 1, ptr noundef nonnull @__lb_other_process) #10
  %inc.i.i = add i32 %i.027.i.i, 1
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %sub.i
  br i1 %cmp.not.i.i, label %for.body.i.i.__lb_clean_rings.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.__lb_clean_rings.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_clean_rings.exit.i

__lb_clean_rings.exit.i:                          ; preds = %for.body.i.i.__lb_clean_rings.exit.i_crit_edge, %if.end16.i.__lb_clean_rings.exit.i_crit_edge
  %153 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %stats.i.i, align 8
  %sub.i67.i = sub i32 %154, %144
  store i32 %144, ptr %stats.i.i, align 8
  %155 = ptrtoint ptr %rx_bytes3.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %146, ptr %rx_bytes3.i.i, align 8
  %156 = ptrtoint ptr %rx_frame_errors5.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %148, ptr %rx_frame_errors5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i67.i)
  %cmp19.not.i = icmp eq i32 %sub.i67.i, 1
  br i1 %cmp19.not.i, label %if.end27.i, label %if.then20.i

if.then20.i:                                      ; preds = %__lb_clean_rings.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i87, align 8
  %arrayidx25.i = getelementptr [3 x [32 x i8]], ptr @hns_nic_test_strs, i32 0, i32 %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.11, ptr noundef %arrayidx25.i, i32 noundef %sub.i67.i, i32 noundef 1) #13
  br label %for.end31.i

if.end27.i:                                       ; preds = %__lb_clean_rings.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %netdev.i.i, align 4
  %stats.i69.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 36
  %161 = ptrtoint ptr %stats.i69.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %stats.i69.i, align 8
  %rx_bytes3.i70.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 36, i32 2
  %163 = ptrtoint ptr %rx_bytes3.i70.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rx_bytes3.i70.i, align 8
  %rx_frame_errors5.i71.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 36, i32 13
  %165 = ptrtoint ptr %rx_frame_errors5.i71.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rx_frame_errors5.i71.i, align 4
  %167 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ring_data.i, align 4
  %poll_one.i76.i = getelementptr %struct.hns_nic_ring_data, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %poll_one.i76.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %poll_one.i76.i, align 8
  %call.i77.i = tail call i32 %170(ptr noundef %168, i32 noundef 1, ptr noundef nonnull @__lb_other_process) #10
  %171 = ptrtoint ptr %stats.i69.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %162, ptr %stats.i69.i, align 8
  %172 = ptrtoint ptr %rx_bytes3.i70.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %164, ptr %rx_bytes3.i70.i, align 8
  %173 = ptrtoint ptr %rx_frame_errors5.i71.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %166, ptr %rx_frame_errors5.i71.i, align 4
  br label %for.end31.i

for.end31.i:                                      ; preds = %if.end27.i, %if.then20.i, %if.then14.i
  %ret_val.0.i = phi i32 [ 2, %if.then14.i ], [ 3, %if.then20.i ], [ 0, %if.end27.i ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %__lb_run_test.exit

__lb_run_test.exit:                               ; preds = %for.end31.i, %if.then36.__lb_run_test.exit_crit_edge
  %retval.0.i88 = phi i32 [ %ret_val.0.i, %for.end31.i ], [ 1, %if.then36.__lb_run_test.exit_crit_edge ]
  %conv40127 = zext i32 %retval.0.i88 to i64
  %174 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv40127, ptr %arrayidx33, align 8
  %175 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ae_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i = icmp eq i32 %24, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %__lb_run_test.exit
  %177 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %phydev.i, align 16
  %call4.i.i.i = tail call i32 @phy_loopback(ptr noundef %178, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %sw.bb28.i.i, label %if.then.i.if.then3.i_crit_edge

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

sw.bb28.i.i:                                      ; preds = %if.then.i
  %call8.i.i.i = tail call i32 @phy_suspend(ptr noundef %178) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool29.not.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool29.not.i.i, label %land.lhs.true30.i.i, label %sw.bb28.i.i.if.then3.i_crit_edge

sw.bb28.i.i.if.then3.i_crit_edge:                 ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

land.lhs.true30.i.i:                              ; preds = %sw.bb28.i.i
  %dev31.i.i = getelementptr inbounds %struct.hnae_handle, ptr %176, i32 0, i32 1
  %179 = ptrtoint ptr %dev31.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev31.i.i, align 4
  %ops32.i.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %ops32.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ops32.i.i, align 4
  %set_loopback33.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %182, i32 0, i32 14
  %183 = ptrtoint ptr %set_loopback33.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %set_loopback33.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %184, null
  br i1 %tobool34.not.i.i, label %land.lhs.true30.i.i.if.then54.i.i_crit_edge, label %if.then35.i.i

land.lhs.true30.i.i.if.then54.i.i_crit_edge:      ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true30.i.i
  %185 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ae_handle, align 4
  %phy_if37.i.i = getelementptr inbounds %struct.hnae_handle, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %phy_if37.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %phy_if37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %188)
  %cmp38.not.i.i = icmp eq i32 %188, 15
  br i1 %cmp38.not.i.i, label %if.then35.i.i.if.then46.i.i_crit_edge, label %if.end44.i.i

if.then35.i.i.if.then46.i.i_crit_edge:            ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

if.end44.i.i:                                     ; preds = %if.then35.i.i
  %call43.i.i = tail call i32 %184(ptr noundef %176, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool45.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end44.i.i.if.then46.i.i_crit_edge, label %if.end44.i.i.if.then3.i_crit_edge

if.end44.i.i.if.then3.i_crit_edge:                ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end44.i.i.if.then46.i.i_crit_edge:             ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.end44.i.i.if.then46.i.i_crit_edge, %if.then35.i.i.if.then46.i.i_crit_edge
  %189 = ptrtoint ptr %dev31.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev31.i.i, align 4
  %ops48.i.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %ops48.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ops48.i.i, align 4
  %set_loopback49.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %192, i32 0, i32 14
  %193 = ptrtoint ptr %set_loopback49.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %set_loopback49.i.i, align 4
  %call50.i.i = tail call i32 %194(ptr noundef %176, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool53.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool53.not.i.i, label %if.then46.i.i.if.then54.i.i_crit_edge, label %if.then46.i.i.if.then3.i_crit_edge

if.then46.i.i.if.then3.i_crit_edge:               ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then46.i.i.if.then54.i.i_crit_edge:            ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i.i

if.then54.i.i:                                    ; preds = %if.then46.i.i.if.then54.i.i_crit_edge, %land.lhs.true30.i.i.if.then54.i.i_crit_edge
  %195 = ptrtoint ptr %dev31.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev31.i.i, align 4
  %ops60.i.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %ops60.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ops60.i.i, align 4
  %set_promisc_mode61.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %198, i32 0, i32 23
  %199 = ptrtoint ptr %set_promisc_mode61.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %set_promisc_mode61.i.i, align 4
  tail call void %200(ptr noundef %176, i32 noundef 1) #10
  br label %if.end4.i

if.else.i:                                        ; preds = %__lb_run_test.exit
  %dev31.i3.i = getelementptr inbounds %struct.hnae_handle, ptr %176, i32 0, i32 1
  %201 = ptrtoint ptr %dev31.i3.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev31.i3.i, align 4
  %ops32.i4.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %ops32.i4.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ops32.i4.i, align 4
  %set_loopback33.i5.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %204, i32 0, i32 14
  %205 = ptrtoint ptr %set_loopback33.i5.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %set_loopback33.i5.i, align 4
  %tobool34.not.i6.i = icmp eq ptr %206, null
  br i1 %tobool34.not.i6.i, label %if.else.i.if.then54.i19.i_crit_edge, label %if.then35.i10.i

if.else.i.if.then54.i19.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i19.i

if.then35.i10.i:                                  ; preds = %if.else.i
  %phy_if37.i8.i = getelementptr inbounds %struct.hnae_handle, ptr %176, i32 0, i32 3
  %207 = ptrtoint ptr %phy_if37.i8.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %phy_if37.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %208)
  %cmp38.not.i9.i = icmp eq i32 %208, 15
  br i1 %cmp38.not.i9.i, label %if.then35.i10.i.if.then46.i17.i_crit_edge, label %if.end44.i13.i

if.then35.i10.i.if.then46.i17.i_crit_edge:        ; preds = %if.then35.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i17.i

if.end44.i13.i:                                   ; preds = %if.then35.i10.i
  %call43.i11.i = tail call i32 %206(ptr noundef %176, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i11.i)
  %tobool45.not.i12.i = icmp eq i32 %call43.i11.i, 0
  br i1 %tobool45.not.i12.i, label %if.end44.i13.i.if.then46.i17.i_crit_edge, label %if.end44.i13.i.if.then3.i_crit_edge

if.end44.i13.i.if.then3.i_crit_edge:              ; preds = %if.end44.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.end44.i13.i.if.then46.i17.i_crit_edge:         ; preds = %if.end44.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i17.i

if.then46.i17.i:                                  ; preds = %if.end44.i13.i.if.then46.i17.i_crit_edge, %if.then35.i10.i.if.then46.i17.i_crit_edge
  %209 = ptrtoint ptr %dev31.i3.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev31.i3.i, align 4
  %ops48.i14.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %ops48.i14.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ops48.i14.i, align 4
  %set_loopback49.i15.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %212, i32 0, i32 14
  %213 = ptrtoint ptr %set_loopback49.i15.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %set_loopback49.i15.i, align 4
  %call50.i16.i = tail call i32 %214(ptr noundef %176, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i16.i)
  %tobool53.not.i18.i = icmp eq i32 %call50.i16.i, 0
  br i1 %tobool53.not.i18.i, label %if.then46.i17.i.if.then54.i19.i_crit_edge, label %if.then46.i17.i.if.then3.i_crit_edge

if.then46.i17.i.if.then3.i_crit_edge:             ; preds = %if.then46.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then46.i17.i.if.then54.i19.i_crit_edge:        ; preds = %if.then46.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i19.i

if.then54.i19.i:                                  ; preds = %if.then46.i17.i.if.then54.i19.i_crit_edge, %if.else.i.if.then54.i19.i_crit_edge
  %215 = ptrtoint ptr %dev31.i3.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev31.i3.i, align 4
  %ops58.i.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %ops58.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ops58.i.i, align 4
  %set_promisc_mode.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %218, i32 0, i32 23
  %219 = ptrtoint ptr %set_promisc_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %set_promisc_mode.i.i, align 4
  %221 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %222, 256
  tail call void %220(ptr noundef %176, i32 noundef %and.i.i) #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then46.i17.i.if.then3.i_crit_edge, %if.end44.i13.i.if.then3.i_crit_edge, %if.then46.i.i.if.then3.i_crit_edge, %if.end44.i.i.if.then3.i_crit_edge, %sw.bb28.i.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call43.i11.i, %if.end44.i13.i.if.then3.i_crit_edge ], [ %call50.i16.i, %if.then46.i17.i.if.then3.i_crit_edge ], [ %call4.i.i.i, %if.then.i.if.then3.i_crit_edge ], [ %call8.i.i.i, %sw.bb28.i.i.if.then3.i_crit_edge ], [ %call43.i.i, %if.end44.i.i.if.then3.i_crit_edge ], [ %call50.i.i, %if.then46.i.i.if.then3.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.__lb_down, i32 noundef %ret.0.ph.i) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then54.i19.i, %if.then54.i.i
  %dev.i90 = getelementptr inbounds %struct.hnae_handle, ptr %176, i32 0, i32 1
  %223 = ptrtoint ptr %dev.i90 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i90, align 4
  %ops.i91 = getelementptr inbounds %struct.hnae_ae_dev, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %ops.i91 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ops.i91, align 4
  %stop.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %226, i32 0, i32 5
  %227 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %stop.i, align 4
  %tobool5.not.i = icmp eq ptr %228, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end10.i_crit_edge, label %if.then6.i

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %228(ptr noundef %176) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end10.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %q_num.i92 = getelementptr inbounds %struct.hnae_handle, ptr %176, i32 0, i32 5
  %229 = ptrtoint ptr %q_num.i92 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %q_num.i92, align 4
  %sub.i93 = add i32 %230, -1
  %231 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %netdev.i.i, align 4
  %stats.i.i95 = getelementptr inbounds %struct.net_device, ptr %232, i32 0, i32 36
  %233 = ptrtoint ptr %stats.i.i95 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %stats.i.i95, align 8
  %rx_bytes3.i.i96 = getelementptr inbounds %struct.net_device, ptr %232, i32 0, i32 36, i32 2
  %235 = ptrtoint ptr %rx_bytes3.i.i96 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %rx_bytes3.i.i96, align 8
  %rx_frame_errors5.i.i97 = getelementptr inbounds %struct.net_device, ptr %232, i32 0, i32 36, i32 13
  %237 = ptrtoint ptr %rx_frame_errors5.i.i97 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %rx_frame_errors5.i.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i93)
  %cmp.not26.i.i98 = icmp slt i32 %sub.i93, 0
  br i1 %cmp.not26.i.i98, label %if.end10.i.__lb_down.exit_crit_edge, label %if.end10.i.for.body.i.i105_crit_edge

if.end10.i.for.body.i.i105_crit_edge:             ; preds = %if.end10.i
  br label %for.body.i.i105

if.end10.i.__lb_down.exit_crit_edge:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_down.exit

for.body.i.i105:                                  ; preds = %for.body.i.i105.for.body.i.i105_crit_edge, %if.end10.i.for.body.i.i105_crit_edge
  %i.027.i.i99 = phi i32 [ %inc.i.i103, %for.body.i.i105.for.body.i.i105_crit_edge ], [ 0, %if.end10.i.for.body.i.i105_crit_edge ]
  %239 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ring_data.i, align 4
  %arrayidx.i.i100 = getelementptr %struct.hns_nic_ring_data, ptr %240, i32 %i.027.i.i99
  %poll_one.i.i101 = getelementptr %struct.hns_nic_ring_data, ptr %240, i32 %i.027.i.i99, i32 4
  %241 = ptrtoint ptr %poll_one.i.i101 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %poll_one.i.i101, align 8
  %call.i.i102 = tail call i32 %242(ptr noundef %arrayidx.i.i100, i32 noundef 256, ptr noundef nonnull @__lb_other_process) #10
  %inc.i.i103 = add i32 %i.027.i.i99, 1
  %cmp.not.i.i104 = icmp sgt i32 %inc.i.i103, %sub.i93
  br i1 %cmp.not.i.i104, label %for.body.i.i105.__lb_down.exit_crit_edge, label %for.body.i.i105.for.body.i.i105_crit_edge

for.body.i.i105.for.body.i.i105_crit_edge:        ; preds = %for.body.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i105

for.body.i.i105.__lb_down.exit_crit_edge:         ; preds = %for.body.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %__lb_down.exit

__lb_down.exit:                                   ; preds = %for.body.i.i105.__lb_down.exit_crit_edge, %if.end10.i.__lb_down.exit_crit_edge
  %243 = ptrtoint ptr %stats.i.i95 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %234, ptr %stats.i.i95, align 8
  %244 = ptrtoint ptr %rx_bytes3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %236, ptr %rx_bytes3.i.i96, align 8
  %245 = ptrtoint ptr %rx_frame_errors5.i.i97 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %238, ptr %rx_frame_errors5.i.i97, align 4
  tail call void @hns_nic_net_reset(ptr noundef %ndev) #10
  %246 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %246)
  %.pr = load i64, ptr %arrayidx33, align 8
  br label %if.end45

if.end45:                                         ; preds = %__lb_down.exit, %__lb_up.exit.thread
  %247 = phi i64 [ %conv32122, %__lb_up.exit.thread ], [ %.pr, %__lb_down.exit ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %247)
  %tobool47.not = icmp eq i64 %247, 0
  br i1 %tobool47.not, label %if.end45.if.end50_crit_edge, label %if.then48

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %flags, align 4
  %or = or i32 %249, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45.if.end50_crit_edge
  %inc = add i32 %test_index.0130, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %for.body.for.inc_crit_edge
  %test_index.1 = phi i32 [ %inc, %if.end50 ], [ %test_index.0130, %for.body.for.inc_crit_edge ]
  %inc51 = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc51, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %250 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %netdev.i.i, align 4
  tail call void @hns_nic_net_reset(ptr noundef %251) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #10
  br i1 %tobool.i.not, label %for.end.if.end57_crit_edge, label %if.then54

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 @dev_open(ptr noundef %ndev, ptr noundef null) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %for.end.if.end57_crit_edge, %entry.if.end57_crit_edge
  %call58 = tail call i32 @msleep_interruptible(i32 noundef 4000) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %st_param) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %data) #2 align 64 {
entry:
  %buff = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buff) #10
  %2 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %buff, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %get_strings = getelementptr inbounds %struct.hnae_ae_ops, ptr %6, i32 0, i32 34
  %7 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_strings, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %phy_if = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp3.not = icmp eq i32 %10, 15
  br i1 %cmp3.not, label %if.then1.if.end5_crit_edge, label %if.then4

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @hns_nic_test_strs) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then1.if.end5_crit_edge
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef getelementptr inbounds ([3 x [32 x i8]], ptr @hns_nic_test_strs, i32 0, i32 1)) #10
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %11 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phydev, align 16
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %is_c45 = getelementptr inbounds %struct.phy_device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %is_c45 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %is_c45, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool8.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef getelementptr inbounds ([3 x [32 x i8]], ptr @hns_nic_test_strs, i32 0, i32 2)) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.19) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.20) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.21) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.22) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.23) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.24) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.25) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.26) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.27) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.28) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.29) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.30) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.31) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.32) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.33) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.34) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.35) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.36) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.37) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.38) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.39) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.40) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.41) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.42) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.43) #10
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.44) #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %ops12 = getelementptr inbounds %struct.hnae_ae_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops12, align 4
  %get_strings13 = getelementptr inbounds %struct.hnae_ae_ops, ptr %17, i32 0, i32 34
  %18 = ptrtoint ptr %get_strings13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_strings13, align 4
  %20 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buff, align 4
  call void %19(ptr noundef %1, i32 noundef %stringset, ptr noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buff) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_set_phys_id(ptr noundef %netdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %state, label %if.then.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
    i32 0, label %sw.bb19
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 22, i16 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i89 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 16) #10
  %phy_led_val = getelementptr i8, ptr %netdev, i32 2320
  %13 = ptrtoint ptr %phy_led_val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i89, ptr %phy_led_val, align 8
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i92 = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 22, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool6.not = icmp eq i32 %call.i92, 0
  %.call5 = select i1 %tobool6.not, i32 2, i32 %call.i92
  br label %cleanup

sw.bb9:                                           ; preds = %if.then
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 22, i16 noundef zeroext 3) #10
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i14.i = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 16, i16 noundef zeroext 9) #10
  %or.i = or i32 %call.i14.i, %call.i.i
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i.i, align 8
  %call.i17.i = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 22, i16 noundef zeroext 0) #10
  %or4.i = or i32 %or.i, %call.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.i)
  %tobool.not.i = icmp eq i32 %or4.i, 0
  br i1 %tobool.not.i, label %sw.bb9.if.end51_crit_edge, label %hns_phy_led_set.exit

sw.bb9.if.end51_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

hns_phy_led_set.exit:                             ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.45) #13
  br label %cleanup

sw.bb14:                                          ; preds = %if.then
  %bus.i.i94 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %bus.i.i94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i94, align 8
  %addr.i.i95 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %addr.i.i95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i95, align 8
  %call.i.i96 = tail call i32 @mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 22, i16 noundef zeroext 3) #10
  %34 = ptrtoint ptr %bus.i.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i94, align 8
  %36 = ptrtoint ptr %addr.i.i95 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i.i95, align 8
  %call.i14.i97 = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 16, i16 noundef zeroext 8) #10
  %or.i98 = or i32 %call.i14.i97, %call.i.i96
  %38 = ptrtoint ptr %bus.i.i94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i.i94, align 8
  %40 = ptrtoint ptr %addr.i.i95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i.i95, align 8
  %call.i17.i99 = tail call i32 @mdiobus_write(ptr noundef %39, i32 noundef %41, i32 noundef 22, i16 noundef zeroext 0) #10
  %or4.i100 = or i32 %or.i98, %call.i17.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.i100)
  %tobool.not.i101 = icmp eq i32 %or4.i100, 0
  br i1 %tobool.not.i101, label %sw.bb14.if.end51_crit_edge, label %hns_phy_led_set.exit103

sw.bb14.if.end51_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

hns_phy_led_set.exit103:                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.45) #13
  br label %cleanup

sw.bb19:                                          ; preds = %if.then
  %bus.i104 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %42 = ptrtoint ptr %bus.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i104, align 8
  %addr.i105 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %44 = ptrtoint ptr %addr.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i105, align 8
  %call.i106 = tail call i32 @mdiobus_write(ptr noundef %43, i32 noundef %45, i32 noundef 22, i16 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool21.not = icmp eq i32 %call.i106, 0
  br i1 %tobool21.not, label %if.end23, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  %phy_led_val24 = getelementptr i8, ptr %netdev, i32 2320
  %46 = ptrtoint ptr %phy_led_val24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phy_led_val24, align 8
  %conv = trunc i32 %47 to i16
  %48 = ptrtoint ptr %bus.i104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i104, align 8
  %50 = ptrtoint ptr %addr.i105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i105, align 8
  %call.i109 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 16, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool26.not = icmp eq i32 %call.i109, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %52 = ptrtoint ptr %bus.i104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i104, align 8
  %54 = ptrtoint ptr %addr.i105 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i105, align 8
  %call.i112 = tail call i32 @mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 22, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool30.not = icmp eq i32 %call.i112, 0
  br i1 %tobool30.not, label %if.end28.if.end51_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else:                                          ; preds = %entry
  %56 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %state, label %if.else.cleanup_crit_edge [
    i32 1, label %sw.bb33
    i32 2, label %sw.bb35
    i32 3, label %sw.bb40
    i32 0, label %sw.bb45
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %set_led_id = getelementptr inbounds %struct.hnae_ae_ops, ptr %60, i32 0, i32 37
  %61 = ptrtoint ptr %set_led_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_led_id, align 4
  %call34 = tail call i32 %62(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup

sw.bb35:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev36 = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev36, align 4
  %ops37 = getelementptr inbounds %struct.hnae_ae_dev, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %ops37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops37, align 4
  %set_led_id38 = getelementptr inbounds %struct.hnae_ae_ops, ptr %66, i32 0, i32 37
  %67 = ptrtoint ptr %set_led_id38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_led_id38, align 4
  %call39 = tail call i32 %68(ptr noundef %1, i32 noundef 2) #10
  br label %cleanup

sw.bb40:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev41 = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev41, align 4
  %ops42 = getelementptr inbounds %struct.hnae_ae_dev, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %ops42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops42, align 4
  %set_led_id43 = getelementptr inbounds %struct.hnae_ae_ops, ptr %72, i32 0, i32 37
  %73 = ptrtoint ptr %set_led_id43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_led_id43, align 4
  %call44 = tail call i32 %74(ptr noundef %1, i32 noundef 3) #10
  br label %cleanup

sw.bb45:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev46 = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev46, align 4
  %ops47 = getelementptr inbounds %struct.hnae_ae_dev, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %ops47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops47, align 4
  %set_led_id48 = getelementptr inbounds %struct.hnae_ae_ops, ptr %78, i32 0, i32 37
  %79 = ptrtoint ptr %set_led_id48 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_led_id48, align 4
  %call49 = tail call i32 %80(ptr noundef %1, i32 noundef 0) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end28.if.end51_crit_edge, %sw.bb14.if.end51_crit_edge, %sw.bb9.if.end51_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %sw.bb45, %sw.bb40, %sw.bb35, %sw.bb33, %if.else.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %hns_phy_led_set.exit103, %hns_phy_led_set.exit, %if.end, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %call49, %sw.bb45 ], [ %call44, %sw.bb40 ], [ %call39, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %.call5, %if.end ], [ %or4.i, %hns_phy_led_set.exit ], [ %or4.i100, %hns_phy_led_set.exit103 ], [ %call.i106, %sw.bb19.cleanup_crit_edge ], [ %call.i109, %if.end23.cleanup_crit_edge ], [ %call.i112, %if.end28.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr noundef %data) #2 align 64 {
entry:
  %temp = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp) #10
  %2 = call ptr @memset(ptr %temp, i32 255, i32 192)
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %get_stats = getelementptr inbounds %struct.hnae_ae_ops, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_stats, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %update_stats = getelementptr inbounds %struct.hnae_ae_ops, ptr %6, i32 0, i32 32
  %9 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %update_stats, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %stats7 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  tail call void %10(ptr noundef %1, ptr noundef %stats7) #10
  %call8 = call ptr @dev_get_stats(ptr noundef %netdev, ptr noundef nonnull %temp) #10
  %11 = ptrtoint ptr %call8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %call8, align 8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %data, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 1
  %14 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_packets, align 8
  %arrayidx9 = getelementptr i64, ptr %data, i32 1
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx9, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 2
  %17 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_bytes, align 8
  %arrayidx10 = getelementptr i64, ptr %data, i32 2
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx10, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 3
  %20 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_bytes, align 8
  %arrayidx11 = getelementptr i64, ptr %data, i32 3
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx11, align 8
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 4
  %23 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_errors, align 8
  %arrayidx12 = getelementptr i64, ptr %data, i32 4
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx12, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 5
  %26 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_errors, align 8
  %arrayidx13 = getelementptr i64, ptr %data, i32 5
  %28 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx13, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 6
  %29 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_dropped, align 8
  %arrayidx14 = getelementptr i64, ptr %data, i32 6
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx14, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 7
  %32 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_dropped, align 8
  %arrayidx15 = getelementptr i64, ptr %data, i32 7
  %34 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx15, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 8
  %35 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %multicast, align 8
  %arrayidx16 = getelementptr i64, ptr %data, i32 8
  %37 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx16, align 8
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 9
  %38 = ptrtoint ptr %collisions to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %collisions, align 8
  %arrayidx17 = getelementptr i64, ptr %data, i32 9
  %40 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx17, align 8
  %rx_over_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 11
  %41 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_over_errors, align 8
  %arrayidx18 = getelementptr i64, ptr %data, i32 10
  %43 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx18, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 12
  %44 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_crc_errors, align 8
  %arrayidx19 = getelementptr i64, ptr %data, i32 11
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %arrayidx19, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 13
  %47 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_frame_errors, align 8
  %arrayidx20 = getelementptr i64, ptr %data, i32 12
  %49 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx20, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 14
  %50 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_fifo_errors, align 8
  %arrayidx21 = getelementptr i64, ptr %data, i32 13
  %52 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx21, align 8
  %rx_missed_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 15
  %53 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_missed_errors, align 8
  %arrayidx22 = getelementptr i64, ptr %data, i32 14
  %55 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx22, align 8
  %tx_aborted_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 16
  %56 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tx_aborted_errors, align 8
  %arrayidx23 = getelementptr i64, ptr %data, i32 15
  %58 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx23, align 8
  %tx_carrier_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 17
  %59 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tx_carrier_errors, align 8
  %arrayidx24 = getelementptr i64, ptr %data, i32 16
  %61 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx24, align 8
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 18
  %62 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tx_fifo_errors, align 8
  %arrayidx25 = getelementptr i64, ptr %data, i32 17
  %64 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx25, align 8
  %tx_heartbeat_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 19
  %65 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tx_heartbeat_errors, align 8
  %arrayidx26 = getelementptr i64, ptr %data, i32 18
  %67 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx26, align 8
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 10
  %68 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rx_length_errors, align 8
  %arrayidx27 = getelementptr i64, ptr %data, i32 19
  %70 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx27, align 8
  %tx_window_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 20
  %71 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tx_window_errors, align 8
  %arrayidx28 = getelementptr i64, ptr %data, i32 20
  %73 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx28, align 8
  %rx_compressed = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 21
  %74 = ptrtoint ptr %rx_compressed to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %rx_compressed, align 8
  %arrayidx29 = getelementptr i64, ptr %data, i32 21
  %76 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %arrayidx29, align 8
  %tx_compressed = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call8, i32 0, i32 22
  %77 = ptrtoint ptr %tx_compressed to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tx_compressed, align 8
  %arrayidx30 = getelementptr i64, ptr %data, i32 22
  %79 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %arrayidx30, align 8
  %rx_dropped31 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 37
  %80 = ptrtoint ptr %rx_dropped31 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_dropped31, align 4
  %conv = sext i32 %81 to i64
  %arrayidx32 = getelementptr i64, ptr %data, i32 23
  %82 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv, ptr %arrayidx32, align 8
  %tx_dropped33 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 38
  %83 = ptrtoint ptr %tx_dropped33 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_dropped33, align 8
  %conv35 = sext i32 %84 to i64
  %arrayidx36 = getelementptr i64, ptr %data, i32 24
  %85 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv35, ptr %arrayidx36, align 8
  %tx_timeout_count = getelementptr i8, ptr %netdev, i32 2360
  %86 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %tx_timeout_count, align 8
  %arrayidx37 = getelementptr i64, ptr %data, i32 25
  %88 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %arrayidx37, align 8
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 4
  %ops39 = getelementptr inbounds %struct.hnae_ae_dev, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %ops39 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops39, align 4
  %get_stats40 = getelementptr inbounds %struct.hnae_ae_ops, ptr %92, i32 0, i32 33
  %93 = ptrtoint ptr %get_stats40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %get_stats40, align 4
  %arrayidx41 = getelementptr i64, ptr %data, i32 26
  call void %94(ptr noundef %1, ptr noundef %arrayidx41) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_get_sset_count(ptr noundef %netdev, i32 noundef %stringset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %get_sset_count = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_sset_count, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %stringset, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then2
    i32 1, label %if.then14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %phy_if = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp4 = icmp eq i32 %10, 15
  %spec.select = select i1 %cmp4, i32 2, i32 3
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %11 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phydev, align 16
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.then2.if.then10_crit_edge, label %lor.lhs.false

if.then2.if.then10_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then2
  %is_c45 = getelementptr inbounds %struct.phy_device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %is_c45 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %is_c45, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool9.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.then2.if.then10_crit_edge
  %dec11 = add nsw i32 %spec.select, -1
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 %7(ptr noundef %1, i32 noundef 1) #10
  %add = add i32 %call16, 26
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then10, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %add, %if.then14 ], [ -95, %if.then ], [ %dec11, %if.then10 ], [ %spec.select, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hns_get_rxnfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %cmd, ptr nocapture noundef readnone %rule_locs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %1)
  %cond = icmp eq i32 %1, 45
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %2 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_handle, align 4
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_num, align 4
  %conv = sext i32 %5 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_get_rss_key_size(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_ver = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %2 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1, align 4
  %get_rss_key_size = getelementptr inbounds %struct.hnae_ae_ops, ptr %7, i32 0, i32 40
  %8 = ptrtoint ptr %get_rss_key_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rss_key_size, align 4
  %call3 = tail call i32 %9(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_get_rss_indir_size(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_ver = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %2 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1, align 4
  %get_rss_indir_size = getelementptr inbounds %struct.hnae_ae_ops, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %get_rss_indir_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rss_indir_size, align 4
  %call3 = tail call i32 %9(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_get_rss(ptr noundef %netdev, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_ver = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %2 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1, align 4
  %get_rss = getelementptr inbounds %struct.hnae_ae_ops, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %get_rss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rss, align 4
  %call5 = tail call i32 %9(ptr noundef %3, ptr noundef nonnull %indir, ptr noundef %key, ptr noundef %hfunc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ %call5, %if.end3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_set_rss(ptr noundef %netdev, ptr noundef %indir, ptr noundef %key, i8 noundef zeroext %hfunc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_ver = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.49) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %2 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ops1 = getelementptr inbounds %struct.hnae_ae_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1, align 4
  %set_rss = getelementptr inbounds %struct.hnae_ae_ops, ptr %7, i32 0, i32 43
  %8 = ptrtoint ptr %set_rss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rss, align 4
  %call10 = tail call i32 %9(ptr noundef %3, ptr noundef %indir, ptr noundef %key, i8 noundef zeroext %hfunc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then7 ], [ %call10, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hns_get_channels(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef writeonly %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_num, align 4
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %max_rx, align 4
  %5 = load ptr, ptr %ae_handle, align 4
  %q_num2 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %q_num2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_num2, align 4
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 2
  %8 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_tx, align 4
  %9 = load ptr, ptr %ae_handle, align 4
  %q_num4 = getelementptr inbounds %struct.hnae_handle, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %q_num4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_num4, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %12 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_count, align 4
  %13 = load ptr, ptr %ae_handle, align 4
  %q_num6 = getelementptr inbounds %struct.hnae_handle, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %q_num6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_num6, align 4
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %16 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_get_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) #2 align 64 {
entry:
  %duplex = alloca i8, align 1
  %speed = alloca i16, align 2
  %supported = alloca i32, align 4
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %duplex) #10
  %0 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %duplex, align 1, !annotation !122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #10
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %speed, align 2, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported) #10
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %supported, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #10
  %3 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %advertising, align 4, !annotation !122
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %4 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ae_handle, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %get_info = getelementptr inbounds %struct.hnae_ae_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %get_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_info, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end12

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false7
  %call16 = call i32 %11(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.hns_nic_get_link_ksettings) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %call20 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %supported, ptr noundef %link_modes) #10
  %advertising22 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call24 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising22) #10
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %autoneg, align 1
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %speed, align 2
  %conv = zext i16 %14 to i32
  %speed26 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %speed26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %speed26, align 4
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %duplex, align 1
  %duplex28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %duplex28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %duplex28, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 145
  %19 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev, align 16
  %tobool29.not = icmp eq ptr %20, null
  br i1 %tobool29.not, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %link.i125 = getelementptr i8, ptr %net_dev, i32 2352
  %21 = ptrtoint ptr %link.i125 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link.i125, align 8
  %23 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ae_handle, align 4
  br label %if.end7.i

if.end32:                                         ; preds = %if.end18
  call void @phy_ethtool_ksettings_get(ptr noundef nonnull %20, ptr noundef %cmd) #10
  %25 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %phydev, align 16
  %link.i = getelementptr i8, ptr %net_dev, i32 2352
  %26 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link.i, align 8
  %28 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ae_handle, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %if.end32.if.end7.i_crit_edge, label %if.then.i

if.end32.if.end7.i_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end32
  %call2.i = call i32 @genphy_read_status(ptr noundef nonnull %.pr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phydev, align 16
  %link6.i = getelementptr inbounds %struct.phy_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %link6.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %link6.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 2
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %bf.clear.i to i32
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.then.i.if.end7.i_crit_edge, %if.end32.if.end7.i_crit_edge, %if.end32.thread
  %33 = phi ptr [ %29, %if.then4.i ], [ %29, %if.end32.if.end7.i_crit_edge ], [ %29, %if.then.i.if.end7.i_crit_edge ], [ %24, %if.end32.thread ]
  %link_stat.0.i = phi i32 [ %bf.cast.i, %if.then4.i ], [ %27, %if.end32.if.end7.i_crit_edge ], [ 0, %if.then.i.if.end7.i_crit_edge ], [ %22, %if.end32.thread ]
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %tobool8.not.i = icmp eq ptr %35, null
  br i1 %tobool8.not.i, label %if.end7.i.if.then35_crit_edge, label %land.lhs.true.i

if.end7.i.if.then35_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

land.lhs.true.i:                                  ; preds = %if.end7.i
  %ops.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %tobool10.not.i = icmp eq ptr %37, null
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.then35_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.if.then35_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %get_status.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_status.i, align 4
  %tobool14.not.i = icmp eq ptr %39, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_stat.0.i)
  %tobool16.not.i = icmp eq i32 %link_stat.0.i, 0
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %tobool16.not.i
  br i1 %or.cond.i, label %land.lhs.true11.i.if.then35_crit_edge, label %hns_nic_get_link.exit

land.lhs.true11.i.if.then35_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

hns_nic_get_link.exit:                            ; preds = %land.lhs.true11.i
  %call20.i = call i32 %39(ptr noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.i.not = icmp eq i32 %call20.i, 0
  br i1 %tobool21.i.not, label %hns_nic_get_link.exit.if.then35_crit_edge, label %hns_nic_get_link.exit.if.end40_crit_edge

hns_nic_get_link.exit.if.end40_crit_edge:         ; preds = %hns_nic_get_link.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

hns_nic_get_link.exit.if.then35_crit_edge:        ; preds = %hns_nic_get_link.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.then35:                                        ; preds = %hns_nic_get_link.exit.if.then35_crit_edge, %land.lhs.true11.i.if.then35_crit_edge, %land.lhs.true.i.if.then35_crit_edge, %if.end7.i.if.then35_crit_edge
  %40 = ptrtoint ptr %speed26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %speed26, align 4
  %41 = ptrtoint ptr %duplex28 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %duplex28, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %hns_nic_get_link.exit.if.end40_crit_edge
  %42 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool43.not = icmp eq i8 %43, 0
  br i1 %tobool43.not, label %if.end40.if.end45_crit_edge, label %if.then44

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %advertising, align 4
  %or = or i32 %45, 64
  store i32 %or, ptr %advertising, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40.if.end45_crit_edge
  %if_support = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 4
  %46 = ptrtoint ptr %if_support to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %if_support, align 4
  %48 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %supported, align 4
  %or46 = or i32 %49, %47
  store i32 %or46, ptr %supported, align 4
  %phy_if = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 3
  %50 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_if, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %51, label %if.end45.if.end59_crit_edge [
    i32 4, label %if.then49
    i32 15, label %if.then55
  ]

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %or50 = or i32 %or46, 128
  %53 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or50, ptr %supported, align 4
  %54 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %advertising, align 4
  %or51 = or i32 %55, 32
  store i32 %or51, ptr %advertising, align 4
  br label %if.end59

if.then55:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %or56 = or i32 %or46, 1024
  %56 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or56, ptr %supported, align 4
  %57 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %advertising, align 4
  %or57 = or i32 %58, 524288
  store i32 %or57, ptr %advertising, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then49, %if.end45.if.end59_crit_edge
  %media_type = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 14
  %59 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %media_type, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %60, label %if.end59.sw.epilog_crit_edge [
    i32 1, label %if.end59.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb61
  ]

if.end59.sw.epilog.sink.split_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end59.sw.epilog_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb61, %if.end59.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb61 ], [ 3, %if.end59.sw.epilog.sink.split_crit_edge ]
  %port63 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %62 = ptrtoint ptr %port63 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink, ptr %port63, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end59.sw.epilog_crit_edge
  %enet_ver = getelementptr i8, ptr %net_dev, i32 2308
  %63 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %64)
  %cmp65 = icmp eq i32 %64, 3552816
  br i1 %cmp65, label %land.lhs.true, label %sw.epilog.if.then69_crit_edge

sw.epilog.if.then69_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

land.lhs.true:                                    ; preds = %sw.epilog
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 13
  %65 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp67 = icmp eq i32 %66, 1
  br i1 %cmp67, label %land.lhs.true.if.end71_crit_edge, label %land.lhs.true.if.then69_crit_edge

land.lhs.true.if.then69_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then69:                                        ; preds = %land.lhs.true.if.then69_crit_edge, %sw.epilog.if.then69_crit_edge
  %67 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %supported, align 4
  %or70 = or i32 %68, 8192
  store i32 %or70, ptr %supported, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %land.lhs.true.if.end71_crit_edge
  %69 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %supported, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %70) #10
  %71 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %advertising, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising22, i32 noundef %72) #10
  %mdio_support = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 6
  %73 = ptrtoint ptr %mdio_support to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %mdio_support, align 4
  %74 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phydev, align 16
  %tobool.not.i123 = icmp eq ptr %75, null
  br i1 %tobool.not.i123, label %if.end71.if.then.i124_crit_edge, label %lor.lhs.false.i

if.end71.if.then.i124_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i124

lor.lhs.false.i:                                  ; preds = %if.end71
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 8
  %tobool1.not.i = icmp eq ptr %77, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i124_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i124_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i124

if.then.i124:                                     ; preds = %lor.lhs.false.i.if.then.i124_crit_edge, %if.end71.if.then.i124_crit_edge
  %eth_tp_mdix_ctrl.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %78 = ptrtoint ptr %eth_tp_mdix_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %eth_tp_mdix_ctrl.i, align 2
  %eth_tp_mdix.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 7
  %79 = ptrtoint ptr %eth_tp_mdix.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %eth_tp_mdix.i, align 1
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %75, i32 0, i32 6
  %80 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr.i.i, align 8
  %call.i.i = call i32 @mdiobus_write(ptr noundef nonnull %77, i32 noundef %81, i32 noundef 22, i16 noundef zeroext 0) #10
  %82 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bus.i, align 8
  %84 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr.i.i, align 8
  %call.i54.i = call i32 @mdiobus_read(ptr noundef %83, i32 noundef %85, i32 noundef 16) #10
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 8
  %88 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr.i.i, align 8
  %call.i57.i = call i32 @mdiobus_read(ptr noundef %87, i32 noundef %89, i32 noundef 17) #10
  %90 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i, align 8
  %92 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %addr.i.i, align 8
  %call.i60.i = call i32 @mdiobus_write(ptr noundef %91, i32 noundef %93, i32 noundef 22, i16 noundef zeroext 0) #10
  %94 = lshr i32 %call.i54.i, 2
  %switch.shiftamt = and i32 %94, 24
  %switch.downshift = lshr i32 50332161, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %eth_tp_mdix_ctrl19.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %95 = ptrtoint ptr %eth_tp_mdix_ctrl19.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %switch.masked, ptr %eth_tp_mdix_ctrl19.i, align 2
  %96 = and i32 %call.i57.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool20.not.i = icmp eq i32 %96, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %eth_tp_mdix23.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 7
  %97 = ptrtoint ptr %eth_tp_mdix23.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %eth_tp_mdix23.i, align 1
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %98 = and i32 %call.i57.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool24.not.i = icmp eq i32 %98, 0
  %eth_tp_mdix30.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 7
  br i1 %tobool24.not.i, label %if.else28.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %eth_tp_mdix30.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %eth_tp_mdix30.i, align 1
  br label %cleanup

if.else28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %eth_tp_mdix30.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %eth_tp_mdix30.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else28.i, %if.then25.i, %if.then21.i, %if.then.i124, %if.then17, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then17 ], [ -3, %lor.lhs.false.cleanup_crit_edge ], [ -3, %entry.cleanup_crit_edge ], [ -3, %lor.lhs.false7.cleanup_crit_edge ], [ -3, %lor.lhs.false4.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ], [ 0, %if.then.i124 ], [ 0, %if.then21.i ], [ 0, %if.then25.i ], [ 0, %if.else28.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %duplex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_set_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ae_handle = getelementptr i8, ptr %net_dev, i32 2332
  %2 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_handle, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end11

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false6
  %speed13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed13, align 4
  %phy_if = getelementptr inbounds %struct.hnae_handle, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_if, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %11, label %if.else78 [
    i32 15, label %if.then14
    i32 4, label %if.then31
  ]

if.then14:                                        ; preds = %if.end11
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp16 = icmp ne i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %9)
  %cmp19.not = icmp eq i32 %9, 10000
  %or.cond = select i1 %cmp16, i1 %cmp19.not, i1 false
  br i1 %or.cond, label %lor.lhs.false21, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false21:                                  ; preds = %if.then14
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp24.not = icmp eq i8 %16, 1
  br i1 %cmp24.not, label %lor.lhs.false21.if.end80_crit_edge, label %lor.lhs.false21.cleanup_crit_edge

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false21.if.end80_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then31:                                        ; preds = %if.end11
  %phydev = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 145
  %17 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phydev, align 16
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %land.lhs.true, label %if.then31.if.end39_crit_edge

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then31
  %autoneg34 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %19 = ptrtoint ptr %autoneg34 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autoneg34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp36 = icmp eq i8 %20, 1
  br i1 %cmp36, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %if.then31.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %9)
  %cmp40 = icmp eq i32 %9, 1000
  br i1 %cmp40, label %land.lhs.true42, label %if.end39.if.end49_crit_edge

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true42:                                  ; preds = %if.end39
  %duplex44 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex44 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %duplex44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp46 = icmp eq i8 %22, 0
  br i1 %cmp46, label %land.lhs.true42.cleanup_crit_edge, label %land.lhs.true42.if.end49_crit_edge

land.lhs.true42.if.end49_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true42.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  br i1 %tobool32.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %18, ptr noundef %cmd) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %23 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %9, label %if.end55.cleanup_crit_edge [
    i32 10, label %if.end55.lor.lhs.false64_crit_edge
    i32 100, label %if.end55.lor.lhs.false64_crit_edge127
    i32 1000, label %if.end55.lor.lhs.false64_crit_edge128
  ]

if.end55.lor.lhs.false64_crit_edge128:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false64

if.end55.lor.lhs.false64_crit_edge127:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false64

if.end55.lor.lhs.false64_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false64

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false64:                                  ; preds = %if.end55.lor.lhs.false64_crit_edge, %if.end55.lor.lhs.false64_crit_edge127, %if.end55.lor.lhs.false64_crit_edge128
  %duplex66 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %24 = ptrtoint ptr %duplex66 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %duplex66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %switch = icmp ult i8 %25, 2
  br i1 %switch, label %lor.lhs.false64.if.end80_crit_edge, label %lor.lhs.false64.cleanup_crit_edge

lor.lhs.false64.cleanup_crit_edge:                ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false64.if.end80_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.else78:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end80:                                         ; preds = %lor.lhs.false64.if.end80_crit_edge, %lor.lhs.false21.if.end80_crit_edge
  %adjust_link = getelementptr inbounds %struct.hnae_ae_ops, ptr %7, i32 0, i32 12
  %26 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adjust_link, align 4
  %tobool83.not = icmp eq ptr %27, null
  br i1 %tobool83.not, label %if.end91, label %if.then84

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_off(ptr noundef %net_dev) #10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %ops86 = getelementptr inbounds %struct.hnae_ae_dev, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops86, align 4
  %adjust_link87 = getelementptr inbounds %struct.hnae_ae_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %adjust_link87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adjust_link87, align 4
  %duplex89 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %34 = ptrtoint ptr %duplex89 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %duplex89, align 4
  %conv90 = zext i8 %35 to i32
  tail call void %33(ptr noundef nonnull %3, i32 noundef %9, i32 noundef %conv90) #10
  tail call void @netif_carrier_on(ptr noundef %net_dev) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net_dev, ptr noundef nonnull @.str.51) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then84, %if.else78, %lor.lhs.false64.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then52, %land.lhs.true42.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then84 ], [ -524, %if.end91 ], [ %call54, %if.then52 ], [ -524, %if.else78 ], [ -3, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false6.cleanup_crit_edge ], [ -19, %lor.lhs.false3.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false21.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true42.cleanup_crit_edge ], [ -22, %lor.lhs.false64.cleanup_crit_edge ], [ -22, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_nic_net_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_loopback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__lb_other_process(ptr noundef readonly %ring_data, ptr noundef %skb) #2 align 64 {
entry:
  %buff = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buff) #10
  %0 = call ptr @memset(ptr %buff, i32 255, i32 33)
  %tobool.not = icmp eq ptr %ring_data, null
  br i1 %tobool.not, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 %5)
  %enet_ver = getelementptr i8, ptr %3, i32 2308
  %9 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %10)
  %cmp = icmp eq i32 %10, 3552816
  br i1 %cmp, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %ae_handle = getelementptr i8, ptr %3, i32 2332
  %11 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ae_handle, align 4
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1 = icmp eq i32 %14, 0
  br i1 %cmp1, label %if.then2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %19 = call ptr @memcpy(ptr %16, ptr %18, i32 6)
  %20 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %20, i32 5
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %add = add i8 %22, 31
  store i8 %add, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %div137 = lshr i32 %5, 1
  %arrayidx7 = getelementptr i8, ptr %24, i32 %div137
  %sub = add nsw i32 %div137, -1
  %25 = call ptr @memset(ptr %arrayidx7, i32 170, i32 %sub)
  %26 = load ptr, ptr %data, align 4
  %add11 = add nuw i32 %div137, 10
  %arrayidx12 = getelementptr i8, ptr %26, i32 %add11
  %sub14 = add nsw i32 %div137, -11
  %27 = call ptr @memset(ptr %arrayidx12, i32 190, i32 %sub14)
  %28 = load ptr, ptr %data, align 4
  %add17 = add nuw i32 %div137, 12
  %arrayidx18 = getelementptr i8, ptr %28, i32 %add17
  %sub20 = add nsw i32 %div137, -13
  %29 = call ptr @memset(ptr %arrayidx18, i32 175, i32 %sub20)
  br label %cleanup

if.end21:                                         ; preds = %entry
  %30 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring_data, align 8
  %dev = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %flags = getelementptr inbounds %struct.hnae_ring, ptr %31, i32 0, i32 15
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 8
  %and23 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %queue_index = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 3
  %36 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %39, i32 %37, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #10
  %dql.i = getelementptr %struct.netdev_queue, ptr %39, i32 %37, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %len28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %40 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len28, align 4
  %call30 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %data34 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 19
  %42 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data34, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 10
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp36 = icmp eq i8 %45, -1
  br i1 %cmp36, label %if.then38, label %if.end33.if.else_crit_edge

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then38:                                        ; preds = %if.end33
  %div40138 = lshr i32 %41, 1
  %add.ptr41 = getelementptr i8, ptr %43, i32 %div40138
  %add.ptr42 = getelementptr i8, ptr %add.ptr41, i32 10
  %46 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %47)
  %cmp44 = icmp eq i8 %47, -66
  br i1 %cmp44, label %land.lhs.true46, label %if.then38.if.else_crit_edge

if.then38.if.else_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true46:                                  ; preds = %if.then38
  %add.ptr50 = getelementptr i8, ptr %add.ptr41, i32 12
  %48 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %49)
  %cmp52.not = icmp eq i8 %49, -81
  br i1 %cmp52.not, label %if.then58, label %land.lhs.true46.if.else_crit_edge

land.lhs.true46.if.else_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then58:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36
  %50 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stats, align 8
  %inc = add i32 %51, 1
  store i32 %inc, ptr %stats, align 8
  %len59 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 6
  %52 = ptrtoint ptr %len59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len59, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36, i32 2
  %54 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_bytes, align 8
  %add61 = add i32 %55, %53
  store i32 %add61, ptr %rx_bytes, align 8
  br label %if.end84

if.else:                                          ; preds = %land.lhs.true46.if.else_crit_edge, %if.then38.if.else_crit_edge, %if.end33.if.else_crit_edge
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36, i32 13
  %56 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_frame_errors, align 4
  %inc63 = add i32 %57, 1
  store i32 %inc63, ptr %rx_frame_errors, align 4
  %len64 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 6
  %58 = ptrtoint ptr %len64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp65140.not = icmp eq i32 %59, 0
  br i1 %cmp65140.not, label %if.else.if.end84_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.0141 = phi i32 [ %inc83, %for.inc.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %rem = and i32 %i.0141, 15
  %mul = shl nuw nsw i32 %rem, 1
  %add.ptr67 = getelementptr i8, ptr %buff, i32 %mul
  %60 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data34, align 4
  %add.ptr69 = getelementptr i8, ptr %61, i32 %i.0141
  %62 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr69, align 1
  %conv70 = zext i8 %63 to i32
  %call71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr67, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %conv70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem)
  %cmp73 = icmp eq i32 %rem, 15
  br i1 %cmp73, label %for.body.do.end_crit_edge, label %lor.lhs.false

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %64 = ptrtoint ptr %len64 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len64, align 4
  %sub76 = add i32 %65, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0141, i32 %sub76)
  %cmp77 = icmp eq i32 %i.0141, %sub76
  br i1 %cmp77, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %buff) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %lor.lhs.false.for.inc_crit_edge
  %inc83 = add nuw i32 %i.0141, 1
  %66 = ptrtoint ptr %len64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len64, align 4
  %cmp65 = icmp ult i32 %inc83, %67
  br i1 %cmp65, label %for.inc.for.body_crit_edge, label %for.inc.if.end84_crit_edge

for.inc.if.end84_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end84:                                         ; preds = %for.inc.if.end84_crit_edge, %if.else.if.end84_crit_edge, %if.then58
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call30, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then32, %if.then25, %if.end
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buff) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_nic_net_xmit_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @hns_ethtool_ops, !1, !"hns_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 1252, i32 33}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 647, i32 28}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 651, i32 27}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 658, i32 31}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 1127, i32 23}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 1107, i32 23}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 520, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__lb_run_test._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @__lb_run_test._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 534, i32 4}
!22 = !{ptr @__lb_run_test._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @__lb_run_test._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 418, i32 20}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 437, i32 6}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 439, i32 5}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__lb_other_process._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @__lb_other_process._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @hns_nic_test_strs, !34, !"hns_nic_test_strs", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 251, i32 19}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 561, i32 20}
!37 = !{ptr @__func__.__lb_down, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 562, i32 7}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 912, i32 22}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 927, i32 26}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 928, i32 26}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 929, i32 26}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 930, i32 26}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 931, i32 26}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 932, i32 26}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 933, i32 26}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 934, i32 26}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 935, i32 26}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 936, i32 26}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 937, i32 26}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 938, i32 26}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 939, i32 26}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 940, i32 26}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 941, i32 26}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 942, i32 26}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 943, i32 26}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 944, i32 26}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 945, i32 26}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 946, i32 26}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 947, i32 26}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 948, i32 26}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 949, i32 26}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 950, i32 26}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 951, i32 26}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 953, i32 26}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 1009, i32 22}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 857, i32 22}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 973, i32 22}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 1168, i32 7}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 1228, i32 22}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 133, i32 23}
!105 = !{ptr @__func__.hns_nic_get_link_ksettings, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 133, i32 47}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_ethtool.c", i32 236, i32 23}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i8 0, i8 2}
!119 = !{i64 2148400176, i64 2148400208, i64 2148400237, i64 2148400271, i64 2148400302, i64 2148400325}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{!"auto-init"}
