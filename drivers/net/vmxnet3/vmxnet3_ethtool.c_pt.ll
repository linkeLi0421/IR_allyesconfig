; ModuleID = '/llk/IR_all_yes/drivers/net/vmxnet3/vmxnet3_ethtool.c_pt.bc'
source_filename = "../drivers/net/vmxnet3/vmxnet3_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vmxnet3_stat_desc = type { [32 x i8], i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vmxnet3_tx_queue = type { [24 x i8], ptr, %struct.spinlock, %struct.vmxnet3_cmd_ring, ptr, %struct.vmxnet3_tx_data_ring, %struct.vmxnet3_comp_ring, ptr, %struct.vmxnet3_tq_driver_stats, i8, i32, i32, i16, [34 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vmxnet3_cmd_ring = type { ptr, i32, i32, i32, i8, i32 }
%struct.vmxnet3_tx_data_ring = type { ptr, i32, i32 }
%struct.vmxnet3_comp_ring = type { ptr, i32, i32, i8, i8, i32 }
%struct.vmxnet3_tq_driver_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.Vmxnet3_TxQueueDesc = type { %struct.Vmxnet3_TxQueueCtrl, %struct.Vmxnet3_TxQueueConf, %struct.Vmxnet3_QueueStatus, %struct.UPT1_TxStats, [88 x i8] }
%struct.Vmxnet3_TxQueueCtrl = type { i32, i32, i64 }
%struct.Vmxnet3_TxQueueConf = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, [1 x i8], i16, [4 x i8] }
%struct.Vmxnet3_QueueStatus = type { i8, [3 x i8], i32 }
%struct.UPT1_TxStats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vmxnet3_adapter = type { [32 x %struct.vmxnet3_tx_queue], [32 x %struct.vmxnet3_rx_queue], [128 x i32], %struct.vmxnet3_intr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i8, i8, i32, %struct.work_struct, i32, i32, ptr, i8, i32, i32, i32, i8, [39 x i8] }
%struct.vmxnet3_rx_queue = type { [24 x i8], ptr, %struct.napi_struct, [2 x %struct.vmxnet3_cmd_ring], %struct.vmxnet3_rx_data_ring, %struct.vmxnet3_comp_ring, %struct.vmxnet3_rx_ctx, i32, i32, i32, [2 x ptr], ptr, %struct.vmxnet3_rq_driver_stats, [112 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.vmxnet3_rx_data_ring = type { ptr, i32, i16 }
%struct.vmxnet3_rx_ctx = type { ptr, i32 }
%struct.vmxnet3_rq_driver_stats = type { i64, i64, i64, i64 }
%struct.vmxnet3_intr = type { i32, i32, i8, i8, [65 x i8], [33 x i8], [65 x %struct.msix_entry] }
%struct.msix_entry = type { i32, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.Vmxnet3_RxQueueDesc = type { %struct.Vmxnet3_RxQueueCtrl, %struct.Vmxnet3_RxQueueConf, %struct.Vmxnet3_QueueStatus, %struct.UPT1_RxStats, [88 x i8] }
%struct.Vmxnet3_RxQueueCtrl = type { i8, [7 x i8], i64 }
%struct.Vmxnet3_RxQueueConf = type { [2 x i64], i64, i64, i64, [2 x i32], i32, i32, i8, [1 x i8], i16, [4 x i8] }
%struct.UPT1_RxStats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vlan_hdr = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.Vmxnet3_DriverShared = type { i32, i32, %struct.Vmxnet3_DSDevRead, i32, i32, %union.anon.160, %struct.Vmxnet3_DSDevReadExt }
%struct.Vmxnet3_DSDevRead = type { %struct.Vmxnet3_MiscConf, %struct.Vmxnet3_IntrConf, %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_VariableLenConfDesc, %struct.Vmxnet3_VariableLenConfDesc, %struct.Vmxnet3_VariableLenConfDesc }
%struct.Vmxnet3_MiscConf = type { %struct.Vmxnet3_DriverInfo, i64, i64, i64, i32, i32, i32, i16, i8, i8, [4 x i32] }
%struct.Vmxnet3_DriverInfo = type { i32, %struct.Vmxnet3_GOSInfo, i32, i32 }
%struct.Vmxnet3_GOSInfo = type { i32 }
%struct.Vmxnet3_IntrConf = type { i8, i8, i8, [25 x i8], i32, [2 x i32] }
%struct.Vmxnet3_RxFilterConf = type { i32, i16, i16, i64, [128 x i32] }
%struct.Vmxnet3_VariableLenConfDesc = type { i32, i32, i64 }
%union.anon.160 = type { %union.Vmxnet3_CmdInfo }
%union.Vmxnet3_CmdInfo = type { %struct.Vmxnet3_VariableLenConfDesc }
%struct.Vmxnet3_DSDevReadExt = type { %struct.Vmxnet3_IntrConfExt }
%struct.Vmxnet3_IntrConfExt = type { i8, i8, i8, i8, i32, i32, [65 x i8], [3 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.161, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.161 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Vmxnet3_CoalesceScheme = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.Vmxnet3_CoalesceStatic }
%struct.Vmxnet3_CoalesceStatic = type { i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.151, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.151 = type { i32 }
%struct.UPT1_RSSConf = type { i16, i16, i16, i16, [40 x i8], [128 x i8] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.152, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.152 = type { [3 x i32], [3 x i32], [3 x i32] }

@vmxnet3_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 547, i32 0, ptr @vmxnet3_get_drvinfo, ptr @vmxnet3_get_regs_len, ptr @vmxnet3_get_regs, ptr @vmxnet3_get_wol, ptr @vmxnet3_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @vmxnet3_get_coalesce, ptr @vmxnet3_set_coalesce, ptr @vmxnet3_get_ringparam, ptr @vmxnet3_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @vmxnet3_get_strings, ptr null, ptr @vmxnet3_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @vmxnet3_get_sset_count, ptr @vmxnet3_get_rxnfc, ptr @vmxnet3_set_rxnfc, ptr null, ptr null, ptr null, ptr @vmxnet3_get_rss_indir_size, ptr @vmxnet3_get_rss, ptr @vmxnet3_set_rss, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vmxnet3_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@vmxnet3_driver_name = external dso_local global [0 x i8], align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"1.6.0.0-k-NAPI\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"adapter not completely initialized, ring size cannot be changed yet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to apply new sizes, try the default ones\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to create queues with default sizes. Closing it\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to re-activate, error %d. Closing it\0A\00", [51 x i8] zeroinitializer }, align 32
@vmxnet3_tq_dev_stats = internal constant { [11 x %struct.vmxnet3_stat_desc], [116 x i8] } { [11 x %struct.vmxnet3_stat_desc] [%struct.vmxnet3_stat_desc { [32 x i8] c"Tx Queue#\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  TSO pkts tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  TSO bytes tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  ucast pkts tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  ucast bytes tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  mcast pkts tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  mcast bytes tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  bcast pkts tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  bcast bytes tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  pkts tx err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  pkts tx discard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }], [116 x i8] zeroinitializer }, align 32
@vmxnet3_tq_driver_stats = internal constant { [9 x %struct.vmxnet3_stat_desc], [92 x i8] } { [9 x %struct.vmxnet3_stat_desc] [%struct.vmxnet3_stat_desc { [32 x i8] c"  drv dropped tx total\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.vmxnet3_stat_desc { [32 x i8] c"     too many frags\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.vmxnet3_stat_desc { [32 x i8] c"     giant hdr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.vmxnet3_stat_desc { [32 x i8] c"     hdr err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.vmxnet3_stat_desc { [32 x i8] c"     tso\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  ring full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  pkts linearized\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  hdr cloned\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  giant hdr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }], [92 x i8] zeroinitializer }, align 32
@vmxnet3_rq_dev_stats = internal constant { [11 x %struct.vmxnet3_stat_desc], [116 x i8] } { [11 x %struct.vmxnet3_stat_desc] [%struct.vmxnet3_stat_desc { [32 x i8] c"Rx Queue#\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  LRO pkts rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  LRO byte rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  ucast pkts rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  ucast bytes rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  mcast pkts rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  mcast bytes rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  bcast pkts rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  bcast bytes rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  pkts rx OOB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  pkts rx err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }], [116 x i8] zeroinitializer }, align 32
@vmxnet3_rq_driver_stats = internal constant { [4 x %struct.vmxnet3_stat_desc], [48 x i8] } { [4 x %struct.vmxnet3_stat_desc] [%struct.vmxnet3_stat_desc { [32 x i8] c"  drv dropped rx total\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.vmxnet3_stat_desc { [32 x i8] c"     err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.vmxnet3_stat_desc { [32 x i8] c"     fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.vmxnet3_stat_desc { [32 x i8] c"  rx buf alloc fail\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }], [48 x i8] zeroinitializer }, align 32
@vmxnet3_global_stats = internal constant { [1 x %struct.vmxnet3_stat_desc], [60 x i8] } { [1 x %struct.vmxnet3_stat_desc] [%struct.vmxnet3_stat_desc { [32 x i8] c"tx timeout count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 25840 }], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 4789, i64 6081, i64 8472]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 41, i64 45]
@__sancov_gen_cov_switch_values.11 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.12 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"vmxnet3_ethtool_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1191, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 598, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 214, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 625, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 702, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 717, i32 24 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 725, i32 23 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"vmxnet3_tq_dev_stats\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 42, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"vmxnet3_tq_driver_stats\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 59, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"vmxnet3_rq_dev_stats\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 83, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [24 x i8] c"vmxnet3_rq_driver_stats\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 99, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"vmxnet3_global_stats\00", align 1
@___asan_gen_.51 = private constant [41 x i8] c"../drivers/net/vmxnet3/vmxnet3_ethtool.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 113, i32 1 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @vmxnet3_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vmxnet3_tq_dev_stats, ptr @vmxnet3_tq_driver_stats, ptr @vmxnet3_rq_dev_stats, ptr @vmxnet3_rq_driver_stats, ptr @vmxnet3_global_stats], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_tq_dev_stats to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_tq_driver_stats to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_rq_dev_stats to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_rq_driver_stats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmxnet3_global_stats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmxnet3_get_stats64(ptr noundef %netdev, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !33
  tail call void @arm_heavy_mb() #15
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %0 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16780784) #15, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call3) #15
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 28112
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1080.not = icmp eq i32 %3, 0
  br i1 %cmp1080.not, label %entry.for.cond22.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond22.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond22.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tqd_start = getelementptr i8, ptr %netdev, i32 28072
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  br label %for.body

for.cond22.preheader:                             ; preds = %for.body.for.cond22.preheader_crit_edge, %entry.for.cond22.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 28108
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2382.not = icmp eq i32 %5, 0
  br i1 %cmp2382.not, label %for.cond22.preheader.for.end43_crit_edge, label %for.body25.lr.ph

for.cond22.preheader.for.end43_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end43

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %rqd_start = getelementptr i8, ptr %netdev, i32 28076
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  br label %for.body25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %tqd_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tqd_start, align 8
  %stats14 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.081, i32 8
  %ucastPktsTxOK = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.081, i32 3, i32 2
  %8 = ptrtoint ptr %ucastPktsTxOK to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ucastPktsTxOK, align 8
  %mcastPktsTxOK = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.081, i32 3, i32 4
  %10 = ptrtoint ptr %mcastPktsTxOK to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mcastPktsTxOK, align 8
  %add = add i64 %11, %9
  %bcastPktsTxOK = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.081, i32 3, i32 6
  %12 = ptrtoint ptr %bcastPktsTxOK to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bcastPktsTxOK, align 8
  %add15 = add i64 %add, %13
  %14 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_packets, align 8
  %add16 = add i64 %add15, %15
  store i64 %add16, ptr %tx_packets, align 8
  %ucastBytesTxOK = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.081, i32 3, i32 3
  %16 = ptrtoint ptr %ucastBytesTxOK to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ucastBytesTxOK, align 8
  %mcastBytesTxOK = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.081, i32 3, i32 5
  %18 = ptrtoint ptr %mcastBytesTxOK to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mcastBytesTxOK, align 8
  %add17 = add i64 %19, %17
  %bcastBytesTxOK = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.081, i32 3, i32 7
  %20 = ptrtoint ptr %bcastBytesTxOK to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bcastBytesTxOK, align 8
  %add18 = add i64 %add17, %21
  %22 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_bytes, align 8
  %add19 = add i64 %add18, %23
  store i64 %add19, ptr %tx_bytes, align 8
  %pktsTxError = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %i.081, i32 3, i32 8
  %24 = ptrtoint ptr %pktsTxError to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pktsTxError, align 8
  %26 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_errors, align 8
  %add20 = add i64 %27, %25
  store i64 %add20, ptr %tx_errors, align 8
  %28 = ptrtoint ptr %stats14 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %stats14, align 8
  %30 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_dropped, align 8
  %add21 = add i64 %31, %29
  store i64 %add21, ptr %tx_dropped, align 8
  %inc = add nuw i32 %i.081, 1
  %32 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_queues, align 16
  %cmp10 = icmp ult i32 %inc, %33
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.cond22.preheader_crit_edge

for.body.for.cond22.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond22.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.lr.ph
  %i.183 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc42, %for.body25.for.body25_crit_edge ]
  %34 = ptrtoint ptr %rqd_start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rqd_start, align 4
  %stats29 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.183, i32 12
  %ucastPktsRxOK = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %35, i32 %i.183, i32 3, i32 2
  %36 = ptrtoint ptr %ucastPktsRxOK to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ucastPktsRxOK, align 8
  %mcastPktsRxOK = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %35, i32 %i.183, i32 3, i32 4
  %38 = ptrtoint ptr %mcastPktsRxOK to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %mcastPktsRxOK, align 8
  %add30 = add i64 %39, %37
  %bcastPktsRxOK = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %35, i32 %i.183, i32 3, i32 6
  %40 = ptrtoint ptr %bcastPktsRxOK to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bcastPktsRxOK, align 8
  %add31 = add i64 %add30, %41
  %42 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %stats, align 8
  %add32 = add i64 %add31, %43
  store i64 %add32, ptr %stats, align 8
  %ucastBytesRxOK = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %35, i32 %i.183, i32 3, i32 3
  %44 = ptrtoint ptr %ucastBytesRxOK to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ucastBytesRxOK, align 8
  %mcastBytesRxOK = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %35, i32 %i.183, i32 3, i32 5
  %46 = ptrtoint ptr %mcastBytesRxOK to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mcastBytesRxOK, align 8
  %add33 = add i64 %47, %45
  %bcastBytesRxOK = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %35, i32 %i.183, i32 3, i32 7
  %48 = ptrtoint ptr %bcastBytesRxOK to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bcastBytesRxOK, align 8
  %add34 = add i64 %add33, %49
  %50 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_bytes, align 8
  %add35 = add i64 %add34, %51
  store i64 %add35, ptr %rx_bytes, align 8
  %pktsRxError = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %35, i32 %i.183, i32 3, i32 9
  %52 = ptrtoint ptr %pktsRxError to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pktsRxError, align 8
  %54 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_errors, align 8
  %add36 = add i64 %55, %53
  store i64 %add36, ptr %rx_errors, align 8
  %56 = ptrtoint ptr %stats29 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %stats29, align 8
  %58 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rx_dropped, align 8
  %add38 = add i64 %59, %57
  store i64 %add38, ptr %rx_dropped, align 8
  %60 = load i64, ptr %mcastPktsRxOK, align 8
  %61 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %multicast, align 8
  %add40 = add i64 %62, %60
  store i64 %add40, ptr %multicast, align 8
  %inc42 = add nuw i32 %i.183, 1
  %63 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_rx_queues, align 4
  %cmp23 = icmp ult i32 %inc42, %64
  br i1 %cmp23, label %for.body25.for.body25_crit_edge, label %for.body25.for.end43_crit_edge

for.body25.for.end43_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end43

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body25

for.end43:                                        ; preds = %for.body25.for.end43_crit_edge, %for.cond22.preheader.for.end43_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @vmxnet3_fix_features(ptr nocapture noundef readnone %netdev, i64 noundef %features) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i64 %features, -32769
  %spec.select = select i1 %tobool.not, i64 %and1, i64 %features
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vmxnet3_features_check(ptr noundef %skb, ptr nocapture noundef readonly %netdev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr i8, ptr %netdev, i32 28096
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ugt i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup38_crit_edge

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

land.lhs.true:                                    ; preds = %entry
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %encapsulation, align 8
  %3 = and i16 %bf.load, 1540
  call void @__sanitizer_cov_trace_const_cmp2(i16 1540, i16 %3)
  %4 = icmp eq i16 %3, 1540
  br i1 %4, label %if.then, label %land.lhs.true.cleanup38_crit_edge

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.then:                                          ; preds = %land.lhs.true
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i, align 8
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %7 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %9 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.then.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %if.then.if.then.i.i_crit_edge
    i16 -32512, label %if.then.if.then.i.i_crit_edge62
  ]

if.then.if.then.i.i_crit_edge62:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then.if.then.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then.vlan_get_protocol.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_get_protocol.exit

if.then.i.i:                                      ; preds = %if.then.if.then.i.i_crit_edge, %if.then.if.then.i.i_crit_edge62
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp.i.i = icmp ult i16 %8, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !35

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #15
  br label %sw.default

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %10 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #15
  %11 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !36
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %10, align 2, !annotation !36
  %13 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i.i, align 8
  %17 = add i32 %vlan_depth.1.i.i, %16
  %sub.i1.i.i.i = sub i32 %14, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !37

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !35
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %20 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !35
  br i1 %20, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !35

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #15
  br label %sw.default

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #15
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %22, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge63
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge63: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge63
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %if.then.vlan_get_protocol.exit_crit_edge
  %retval.2.i.i = phi i16 [ %6, %if.then.vlan_get_protocol.exit_crit_edge ], [ %22, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %24 = zext i16 %retval.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %retval.2.i.i, label %vlan_get_protocol.exit.sw.default_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb14
  ]

vlan_get_protocol.exit.sw.default_crit_edge:      ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default

sw.bb:                                            ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i50 = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i50
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  br label %sw.epilog

sw.bb14:                                          ; preds = %vlan_get_protocol.exit
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i51, align 8
  %network_header.i.i52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i52 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i52, align 4
  %conv.i.i53 = zext i16 %32 to i32
  %add.ptr.i.i54 = getelementptr i8, ptr %30, i32 %conv.i.i53
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i54, i32 0, i32 3
  br label %sw.epilog

sw.default:                                       ; preds = %vlan_get_protocol.exit.sw.default_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  %and = and i64 %features, -34359672859
  br label %cleanup38

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb
  %l4_proto.0.in = phi ptr [ %nexthdr, %sw.bb14 ], [ %protocol, %sw.bb ]
  %33 = ptrtoint ptr %l4_proto.0.in to i32
  call void @__asan_load1_noabort(i32 %33)
  %l4_proto.0 = load i8, ptr %l4_proto.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_proto.0)
  %cond = icmp eq i8 %l4_proto.0, 17
  br i1 %cond, label %sw.bb17, label %sw.default32

sw.bb17:                                          ; preds = %sw.epilog
  %head.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i55, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i56 = zext i16 %37 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %35, i32 %conv.i.i56
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i57, i32 0, i32 1
  %38 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dest, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %39, label %if.then30 [
    i16 6081, label %sw.bb17.cleanup38_crit_edge
    i16 4789, label %sw.bb17.cleanup38_crit_edge64
    i16 8472, label %sw.bb17.cleanup38_crit_edge65
  ]

sw.bb17.cleanup38_crit_edge65:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

sw.bb17.cleanup38_crit_edge64:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

sw.bb17.cleanup38_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.then30:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #17
  %and31 = and i64 %features, -34359672859
  br label %cleanup38

sw.default32:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %and33 = and i64 %features, -34359672859
  br label %cleanup38

cleanup38:                                        ; preds = %sw.default32, %if.then30, %sw.bb17.cleanup38_crit_edge, %sw.bb17.cleanup38_crit_edge64, %sw.bb17.cleanup38_crit_edge65, %sw.default, %land.lhs.true.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.1 = phi i64 [ %features, %sw.bb17.cleanup38_crit_edge ], [ %features, %sw.bb17.cleanup38_crit_edge64 ], [ %features, %sw.bb17.cleanup38_crit_edge65 ], [ %features, %land.lhs.true.cleanup38_crit_edge ], [ %features, %entry.cleanup38_crit_edge ], [ %and33, %sw.default32 ], [ %and31, %if.then30 ], [ %and, %sw.default ]
  ret i64 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmxnet3_set_features(ptr noundef %netdev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %1, 201326592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp.not = icmp eq i64 %and, 0
  %and4 = and i64 %xor, 1099712987392
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool.not = icmp eq i64 %and4, 0
  br i1 %tobool.not, label %entry.if.end80_crit_edge, label %if.then

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then:                                          ; preds = %entry
  %shared9 = getelementptr i8, ptr %netdev, i32 28064
  %2 = ptrtoint ptr %shared9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared9, align 32
  %uptFeatures12 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %3, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %uptFeatures12 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %uptFeatures12, align 8
  %and13 = and i64 %5, -72057594037927937
  %and5 = shl i64 %features, 16
  %6 = and i64 %and5, 72057594037927936
  %and13.sink = or i64 %and13, %6
  store i64 %and13.sink, ptr %uptFeatures12, align 8
  %shared23 = getelementptr i8, ptr %netdev, i32 28064
  %7 = ptrtoint ptr %shared23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shared23, align 32
  %uptFeatures26 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %8, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %uptFeatures26 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %uptFeatures26, align 8
  %and27 = and i64 %10, -576460752303423489
  %and14 = shl i64 %features, 44
  %11 = and i64 %and14, 576460752303423488
  %and27.sink = or i64 %and27, %11
  store i64 %and27.sink, ptr %uptFeatures26, align 8
  %shared38 = getelementptr i8, ptr %netdev, i32 28064
  %12 = ptrtoint ptr %shared38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared38, align 32
  %uptFeatures41 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %13, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %uptFeatures41 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %uptFeatures41, align 8
  %and42 = and i64 %15, -288230376151711745
  %and29 = shl i64 %features, 50
  %16 = and i64 %and29, 288230376151711744
  %and42.sink = or i64 %and42, %16
  store i64 %and42.sink, ptr %uptFeatures41, align 8
  %and44 = and i64 %features, 201326592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44)
  %cmp45.not = icmp eq i64 %and44, 0
  %cmp.not.not = xor i1 %cmp.not, true
  %brmerge = select i1 %cmp45.not, i1 true, i1 %cmp.not.not
  br i1 %brmerge, label %if.else54, label %if.then48

if.then48:                                        ; preds = %if.then
  %version.i = getelementptr i8, ptr %netdev, i32 28096
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %version.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp.i = icmp ugt i8 %18, 3
  br i1 %cmp.i, label %if.then.i, label %if.then48.vmxnet3_enable_encap_offloads.exit_crit_edge

if.then48.vmxnet3_enable_encap_offloads.exit_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %vmxnet3_enable_encap_offloads.exit

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  %hw_enc_features.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 27
  %19 = ptrtoint ptr %hw_enc_features.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hw_enc_features.i, align 16
  %or.i = or i64 %20, 1099714101641
  store i64 %or.i, ptr %hw_enc_features.i, align 16
  br label %vmxnet3_enable_encap_offloads.exit

vmxnet3_enable_encap_offloads.exit:               ; preds = %if.then.i, %if.then48.vmxnet3_enable_encap_offloads.exit_crit_edge
  %shared49 = getelementptr i8, ptr %netdev, i32 28064
  %21 = ptrtoint ptr %shared49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shared49, align 32
  %uptFeatures52 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %22, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %uptFeatures52 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %uptFeatures52, align 8
  %or53 = or i64 %24, 1152921504606846976
  store i64 %or53, ptr %uptFeatures52, align 8
  br label %do.body69

if.else54:                                        ; preds = %if.then
  %cmp56.not = xor i1 %cmp45.not, true
  %brmerge104 = select i1 %cmp56.not, i1 true, i1 %cmp.not
  br i1 %brmerge104, label %if.else54.do.body69_crit_edge, label %if.then61

if.else54.do.body69_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body69

if.then61:                                        ; preds = %if.else54
  %version.i105 = getelementptr i8, ptr %netdev, i32 28096
  %25 = ptrtoint ptr %version.i105 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %version.i105, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp.i106 = icmp ugt i8 %26, 3
  br i1 %cmp.i106, label %if.then.i108, label %if.then61.vmxnet3_disable_encap_offloads.exit_crit_edge

if.then61.vmxnet3_disable_encap_offloads.exit_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %vmxnet3_disable_encap_offloads.exit

if.then.i108:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  %hw_enc_features.i107 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 27
  %27 = ptrtoint ptr %hw_enc_features.i107 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %hw_enc_features.i107, align 16
  %and.i = and i64 %28, -1099714101642
  store i64 %and.i, ptr %hw_enc_features.i107, align 16
  br label %vmxnet3_disable_encap_offloads.exit

vmxnet3_disable_encap_offloads.exit:              ; preds = %if.then.i108, %if.then61.vmxnet3_disable_encap_offloads.exit_crit_edge
  %shared62 = getelementptr i8, ptr %netdev, i32 28064
  %29 = ptrtoint ptr %shared62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shared62, align 32
  %uptFeatures65 = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %30, i32 0, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %uptFeatures65 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %uptFeatures65, align 8
  %and66 = and i64 %32, -1152921504606846977
  store i64 %and66, ptr %uptFeatures65, align 8
  br label %do.body69

do.body69:                                        ; preds = %vmxnet3_disable_encap_offloads.exit, %if.else54.do.body69_crit_edge, %vmxnet3_enable_encap_offloads.exit
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !38
  tail call void @arm_heavy_mb() #15
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %33 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 151060170) #15, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call73) #15
  br label %if.end80

if.end80:                                         ; preds = %do.body69, %entry.if.end80_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vmxnet3_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vmxnet3_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @vmxnet3_driver_name, i32 noundef 32) #15
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.1, i32 noundef 32) #15
  %pdev = getelementptr i8, ptr %netdev, i32 28084
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vmxnet3_get_regs_len(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_intrs = getelementptr i8, ptr %netdev, i32 27400
  %0 = ptrtoint ptr %num_intrs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_intrs, align 8
  %conv = zext i8 %1 to i32
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 28112
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 16
  %mul = mul i32 %3, 17
  %add2 = add i32 %mul, %conv
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 28108
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 4
  %mul4 = mul i32 %5, 23
  %add5 = add i32 %add2, %mul4
  %add6 = shl i32 %add5, 2
  %mul7 = add i32 %add6, 48
  ret i32 %mul7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_get_regs(ptr noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_intrs.i = getelementptr i8, ptr %netdev, i32 27400
  %0 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_intrs.i, align 8
  %conv.i = zext i8 %1 to i32
  %num_tx_queues.i = getelementptr i8, ptr %netdev, i32 28112
  %2 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues.i, align 16
  %mul.i = mul i32 %3, 17
  %add2.i = add i32 %mul.i, %conv.i
  %num_rx_queues.i = getelementptr i8, ptr %netdev, i32 28108
  %4 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues.i, align 4
  %mul4.i = mul i32 %5, 23
  %add5.i = add i32 %add2.i, %mul4.i
  %add6.i = shl i32 %add5.i, 2
  %mul7.i = add i32 %add6.i, 48
  %6 = call ptr @memset(ptr %p, i32 0, i32 %mul7.i)
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %version, align 4
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %8 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr1, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !39
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !40
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %p, align 4
  %13 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr1, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #15, !srcloc !39
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !41
  %arrayidx12 = getelementptr i32, ptr %p, i32 1
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx12, align 4
  %18 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr1, align 4
  %add.ptr16 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #15, !srcloc !39
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %arrayidx21 = getelementptr i32, ptr %p, i32 2
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx21, align 4
  %23 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr1, align 4
  %add.ptr25 = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #15, !srcloc !39
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  %arrayidx30 = getelementptr i32, ptr %p, i32 3
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx30, align 4
  %28 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr1, align 4
  %add.ptr34 = getelementptr i8, ptr %29, i32 32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #15, !srcloc !39
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !44
  %arrayidx39 = getelementptr i32, ptr %p, i32 4
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx39, align 4
  %33 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr1, align 4
  %add.ptr43 = getelementptr i8, ptr %34, i32 40
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #15, !srcloc !39
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !45
  %arrayidx48 = getelementptr i32, ptr %p, i32 5
  %37 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx48, align 4
  %38 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr1, align 4
  %add.ptr52 = getelementptr i8, ptr %39, i32 48
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #15, !srcloc !39
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !46
  %arrayidx57 = getelementptr i32, ptr %p, i32 6
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx57, align 4
  %43 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr1, align 4
  %add.ptr61 = getelementptr i8, ptr %44, i32 56
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #15, !srcloc !39
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !47
  %arrayidx66 = getelementptr i32, ptr %p, i32 7
  %47 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx66, align 4
  %48 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr1, align 4
  %add.ptr70 = getelementptr i8, ptr %49, i32 64
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #15, !srcloc !39
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !48
  %arrayidx75 = getelementptr i32, ptr %p, i32 8
  %52 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx75, align 4
  %53 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_intrs.i, align 8
  %conv = zext i8 %54 to i32
  %arrayidx77 = getelementptr i32, ptr %p, i32 9
  %55 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv, ptr %arrayidx77, align 4
  %56 = load i8, ptr %num_intrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp493.not = icmp eq i8 %56, 0
  br i1 %cmp493.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw_addr0 = getelementptr i8, ptr %netdev, i32 28088
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0495 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.body.for.body_crit_edge ]
  %j.0494 = phi i32 [ 10, %for.body.lr.ph ], [ %inc88, %for.body.for.body_crit_edge ]
  %57 = ptrtoint ptr %hw_addr0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_addr0, align 8
  %mul = shl i32 %i.0495, 3
  %add.ptr84 = getelementptr i8, ptr %58, i32 %mul
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #15, !srcloc !39
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !49
  %inc88 = add nuw nsw i32 %j.0494, 1
  %arrayidx89 = getelementptr i32, ptr %p, i32 %j.0494
  %61 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx89, align 4
  %inc90 = add nuw nsw i32 %i.0495, 1
  %62 = ptrtoint ptr %num_intrs.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_intrs.i, align 8
  %conv80 = zext i8 %63 to i32
  %cmp = icmp ult i32 %inc90, %conv80
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 10, %entry.for.end_crit_edge ], [ %inc88, %for.body.for.end_crit_edge ]
  %64 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_tx_queues.i, align 16
  %arrayidx92 = getelementptr i32, ptr %p, i32 %j.0.lcssa
  %66 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx92, align 4
  %j.1496 = add i32 %j.0.lcssa, 1
  %67 = load i32, ptr %num_tx_queues.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp95497.not = icmp eq i32 %67, 0
  br i1 %cmp95497.not, label %for.end.for.end175_crit_edge, label %for.body97.lr.ph

for.end.for.end175_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end175

for.body97.lr.ph:                                 ; preds = %for.end
  %hw_addr0101 = getelementptr i8, ptr %netdev, i32 28088
  br label %for.body97

for.body97:                                       ; preds = %for.body97.for.body97_crit_edge, %for.body97.lr.ph
  %j.1500 = phi i32 [ %j.1496, %for.body97.lr.ph ], [ %j.1, %for.body97.for.body97_crit_edge ]
  %i.1499 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc174, %for.body97.for.body97_crit_edge ]
  %j.1.in498 = phi i32 [ %j.0.lcssa, %for.body97.lr.ph ], [ %inc168, %for.body97.for.body97_crit_edge ]
  %68 = ptrtoint ptr %hw_addr0101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw_addr0101, align 8
  %mul102 = shl i32 %i.1499, 3
  %add103 = add i32 %mul102, 1536
  %add.ptr104 = getelementptr i8, ptr %69, i32 %add103
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #15, !srcloc !39
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !50
  %inc108 = add i32 %j.1.in498, 2
  %arrayidx109 = getelementptr i32, ptr %p, i32 %j.1500
  %72 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx109, align 4
  %basePA = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 3, i32 5
  %73 = ptrtoint ptr %basePA to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %basePA, align 4
  %inc110 = add i32 %j.1.in498, 3
  %arrayidx111 = getelementptr i32, ptr %p, i32 %inc108
  %75 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx111, align 4
  %inc116 = add i32 %j.1.in498, 4
  %arrayidx117 = getelementptr i32, ptr %p, i32 %inc110
  %76 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx117, align 4
  %size = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 3, i32 1
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size, align 4
  %inc119 = add i32 %j.1.in498, 5
  %arrayidx120 = getelementptr i32, ptr %p, i32 %inc116
  %79 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx120, align 4
  %next2fill = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 3, i32 2
  %80 = ptrtoint ptr %next2fill to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %next2fill, align 8
  %inc122 = add i32 %j.1.in498, 6
  %arrayidx123 = getelementptr i32, ptr %p, i32 %inc119
  %82 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx123, align 4
  %next2comp = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 3, i32 3
  %83 = ptrtoint ptr %next2comp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %next2comp, align 4
  %inc125 = add i32 %j.1.in498, 7
  %arrayidx126 = getelementptr i32, ptr %p, i32 %inc122
  %85 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx126, align 4
  %gen = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 3, i32 4
  %86 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %gen, align 8
  %conv128 = zext i8 %87 to i32
  %inc129 = add i32 %j.1.in498, 8
  %arrayidx130 = getelementptr i32, ptr %p, i32 %inc125
  %88 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv128, ptr %arrayidx130, align 4
  %basePA131 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 5, i32 2
  %89 = ptrtoint ptr %basePA131 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %basePA131, align 4
  %inc132 = add i32 %j.1.in498, 9
  %arrayidx133 = getelementptr i32, ptr %p, i32 %inc129
  %91 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx133, align 4
  %inc139 = add i32 %j.1.in498, 10
  %arrayidx140 = getelementptr i32, ptr %p, i32 %inc132
  %92 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %arrayidx140, align 4
  %size142 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 5, i32 1
  %93 = ptrtoint ptr %size142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size142, align 4
  %inc143 = add i32 %j.1.in498, 11
  %arrayidx144 = getelementptr i32, ptr %p, i32 %inc139
  %95 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx144, align 4
  %txdata_desc_size = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 12
  %96 = ptrtoint ptr %txdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %txdata_desc_size, align 4
  %conv145 = zext i16 %97 to i32
  %inc146 = add i32 %j.1.in498, 12
  %arrayidx147 = getelementptr i32, ptr %p, i32 %inc143
  %98 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv145, ptr %arrayidx147, align 4
  %basePA148 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 6, i32 5
  %99 = ptrtoint ptr %basePA148 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %basePA148, align 16
  %inc149 = add i32 %j.1.in498, 13
  %arrayidx150 = getelementptr i32, ptr %p, i32 %inc146
  %101 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx150, align 4
  %inc156 = add i32 %j.1.in498, 14
  %arrayidx157 = getelementptr i32, ptr %p, i32 %inc149
  %102 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %arrayidx157, align 4
  %size159 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 6, i32 1
  %103 = ptrtoint ptr %size159 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size159, align 4
  %inc160 = add i32 %j.1.in498, 15
  %arrayidx161 = getelementptr i32, ptr %p, i32 %inc156
  %105 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx161, align 4
  %next2proc = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 6, i32 2
  %106 = ptrtoint ptr %next2proc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %next2proc, align 8
  %inc163 = add i32 %j.1.in498, 16
  %arrayidx164 = getelementptr i32, ptr %p, i32 %inc160
  %108 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx164, align 4
  %gen166 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 6, i32 3
  %109 = ptrtoint ptr %gen166 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %gen166, align 4
  %conv167 = zext i8 %110 to i32
  %inc168 = add i32 %j.1.in498, 17
  %arrayidx169 = getelementptr i32, ptr %p, i32 %inc163
  %111 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv167, ptr %arrayidx169, align 4
  %stopped = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %i.1499, i32 9
  %112 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %stopped, align 16, !range !51
  %114 = zext i8 %113 to i32
  %arrayidx172 = getelementptr i32, ptr %p, i32 %inc168
  %115 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx172, align 4
  %inc174 = add nuw i32 %i.1499, 1
  %j.1 = add i32 %j.1.in498, 18
  %116 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_tx_queues.i, align 16
  %cmp95 = icmp ult i32 %inc174, %117
  br i1 %cmp95, label %for.body97.for.body97_crit_edge, label %for.body97.for.end175_crit_edge

for.body97.for.end175_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end175

for.body97.for.body97_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body97

for.end175:                                       ; preds = %for.body97.for.end175_crit_edge, %for.end.for.end175_crit_edge
  %j.1.in.lcssa = phi i32 [ %j.0.lcssa, %for.end.for.end175_crit_edge ], [ %inc168, %for.body97.for.end175_crit_edge ]
  %j.1.lcssa = phi i32 [ %j.1496, %for.end.for.end175_crit_edge ], [ %j.1, %for.body97.for.end175_crit_edge ]
  %118 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_rx_queues.i, align 4
  %arrayidx177 = getelementptr i32, ptr %p, i32 %j.1.lcssa
  %120 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx177, align 4
  %121 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp180503.not = icmp eq i32 %121, 0
  br i1 %cmp180503.not, label %for.end175.for.end319_crit_edge, label %for.body182.lr.ph

for.end175.for.end319_crit_edge:                  ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end319

for.body182.lr.ph:                                ; preds = %for.end175
  %inc176 = add i32 %j.1.in.lcssa, 2
  %hw_addr0186 = getelementptr i8, ptr %netdev, i32 28088
  br label %for.body182

for.body182:                                      ; preds = %for.body182.for.body182_crit_edge, %for.body182.lr.ph
  %i.2505 = phi i32 [ 0, %for.body182.lr.ph ], [ %inc318, %for.body182.for.body182_crit_edge ]
  %j.2504 = phi i32 [ %inc176, %for.body182.lr.ph ], [ %inc315, %for.body182.for.body182_crit_edge ]
  %122 = ptrtoint ptr %hw_addr0186 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw_addr0186, align 8
  %mul187 = shl i32 %i.2505, 3
  %add188 = add i32 %mul187, 2048
  %add.ptr189 = getelementptr i8, ptr %123, i32 %add188
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #15, !srcloc !39
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !52
  %inc193 = add i32 %j.2504, 1
  %arrayidx194 = getelementptr i32, ptr %p, i32 %j.2504
  %126 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %arrayidx194, align 4
  %127 = ptrtoint ptr %hw_addr0186 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw_addr0186, align 8
  %add199 = add i32 %mul187, 2560
  %add.ptr200 = getelementptr i8, ptr %128, i32 %add199
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr200) #15, !srcloc !39
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !53
  %inc204 = add i32 %j.2504, 2
  %arrayidx205 = getelementptr i32, ptr %p, i32 %inc193
  %131 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx205, align 4
  %rx_ring = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 3
  %basePA207 = getelementptr inbounds %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 0, i32 5
  %132 = ptrtoint ptr %basePA207 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %basePA207, align 4
  %inc208 = add i32 %j.2504, 3
  %arrayidx209 = getelementptr i32, ptr %p, i32 %inc204
  %134 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx209, align 4
  %inc216 = add i32 %j.2504, 4
  %arrayidx217 = getelementptr i32, ptr %p, i32 %inc208
  %135 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %arrayidx217, align 4
  %size220 = getelementptr inbounds %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 0, i32 1
  %136 = ptrtoint ptr %size220 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %size220, align 4
  %inc221 = add i32 %j.2504, 5
  %arrayidx222 = getelementptr i32, ptr %p, i32 %inc216
  %138 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %arrayidx222, align 4
  %next2fill225 = getelementptr inbounds %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 0, i32 2
  %139 = ptrtoint ptr %next2fill225 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %next2fill225, align 8
  %inc226 = add i32 %j.2504, 6
  %arrayidx227 = getelementptr i32, ptr %p, i32 %inc221
  %141 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %arrayidx227, align 4
  %next2comp230 = getelementptr inbounds %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 0, i32 3
  %142 = ptrtoint ptr %next2comp230 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %next2comp230, align 4
  %inc231 = add i32 %j.2504, 7
  %arrayidx232 = getelementptr i32, ptr %p, i32 %inc226
  %144 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx232, align 4
  %gen235 = getelementptr inbounds %struct.vmxnet3_cmd_ring, ptr %rx_ring, i32 0, i32 4
  %145 = ptrtoint ptr %gen235 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %gen235, align 16
  %conv236 = zext i8 %146 to i32
  %inc237 = add i32 %j.2504, 8
  %arrayidx238 = getelementptr i32, ptr %p, i32 %inc231
  %147 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv236, ptr %arrayidx238, align 4
  %basePA241 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 3, i32 1, i32 5
  %148 = ptrtoint ptr %basePA241 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %basePA241, align 4
  %inc242 = add i32 %j.2504, 9
  %arrayidx243 = getelementptr i32, ptr %p, i32 %inc237
  %150 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %arrayidx243, align 4
  %inc250 = add i32 %j.2504, 10
  %arrayidx251 = getelementptr i32, ptr %p, i32 %inc242
  %151 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %arrayidx251, align 4
  %size254 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 3, i32 1, i32 1
  %152 = ptrtoint ptr %size254 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %size254, align 4
  %inc255 = add i32 %j.2504, 11
  %arrayidx256 = getelementptr i32, ptr %p, i32 %inc250
  %154 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx256, align 4
  %next2fill259 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 3, i32 1, i32 2
  %155 = ptrtoint ptr %next2fill259 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %next2fill259, align 8
  %inc260 = add i32 %j.2504, 12
  %arrayidx261 = getelementptr i32, ptr %p, i32 %inc255
  %157 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx261, align 4
  %next2comp264 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 3, i32 1, i32 3
  %158 = ptrtoint ptr %next2comp264 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %next2comp264, align 4
  %inc265 = add i32 %j.2504, 13
  %arrayidx266 = getelementptr i32, ptr %p, i32 %inc260
  %160 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx266, align 4
  %gen269 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 3, i32 1, i32 4
  %161 = ptrtoint ptr %gen269 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %gen269, align 8
  %conv270 = zext i8 %162 to i32
  %inc271 = add i32 %j.2504, 14
  %arrayidx272 = getelementptr i32, ptr %p, i32 %inc265
  %163 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv270, ptr %arrayidx272, align 4
  %basePA274 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 4, i32 1
  %164 = ptrtoint ptr %basePA274 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %basePA274, align 4
  %inc275 = add i32 %j.2504, 15
  %arrayidx276 = getelementptr i32, ptr %p, i32 %inc271
  %166 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx276, align 4
  %inc282 = add i32 %j.2504, 16
  %arrayidx283 = getelementptr i32, ptr %p, i32 %inc275
  %167 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %arrayidx283, align 4
  %168 = load i32, ptr %size220, align 4
  %inc287 = add i32 %j.2504, 17
  %arrayidx288 = getelementptr i32, ptr %p, i32 %inc282
  %169 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx288, align 4
  %desc_size = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 4, i32 2
  %170 = ptrtoint ptr %desc_size to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %desc_size, align 8
  %conv290 = zext i16 %171 to i32
  %inc291 = add i32 %j.2504, 18
  %arrayidx292 = getelementptr i32, ptr %p, i32 %inc287
  %172 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv290, ptr %arrayidx292, align 4
  %basePA294 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 5, i32 5
  %173 = ptrtoint ptr %basePA294 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %basePA294, align 4
  %inc295 = add i32 %j.2504, 19
  %arrayidx296 = getelementptr i32, ptr %p, i32 %inc291
  %175 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx296, align 4
  %inc302 = add i32 %j.2504, 20
  %arrayidx303 = getelementptr i32, ptr %p, i32 %inc295
  %176 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %arrayidx303, align 4
  %size305 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 5, i32 1
  %177 = ptrtoint ptr %size305 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %size305, align 4
  %inc306 = add i32 %j.2504, 21
  %arrayidx307 = getelementptr i32, ptr %p, i32 %inc302
  %179 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx307, align 4
  %next2proc309 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 5, i32 2
  %180 = ptrtoint ptr %next2proc309 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %next2proc309, align 4
  %inc310 = add i32 %j.2504, 22
  %arrayidx311 = getelementptr i32, ptr %p, i32 %inc306
  %182 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %arrayidx311, align 4
  %gen313 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.2505, i32 5, i32 3
  %183 = ptrtoint ptr %gen313 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %gen313, align 4
  %conv314 = zext i8 %184 to i32
  %inc315 = add i32 %j.2504, 23
  %arrayidx316 = getelementptr i32, ptr %p, i32 %inc310
  %185 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv314, ptr %arrayidx316, align 4
  %inc318 = add nuw i32 %i.2505, 1
  %186 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_rx_queues.i, align 4
  %cmp180 = icmp ult i32 %inc318, %187
  br i1 %cmp180, label %for.body182.for.body182_crit_edge, label %for.body182.for.end319_crit_edge

for.body182.for.end319_crit_edge:                 ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end319

for.body182.for.body182_crit_edge:                ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body182

for.end319:                                       ; preds = %for.body182.for.end319_crit_edge, %for.end175.for.end319_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vmxnet3_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %wol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 50, ptr %supported, align 4
  %wol1 = getelementptr i8, ptr %netdev, i32 28136
  %1 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wol1, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %wol2 = getelementptr i8, ptr %netdev, i32 28136
  %2 = ptrtoint ptr %wol2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %wol2, align 8
  %pdev = getelementptr i8, ptr %netdev, i32 28084
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4 = icmp ne i32 %1, 0
  %call5 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vmxnet3_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr i8, ptr %netdev, i32 28096
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ugt i8 %1, 2
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %coal_conf = getelementptr i8, ptr %netdev, i32 28228
  %2 = ptrtoint ptr %coal_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coal_conf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %7 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %use_adaptive_rx_coalesce, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tx_comp_depth = getelementptr inbounds %struct.Vmxnet3_CoalesceScheme, ptr %3, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %tx_comp_depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_comp_depth, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %10 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_max_coalesced_frames, align 4
  %11 = ptrtoint ptr %coal_conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %coal_conf, align 4
  %rx_depth = getelementptr inbounds %struct.Vmxnet3_CoalesceScheme, ptr %12, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %rx_depth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_depth, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %15 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rx_max_coalesced_frames, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %coalPara8 = getelementptr inbounds %struct.Vmxnet3_CoalesceScheme, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %coalPara8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %coalPara8, align 4
  %div = udiv i32 1000000, %17
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %18 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %rx_coalesce_usecs, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shared1 = getelementptr i8, ptr %netdev, i32 28064
  %0 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared1, align 32
  %cu = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 5
  %version = getelementptr i8, ptr %netdev, i32 28096
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %if.end, label %entry.cleanup114_crit_edge

entry.cleanup114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

if.end:                                           ; preds = %entry
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %6 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp3, label %land.lhs.true, label %if.then19

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.then49_crit_edge

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

land.lhs.true7:                                   ; preds = %land.lhs.true
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %8 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true7.if.end45_crit_edge

land.lhs.true7.if.end45_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %10 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true10.if.end45_crit_edge

land.lhs.true10.if.end45_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  %coal_conf = getelementptr i8, ptr %netdev, i32 28228
  %12 = ptrtoint ptr %coal_conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %coal_conf, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 16)
  %15 = load ptr, ptr %coal_conf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  br label %done

if.then19:                                        ; preds = %if.end
  br i1 %cmp5, label %lor.lhs.false, label %if.then19.cleanup114_crit_edge

if.then19.cleanup114_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

lor.lhs.false:                                    ; preds = %if.then19
  %tx_max_coalesced_frames23 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %17 = ptrtoint ptr %tx_max_coalesced_frames23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_max_coalesced_frames23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp24.not = icmp eq i32 %18, 0
  br i1 %cmp24.not, label %lor.lhs.false26, label %lor.lhs.false.cleanup114_crit_edge

lor.lhs.false.cleanup114_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %rx_max_coalesced_frames27 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %19 = ptrtoint ptr %rx_max_coalesced_frames27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_max_coalesced_frames27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp28.not = icmp ne i32 %20, 0
  %21 = add i32 %5, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9991, i32 %21)
  %22 = icmp ult i32 %21, -9991
  %or.cond = select i1 %cmp28.not, i1 true, i1 %22
  br i1 %or.cond, label %lor.lhs.false26.cleanup114_crit_edge, label %if.end39

lor.lhs.false26.cleanup114_crit_edge:             ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

if.end39:                                         ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #17
  %div = udiv i32 1000000, %5
  %coal_conf40 = getelementptr i8, ptr %netdev, i32 28228
  %23 = ptrtoint ptr %coal_conf40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %coal_conf40, align 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 16)
  %26 = load ptr, ptr %coal_conf40, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %26, align 4
  %28 = load ptr, ptr %coal_conf40, align 4
  %coalPara = getelementptr inbounds %struct.Vmxnet3_CoalesceScheme, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %coalPara to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div, ptr %coalPara, align 4
  br label %done

if.end45:                                         ; preds = %land.lhs.true10.if.end45_crit_edge, %land.lhs.true7.if.end45_crit_edge
  %30 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp47.not = icmp eq i32 %.pr, 0
  br i1 %cmp47.not, label %if.end62, label %if.end45.if.then49_crit_edge

if.end45.if.then49_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

if.then49:                                        ; preds = %if.end45.if.then49_crit_edge, %land.lhs.true.if.then49_crit_edge
  %tx_max_coalesced_frames50 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %31 = ptrtoint ptr %tx_max_coalesced_frames50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_max_coalesced_frames50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp51.not = icmp eq i32 %32, 0
  br i1 %cmp51.not, label %lor.lhs.false53, label %if.then49.cleanup114_crit_edge

if.then49.cleanup114_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

lor.lhs.false53:                                  ; preds = %if.then49
  %rx_max_coalesced_frames54 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %33 = ptrtoint ptr %rx_max_coalesced_frames54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_max_coalesced_frames54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp55.not = icmp eq i32 %34, 0
  br i1 %cmp55.not, label %if.end58, label %lor.lhs.false53.cleanup114_crit_edge

lor.lhs.false53.cleanup114_crit_edge:             ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

if.end58:                                         ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #17
  %coal_conf59 = getelementptr i8, ptr %netdev, i32 28228
  %35 = ptrtoint ptr %coal_conf59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %coal_conf59, align 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 16)
  %38 = load ptr, ptr %coal_conf59, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %38, align 4
  br label %done

if.end62:                                         ; preds = %if.end45
  %tx_max_coalesced_frames63 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %40 = ptrtoint ptr %tx_max_coalesced_frames63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_max_coalesced_frames63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp64.not = icmp eq i32 %41, 0
  br i1 %cmp64.not, label %lor.lhs.false66, label %if.then70

lor.lhs.false66:                                  ; preds = %if.end62
  %rx_max_coalesced_frames67 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %42 = ptrtoint ptr %rx_max_coalesced_frames67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_max_coalesced_frames67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp68.not = icmp eq i32 %43, 0
  br i1 %cmp68.not, label %lor.lhs.false66.done_crit_edge, label %lor.lhs.false66.lor.lhs.false74_crit_edge

lor.lhs.false66.lor.lhs.false74_crit_edge:        ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false74

lor.lhs.false66.done_crit_edge:                   ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %41)
  %cmp72 = icmp ugt i32 %41, 128
  br i1 %cmp72, label %if.then70.cleanup114_crit_edge, label %if.then70.lor.lhs.false74_crit_edge

if.then70.lor.lhs.false74_crit_edge:              ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false74

if.then70.cleanup114_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

lor.lhs.false74:                                  ; preds = %if.then70.lor.lhs.false74_crit_edge, %lor.lhs.false66.lor.lhs.false74_crit_edge
  %rx_max_coalesced_frames75 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %44 = ptrtoint ptr %rx_max_coalesced_frames75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_max_coalesced_frames75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %45)
  %cmp76 = icmp ugt i32 %45, 128
  br i1 %cmp76, label %lor.lhs.false74.cleanup114_crit_edge, label %if.end79

lor.lhs.false74.cleanup114_crit_edge:             ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

if.end79:                                         ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #17
  %coal_conf80 = getelementptr i8, ptr %netdev, i32 28228
  %46 = ptrtoint ptr %coal_conf80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %coal_conf80, align 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 16)
  %49 = load ptr, ptr %coal_conf80, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %49, align 4
  %51 = ptrtoint ptr %tx_max_coalesced_frames63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_max_coalesced_frames63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp eq i32 %52, 0
  %spec.select = select i1 %tobool.not, i32 64, i32 %52
  %53 = ptrtoint ptr %coal_conf80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %coal_conf80, align 4
  %tx_comp_depth = getelementptr inbounds %struct.Vmxnet3_CoalesceScheme, ptr %54, i32 0, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %tx_comp_depth to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select, ptr %tx_comp_depth, align 4
  %56 = ptrtoint ptr %rx_max_coalesced_frames75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_max_coalesced_frames75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool88.not = icmp eq i32 %57, 0
  %cond93 = select i1 %tobool88.not, i32 64, i32 %57
  %58 = ptrtoint ptr %coal_conf80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %coal_conf80, align 4
  %rx_depth = getelementptr inbounds %struct.Vmxnet3_CoalesceScheme, ptr %59, i32 0, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %rx_depth to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond93, ptr %rx_depth, align 4
  %61 = load ptr, ptr %coal_conf80, align 4
  %coalPara97 = getelementptr inbounds %struct.Vmxnet3_CoalesceScheme, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %coalPara97 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 64, ptr %coalPara97, align 4
  br label %done

done:                                             ; preds = %if.end79, %lor.lhs.false66.done_crit_edge, %if.end58, %if.end39, %if.then13
  %default_coal_mode = getelementptr i8, ptr %netdev, i32 28232
  %63 = ptrtoint ptr %default_coal_mode to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %default_coal_mode, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %done.cleanup114_crit_edge, label %do.body101

done.cleanup114_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

do.body101:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #15
  %66 = ptrtoint ptr %cu to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %cu, align 8
  %confLen = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %confLen to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 268435456, ptr %confLen, align 4
  %coal_conf_pa = getelementptr i8, ptr %netdev, i32 28132
  %68 = ptrtoint ptr %coal_conf_pa to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %coal_conf_pa, align 4
  %conv108 = zext i32 %69 to i64
  %70 = tail call i64 @llvm.bswap.i64(i64 %conv108)
  %confPA = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %confPA to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %confPA, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !54
  tail call void @arm_heavy_mb() #15
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %72 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %73, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 234946250) #15, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call105) #15
  br label %cleanup114

cleanup114:                                       ; preds = %do.body101, %done.cleanup114_crit_edge, %lor.lhs.false74.cleanup114_crit_edge, %if.then70.cleanup114_crit_edge, %lor.lhs.false53.cleanup114_crit_edge, %if.then49.cleanup114_crit_edge, %lor.lhs.false26.cleanup114_crit_edge, %lor.lhs.false.cleanup114_crit_edge, %if.then19.cleanup114_crit_edge, %entry.cleanup114_crit_edge
  %retval.1 = phi i32 [ -95, %entry.cleanup114_crit_edge ], [ -22, %if.then19.cleanup114_crit_edge ], [ -22, %lor.lhs.false.cleanup114_crit_edge ], [ -22, %lor.lhs.false26.cleanup114_crit_edge ], [ -22, %lor.lhs.false53.cleanup114_crit_edge ], [ -22, %if.then49.cleanup114_crit_edge ], [ -22, %lor.lhs.false74.cleanup114_crit_edge ], [ -22, %if.then70.cleanup114_crit_edge ], [ 0, %do.body101 ], [ 0, %done.cleanup114_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vmxnet3_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %version = getelementptr i8, ptr %netdev, i32 28096
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  %cond = select i1 %cmp, i32 2048, i32 0
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 3
  %5 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %rx_jumbo_max_pending, align 4
  %rx_ring_size = getelementptr i8, ptr %netdev, i32 28156
  %6 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_ring_size, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_pending, align 4
  %tx_ring_size = getelementptr i8, ptr %netdev, i32 28152
  %9 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_ring_size, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pending, align 4
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp4 = icmp ugt i8 %13, 2
  br i1 %cmp4, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rxdata_desc_size = getelementptr i8, ptr %netdev, i32 28166
  %14 = ptrtoint ptr %rxdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rxdata_desc_size, align 2
  %conv6 = zext i16 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond7 = phi i32 [ %conv6, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 6
  %16 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond7, ptr %rx_mini_pending, align 4
  %rx_ring2_size = getelementptr i8, ptr %netdev, i32 28160
  %17 = ptrtoint ptr %rx_ring2_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ring2_size, align 128
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 7
  %19 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rx_jumbo_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %0 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pending, align 4
  %2 = add i32 %1, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %2)
  %3 = icmp ult i32 %2, -4096
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = add i32 %5, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %6)
  %7 = icmp ult i32 %6, -4096
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 7
  %8 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_jumbo_pending, align 4
  %10 = add i32 %9, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %10)
  %11 = icmp ult i32 %10, -4096
  br i1 %11, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %rx_buf_per_pkt = getelementptr i8, ptr %netdev, i32 28120
  %12 = ptrtoint ptr %rx_buf_per_pkt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buf_per_pkt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15 = icmp eq i32 %13, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.2) #18
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %version = getelementptr i8, ptr %netdev, i32 28096
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp18 = icmp ugt i8 %15, 2
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 6
  %16 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_mini_pending, align 4
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %17)
  %cmp21 = icmp ugt i32 %17, 2048
  br i1 %cmp21, label %if.then20.cleanup_crit_edge, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp26.not = icmp eq i32 %17, 0
  br i1 %cmp26.not, label %if.else.if.end30_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.then20.if.end30_crit_edge
  %add = add nuw nsw i32 %1, 31
  %and = and i32 %add, -32
  %18 = tail call i32 @llvm.umin.i32(i32 %and, i32 4096)
  %mul = shl i32 %13, 5
  %add43 = add nsw i32 %5, -1
  %sub = add i32 %add43, %mul
  %19 = urem i32 %sub, %mul
  %mul44 = sub i32 %sub, %19
  %20 = urem i32 4096, %mul
  %mul46 = sub nuw nsw i32 4096, %20
  %21 = tail call i32 @llvm.umin.i32(i32 %mul44, i32 %mul46)
  %add63 = add nuw nsw i32 %9, 31
  %and64 = and i32 %add63, -32
  %22 = tail call i32 @llvm.umin.i32(i32 %and64, i32 4096)
  %rx_mini_pending72 = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 6
  %23 = ptrtoint ptr %rx_mini_pending72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_mini_pending72, align 4
  %25 = add i32 %24, 63
  %conv75 = and i32 %25, 65472
  %26 = tail call i32 @llvm.umin.i32(i32 %conv75, i32 2048)
  %27 = trunc i32 %26 to i16
  %tx_ring_size = getelementptr i8, ptr %netdev, i32 28152
  %28 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_ring_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %29)
  %cmp88 = icmp eq i32 %18, %29
  br i1 %cmp88, label %land.lhs.true, label %if.end30.if.end101_crit_edge

if.end30.if.end101_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

land.lhs.true:                                    ; preds = %if.end30
  %rx_ring_size = getelementptr i8, ptr %netdev, i32 28156
  %30 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %31)
  %cmp90 = icmp eq i32 %21, %31
  br i1 %cmp90, label %land.lhs.true92, label %land.lhs.true.if.end101_crit_edge

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

land.lhs.true92:                                  ; preds = %land.lhs.true
  %rx_ring2_size = getelementptr i8, ptr %netdev, i32 28160
  %32 = ptrtoint ptr %rx_ring2_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_ring2_size, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %33)
  %cmp93 = icmp eq i32 %22, %33
  br i1 %cmp93, label %land.lhs.true95, label %land.lhs.true92.if.end101_crit_edge

land.lhs.true92.if.end101_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %rxdata_desc_size = getelementptr i8, ptr %netdev, i32 28166
  %34 = ptrtoint ptr %rxdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rxdata_desc_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %27)
  %cmp98 = icmp eq i16 %35, %27
  br i1 %cmp98, label %land.lhs.true95.cleanup_crit_edge, label %land.lhs.true95.if.end101_crit_edge

land.lhs.true95.if.end101_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

land.lhs.true95.cleanup_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end101:                                        ; preds = %land.lhs.true95.if.end101_crit_edge, %land.lhs.true92.if.end101_crit_edge, %land.lhs.true.if.end101_crit_edge, %if.end30.if.end101_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 28220
  %call102225 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102225)
  %tobool.not226 = icmp eq i32 %call102225, 0
  br i1 %tobool.not226, label %if.end101.while.end_crit_edge, label %if.end101.while.body_crit_edge

if.end101.while.body_crit_edge:                   ; preds = %if.end101
  br label %while.body

if.end101.while.end_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end101.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #15
  %call102 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #15
  %tobool.not = icmp eq i32 %call102, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end101.while.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %while.end.out_crit_edge, label %if.then104

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then104:                                       ; preds = %while.end
  %call105 = tail call i32 @vmxnet3_quiesce_dev(ptr noundef %add.ptr.i) #15
  tail call void @vmxnet3_reset_dev(ptr noundef %add.ptr.i) #15
  tail call void @vmxnet3_tq_destroy_all(ptr noundef %add.ptr.i) #15
  tail call void @vmxnet3_rq_destroy_all(ptr noundef %add.ptr.i) #15
  %txdata_desc_size = getelementptr i8, ptr %netdev, i32 28164
  %38 = ptrtoint ptr %txdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %txdata_desc_size, align 4
  %call106 = tail call i32 @vmxnet3_create_queues(ptr noundef %add.ptr.i, i32 noundef %18, i32 noundef %21, i32 noundef %22, i16 noundef zeroext %39, i16 noundef zeroext %27) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then104.if.end120_crit_edge, label %if.then108

if.then104.if.end120_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

if.then108:                                       ; preds = %if.then104
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.3) #18
  %40 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp111 = icmp ugt i8 %41, 2
  %conv114 = select i1 %cmp111, i16 128, i16 0
  %42 = ptrtoint ptr %txdata_desc_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %txdata_desc_size, align 4
  %call116 = tail call i32 @vmxnet3_create_queues(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 1024, i32 noundef 256, i16 noundef zeroext %43, i16 noundef zeroext %conv114) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then108.if.end120_crit_edge, label %out.thread

if.then108.if.end120_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

out.thread:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.4) #18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #15
  br label %if.then132

if.end120:                                        ; preds = %if.then108.if.end120_crit_edge, %if.then104.if.end120_crit_edge
  %new_rx_ring2_size.0 = phi i32 [ 256, %if.then108.if.end120_crit_edge ], [ %22, %if.then104.if.end120_crit_edge ]
  %new_rxdata_desc_size.0 = phi i16 [ %conv114, %if.then108.if.end120_crit_edge ], [ %27, %if.then104.if.end120_crit_edge ]
  %new_rx_ring_size.0 = phi i32 [ 1024, %if.then108.if.end120_crit_edge ], [ %21, %if.then104.if.end120_crit_edge ]
  %new_tx_ring_size.0 = phi i32 [ 512, %if.then108.if.end120_crit_edge ], [ %18, %if.then104.if.end120_crit_edge ]
  %call121 = tail call i32 @vmxnet3_activate_dev(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end120.out_crit_edge, label %if.then123

if.end120.out_crit_edge:                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.5, i32 noundef %call121) #18
  br label %out

out:                                              ; preds = %if.then123, %if.end120.out_crit_edge, %while.end.out_crit_edge
  %new_rx_ring2_size.1 = phi i32 [ %new_rx_ring2_size.0, %if.then123 ], [ %new_rx_ring2_size.0, %if.end120.out_crit_edge ], [ %22, %while.end.out_crit_edge ]
  %new_rxdata_desc_size.1 = phi i16 [ %new_rxdata_desc_size.0, %if.then123 ], [ %new_rxdata_desc_size.0, %if.end120.out_crit_edge ], [ %27, %while.end.out_crit_edge ]
  %err.0 = phi i32 [ %call121, %if.then123 ], [ 0, %if.end120.out_crit_edge ], [ 0, %while.end.out_crit_edge ]
  %new_rx_ring_size.1 = phi i32 [ %new_rx_ring_size.0, %if.then123 ], [ %new_rx_ring_size.0, %if.end120.out_crit_edge ], [ %21, %while.end.out_crit_edge ]
  %new_tx_ring_size.1 = phi i32 [ %new_tx_ring_size.0, %if.then123 ], [ %new_tx_ring_size.0, %if.end120.out_crit_edge ], [ %18, %while.end.out_crit_edge ]
  %44 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %new_tx_ring_size.1, ptr %tx_ring_size, align 8
  %rx_ring_size127 = getelementptr i8, ptr %netdev, i32 28156
  %45 = ptrtoint ptr %rx_ring_size127 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %new_rx_ring_size.1, ptr %rx_ring_size127, align 4
  %rx_ring2_size128 = getelementptr i8, ptr %netdev, i32 28160
  %46 = ptrtoint ptr %rx_ring2_size128 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %new_rx_ring2_size.1, ptr %rx_ring2_size128, align 128
  %rxdata_desc_size129 = getelementptr i8, ptr %netdev, i32 28166
  %47 = ptrtoint ptr %rxdata_desc_size129 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %new_rxdata_desc_size.1, ptr %rxdata_desc_size129, align 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool131.not = icmp eq i32 %err.0, 0
  br i1 %tobool131.not, label %out.cleanup_crit_edge, label %out.if.then132_crit_edge

out.if.then132_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then132

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then132:                                       ; preds = %out.if.then132_crit_edge, %out.thread
  %err.1223 = phi i32 [ %call116, %out.thread ], [ %err.0, %out.if.then132_crit_edge ]
  tail call void @vmxnet3_force_close(ptr noundef %add.ptr.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %out.cleanup_crit_edge, %land.lhs.true95.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then16, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true95.cleanup_crit_edge ], [ %err.1223, %if.then132 ], [ 0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %buf) #0 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 28112
  %1 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp172.not = icmp eq i32 %2, 0
  br i1 %cmp172.not, label %for.cond.preheader.for.cond17.preheader_crit_edge, label %for.cond.preheader.for.cond2.preheader_crit_edge

for.cond.preheader.for.cond2.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond2.preheader

for.cond.preheader.for.cond17.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond17.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.for.cond2.preheader_crit_edge, %for.cond.preheader.for.cond2.preheader_crit_edge
  %j.073 = phi i32 [ %inc15, %for.cond2.preheader.for.cond2.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond2.preheader_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef nonnull @vmxnet3_tq_dev_stats) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 1)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 2)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 3)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 4)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 5)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 6)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 7)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 8)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 9)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_dev_stats, i32 0, i32 10)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef nonnull @vmxnet3_tq_driver_stats) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 1)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 2)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 3)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 4)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 5)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 6)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 7)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([9 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_tq_driver_stats, i32 0, i32 8)) #15
  %inc15 = add nuw i32 %j.073, 1
  %3 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues, align 16
  %cmp1 = icmp ult i32 %inc15, %4
  br i1 %cmp1, label %for.cond2.preheader.for.cond2.preheader_crit_edge, label %for.cond2.preheader.for.cond17.preheader_crit_edge

for.cond2.preheader.for.cond17.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond17.preheader

for.cond2.preheader.for.cond2.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader

for.cond17.preheader:                             ; preds = %for.cond2.preheader.for.cond17.preheader_crit_edge, %for.cond.preheader.for.cond17.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 28108
  %5 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1876.not = icmp eq i32 %6, 0
  br i1 %cmp1876.not, label %for.cond17.preheader.for.body43_crit_edge, label %for.cond17.preheader.for.cond20.preheader_crit_edge

for.cond17.preheader.for.cond20.preheader_crit_edge: ; preds = %for.cond17.preheader
  br label %for.cond20.preheader

for.cond17.preheader.for.body43_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body43

for.cond20.preheader:                             ; preds = %for.cond20.preheader.for.cond20.preheader_crit_edge, %for.cond17.preheader.for.cond20.preheader_crit_edge
  %j.177 = phi i32 [ %inc39, %for.cond20.preheader.for.cond20.preheader_crit_edge ], [ 0, %for.cond17.preheader.for.cond20.preheader_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef nonnull @vmxnet3_rq_dev_stats) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 1)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 2)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 3)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 4)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 5)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 6)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 7)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 8)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 9)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([11 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_dev_stats, i32 0, i32 10)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef nonnull @vmxnet3_rq_driver_stats) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([4 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_driver_stats, i32 0, i32 1)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([4 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_driver_stats, i32 0, i32 2)) #15
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef getelementptr inbounds ([4 x %struct.vmxnet3_stat_desc], ptr @vmxnet3_rq_driver_stats, i32 0, i32 3)) #15
  %inc39 = add nuw i32 %j.177, 1
  %7 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_rx_queues, align 4
  %cmp18 = icmp ult i32 %inc39, %8
  br i1 %cmp18, label %for.cond20.preheader.for.cond20.preheader_crit_edge, label %for.cond20.preheader.for.body43_crit_edge

for.cond20.preheader.for.body43_crit_edge:        ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body43

for.cond20.preheader.for.cond20.preheader_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond20.preheader

for.body43:                                       ; preds = %for.cond20.preheader.for.body43_crit_edge, %for.cond17.preheader.for.body43_crit_edge
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buf.addr, ptr noundef nonnull @vmxnet3_global_stats) #15
  br label %cleanup

cleanup:                                          ; preds = %for.body43, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmxnet3_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !55
  tail call void @arm_heavy_mb() #15
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %0 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16780784) #15, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call3) #15
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 28112
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10130.not = icmp eq i32 %3, 0
  br i1 %cmp10130.not, label %entry.for.cond37.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond37.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond37.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tqd_start = getelementptr i8, ptr %netdev, i32 28072
  br label %for.body

for.cond37.preheader:                             ; preds = %for.body.for.cond37.preheader_crit_edge, %entry.for.cond37.preheader_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.for.cond37.preheader_crit_edge ], [ %incdec.ptr30.8, %for.body.for.cond37.preheader_crit_edge ]
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 28108
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp38138.not = icmp eq i32 %5, 0
  br i1 %cmp38138.not, label %for.cond37.preheader.for.cond72.preheader_crit_edge, label %for.body40.lr.ph

for.cond37.preheader.for.cond72.preheader_crit_edge: ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond72.preheader

for.body40.lr.ph:                                 ; preds = %for.cond37.preheader
  %rqd_start = getelementptr i8, ptr %netdev, i32 28076
  br label %for.body40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf.addr.0132 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr30.8, %for.body.for.body_crit_edge ]
  %j.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %tqd_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tqd_start, align 8
  %stats12 = getelementptr %struct.Vmxnet3_TxQueueDesc, ptr %7, i32 %j.0131, i32 3
  %conv13 = sext i32 %j.0131 to i64
  %8 = ptrtoint ptr %buf.addr.0132 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv13, ptr %buf.addr.0132, align 8
  %buf.addr.1125 = getelementptr i64, ptr %buf.addr.0132, i32 1
  %9 = ptrtoint ptr %stats12 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stats12, align 8
  %11 = ptrtoint ptr %buf.addr.1125 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %buf.addr.1125, align 8
  %buf.addr.1 = getelementptr i64, ptr %buf.addr.0132, i32 2
  %add.ptr19.1 = getelementptr i8, ptr %stats12, i32 8
  %12 = ptrtoint ptr %add.ptr19.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr19.1, align 8
  %14 = ptrtoint ptr %buf.addr.1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %buf.addr.1, align 8
  %buf.addr.1.1 = getelementptr i64, ptr %buf.addr.0132, i32 3
  %add.ptr19.2 = getelementptr i8, ptr %stats12, i32 16
  %15 = ptrtoint ptr %add.ptr19.2 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr19.2, align 8
  %17 = ptrtoint ptr %buf.addr.1.1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %buf.addr.1.1, align 8
  %buf.addr.1.2 = getelementptr i64, ptr %buf.addr.0132, i32 4
  %add.ptr19.3 = getelementptr i8, ptr %stats12, i32 24
  %18 = ptrtoint ptr %add.ptr19.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr19.3, align 8
  %20 = ptrtoint ptr %buf.addr.1.2 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %buf.addr.1.2, align 8
  %buf.addr.1.3 = getelementptr i64, ptr %buf.addr.0132, i32 5
  %add.ptr19.4 = getelementptr i8, ptr %stats12, i32 32
  %21 = ptrtoint ptr %add.ptr19.4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr19.4, align 8
  %23 = ptrtoint ptr %buf.addr.1.3 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %buf.addr.1.3, align 8
  %buf.addr.1.4 = getelementptr i64, ptr %buf.addr.0132, i32 6
  %add.ptr19.5 = getelementptr i8, ptr %stats12, i32 40
  %24 = ptrtoint ptr %add.ptr19.5 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr19.5, align 8
  %26 = ptrtoint ptr %buf.addr.1.4 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %buf.addr.1.4, align 8
  %buf.addr.1.5 = getelementptr i64, ptr %buf.addr.0132, i32 7
  %add.ptr19.6 = getelementptr i8, ptr %stats12, i32 48
  %27 = ptrtoint ptr %add.ptr19.6 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr19.6, align 8
  %29 = ptrtoint ptr %buf.addr.1.5 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %buf.addr.1.5, align 8
  %buf.addr.1.6 = getelementptr i64, ptr %buf.addr.0132, i32 8
  %add.ptr19.7 = getelementptr i8, ptr %stats12, i32 56
  %30 = ptrtoint ptr %add.ptr19.7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr19.7, align 8
  %32 = ptrtoint ptr %buf.addr.1.6 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %buf.addr.1.6, align 8
  %buf.addr.1.7 = getelementptr i64, ptr %buf.addr.0132, i32 9
  %add.ptr19.8 = getelementptr i8, ptr %stats12, i32 64
  %33 = ptrtoint ptr %add.ptr19.8 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr19.8, align 8
  %35 = ptrtoint ptr %buf.addr.1.7 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %buf.addr.1.7, align 8
  %buf.addr.1.8 = getelementptr i64, ptr %buf.addr.0132, i32 10
  %add.ptr19.9 = getelementptr i8, ptr %stats12, i32 72
  %36 = ptrtoint ptr %add.ptr19.9 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr19.9, align 8
  %38 = ptrtoint ptr %buf.addr.1.8 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %buf.addr.1.8, align 8
  %buf.addr.1.9 = getelementptr i64, ptr %buf.addr.0132, i32 11
  %stats22 = getelementptr [32 x %struct.vmxnet3_tx_queue], ptr %add.ptr.i, i32 0, i32 %j.0131, i32 8
  %39 = ptrtoint ptr %stats22 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %stats22, align 8
  %incdec.ptr30 = getelementptr i64, ptr %buf.addr.0132, i32 12
  %41 = ptrtoint ptr %buf.addr.1.9 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %buf.addr.1.9, align 8
  %add.ptr29.1 = getelementptr i8, ptr %stats22, i32 8
  %42 = ptrtoint ptr %add.ptr29.1 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr29.1, align 8
  %incdec.ptr30.1 = getelementptr i64, ptr %buf.addr.0132, i32 13
  %44 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %incdec.ptr30, align 8
  %add.ptr29.2 = getelementptr i8, ptr %stats22, i32 16
  %45 = ptrtoint ptr %add.ptr29.2 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr29.2, align 8
  %incdec.ptr30.2 = getelementptr i64, ptr %buf.addr.0132, i32 14
  %47 = ptrtoint ptr %incdec.ptr30.1 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %incdec.ptr30.1, align 8
  %add.ptr29.3 = getelementptr i8, ptr %stats22, i32 24
  %48 = ptrtoint ptr %add.ptr29.3 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr29.3, align 8
  %incdec.ptr30.3 = getelementptr i64, ptr %buf.addr.0132, i32 15
  %50 = ptrtoint ptr %incdec.ptr30.2 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %incdec.ptr30.2, align 8
  %add.ptr29.4 = getelementptr i8, ptr %stats22, i32 32
  %51 = ptrtoint ptr %add.ptr29.4 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr29.4, align 8
  %incdec.ptr30.4 = getelementptr i64, ptr %buf.addr.0132, i32 16
  %53 = ptrtoint ptr %incdec.ptr30.3 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %incdec.ptr30.3, align 8
  %add.ptr29.5 = getelementptr i8, ptr %stats22, i32 40
  %54 = ptrtoint ptr %add.ptr29.5 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr29.5, align 8
  %incdec.ptr30.5 = getelementptr i64, ptr %buf.addr.0132, i32 17
  %56 = ptrtoint ptr %incdec.ptr30.4 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %incdec.ptr30.4, align 8
  %add.ptr29.6 = getelementptr i8, ptr %stats22, i32 48
  %57 = ptrtoint ptr %add.ptr29.6 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr29.6, align 8
  %incdec.ptr30.6 = getelementptr i64, ptr %buf.addr.0132, i32 18
  %59 = ptrtoint ptr %incdec.ptr30.5 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %incdec.ptr30.5, align 8
  %add.ptr29.7 = getelementptr i8, ptr %stats22, i32 56
  %60 = ptrtoint ptr %add.ptr29.7 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %add.ptr29.7, align 8
  %incdec.ptr30.7 = getelementptr i64, ptr %buf.addr.0132, i32 19
  %62 = ptrtoint ptr %incdec.ptr30.6 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %incdec.ptr30.6, align 8
  %add.ptr29.8 = getelementptr i8, ptr %stats22, i32 64
  %63 = ptrtoint ptr %add.ptr29.8 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr29.8, align 8
  %incdec.ptr30.8 = getelementptr i64, ptr %buf.addr.0132, i32 20
  %65 = ptrtoint ptr %incdec.ptr30.7 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %incdec.ptr30.7, align 8
  %inc35 = add nuw i32 %j.0131, 1
  %66 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_tx_queues, align 16
  %cmp10 = icmp ult i32 %inc35, %67
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.cond37.preheader_crit_edge

for.body.for.cond37.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond37.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond72.preheader:                             ; preds = %for.body40.for.cond72.preheader_crit_edge, %for.cond37.preheader.for.cond72.preheader_crit_edge
  %buf.addr.3.lcssa = phi ptr [ %buf.addr.0.lcssa, %for.cond37.preheader.for.cond72.preheader_crit_edge ], [ %incdec.ptr65.3, %for.body40.for.cond72.preheader_crit_edge ]
  %add.ptr78 = getelementptr i8, ptr %netdev, i32 28144
  %68 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %add.ptr78, align 8
  %70 = ptrtoint ptr %buf.addr.3.lcssa to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %buf.addr.3.lcssa, align 8
  ret void

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body40.lr.ph
  %buf.addr.3140 = phi ptr [ %buf.addr.0.lcssa, %for.body40.lr.ph ], [ %incdec.ptr65.3, %for.body40.for.body40_crit_edge ]
  %j.1139 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc70, %for.body40.for.body40_crit_edge ]
  %71 = ptrtoint ptr %rqd_start to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rqd_start, align 4
  %stats42 = getelementptr %struct.Vmxnet3_RxQueueDesc, ptr %72, i32 %j.1139, i32 3
  %conv43 = sext i32 %j.1139 to i64
  %73 = ptrtoint ptr %buf.addr.3140 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv43, ptr %buf.addr.3140, align 8
  %buf.addr.4133 = getelementptr i64, ptr %buf.addr.3140, i32 1
  %74 = ptrtoint ptr %stats42 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %stats42, align 8
  %76 = ptrtoint ptr %buf.addr.4133 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %buf.addr.4133, align 8
  %buf.addr.4 = getelementptr i64, ptr %buf.addr.3140, i32 2
  %add.ptr51.1 = getelementptr i8, ptr %stats42, i32 8
  %77 = ptrtoint ptr %add.ptr51.1 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %add.ptr51.1, align 8
  %79 = ptrtoint ptr %buf.addr.4 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %buf.addr.4, align 8
  %buf.addr.4.1 = getelementptr i64, ptr %buf.addr.3140, i32 3
  %add.ptr51.2 = getelementptr i8, ptr %stats42, i32 16
  %80 = ptrtoint ptr %add.ptr51.2 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %add.ptr51.2, align 8
  %82 = ptrtoint ptr %buf.addr.4.1 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %buf.addr.4.1, align 8
  %buf.addr.4.2 = getelementptr i64, ptr %buf.addr.3140, i32 4
  %add.ptr51.3 = getelementptr i8, ptr %stats42, i32 24
  %83 = ptrtoint ptr %add.ptr51.3 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %add.ptr51.3, align 8
  %85 = ptrtoint ptr %buf.addr.4.2 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %buf.addr.4.2, align 8
  %buf.addr.4.3 = getelementptr i64, ptr %buf.addr.3140, i32 5
  %add.ptr51.4 = getelementptr i8, ptr %stats42, i32 32
  %86 = ptrtoint ptr %add.ptr51.4 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %add.ptr51.4, align 8
  %88 = ptrtoint ptr %buf.addr.4.3 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %buf.addr.4.3, align 8
  %buf.addr.4.4 = getelementptr i64, ptr %buf.addr.3140, i32 6
  %add.ptr51.5 = getelementptr i8, ptr %stats42, i32 40
  %89 = ptrtoint ptr %add.ptr51.5 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %add.ptr51.5, align 8
  %91 = ptrtoint ptr %buf.addr.4.4 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %buf.addr.4.4, align 8
  %buf.addr.4.5 = getelementptr i64, ptr %buf.addr.3140, i32 7
  %add.ptr51.6 = getelementptr i8, ptr %stats42, i32 48
  %92 = ptrtoint ptr %add.ptr51.6 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %add.ptr51.6, align 8
  %94 = ptrtoint ptr %buf.addr.4.5 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %buf.addr.4.5, align 8
  %buf.addr.4.6 = getelementptr i64, ptr %buf.addr.3140, i32 8
  %add.ptr51.7 = getelementptr i8, ptr %stats42, i32 56
  %95 = ptrtoint ptr %add.ptr51.7 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %add.ptr51.7, align 8
  %97 = ptrtoint ptr %buf.addr.4.6 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %buf.addr.4.6, align 8
  %buf.addr.4.7 = getelementptr i64, ptr %buf.addr.3140, i32 9
  %add.ptr51.8 = getelementptr i8, ptr %stats42, i32 64
  %98 = ptrtoint ptr %add.ptr51.8 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %add.ptr51.8, align 8
  %100 = ptrtoint ptr %buf.addr.4.7 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %buf.addr.4.7, align 8
  %buf.addr.4.8 = getelementptr i64, ptr %buf.addr.3140, i32 10
  %add.ptr51.9 = getelementptr i8, ptr %stats42, i32 72
  %101 = ptrtoint ptr %add.ptr51.9 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %add.ptr51.9, align 8
  %103 = ptrtoint ptr %buf.addr.4.8 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %buf.addr.4.8, align 8
  %buf.addr.4.9 = getelementptr i64, ptr %buf.addr.3140, i32 11
  %stats57 = getelementptr %struct.vmxnet3_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %j.1139, i32 12
  %104 = ptrtoint ptr %stats57 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %stats57, align 8
  %incdec.ptr65 = getelementptr i64, ptr %buf.addr.3140, i32 12
  %106 = ptrtoint ptr %buf.addr.4.9 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %buf.addr.4.9, align 8
  %add.ptr64.1 = getelementptr i8, ptr %stats57, i32 8
  %107 = ptrtoint ptr %add.ptr64.1 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %add.ptr64.1, align 8
  %incdec.ptr65.1 = getelementptr i64, ptr %buf.addr.3140, i32 13
  %109 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %incdec.ptr65, align 8
  %add.ptr64.2 = getelementptr i8, ptr %stats57, i32 16
  %110 = ptrtoint ptr %add.ptr64.2 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %add.ptr64.2, align 8
  %incdec.ptr65.2 = getelementptr i64, ptr %buf.addr.3140, i32 14
  %112 = ptrtoint ptr %incdec.ptr65.1 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %incdec.ptr65.1, align 8
  %add.ptr64.3 = getelementptr i8, ptr %stats57, i32 24
  %113 = ptrtoint ptr %add.ptr64.3 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %add.ptr64.3, align 8
  %incdec.ptr65.3 = getelementptr i64, ptr %buf.addr.3140, i32 15
  %115 = ptrtoint ptr %incdec.ptr65.2 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %incdec.ptr65.2, align 8
  %inc70 = add nuw i32 %j.1139, 1
  %116 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_rx_queues, align 4
  %cmp38 = icmp ult i32 %inc70, %117
  br i1 %cmp38, label %for.body40.for.body40_crit_edge, label %for.body40.for.cond72.preheader_crit_edge

for.body40.for.cond72.preheader_crit_edge:        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond72.preheader

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body40
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vmxnet3_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 28112
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 16
  %mul = mul i32 %1, 20
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 28108
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 4
  %mul1 = mul i32 %3, 15
  %add = or i32 %mul, 1
  %add2 = add i32 %add, %mul1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add2, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_get_rxnfc(ptr noundef %netdev, ptr nocapture noundef %info, ptr nocapture noundef readnone %rules) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 41, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 28108
  %3 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_queues, align 4
  %conv = zext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %version = getelementptr i8, ptr %netdev, i32 28096
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ugt i8 %7, 3
  br i1 %cmp, label %if.end, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  %rss = getelementptr i8, ptr %netdev, i32 28104
  %8 = ptrtoint ptr %rss to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rss, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.sw.epilog_crit_edge, label %if.end5

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end5:                                          ; preds = %if.end
  %netdev.i = getelementptr i8, ptr %netdev, i32 28080
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i, align 16
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %cmd_lock.i = getelementptr i8, ptr %netdev, i32 28020
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !56
  tail call void @arm_heavy_mb() #15
  %hw_addr1.i = getelementptr i8, ptr %netdev, i32 28092
  %14 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 201330160) #15, !srcloc !34
  %16 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #15, !srcloc !39
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call3.i) #15
  br label %if.end.i

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %rss_fields15.i = getelementptr i8, ptr %netdev, i32 28172
  %20 = ptrtoint ptr %rss_fields15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rss_fields15.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %rss_fields.0.i = phi i32 [ %19, %if.then.i ], [ %21, %if.else.i ]
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %data.i, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flow_type.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %24, label %if.end.i.sw.epilog_crit_edge [
    i32 1, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 5, label %if.end.i.cleanup.sink.split.i_crit_edge13
    i32 2, label %sw.bb17.i
    i32 4, label %if.end.i.sw.bb24.i_crit_edge
    i32 9, label %if.end.i.sw.bb24.i_crit_edge14
    i32 10, label %if.end.i.sw.bb24.i_crit_edge15
    i32 3, label %if.end.i.cleanup.sink.split.sink.split.i_crit_edge
    i32 16, label %if.end.i.cleanup.sink.split.sink.split.i_crit_edge16
    i32 6, label %sw.bb34.i
    i32 8, label %if.end.i.sw.bb43.i_crit_edge
    i32 11, label %if.end.i.sw.bb43.i_crit_edge17
    i32 12, label %if.end.i.sw.bb43.i_crit_edge18
    i32 7, label %if.end.i.cleanup.sink.split.sink.split.i_crit_edge19
    i32 17, label %if.end.i.cleanup.sink.split.sink.split.i_crit_edge20
  ]

if.end.i.cleanup.sink.split.sink.split.i_crit_edge20: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

if.end.i.cleanup.sink.split.sink.split.i_crit_edge19: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

if.end.i.sw.bb43.i_crit_edge18:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43.i

if.end.i.sw.bb43.i_crit_edge17:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43.i

if.end.i.sw.bb43.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43.i

if.end.i.cleanup.sink.split.sink.split.i_crit_edge16: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

if.end.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

if.end.i.sw.bb24.i_crit_edge15:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb24.i

if.end.i.sw.bb24.i_crit_edge14:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb24.i

if.end.i.sw.bb24.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb24.i

if.end.i.cleanup.sink.split.i_crit_edge13:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb17.i:                                        ; preds = %if.end.i
  %and.i = and i32 %rss_fields.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb17.i.cleanup.sink.split.sink.split.i_crit_edge, label %sw.bb17.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge

sw.bb17.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.sink.split.i

sw.bb17.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

sw.bb24.i:                                        ; preds = %if.end.i.sw.bb24.i_crit_edge, %if.end.i.sw.bb24.i_crit_edge14, %if.end.i.sw.bb24.i_crit_edge15
  %and25.i = and i32 %rss_fields.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %sw.bb24.i.cleanup.sink.split.sink.split.i_crit_edge, label %sw.bb24.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge

sw.bb24.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.sink.split.i

sw.bb24.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

sw.bb34.i:                                        ; preds = %if.end.i
  %and35.i = and i32 %rss_fields.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %sw.bb34.i.cleanup.sink.split.sink.split.i_crit_edge, label %sw.bb34.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge

sw.bb34.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.sink.split.i

sw.bb34.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

sw.bb43.i:                                        ; preds = %if.end.i.sw.bb43.i_crit_edge, %if.end.i.sw.bb43.i_crit_edge17, %if.end.i.sw.bb43.i_crit_edge18
  %26 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp45.i = icmp ult i8 %27, 6
  %and47.i = and i32 %rss_fields.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  %or.cond.i = select i1 %cmp45.i, i1 true, i1 %tobool48.not.i
  br i1 %or.cond.i, label %sw.bb43.i.cleanup.sink.split.sink.split.i_crit_edge, label %sw.bb43.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge

sw.bb43.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.sink.split.i

sw.bb43.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.sink.split.i:       ; preds = %sw.bb43.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, %sw.bb34.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, %sw.bb24.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge, %sw.bb17.i.cleanup.sink.split.sink.split.sink.split.i_crit_edge
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 192, ptr %data.i, align 8
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %cleanup.sink.split.sink.split.sink.split.i, %sw.bb43.i.cleanup.sink.split.sink.split.i_crit_edge, %sw.bb34.i.cleanup.sink.split.sink.split.i_crit_edge, %sw.bb24.i.cleanup.sink.split.sink.split.i_crit_edge, %sw.bb17.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge16, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge19, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge20
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %data.i, align 8
  %or55.i = or i64 %30, 48
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge13
  %.sink.i = phi i64 [ 240, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 240, %if.end.i.cleanup.sink.split.i_crit_edge13 ], [ %or55.i, %cleanup.sink.split.sink.split.i ]
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %.sink.i, ptr %data.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.sink.split.i, %if.end.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb ], [ -95, %sw.bb1.sw.epilog_crit_edge ], [ -95, %if.end.sw.epilog_crit_edge ], [ -95, %entry.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_set_rxnfc(ptr noundef %netdev, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr i8, ptr %netdev, i32 28096
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ugt i8 %1, 3
  br i1 %cmp, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end:                                           ; preds = %entry
  %rss = getelementptr i8, ptr %netdev, i32 28104
  %2 = ptrtoint ptr %rss to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rss, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end3

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %5)
  %cond = icmp eq i32 %5, 42
  br i1 %cond, label %sw.bb, label %if.end3.done_crit_edge

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb:                                            ; preds = %if.end3
  %rss_fields1.i = getelementptr i8, ptr %netdev, i32 28172
  %6 = ptrtoint ptr %rss_fields1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rss_fields1.i, align 4
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data.i, align 8
  %and.i = and i64 %9, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.done_crit_edge

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end.i:                                         ; preds = %sw.bb
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %11, label %if.end.i.done_crit_edge [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 5, label %if.end.i.sw.bb.i_crit_edge10
    i32 2, label %sw.bb18.i
    i32 6, label %sw.bb33.i
    i32 10, label %if.end.i.sw.bb51.i_crit_edge
    i32 9, label %if.end.i.sw.bb51.i_crit_edge11
    i32 4, label %if.end.i.sw.bb51.i_crit_edge12
    i32 12, label %if.end.i.sw.bb69.i_crit_edge
    i32 11, label %if.end.i.sw.bb69.i_crit_edge13
    i32 8, label %if.end.i.sw.bb69.i_crit_edge14
    i32 3, label %if.end.i.sw.bb90.i_crit_edge
    i32 7, label %if.end.i.sw.bb90.i_crit_edge15
  ]

if.end.i.sw.bb90.i_crit_edge15:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb90.i

if.end.i.sw.bb90.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb90.i

if.end.i.sw.bb69.i_crit_edge14:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb69.i

if.end.i.sw.bb69.i_crit_edge13:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb69.i

if.end.i.sw.bb69.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb69.i

if.end.i.sw.bb51.i_crit_edge12:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge11:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51.i

if.end.i.sw.bb.i_crit_edge10:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.i.done_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge10
  %13 = and i64 %9, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %13)
  %.not200.i = icmp eq i64 %13, 240
  br i1 %.not200.i, label %sw.bb.i.sw.epilog109.thread.i_crit_edge, label %sw.bb.i.done_crit_edge

sw.bb.i.done_crit_edge:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb.i.sw.epilog109.thread.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog109.thread.i

sw.bb18.i:                                        ; preds = %if.end.i
  %14 = and i64 %9, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %14)
  %.not199.i = icmp eq i64 %14, 48
  br i1 %.not199.i, label %if.end27.i, label %sw.bb18.i.done_crit_edge

sw.bb18.i.done_crit_edge:                         ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end27.i:                                       ; preds = %sw.bb18.i
  %15 = trunc i64 %9 to i8
  %trunc185.i = and i8 %15, -64
  %16 = zext i8 %trunc185.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %trunc185.i, label %if.end27.i.done_crit_edge [
    i8 0, label %sw.bb30.i
    i8 -64, label %sw.bb32.i
  ]

if.end27.i.done_crit_edge:                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb30.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  %and31.i = and i32 %7, -5
  br label %sw.epilog109.i

sw.bb32.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i = or i32 %7, 4
  br label %sw.epilog109.i

sw.bb33.i:                                        ; preds = %if.end.i
  %17 = and i64 %9, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %17)
  %.not198.i = icmp eq i64 %17, 48
  br i1 %.not198.i, label %if.end42.i, label %sw.bb33.i.done_crit_edge

sw.bb33.i.done_crit_edge:                         ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end42.i:                                       ; preds = %sw.bb33.i
  %18 = trunc i64 %9 to i8
  %trunc184.i = and i8 %18, -64
  %19 = zext i8 %trunc184.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %trunc184.i, label %if.end42.i.done_crit_edge [
    i8 0, label %sw.bb45.i
    i8 -64, label %sw.bb47.i
  ]

if.end42.i.done_crit_edge:                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb45.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  %and46.i = and i32 %7, -9
  br label %sw.epilog109.i

sw.bb47.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  %or48.i = or i32 %7, 8
  br label %sw.epilog109.i

sw.bb51.i:                                        ; preds = %if.end.i.sw.bb51.i_crit_edge, %if.end.i.sw.bb51.i_crit_edge11, %if.end.i.sw.bb51.i_crit_edge12
  %20 = and i64 %9, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %20)
  %.not197.i = icmp eq i64 %20, 48
  br i1 %.not197.i, label %if.end60.i, label %sw.bb51.i.done_crit_edge

sw.bb51.i.done_crit_edge:                         ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end60.i:                                       ; preds = %sw.bb51.i
  %21 = trunc i64 %9 to i8
  %trunc183.i = and i8 %21, -64
  %22 = zext i8 %trunc183.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc183.i, label %if.end60.i.done_crit_edge [
    i8 0, label %sw.bb63.i
    i8 -64, label %sw.bb65.i
  ]

if.end60.i.done_crit_edge:                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb63.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  %and64.i = and i32 %7, -17
  br label %sw.epilog109.i

sw.bb65.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  %or66.i = or i32 %7, 16
  br label %sw.epilog109.i

sw.bb69.i:                                        ; preds = %if.end.i.sw.bb69.i_crit_edge, %if.end.i.sw.bb69.i_crit_edge13, %if.end.i.sw.bb69.i_crit_edge14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.i = icmp ugt i8 %1, 5
  br i1 %cmp.i, label %if.end72.i, label %sw.bb69.i.done_crit_edge

sw.bb69.i.done_crit_edge:                         ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end72.i:                                       ; preds = %sw.bb69.i
  %23 = and i64 %9, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %23)
  %.not.i = icmp eq i64 %23, 48
  br i1 %.not.i, label %if.end81.i, label %if.end72.i.done_crit_edge

if.end72.i.done_crit_edge:                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end81.i:                                       ; preds = %if.end72.i
  %24 = trunc i64 %9 to i8
  %trunc.i = and i8 %24, -64
  %25 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %trunc.i, label %if.end81.i.done_crit_edge [
    i8 0, label %sw.bb84.i
    i8 -64, label %sw.bb86.i
  ]

if.end81.i.done_crit_edge:                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb84.i:                                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #17
  %and85.i = and i32 %7, -33
  br label %sw.epilog109.i

sw.bb86.i:                                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #17
  %or87.i = or i32 %7, 32
  br label %sw.epilog109.i

sw.bb90.i:                                        ; preds = %if.end.i.sw.bb90.i_crit_edge, %if.end.i.sw.bb90.i_crit_edge15
  %26 = and i64 %9, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %26)
  %27 = icmp eq i64 %26, 48
  br i1 %27, label %sw.bb90.i.sw.epilog109.thread.i_crit_edge, label %sw.bb90.i.done_crit_edge

sw.bb90.i.done_crit_edge:                         ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb90.i.sw.epilog109.thread.i_crit_edge:        ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog109.thread.i

sw.epilog109.thread.i:                            ; preds = %sw.bb90.i.sw.epilog109.thread.i_crit_edge, %sw.bb.i.sw.epilog109.thread.i_crit_edge
  br label %done

sw.epilog109.i:                                   ; preds = %sw.bb86.i, %sw.bb84.i, %sw.bb65.i, %sw.bb63.i, %sw.bb47.i, %sw.bb45.i, %sw.bb32.i, %sw.bb30.i
  %rss_fields.0.i = phi i32 [ %or87.i, %sw.bb86.i ], [ %and85.i, %sw.bb84.i ], [ %or66.i, %sw.bb65.i ], [ %and64.i, %sw.bb63.i ], [ %or48.i, %sw.bb47.i ], [ %and46.i, %sw.bb45.i ], [ %or.i, %sw.bb32.i ], [ %and31.i, %sw.bb30.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rss_fields.0.i, i32 %7)
  %cmp111.not.i = icmp eq i32 %rss_fields.0.i, %7
  br i1 %cmp111.not.i, label %sw.epilog109.i.done_crit_edge, label %if.then113.i

sw.epilog109.i.done_crit_edge:                    ; preds = %sw.epilog109.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then113.i:                                     ; preds = %sw.epilog109.i
  %default_rss_fields.i = getelementptr i8, ptr %netdev, i32 28169
  %28 = ptrtoint ptr %default_rss_fields.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %default_rss_fields.i, align 1
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then114.i

if.then114.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #17
  %shared115.i = getelementptr i8, ptr %netdev, i32 28064
  %31 = ptrtoint ptr %shared115.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shared115.i, align 32
  %cu.i = getelementptr inbounds %struct.Vmxnet3_DriverShared, ptr %32, i32 0, i32 5
  %cmd_lock.i = getelementptr i8, ptr %netdev, i32 28020
  %call120.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #15
  %33 = ptrtoint ptr %cu.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rss_fields.0.i, ptr %cu.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !58
  tail call void @arm_heavy_mb() #15
  %hw_addr1.i = getelementptr i8, ptr %netdev, i32 28092
  %34 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %35, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 268500682) #15, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  tail call void @arm_heavy_mb() #15
  %36 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr130.i = getelementptr i8, ptr %37, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.i, i32 201330160) #15, !srcloc !34
  %38 = ptrtoint ptr %hw_addr1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr1.i, align 4
  %add.ptr132.i = getelementptr i8, ptr %39, i32 32
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.i) #15, !srcloc !39
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !60
  %42 = ptrtoint ptr %rss_fields1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rss_fields1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call120.i) #15
  br label %done

if.else.i:                                        ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %rss_fields1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %rss_fields.0.i, ptr %rss_fields1.i, align 4
  br label %done

done:                                             ; preds = %if.else.i, %if.then114.i, %sw.epilog109.i.done_crit_edge, %sw.epilog109.thread.i, %sw.bb90.i.done_crit_edge, %if.end81.i.done_crit_edge, %if.end72.i.done_crit_edge, %sw.bb69.i.done_crit_edge, %if.end60.i.done_crit_edge, %sw.bb51.i.done_crit_edge, %if.end42.i.done_crit_edge, %sw.bb33.i.done_crit_edge, %if.end27.i.done_crit_edge, %sw.bb18.i.done_crit_edge, %sw.bb.i.done_crit_edge, %if.end.i.done_crit_edge, %sw.bb.done_crit_edge, %if.end3.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %err.0 = phi i32 [ -95, %entry.done_crit_edge ], [ -95, %if.end.done_crit_edge ], [ -95, %if.end3.done_crit_edge ], [ -22, %sw.bb.done_crit_edge ], [ -22, %sw.bb.i.done_crit_edge ], [ -22, %sw.bb18.i.done_crit_edge ], [ -22, %if.end27.i.done_crit_edge ], [ -22, %sw.bb33.i.done_crit_edge ], [ -22, %if.end42.i.done_crit_edge ], [ -22, %sw.bb51.i.done_crit_edge ], [ -22, %if.end60.i.done_crit_edge ], [ -95, %sw.bb69.i.done_crit_edge ], [ -22, %if.end72.i.done_crit_edge ], [ -22, %if.end81.i.done_crit_edge ], [ -22, %sw.bb90.i.done_crit_edge ], [ -22, %if.end.i.done_crit_edge ], [ 0, %if.then114.i ], [ 0, %if.else.i ], [ 0, %sw.epilog109.i.done_crit_edge ], [ 0, %sw.epilog109.thread.i ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vmxnet3_get_rss_indir_size(ptr nocapture noundef readonly %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_conf = getelementptr i8, ptr %netdev, i32 28100
  %0 = ptrtoint ptr %rss_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss_conf, align 4
  %indTableSize = getelementptr inbounds %struct.UPT1_RSSConf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %indTableSize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %indTableSize, align 2
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_get_rss(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %p, ptr nocapture noundef readnone %key, ptr noundef writeonly %hfunc) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_conf = getelementptr i8, ptr %netdev, i32 28100
  %0 = ptrtoint ptr %rss_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss_conf, align 4
  %indTableSize = getelementptr inbounds %struct.UPT1_RSSConf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %indTableSize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %indTableSize, align 2
  %conv = zext i16 %3 to i32
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %p, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %3)
  %cmp = icmp ugt i16 %3, 128
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not18 = icmp eq i16 %3, 0
  %or.cond20 = select i1 %or.cond, i1 true, i1 %tobool7.not18
  br i1 %or.cond20, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %n.019 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv, %if.end.while.body_crit_edge ]
  %dec = add nsw i32 %n.019, -1
  %arrayidx = getelementptr %struct.UPT1_RSSConf, ptr %1, i32 0, i32 5, i32 %dec
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %6 to i32
  %arrayidx9 = getelementptr i32, ptr %p, i32 %dec
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv8, ptr %arrayidx9, align 4
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmxnet3_set_rss(ptr noundef %netdev, ptr noundef readonly %p, ptr noundef readnone %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_conf = getelementptr i8, ptr %netdev, i32 28100
  %0 = ptrtoint ptr %rss_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss_conf, align 4
  %tobool.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %or.cond = and i1 %tobool.not, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %p, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %indTableSize = getelementptr inbounds %struct.UPT1_RSSConf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %indTableSize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %indTableSize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp937.not = icmp eq i16 %3, 0
  br i1 %cmp937.not, label %for.cond.preheader.do.body13_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body13_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %p, i32 %i.038
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv11 = trunc i32 %5 to i8
  %arrayidx12 = getelementptr %struct.UPT1_RSSConf, ptr %1, i32 0, i32 5, i32 %i.038
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv11, ptr %arrayidx12, align 1
  %inc = add nuw nsw i32 %i.038, 1
  %7 = ptrtoint ptr %indTableSize to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %indTableSize, align 2
  %conv8 = zext i16 %8 to i32
  %cmp9 = icmp ult i32 %inc, %conv8
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.do.body13_crit_edge

for.body.do.body13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body13:                                        ; preds = %for.body.do.body13_crit_edge, %for.cond.preheader.do.body13_crit_edge
  %cmd_lock = getelementptr i8, ptr %netdev, i32 28020
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !61
  tail call void @arm_heavy_mb() #15
  %hw_addr1 = getelementptr i8, ptr %netdev, i32 28092
  %9 = ptrtoint ptr %hw_addr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr1, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 100728522) #15, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call17) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body13 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vmxnet3_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %ecmd) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4256, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %advertising, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port, align 1
  %link_speed = getelementptr i8, ptr %netdev, i32 28140
  %7 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %8
  %spec.select37 = select i1 %tobool.not, i8 -1, i8 1
  %9 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select37, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmxnet3_quiesce_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmxnet3_reset_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmxnet3_tq_destroy_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmxnet3_rq_destroy_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmxnet3_create_queues(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmxnet3_activate_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmxnet3_force_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!2 = !{ptr @vmxnet3_ethtool_ops, !3, !"vmxnet3_ethtool_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 1191, i32 33}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 214, i32 28}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 625, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 702, i32 23}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 717, i32 24}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 725, i32 23}
!14 = !{ptr @vmxnet3_tq_dev_stats, !15, !"vmxnet3_tq_dev_stats", i1 false, i1 false}
!15 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 42, i32 1}
!16 = !{ptr @vmxnet3_tq_driver_stats, !17, !"vmxnet3_tq_driver_stats", i1 false, i1 false}
!17 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 59, i32 1}
!18 = !{ptr @vmxnet3_rq_dev_stats, !19, !"vmxnet3_rq_dev_stats", i1 false, i1 false}
!19 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 83, i32 1}
!20 = !{ptr @vmxnet3_rq_driver_stats, !21, !"vmxnet3_rq_driver_stats", i1 false, i1 false}
!21 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 99, i32 1}
!22 = !{ptr @vmxnet3_global_stats, !23, !"vmxnet3_global_stats", i1 false, i1 false}
!23 = !{!"../drivers/net/vmxnet3/vmxnet3_ethtool.c", i32 113, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2158613714}
!34 = !{i64 6220876}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2158626097}
!39 = !{i64 6221294}
!40 = !{i64 2158630363}
!41 = !{i64 2158631017}
!42 = !{i64 2158631671}
!43 = !{i64 2158632325}
!44 = !{i64 2158632974}
!45 = !{i64 2158633628}
!46 = !{i64 2158634282}
!47 = !{i64 2158634931}
!48 = !{i64 2158635580}
!49 = !{i64 2158636306}
!50 = !{i64 2158637047}
!51 = !{i8 0, i8 2}
!52 = !{i64 2158638038}
!53 = !{i64 2158638789}
!54 = !{i64 2158655235}
!55 = !{i64 2158627098}
!56 = !{i64 2158648515}
!57 = !{i64 2158649446}
!58 = !{i64 2158651017}
!59 = !{i64 2158651660}
!60 = !{i64 2158652591}
!61 = !{i64 2158653738}
