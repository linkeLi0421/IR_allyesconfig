; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mediatek/mtk_eth_soc.c_pt.bc'
source_filename = "../drivers/net/ethernet/mediatek/mtk_eth_soc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.mtk_soc_data = type { i32, i32, i32, i8, i8, i64 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.173, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.173 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mtk_ethtool_stats = type { [32 x i8], i32 }
%struct.mtk_eth = type { ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, [116 x i8], %struct.net_device, [2 x ptr], [2 x ptr], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, i8, %struct.refcount_struct, %struct.mtk_tx_ring, [4 x %struct.mtk_rx_ring], %struct.mtk_rx_ring, %struct.napi_struct, %struct.napi_struct, ptr, i32, ptr, [18 x ptr], ptr, %struct.work_struct, i32, ptr, %struct.spinlock, i32, i32, i32, %struct.dim, i32, i32, i32, %struct.dim, i32, i32, i32, i32, %struct.mtk_ppe, %struct.rhashtable, [100 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mtk_tx_ring = type { ptr, ptr, i32, ptr, ptr, i32, i16, %struct.atomic_t, i32, ptr, i32, i32 }
%struct.mtk_rx_ring = type { ptr, ptr, i32, i16, i16, i16, i8, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mtk_ppe = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mtk_mac = type { i32, i32, i32, i32, ptr, ptr, %struct.phylink_config, ptr, ptr, [2 x i32], i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mtk_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.spinlock, i32, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.dev_pin_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.mtk_tx_dma = type { i32, i32, i32, i32 }
%struct.mtk_tx_buf = type { ptr, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mtk_rx_dma = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.150, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.148, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.148 = type { i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }

@__param_str_msg_level = internal constant [18 x i8] c"mtk_eth.msg_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mtk_msg_level = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_msg_level = internal constant %struct.kernel_param { ptr @__param_str_msg_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @mtk_msg_level } }, section "__param", align 4
@__UNIQUE_ID_msg_leveltype553 = internal constant [31 x i8] c"mtk_eth.parmtype=msg_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_level554 = internal constant [69 x i8] c"mtk_eth.parm=msg_level:Message level (-1=defaults,0=none,...,16=all)\00", section ".modinfo", align 1
@mt2701_data = internal constant { %struct.mtk_soc_data, [40 x i8] } { %struct.mtk_soc_data { i32 0, i32 2885891, i32 181, i8 1, i8 0, i64 564049466163603 }, [40 x i8] zeroinitializer }, align 32
@mt7621_data = internal constant { %struct.mtk_soc_data, [40 x i8] } { %struct.mtk_soc_data { i32 0, i32 2887171, i32 0, i8 0, i8 2, i64 564049466163603 }, [40 x i8] zeroinitializer }, align 32
@mt7622_data = internal constant { %struct.mtk_soc_data, [40 x i8] } { %struct.mtk_soc_data { i32 8232, i32 24455597, i32 200509, i8 0, i8 2, i64 564049466163603 }, [40 x i8] zeroinitializer }, align 32
@mt7623_data = internal constant { %struct.mtk_soc_data, [40 x i8] } { %struct.mtk_soc_data { i32 0, i32 2885891, i32 181, i8 1, i8 2, i64 564049466163603 }, [40 x i8] zeroinitializer }, align 32
@mt7629_data = internal constant { %struct.mtk_soc_data, [40 x i8] } { %struct.mtk_soc_data { i32 296, i32 30599548, i32 262015, i8 0, i8 0, i64 564049466163603 }, [40 x i8] zeroinitializer }, align 32
@rt5350_data = internal constant { %struct.mtk_soc_data, [40 x i8] } { %struct.mtk_soc_data { i32 0, i32 4608, i32 0, i8 0, i8 0, i64 1099511627777 }, [40 x i8] zeroinitializer }, align 32
@of_mtk_match = dso_local constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7621_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7623_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7629_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ralink,rt5350-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rt5350_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@__initcall__kmod_mtk_eth__729_3340_mtk_driver_init6 = internal global ptr @mtk_driver_init, section ".initcall6.init", align 4
@mtk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_probe, ptr @mtk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_mtk_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_driver_exit = internal global ptr @mtk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file730 = internal constant [51 x i8] c"mtk_eth.file=drivers/net/ethernet/mediatek/mtk_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license731 = internal constant [20 x i8] c"mtk_eth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author732 = internal constant [49 x i8] c"mtk_eth.author=John Crispin <blogic@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description733 = internal constant [53 x i8] c"mtk_eth.description=Ethernet driver for MediaTek SoC\00", section ".modinfo", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk_soc_eth\00", [20 x i8] zeroinitializer }, align 32
@mtk_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&eth->page_lock\00", [16 x i8] zeroinitializer }, align 32
@mtk_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&eth->tx_irq_lock\00", [46 x i8] zeroinitializer }, align 32
@mtk_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&eth->rx_irq_lock\00", [46 x i8] zeroinitializer }, align 32
@mtk_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&eth->dim_lock\00", [17 x i8] zeroinitializer }, align 32
@mtk_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&eth->rx_dim.work)\00", [59 x i8] zeroinitializer }, align 32
@mtk_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&eth->tx_dim.work)\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mediatek,ethsys\00", [16 x i8] zeroinitializer }, align 32
@mtk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 3090, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no ethsys regmap found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtk_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/mediatek/mtk_eth_soc.c\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_probe._entry_ptr = internal global ptr @mtk_probe._entry, section ".printk_index", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,infracfg\00", [46 x i8] zeroinitializer }, align 32
@mtk_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.16, i32 3099, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no infracfg regmap found\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_probe._entry_ptr.22 = internal global ptr @mtk_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,pctl\00", [18 x i8] zeroinitializer }, align 32
@mtk_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.16, i32 3121, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no pctl regmap found\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_probe._entry_ptr.26 = internal global ptr @mtk_probe._entry.24, section ".printk_index", align 4
@mtk_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.16, i32 3132, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no IRQ%d resource found\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_probe._entry_ptr.29 = internal global ptr @mtk_probe._entry.27, section ".printk_index", align 4
@mtk_clks_source_name = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [56 x i8] zeroinitializer }, align 32
@mtk_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.15, ptr @.str.16, i32 3144, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clock %s not found\0A\00", [44 x i8] zeroinitializer }, align 32
@mtk_probe._entry_ptr.32 = internal global ptr @mtk_probe._entry.30, section ".printk_index", align 4
@mtk_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&eth->pending_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,eth-mac\00", [47 x i8] zeroinitializer }, align 32
@mtk_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.15, ptr @.str.16, i32 3217, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error bringing up device\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_probe._entry_ptr.38 = internal global ptr @mtk_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mediatek frame engine at 0x%08lx, irq %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ethif\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sgmiitop\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"esw\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gp0\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gp1\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gp2\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fe\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgpll\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sgmii_tx250m\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sgmii_rx250m\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sgmii_cdr_ref\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sgmii_cdr_fb\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sgmii2_tx250m\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sgmii2_rx250m\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sgmii2_cdr_ref\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sgmii2_cdr_fb\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sgmii_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth2pll\00", [24 x i8] zeroinitializer }, align 32
@mtk_pending_work.__UNIQUE_ID_ddebug725 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.59, ptr @.str.16, ptr @.str.60, i8 2, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk_eth\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_pending_work\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%s][%d] reset\0A\00", [16 x i8] zeroinitializer }, align 32
@mtk_pending_work.__UNIQUE_ID_ddebug726 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.59, ptr @.str.16, ptr @.str.61, i8 2, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%s][%d] mtk_stop starts\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_pending_work.__UNIQUE_ID_ddebug727 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.59, ptr @.str.16, ptr @.str.62, i8 2, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s][%d] mtk_stop ends\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Driver up/down cycle failed, closing device.\0A\00", [50 x i8] zeroinitializer }, align 32
@mtk_pending_work.__UNIQUE_ID_ddebug728 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.59, ptr @.str.16, ptr @.str.64, i8 2, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%s][%d] reset done\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: could not attach PHY: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.mtk_open = private unnamed_addr constant [9 x i8] c"mtk_open\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtk_dma_busy_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.16, i32 2035, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA init timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_dma_busy_wait\00", [46 x i8] zeroinitializer }, align 32
@mtk_dma_busy_wait._entry_ptr = internal global ptr @mtk_dma_busy_wait._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mtk_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.16, i32 2466, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC reset failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk_hw_init\00", [20 x i8] zeroinitializer }, align 32
@mtk_hw_init._entry_ptr = internal global ptr @mtk_hw_init._entry, section ".printk_index", align 4
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.16, i32 2921, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"missing mac id\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk_add_mac\00", [20 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry_ptr = internal global ptr @mtk_add_mac._entry, section ".printk_index", align 4
@mtk_add_mac._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.16, i32 2927, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d is not a valid mac id\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry_ptr.77 = internal global ptr @mtk_add_mac._entry.75, section ".printk_index", align 4
@mtk_add_mac._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.16, i32 2932, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"duplicate mac id found: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry_ptr.80 = internal global ptr @mtk_add_mac._entry.78, section ".printk_index", align 4
@mtk_add_mac._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.16, i32 2938, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc_etherdev failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry_ptr.83 = internal global ptr @mtk_add_mac._entry.81, section ".printk_index", align 4
@mtk_add_mac._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.74, ptr @.str.16, i32 2954, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate counter memory\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry_ptr.86 = internal global ptr @mtk_add_mac._entry.84, section ".printk_index", align 4
@mtk_add_mac.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&mac->hw_stats->stats_lock\00", [37 x i8] zeroinitializer }, align 32
@mtk_add_mac.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&mac->hw_stats->syncp)->seq\00", [34 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.74, ptr @.str.16, i32 2965, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"incorrect phy-mode\0A\00", [44 x i8] zeroinitializer }, align 32
@mtk_add_mac._entry_ptr.92 = internal global ptr @mtk_add_mac._entry.90, section ".printk_index", align 4
@mtk_phylink_ops = internal constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr @mtk_mac_pcs_get_state, ptr null, ptr @mtk_mac_config, ptr null, ptr @mtk_mac_an_restart, ptr @mtk_mac_link_down, ptr @mtk_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@mtk_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @mtk_init, ptr @mtk_uninit, ptr @mtk_open, ptr @mtk_stop, ptr @mtk_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @mtk_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @mtk_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @mtk_change_mtu, ptr null, ptr @mtk_tx_timeout, ptr @mtk_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_eth_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_fix_features, ptr @mtk_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mtk_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @mtk_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @mtk_get_msglevel, ptr @mtk_set_msglevel, ptr @mtk_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_get_strings, ptr null, ptr @mtk_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @mtk_get_sset_count, ptr @mtk_get_rxnfc, ptr @mtk_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_get_link_ksettings, ptr @mtk_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mtk_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.16, i32 401, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"In-band mode not supported in non SGMII mode!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_mac_config\00", [17 x i8] zeroinitializer }, align 32
@mtk_mac_config._entry_ptr = internal global ptr @mtk_mac_config._entry, section ".printk_index", align 4
@mtk_mac_config._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.16, i32 419, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: GMAC%d mode %s not supported!\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_mac_config._entry_ptr.97 = internal global ptr @mtk_mac_config._entry.95, section ".printk_index", align 4
@mtk_mac_config._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.16, i32 424, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: GMAC%d mode %s err: %d!\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_mac_config._entry_ptr.100 = internal global ptr @mtk_mac_config._entry.98, section ".printk_index", align 4
@mt7621_gmac0_rgmii_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.16, i32 213, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TRGMII mode with DDR2 memory is not supported!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt7621_gmac0_rgmii_adjust\00", [38 x i8] zeroinitializer }, align 32
@mt7621_gmac0_rgmii_adjust._entry_ptr = internal global ptr @mt7621_gmac0_rgmii_adjust._entry, section ".printk_index", align 4
@mtk_gmac0_rgmii_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.16, i32 237, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set trgmii pll: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_gmac0_rgmii_adjust\00", [41 x i8] zeroinitializer }, align 32
@mtk_gmac0_rgmii_adjust._entry_ptr = internal global ptr @mtk_gmac0_rgmii_adjust._entry, section ".printk_index", align 4
@mtk_gmac0_rgmii_adjust._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.16, i32 252, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@mtk_gmac0_rgmii_adjust._entry_ptr.106 = internal global ptr @mtk_gmac0_rgmii_adjust._entry.105, section ".printk_index", align 4
@.str.107 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mtk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.16, i32 2560, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"generated random MAC address %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk_init\00", [23 x i8] zeroinitializer }, align 32
@mtk_init._entry_ptr = internal global ptr @mtk_init._entry, section ".printk_index", align 4
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Tx Ring full when queue awake!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GSO expand head fail.\0A\00", [41 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"transmit timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.144 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RX flow is programmed, LRO should keep on\0A\00", [53 x i8] zeroinitializer }, align 32
@mtk_ethtool_stats = internal constant { [12 x %struct.mtk_ethtool_stats], [112 x i8] } { [12 x %struct.mtk_ethtool_stats] [%struct.mtk_ethtool_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.mtk_ethtool_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.mtk_ethtool_stats { [32 x i8] c"tx_skip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.mtk_ethtool_stats { [32 x i8] c"tx_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_overflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_fcs_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_short_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_long_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_checksum_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.mtk_ethtool_stats { [32 x i8] c"rx_flow_control_packets\00\00\00\00\00\00\00\00\00", i32 11 }], [112 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdio-bus\00", [23 x i8] zeroinitializer }, align 32
@mtk_mdio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.16, i32 532, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no %s child node found\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_mdio_init\00", [18 x i8] zeroinitializer }, align 32
@mtk_mdio_init._entry_ptr = internal global ptr @mtk_mdio_init._entry, section ".printk_index", align 4
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mtk_mdio_busy_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.16, i32 93, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mdio: MDIO timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_mdio_busy_wait\00", [45 x i8] zeroinitializer }, align 32
@mtk_mdio_busy_wait._entry_ptr = internal global ptr @mtk_mdio_busy_wait._entry, section ".printk_index", align 4
@mtk_napi_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.16, i32 1504, ptr @.str.154, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"done tx %d, intr 0x%08x/0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk_napi_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_napi_tx._entry_ptr = internal global ptr @mtk_napi_tx._entry, section ".printk_index", align 4
@mtk_napi_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.16, i32 1537, ptr @.str.154, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"done rx %d, intr 0x%08x/0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk_napi_rx\00", [20 x i8] zeroinitializer }, align 32
@mtk_napi_rx._entry_ptr = internal global ptr @mtk_napi_rx._entry, section ".printk_index", align 4
@switch.table.mtk_mac_config = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.136, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135], [40 x i8] zeroinitializer }, align 32
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.136, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.160 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 3, i64 4, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12, i64 19, i64 21, i64 22]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 21, i64 22]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"mtk_msg_level\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 27, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"mt2701_data\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3273, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"mt7621_data\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3280, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"mt7622_data\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3288, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"mt7623_data\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3297, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"mt7629_data\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3305, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant [12 x i8] c"rt5350_data\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3313, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant [13 x i8] c"of_mtk_match\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3320, i32 27 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"mtk_driver\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3331, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 271, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3335, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3075, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3076, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3077, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3078, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3081, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3084, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3088, i32 14 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3090, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3097, i32 13 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3099, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3119, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3121, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3132, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant [21 x i8] c"mtk_clks_source_name\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 53, i32 27 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3143, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3152, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3162, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3217, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 3220, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 11 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 23 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 30 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 37 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 44 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 51 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 54, i32 57 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 55, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 55, i32 18 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 55, i32 34 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 55, i32 51 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 56, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 56, i32 19 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 56, i32 36 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 56, i32 54 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 57, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 57, i32 14 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2629, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2634, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2642, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2660, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2666, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2257, i32 19 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2035, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 326, i32 6 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2466, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2914, i32 42 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2921, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2927, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2932, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2938, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2954, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2958, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2959, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2965, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [16 x i8] c"mtk_phylink_ops\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 516, i32 37 }
@___asan_gen_.466 = private unnamed_addr constant [15 x i8] c"mtk_netdev_ops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2892, i32 36 }
@___asan_gen_.469 = private unnamed_addr constant [16 x i8] c"mtk_ethtool_ops\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2877, i32 33 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 400, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 418, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 423, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 212, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 237, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 252, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 211, i32 10 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 213, i32 10 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 215, i32 10 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 217, i32 10 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 219, i32 10 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 221, i32 10 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 223, i32 10 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 225, i32 10 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 227, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 229, i32 10 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 231, i32 10 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 233, i32 10 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 235, i32 10 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 237, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 239, i32 10 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 241, i32 10 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 243, i32 10 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 245, i32 10 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 247, i32 10 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 249, i32 10 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 251, i32 10 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 253, i32 10 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 255, i32 10 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 257, i32 10 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 259, i32 10 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 261, i32 10 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 263, i32 10 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 265, i32 10 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 267, i32 10 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 269, i32 10 }
@___asan_gen_.605 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 271, i32 10 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2559, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1147, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1156, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 2128, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1997, i32 21 }
@___asan_gen_.628 = private unnamed_addr constant [18 x i8] c"mtk_ethtool_stats\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 38, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 530, i32 51 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 532, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 547, i32 23 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 554, i32 46 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 93, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1501, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.677 = private constant [47 x i8] c"../drivers/net/ethernet/mediatek/mtk_eth_soc.c\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1534, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant [28 x i8] c"switch.table.mtk_mac_config\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@llvm.compiler.used = appending global [208 x ptr] [ptr @__UNIQUE_ID_author732, ptr @__UNIQUE_ID_description733, ptr @__UNIQUE_ID_file730, ptr @__UNIQUE_ID_license731, ptr @__UNIQUE_ID_msg_level554, ptr @__UNIQUE_ID_msg_leveltype553, ptr @__exitcall_mtk_driver_exit, ptr @__initcall__kmod_mtk_eth__729_3340_mtk_driver_init6, ptr @__param_msg_level, ptr @mt7621_gmac0_rgmii_adjust._entry, ptr @mt7621_gmac0_rgmii_adjust._entry_ptr, ptr @mtk_add_mac._entry, ptr @mtk_add_mac._entry.75, ptr @mtk_add_mac._entry.78, ptr @mtk_add_mac._entry.81, ptr @mtk_add_mac._entry.84, ptr @mtk_add_mac._entry.90, ptr @mtk_add_mac._entry_ptr, ptr @mtk_add_mac._entry_ptr.77, ptr @mtk_add_mac._entry_ptr.80, ptr @mtk_add_mac._entry_ptr.83, ptr @mtk_add_mac._entry_ptr.86, ptr @mtk_add_mac._entry_ptr.92, ptr @mtk_dma_busy_wait._entry, ptr @mtk_dma_busy_wait._entry_ptr, ptr @mtk_driver_exit, ptr @mtk_gmac0_rgmii_adjust._entry, ptr @mtk_gmac0_rgmii_adjust._entry.105, ptr @mtk_gmac0_rgmii_adjust._entry_ptr, ptr @mtk_gmac0_rgmii_adjust._entry_ptr.106, ptr @mtk_hw_init._entry, ptr @mtk_hw_init._entry_ptr, ptr @mtk_init._entry, ptr @mtk_init._entry_ptr, ptr @mtk_mac_config._entry, ptr @mtk_mac_config._entry.95, ptr @mtk_mac_config._entry.98, ptr @mtk_mac_config._entry_ptr, ptr @mtk_mac_config._entry_ptr.100, ptr @mtk_mac_config._entry_ptr.97, ptr @mtk_mdio_busy_wait._entry, ptr @mtk_mdio_busy_wait._entry_ptr, ptr @mtk_mdio_init._entry, ptr @mtk_mdio_init._entry_ptr, ptr @mtk_napi_rx._entry, ptr @mtk_napi_rx._entry_ptr, ptr @mtk_napi_tx._entry, ptr @mtk_napi_tx._entry_ptr, ptr @mtk_probe._entry, ptr @mtk_probe._entry.20, ptr @mtk_probe._entry.24, ptr @mtk_probe._entry.27, ptr @mtk_probe._entry.30, ptr @mtk_probe._entry.36, ptr @mtk_probe._entry_ptr, ptr @mtk_probe._entry_ptr.22, ptr @mtk_probe._entry_ptr.26, ptr @mtk_probe._entry_ptr.29, ptr @mtk_probe._entry_ptr.32, ptr @mtk_probe._entry_ptr.38, ptr @mtk_msg_level, ptr @mt2701_data, ptr @mt7621_data, ptr @mt7622_data, ptr @mt7623_data, ptr @mt7629_data, ptr @rt5350_data, ptr @of_mtk_match, ptr @mtk_driver, ptr @.str, ptr @.str.1, ptr @mtk_probe.__key, ptr @.str.2, ptr @mtk_probe.__key.3, ptr @.str.4, ptr @mtk_probe.__key.5, ptr @.str.6, ptr @mtk_probe.__key.7, ptr @.str.8, ptr @mtk_probe.__key.9, ptr @.str.10, ptr @mtk_probe.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @mtk_clks_source_name, ptr @.str.31, ptr @mtk_probe.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @mtk_add_mac.__key, ptr @.str.87, ptr @mtk_add_mac.__key.88, ptr @.str.89, ptr @.str.91, ptr @mtk_phylink_ops, ptr @mtk_netdev_ops, ptr @mtk_ethtool_ops, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @mtk_ethtool_stats, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @switch.table.mtk_mac_config, ptr @switch.table.phy_modes], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_msg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7629_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5350_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mtk_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clks_source_name to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dma_busy_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_add_mac._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phylink_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mac_config._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mac_config._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_gmac0_rgmii_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_gmac0_rgmii_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_gmac0_rgmii_adjust._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ethtool_stats to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdio_busy_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_napi_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_napi_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_mac_config to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_w32(ptr nocapture noundef readonly %eth, i32 noundef %val, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val) #20, !srcloc !351
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_r32(ptr nocapture noundef readonly %eth, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #20, !srcloc !352
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_stats_update_mac(ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_stats1 = getelementptr inbounds %struct.mtk_mac, ptr %mac, i32 0, i32 8
  %0 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_stats1, align 4
  %hw = getelementptr inbounds %struct.mtk_mac, ptr %mac, i32 0, i32 7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %syncp = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !341) #20
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !353
  %9 = tail call i32 @llvm.read_register.i32(metadata !341) #20
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
  %add.i.i = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !354
  %18 = tail call i32 @llvm.read_register.i32(metadata !341) #20
  %and.i.i.i7.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !341) #20
  %and.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !341) #20
  %and.i.i.i9.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %29, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !355
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !356
  %37 = tail call i32 @llvm.read_register.i32(metadata !341) #20
  %and.i.i.i12.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %40, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !357

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #20
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %41 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !358
  %dep_map.i.i.i = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 14, i32 0, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #20
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #20
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %3, i32 0, i32 30
  %45 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %caps, align 4
  %and = and i32 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %u64_stats_update_begin.exit
  call void @__sanitizer_cov_trace_pc() #22
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 3328
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %conv = zext i32 %53 to i64
  %tx_packets = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %tx_packets, align 8
  %add = add i64 %55, %conv
  store i64 %add, ptr %tx_packets, align 8
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 4
  %base.i160 = getelementptr inbounds %struct.mtk_eth, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %base.i160 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i160, align 4
  %add.ptr.i161 = getelementptr i8, ptr %59, i32 3332
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #20, !srcloc !352
  %conv5 = zext i32 %60 to i64
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %1, align 8
  %add6 = add i64 %62, %conv5
  store i64 %add6, ptr %1, align 8
  %63 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw, align 4
  %base.i162 = getelementptr inbounds %struct.mtk_eth, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %base.i162 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %66, i32 3336
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #20, !srcloc !352
  %conv9 = zext i32 %67 to i64
  %rx_packets = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rx_packets, align 8
  %add10 = add i64 %69, %conv9
  store i64 %add10, ptr %rx_packets, align 8
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %base.i164 = getelementptr inbounds %struct.mtk_eth, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %base.i164 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i164, align 4
  %add.ptr.i165 = getelementptr i8, ptr %73, i32 3340
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #20, !srcloc !352
  %conv13 = zext i32 %74 to i64
  %rx_bytes = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %rx_bytes, align 8
  %add14 = add i64 %76, %conv13
  store i64 %add14, ptr %rx_bytes, align 8
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %base.i166 = getelementptr inbounds %struct.mtk_eth, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %base.i166 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i166, align 4
  %add.ptr.i167 = getelementptr i8, ptr %80, i32 3344
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #20, !srcloc !352
  %rx_checksum_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 10
  br label %if.end101

if.else:                                          ; preds = %u64_stats_update_begin.exit
  %reg_offset = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 13
  %82 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reg_offset, align 4
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw, align 4
  %add20 = add i32 %83, 9216
  %base.i168 = getelementptr inbounds %struct.mtk_eth, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %base.i168 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i168, align 4
  %add.ptr.i169 = getelementptr i8, ptr %87, i32 %add20
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #20, !srcloc !352
  %conv22 = zext i32 %88 to i64
  %rx_bytes23 = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 4
  %89 = ptrtoint ptr %rx_bytes23 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %rx_bytes23, align 8
  %add24 = add i64 %90, %conv22
  store i64 %add24, ptr %rx_bytes23, align 8
  %91 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw, align 4
  %add26 = add i32 %83, 9220
  %base.i170 = getelementptr inbounds %struct.mtk_eth, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %base.i170 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i170, align 4
  %add.ptr.i171 = getelementptr i8, ptr %94, i32 %add26
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not = icmp eq i32 %95, 0
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %if.then29

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %conv28 = zext i32 %95 to i64
  %shl = shl nuw i64 %conv28, 32
  %96 = ptrtoint ptr %rx_bytes23 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %rx_bytes23, align 8
  %add31 = add i64 %97, %shl
  store i64 %add31, ptr %rx_bytes23, align 8
  br label %if.end

if.end:                                           ; preds = %if.then29, %if.else.if.end_crit_edge
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 4
  %add33 = add i32 %83, 9224
  %base.i172 = getelementptr inbounds %struct.mtk_eth, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %base.i172 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %101, i32 %add33
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #20, !srcloc !352
  %conv35 = zext i32 %102 to i64
  %rx_packets36 = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 5
  %103 = ptrtoint ptr %rx_packets36 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %rx_packets36, align 8
  %add37 = add i64 %104, %conv35
  store i64 %add37, ptr %rx_packets36, align 8
  %105 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw, align 4
  %add39 = add i32 %83, 9232
  %base.i174 = getelementptr inbounds %struct.mtk_eth, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %base.i174 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i174, align 4
  %add.ptr.i175 = getelementptr i8, ptr %108, i32 %add39
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #20, !srcloc !352
  %conv41 = zext i32 %109 to i64
  %rx_overflow = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 6
  %110 = ptrtoint ptr %rx_overflow to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rx_overflow, align 8
  %add42 = add i64 %111, %conv41
  store i64 %add42, ptr %rx_overflow, align 8
  %112 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw, align 4
  %add44 = add i32 %83, 9236
  %base.i176 = getelementptr inbounds %struct.mtk_eth, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %base.i176 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %115, i32 %add44
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #20, !srcloc !352
  %conv46 = zext i32 %116 to i64
  %rx_fcs_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 7
  %117 = ptrtoint ptr %rx_fcs_errors to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %rx_fcs_errors, align 8
  %add47 = add i64 %118, %conv46
  store i64 %add47, ptr %rx_fcs_errors, align 8
  %119 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw, align 4
  %add49 = add i32 %83, 9240
  %base.i178 = getelementptr inbounds %struct.mtk_eth, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %base.i178 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i178, align 4
  %add.ptr.i179 = getelementptr i8, ptr %122, i32 %add49
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #20, !srcloc !352
  %conv51 = zext i32 %123 to i64
  %rx_short_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 8
  %124 = ptrtoint ptr %rx_short_errors to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %rx_short_errors, align 8
  %add52 = add i64 %125, %conv51
  store i64 %add52, ptr %rx_short_errors, align 8
  %126 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw, align 4
  %add54 = add i32 %83, 9244
  %base.i180 = getelementptr inbounds %struct.mtk_eth, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %base.i180 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i180, align 4
  %add.ptr.i181 = getelementptr i8, ptr %129, i32 %add54
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #20, !srcloc !352
  %conv56 = zext i32 %130 to i64
  %rx_long_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 9
  %131 = ptrtoint ptr %rx_long_errors to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %rx_long_errors, align 8
  %add57 = add i64 %132, %conv56
  store i64 %add57, ptr %rx_long_errors, align 8
  %133 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw, align 4
  %add59 = add i32 %83, 9248
  %base.i182 = getelementptr inbounds %struct.mtk_eth, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %base.i182 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i182, align 4
  %add.ptr.i183 = getelementptr i8, ptr %136, i32 %add59
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #20, !srcloc !352
  %conv61 = zext i32 %137 to i64
  %rx_checksum_errors62 = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 10
  %138 = ptrtoint ptr %rx_checksum_errors62 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %rx_checksum_errors62, align 8
  %add63 = add i64 %139, %conv61
  store i64 %add63, ptr %rx_checksum_errors62, align 8
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 4
  %add65 = add i32 %83, 9252
  %base.i184 = getelementptr inbounds %struct.mtk_eth, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %base.i184 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i184, align 4
  %add.ptr.i185 = getelementptr i8, ptr %143, i32 %add65
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #20, !srcloc !352
  %conv67 = zext i32 %144 to i64
  %rx_flow_control_packets = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 11
  %145 = ptrtoint ptr %rx_flow_control_packets to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %rx_flow_control_packets, align 8
  %add68 = add i64 %146, %conv67
  store i64 %add68, ptr %rx_flow_control_packets, align 8
  %147 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw, align 4
  %add70 = add i32 %83, 9256
  %base.i186 = getelementptr inbounds %struct.mtk_eth, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %base.i186 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i186, align 4
  %add.ptr.i187 = getelementptr i8, ptr %150, i32 %add70
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #20, !srcloc !352
  %conv72 = zext i32 %151 to i64
  %tx_skip = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 2
  %152 = ptrtoint ptr %tx_skip to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %tx_skip, align 8
  %add73 = add i64 %153, %conv72
  store i64 %add73, ptr %tx_skip, align 8
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 4
  %add75 = add i32 %83, 9260
  %base.i188 = getelementptr inbounds %struct.mtk_eth, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %base.i188 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i188, align 4
  %add.ptr.i189 = getelementptr i8, ptr %157, i32 %add75
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #20, !srcloc !352
  %conv77 = zext i32 %158 to i64
  %tx_collisions = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 3
  %159 = ptrtoint ptr %tx_collisions to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %tx_collisions, align 8
  %add78 = add i64 %160, %conv77
  store i64 %add78, ptr %tx_collisions, align 8
  %161 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw, align 4
  %add80 = add i32 %83, 9264
  %base.i190 = getelementptr inbounds %struct.mtk_eth, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %base.i190 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i190, align 4
  %add.ptr.i191 = getelementptr i8, ptr %164, i32 %add80
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #20, !srcloc !352
  %conv82 = zext i32 %165 to i64
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %1, align 8
  %add84 = add i64 %167, %conv82
  store i64 %add84, ptr %1, align 8
  %168 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw, align 4
  %add86 = add i32 %83, 9268
  %base.i192 = getelementptr inbounds %struct.mtk_eth, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %base.i192 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base.i192, align 4
  %add.ptr.i193 = getelementptr i8, ptr %171, i32 %add86
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool89.not = icmp eq i32 %172, 0
  br i1 %tobool89.not, label %if.end.if.end94_crit_edge, label %if.then90

if.end.if.end94_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end94

if.then90:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %conv88 = zext i32 %172 to i64
  %shl91 = shl nuw i64 %conv88, 32
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %1, align 8
  %add93 = add i64 %174, %shl91
  store i64 %add93, ptr %1, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end.if.end94_crit_edge
  %175 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw, align 4
  %add96 = add i32 %83, 9272
  %base.i194 = getelementptr inbounds %struct.mtk_eth, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %base.i194 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i194, align 4
  %add.ptr.i195 = getelementptr i8, ptr %178, i32 %add96
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #20, !srcloc !352
  %tx_packets99 = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 1
  br label %if.end101

if.end101:                                        ; preds = %if.end94, %if.then
  %tx_packets99.sink196 = phi ptr [ %tx_packets99, %if.end94 ], [ %rx_checksum_errors, %if.then ]
  %conv98.sink.in = phi i32 [ %179, %if.end94 ], [ %81, %if.then ]
  %conv98.sink = zext i32 %conv98.sink.in to i64
  %180 = ptrtoint ptr %tx_packets99.sink196 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %tx_packets99.sink196, align 8
  %add100 = add i64 %181, %conv98.sink
  store i64 %add100, ptr %tx_packets99.sink196, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %44) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !359
  %182 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %183, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_driver, ptr noundef null) #20
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_driver) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %phy_mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4096, i32 noundef 3520) #20
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #20
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 30
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %soc, align 64
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 128
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #20
  %base = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp.not, i32 2600, i32 6684
  %spec.select627 = select i1 %cmp.not, i32 2592, i32 6680
  %8 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 40
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 16
  %10 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 41
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select627, ptr %10, align 4
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 64
  %caps18 = getelementptr inbounds %struct.mtk_soc_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %caps18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps18, align 4
  %and19 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %if.end11.do.body_crit_edge, label %if.then21

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  %ip_align = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 43
  %16 = ptrtoint ptr %ip_align to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %ip_align, align 4
  br label %do.body

do.body:                                          ; preds = %if.then21, %if.end11.do.body_crit_edge
  %.sink602 = phi i32 [ 1073741824, %if.then21 ], [ 16777216, %if.end11.do.body_crit_edge ]
  %17 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 42
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink602, ptr %17, align 8
  %page_lock = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %page_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mtk_probe.__key, i16 noundef signext 3) #20
  %tx_irq_lock = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %tx_irq_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mtk_probe.__key.3, i16 noundef signext 3) #20
  %rx_irq_lock = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %rx_irq_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mtk_probe.__key.5, i16 noundef signext 3) #20
  %dim_lock = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %dim_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @mtk_probe.__key.7, i16 noundef signext 3) #20
  %mode = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 35, i32 7
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %mode, align 1
  %work = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 35, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #20
  %20 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 35, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @mtk_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry46 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 35, i32 4, i32 1
  %21 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 35, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry46, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 35, i32 4, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mtk_dim_rx, ptr %func, align 4
  %mode51 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 39, i32 7
  %24 = ptrtoint ptr %mode51 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %mode51, align 1
  %work54 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 39, i32 4
  tail call void @__init_work(ptr noundef %work54, i32 noundef 0) #20
  %25 = ptrtoint ptr %work54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %work54, align 8
  %lockdep_map62 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 39, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62, ptr noundef nonnull @.str.12, ptr noundef nonnull @mtk_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry65 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 39, i32 4, i32 1
  %26 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i502 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 39, i32 4, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i502 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry65, ptr %prev.i502, align 4
  %func68 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 39, i32 4, i32 2
  %28 = ptrtoint ptr %func68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mtk_dim_tx, ptr %func68, align 4
  %29 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc, align 64
  %caps72 = getelementptr inbounds %struct.mtk_soc_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %caps72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps72, align 4
  %and73 = and i32 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %cmp74.not = icmp eq i32 %and73, 0
  br i1 %cmp74.not, label %if.then75, label %do.body.if.end88_crit_edge

do.body.if.end88_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

if.then75:                                        ; preds = %do.body
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call77 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %34, ptr noundef nonnull @.str.13) #20
  %ethsys = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 12
  %35 = ptrtoint ptr %ethsys to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call77, ptr %ethsys, align 4
  %cmp.i503 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i503, label %do.end83, label %if.then75.if.end88_crit_edge

if.then75.if.end88_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

do.end83:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #23
  %36 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ethsys, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %cleanup

if.end88:                                         ; preds = %if.then75.if.end88_crit_edge, %do.body.if.end88_crit_edge
  %39 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soc, align 64
  %caps90 = getelementptr inbounds %struct.mtk_soc_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %caps90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %caps90, align 4
  %and91 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92.not = icmp eq i32 %and91, 0
  br i1 %cmp92.not, label %if.end88.if.end107_crit_edge, label %if.then93

if.end88.if.end107_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end107

if.then93:                                        ; preds = %if.end88
  %of_node95 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %43 = ptrtoint ptr %of_node95 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node95, align 8
  %call96 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %44, ptr noundef nonnull @.str.19) #20
  %infra = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 13
  %45 = ptrtoint ptr %infra to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call96, ptr %infra, align 8
  %cmp.i504 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i504, label %do.end102, label %if.then93.if.end107_crit_edge

if.then93.if.end107_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end107

do.end102:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #23
  %46 = ptrtoint ptr %infra to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %infra, align 8
  %48 = ptrtoint ptr %47 to i32
  br label %cleanup

if.end107:                                        ; preds = %if.then93.if.end107_crit_edge, %if.end88.if.end107_crit_edge
  %49 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %soc, align 64
  %caps109 = getelementptr inbounds %struct.mtk_soc_data, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %caps109 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %caps109, align 4
  %and110 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %cmp111.not = icmp eq i32 %and110, 0
  br i1 %cmp111.not, label %if.end107.if.end127_crit_edge, label %if.then112

if.end107.if.end127_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end127

if.then112:                                       ; preds = %if.end107
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 128
  %call.i505 = tail call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef 20, i32 noundef 3520) #20
  %sgmii = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 14
  %55 = ptrtoint ptr %sgmii to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i505, ptr %sgmii, align 4
  %tobool116.not = icmp eq ptr %call.i505, null
  br i1 %tobool116.not, label %if.then112.cleanup_crit_edge, label %if.end118

if.then112.cleanup_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end118:                                        ; preds = %if.then112
  %of_node121 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %56 = ptrtoint ptr %of_node121 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node121, align 8
  %58 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %soc, align 64
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %call123 = tail call i32 @mtk_sgmii_init(ptr noundef nonnull %call.i505, ptr noundef %57, i32 noundef %61) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end118.if.end127_crit_edge, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end127

if.end127:                                        ; preds = %if.end118.if.end127_crit_edge, %if.end107.if.end127_crit_edge
  %62 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %soc, align 64
  %required_pctl = getelementptr inbounds %struct.mtk_soc_data, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %required_pctl to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %required_pctl, align 4, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool129.not = icmp eq i8 %65, 0
  br i1 %tobool129.not, label %if.end127.if.end158_crit_edge, label %if.then130

if.end127.if.end158_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end158

if.then130:                                       ; preds = %if.end127
  %of_node132 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %66 = ptrtoint ptr %of_node132 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node132, align 8
  %call133 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %67, ptr noundef nonnull @.str.23) #20
  %pctl = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 15
  %68 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call133, ptr %pctl, align 16
  %cmp.i506 = icmp ugt ptr %call133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i506, label %do.end139, label %if.then130.if.end158_crit_edge

if.then130.if.end158_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end158

do.end139:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #23
  %69 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pctl, align 16
  %71 = ptrtoint ptr %70 to i32
  br label %cleanup

if.end158:                                        ; preds = %if.then130.if.end158_crit_edge, %if.end127.if.end158_crit_edge
  %irq = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 9
  %call155 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #20
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call155, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp161 = icmp slt i32 %call155, 0
  br i1 %cmp161, label %if.end158.do.end165_crit_edge, label %for.inc

if.end158.do.end165_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end165

do.end165:                                        ; preds = %if.end158.2.do.end165_crit_edge, %if.end158.1.do.end165_crit_edge, %if.end158.do.end165_crit_edge
  %i.0569.lcssa = phi i32 [ 0, %if.end158.do.end165_crit_edge ], [ 1, %if.end158.1.do.end165_crit_edge ], [ 2, %if.end158.2.do.end165_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %i.0569.lcssa) #23
  br label %cleanup

for.inc:                                          ; preds = %if.end158
  %73 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %soc, align 64
  %caps147.1 = getelementptr inbounds %struct.mtk_soc_data, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %caps147.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %caps147.1, align 4
  %and148.1 = and i32 %76, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.1)
  %cmp149.not.1.not = icmp eq i32 %and148.1, 0
  br i1 %cmp149.not.1.not, label %if.else154.1, label %if.then151.1

if.else154.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %call155.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #20
  br label %if.end158.1

if.then151.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 16
  br label %if.end158.1

if.end158.1:                                      ; preds = %if.then151.1, %if.else154.1
  %call155.1.sink = phi i32 [ %78, %if.then151.1 ], [ %call155.1, %if.else154.1 ]
  %79 = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 9, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call155.1.sink, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155.1.sink)
  %cmp161.1 = icmp slt i32 %call155.1.sink, 0
  br i1 %cmp161.1, label %if.end158.1.do.end165_crit_edge, label %for.inc.1

if.end158.1.do.end165_crit_edge:                  ; preds = %if.end158.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end165

for.inc.1:                                        ; preds = %if.end158.1
  %81 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %soc, align 64
  %caps147.2 = getelementptr inbounds %struct.mtk_soc_data, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %caps147.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %caps147.2, align 4
  %and148.2 = and i32 %84, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.2)
  %cmp149.not.2.not = icmp eq i32 %and148.2, 0
  br i1 %cmp149.not.2.not, label %if.else154.2, label %if.then151.2

if.else154.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  %call155.2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #20
  br label %if.end158.2

if.then151.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  %85 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq, align 16
  br label %if.end158.2

if.end158.2:                                      ; preds = %if.then151.2, %if.else154.2
  %call155.2.sink = phi i32 [ %86, %if.then151.2 ], [ %call155.2, %if.else154.2 ]
  %87 = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 9, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call155.2.sink, ptr %87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155.2.sink)
  %cmp161.2 = icmp slt i32 %call155.2.sink, 0
  br i1 %cmp161.2, label %if.end158.2.do.end165_crit_edge, label %if.end158.2.for.body170_crit_edge

if.end158.2.for.body170_crit_edge:                ; preds = %if.end158.2
  br label %for.body170

if.end158.2.do.end165_crit_edge:                  ; preds = %if.end158.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end165

for.body170:                                      ; preds = %for.inc198.for.body170_crit_edge, %if.end158.2.for.body170_crit_edge
  %i.1570 = phi i32 [ %inc199, %for.inc198.for.body170_crit_edge ], [ 0, %if.end158.2.for.body170_crit_edge ]
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 128
  %arrayidx172 = getelementptr [18 x ptr], ptr @mtk_clks_source_name, i32 0, i32 %i.1570
  %91 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx172, align 4
  %call173 = tail call ptr @devm_clk_get(ptr noundef %90, ptr noundef %92) #20
  %arrayidx174 = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 26, i32 %i.1570
  %93 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call173, ptr %arrayidx174, align 4
  %cmp.i507 = icmp ugt ptr %call173, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i507, label %if.then178, label %for.body170.for.inc198_crit_edge

for.body170.for.inc198_crit_edge:                 ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc198

if.then178:                                       ; preds = %for.body170
  %cmp182 = icmp eq ptr %call173, inttoptr (i32 -517 to ptr)
  br i1 %cmp182, label %if.then178.cleanup_crit_edge, label %if.end184

if.then178.cleanup_crit_edge:                     ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end184:                                        ; preds = %if.then178
  %94 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %soc, align 64
  %required_clks = getelementptr inbounds %struct.mtk_soc_data, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %required_clks to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %required_clks, align 8
  %shl = shl nuw nsw i32 1, %i.1570
  %and186 = and i32 %97, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end194, label %do.end191

do.end191:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef %92) #23
  br label %cleanup

if.end194:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #22
  %98 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %arrayidx174, align 4
  br label %for.inc198

for.inc198:                                       ; preds = %if.end194, %for.body170.for.inc198_crit_edge
  %inc199 = add nuw nsw i32 %i.1570, 1
  %exitcond.not = icmp eq i32 %inc199, 18
  br i1 %exitcond.not, label %for.end200, label %for.inc198.for.body170_crit_edge

for.inc198.for.body170_crit_edge:                 ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body170

for.end200:                                       ; preds = %for.inc198
  %99 = load i32, ptr @mtk_msg_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %99)
  %cmp1.i = icmp ugt i32 %99, 31
  br i1 %cmp1.i, label %for.end200.netif_msg_init.exit_crit_edge, label %if.end.i

for.end200.netif_msg_init.exit_crit_edge:         ; preds = %for.end200
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %for.end200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp2.i = icmp eq i32 %99, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %notmask.i = shl nsw i32 -1, %99
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %for.end200.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 255, %for.end200.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 10
  %100 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %pending_work = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 28
  tail call void @__init_work(ptr noundef %pending_work, i32 noundef 0) #20
  %101 = ptrtoint ptr %pending_work to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -64, ptr %pending_work, align 16
  %lockdep_map208 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 28, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map208, ptr noundef nonnull @.str.34, ptr noundef nonnull @mtk_probe.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry210 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 28, i32 1
  %102 = ptrtoint ptr %entry210 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %entry210, ptr %entry210, align 4
  %prev.i508 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 28, i32 1, i32 1
  %103 = ptrtoint ptr %prev.i508 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %entry210, ptr %prev.i508, align 4
  %func212 = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 28, i32 2
  %104 = ptrtoint ptr %func212 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @mtk_pending_work, ptr %func212, align 4
  %call215 = tail call fastcc i32 @mtk_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end218, label %netif_msg_init.exit.cleanup_crit_edge

netif_msg_init.exit.cleanup_crit_edge:            ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end218:                                        ; preds = %netif_msg_init.exit
  %105 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %soc, align 64
  %caps220 = getelementptr inbounds %struct.mtk_soc_data, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %caps220 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %caps220, align 4
  %hwlro = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 16
  %and221 = lshr i32 %108, 8
  %109 = trunc i32 %and221 to i8
  %110 = and i8 %109, 1
  %111 = ptrtoint ptr %hwlro to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %hwlro, align 4
  %of_node224 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %112 = ptrtoint ptr %of_node224 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %of_node224, align 8
  %call225 = tail call ptr @of_get_next_child(ptr noundef %113, ptr noundef null) #20
  %cmp227.not572 = icmp eq ptr %call225, null
  br i1 %cmp227.not572, label %if.end218.for.end244_crit_edge, label %if.end218.for.body228_crit_edge

if.end218.for.body228_crit_edge:                  ; preds = %if.end218
  br label %for.body228

if.end218.for.end244_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end244

for.body228:                                      ; preds = %for.inc240.for.body228_crit_edge, %if.end218.for.body228_crit_edge
  %mac_np.0573 = phi ptr [ %call243, %for.inc240.for.body228_crit_edge ], [ %call225, %if.end218.for.body228_crit_edge ]
  %call229 = call i32 @of_device_is_compatible(ptr noundef nonnull %mac_np.0573, ptr noundef nonnull @.str.35) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %for.body228.for.inc240_crit_edge, label %if.end232

for.body228.for.inc240_crit_edge:                 ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc240

if.end232:                                        ; preds = %for.body228
  %call233 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %mac_np.0573) #20
  br i1 %call233, label %if.end235, label %if.end232.for.inc240_crit_edge

if.end232.for.inc240_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc240

if.end235:                                        ; preds = %if.end232
  %call.i509 = call ptr @of_get_property(ptr noundef nonnull %mac_np.0573, ptr noundef nonnull @.str.72, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_mode.i) #20
  %114 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %phy_mode.i, align 4, !annotation !361
  %tobool.not.i = icmp eq ptr %call.i509, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i511

do.end.i:                                         ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #22
  %115 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.73) #23
  br label %mtk_add_mac.exit.thread

if.end.i511:                                      ; preds = %if.end235
  %117 = ptrtoint ptr %call.i509 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %call.i509, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp.i510 = icmp sgt i32 %118, 1
  br i1 %cmp.i510, label %do.end5.i, label %if.end7.i

do.end5.i:                                        ; preds = %if.end.i511
  call void @__sanitizer_cov_trace_pc() #22
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.76, i32 noundef %118) #23
  br label %mtk_add_mac.exit.thread

if.end7.i:                                        ; preds = %if.end.i511
  %arrayidx.i = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 7, i32 %118
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %122, null
  br i1 %tobool8.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.79, i32 noundef %118) #23
  br label %mtk_add_mac.exit.thread

if.end14.i:                                       ; preds = %if.end7.i
  %call15.i = call ptr @alloc_etherdev_mqs(i32 noundef 68, i32 noundef 1, i32 noundef 1) #20
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call15.i, ptr %arrayidx.i, align 4
  %tobool20.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #22
  %126 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.82) #23
  br label %mtk_add_mac.exit.thread

if.end26.i:                                       ; preds = %if.end14.i
  %add.ptr.i.i = getelementptr i8, ptr %call15.i, i32 2304
  %arrayidx31.i = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 8, i32 %118
  %128 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr.i.i, ptr %arrayidx31.i, align 4
  %129 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %118, ptr %add.ptr.i.i, align 4
  %hw.i = getelementptr i8, ptr %call15.i, i32 2352
  %130 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i, ptr %hw.i, align 4
  %of_node.i = getelementptr i8, ptr %call15.i, i32 2320
  %131 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %mac_np.0573, ptr %of_node.i, align 4
  %hwlro_ip.i = getelementptr i8, ptr %call15.i, i32 2360
  %132 = ptrtoint ptr %hwlro_ip.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 0, ptr %hwlro_ip.i, align 4
  %hwlro_ip_cnt.i = getelementptr i8, ptr %call15.i, i32 2368
  %133 = ptrtoint ptr %hwlro_ip_cnt.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %hwlro_ip_cnt.i, align 4
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 128
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %135, i32 noundef 176, i32 noundef 3520) #20
  %hw_stats.i = getelementptr i8, ptr %call15.i, i32 2356
  %136 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i.i, ptr %hw_stats.i, align 4
  %tobool36.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool36.not.i, label %if.end26.i.mtk_add_mac.exit.thread542_crit_edge, label %do.body43.i

if.end26.i.mtk_add_mac.exit.thread542_crit_edge:  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_add_mac.exit.thread542

do.body43.i:                                      ; preds = %if.end26.i
  %stats_lock.i = getelementptr inbounds %struct.mtk_hw_stats, ptr %call.i.i, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %stats_lock.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @mtk_add_mac.__key, i16 noundef signext 3) #20
  %137 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw_stats.i, align 4
  %syncp.i = getelementptr inbounds %struct.mtk_hw_stats, ptr %138, i32 0, i32 14
  %dep_map.i.i = getelementptr inbounds %struct.mtk_hw_stats, ptr %138, i32 0, i32 14, i32 0, i32 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @mtk_add_mac.__key.88, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %139 = ptrtoint ptr %syncp.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %syncp.i, align 4
  %mul.i = shl i32 %118, 6
  %140 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw_stats.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.mtk_hw_stats, ptr %141, i32 0, i32 13
  %142 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %mul.i, ptr %reg_offset.i, align 4
  %call53.i = call i32 @of_get_phy_mode(ptr noundef nonnull %mac_np.0573, ptr noundef nonnull %phy_mode.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end60.i, label %do.body43.i.mtk_add_mac.exit.thread542_crit_edge

do.body43.i.mtk_add_mac.exit.thread542_crit_edge: ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_add_mac.exit.thread542

if.end60.i:                                       ; preds = %do.body43.i
  %interface.i = getelementptr i8, ptr %call15.i, i32 2308
  %143 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %interface.i, align 4
  %mode.i = getelementptr i8, ptr %call15.i, i32 2312
  %144 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %mode.i, align 4
  %speed.i = getelementptr i8, ptr %call15.i, i32 2316
  %145 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %speed.i, align 4
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i, align 4
  %dev63.i = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 133
  %phylink_config.i = getelementptr i8, ptr %call15.i, i32 2328
  %148 = ptrtoint ptr %phylink_config.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %dev63.i, ptr %phylink_config.i, align 4
  %type.i = getelementptr i8, ptr %call15.i, i32 2332
  %149 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %type.i, align 4
  %legacy_pre_march2020.i = getelementptr i8, ptr %call15.i, i32 2336
  %150 = ptrtoint ptr %legacy_pre_march2020.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %legacy_pre_march2020.i, align 4
  %mac_capabilities.i = getelementptr i8, ptr %call15.i, i32 2348
  %151 = ptrtoint ptr %mac_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 511, ptr %mac_capabilities.i, align 4
  %supported_interfaces.i = getelementptr i8, ptr %call15.i, i32 2344
  %152 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %supported_interfaces.i, align 4
  %or.i273.i = or i32 %153, 12
  store i32 %or.i273.i, ptr %supported_interfaces.i, align 4
  %154 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw.i, align 4
  %soc.i = getelementptr inbounds %struct.mtk_eth, ptr %155, i32 0, i32 30
  %156 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %soc.i, align 64
  %caps.i = getelementptr inbounds %struct.mtk_soc_data, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp74.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp74.not.i, label %if.end60.i.if.end79.i_crit_edge, label %if.then75.i

if.end60.i.if.end79.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end79.i

if.then75.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #22
  %or.i6.i.i = or i32 %153, 7692
  %160 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i6.i.i, ptr %supported_interfaces.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then75.i, %if.end60.i.if.end79.i_crit_edge
  %161 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw.i, align 4
  %soc81.i = getelementptr inbounds %struct.mtk_eth, ptr %162, i32 0, i32 30
  %163 = ptrtoint ptr %soc81.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %soc81.i, align 64
  %caps82.i = getelementptr inbounds %struct.mtk_soc_data, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %caps82.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %caps82.i, align 4
  %and83.i = and i32 %166, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %cmp84.not.i = icmp eq i32 %and83.i, 0
  br i1 %cmp84.not.i, label %if.end79.i.if.end91.i_crit_edge, label %land.lhs.true.i

if.end79.i.if.end91.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end91.i

land.lhs.true.i:                                  ; preds = %if.end79.i
  %167 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool86.not.i = icmp eq i32 %168, 0
  br i1 %tobool86.not.i, label %if.then87.i, label %land.lhs.true.i.if.end91.i_crit_edge

land.lhs.true.i.if.end91.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end91.i

if.then87.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %169 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %supported_interfaces.i, align 4
  %or.i274.i = or i32 %170, 524288
  store i32 %or.i274.i, ptr %supported_interfaces.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then87.i, %land.lhs.true.i.if.end91.i_crit_edge, %if.end79.i.if.end91.i_crit_edge
  %171 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw.i, align 4
  %soc93.i = getelementptr inbounds %struct.mtk_eth, ptr %172, i32 0, i32 30
  %173 = ptrtoint ptr %soc93.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %soc93.i, align 64
  %caps94.i = getelementptr inbounds %struct.mtk_soc_data, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %caps94.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %caps94.i, align 4
  %and95.i = and i32 %176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %cmp96.not.i = icmp eq i32 %and95.i, 0
  br i1 %cmp96.not.i, label %if.end91.i.if.end107.i_crit_edge, label %if.then97.i

if.end91.i.if.end107.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end107.i

if.then97.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #22
  %177 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %supported_interfaces.i, align 4
  %or.i277.i = or i32 %178, 6291472
  store i32 %or.i277.i, ptr %supported_interfaces.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then97.i, %if.end91.i.if.end107.i_crit_edge
  %179 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %of_node.i, align 4
  %tobool110.not.i = icmp eq ptr %180, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %180, i32 0, i32 3
  %spec.select.i = select i1 %tobool110.not.i, ptr null, ptr %fwnode.i
  %181 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %phy_mode.i, align 4
  %call111.i = call ptr @phylink_create(ptr noundef %phylink_config.i, ptr noundef %spec.select.i, i32 noundef %182, ptr noundef nonnull @mtk_phylink_ops) #20
  %cmp.i.i = icmp ugt ptr %call111.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtk_add_mac.exit, label %if.end115.i

if.end115.i:                                      ; preds = %if.end107.i
  %phylink116.i = getelementptr i8, ptr %call15.i, i32 2324
  %183 = ptrtoint ptr %phylink116.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call111.i, ptr %phylink116.i, align 4
  %184 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %call.i, align 128
  %186 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %187, i32 0, i32 133, i32 1
  %188 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %185, ptr %parent.i, align 8
  %189 = load ptr, ptr %arrayidx.i, align 4
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %189, i32 0, i32 115
  %190 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 500, ptr %watchdog_timeo.i, align 4
  %191 = load ptr, ptr %arrayidx.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %191, i32 0, i32 16
  %192 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @mtk_netdev_ops, ptr %netdev_ops.i, align 8
  %193 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base, align 4
  %195 = ptrtoint ptr %194 to i32
  %196 = load ptr, ptr %arrayidx.i, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %195, ptr %base_addr.i, align 32
  %198 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %soc, align 64
  %hw_features.i = getelementptr inbounds %struct.mtk_soc_data, ptr %199, i32 0, i32 5
  %200 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %hw_features.i, align 8
  %202 = load ptr, ptr %arrayidx.i, align 4
  %hw_features130.i = getelementptr inbounds %struct.net_device, ptr %202, i32 0, i32 24
  %203 = ptrtoint ptr %hw_features130.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %201, ptr %hw_features130.i, align 8
  %204 = ptrtoint ptr %hwlro to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %hwlro, align 4, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool131.not.i = icmp eq i8 %205, 0
  br i1 %tobool131.not.i, label %if.end115.i.if.end136.i_crit_edge, label %if.then132.i

if.end115.i.if.end136.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end136.i

if.then132.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #22
  %206 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx.i, align 4
  %hw_features135.i = getelementptr inbounds %struct.net_device, ptr %207, i32 0, i32 24
  %208 = ptrtoint ptr %hw_features135.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %hw_features135.i, align 8
  %or.i = or i64 %209, 32768
  store i64 %or.i, ptr %hw_features135.i, align 8
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then132.i, %if.end115.i.if.end136.i_crit_edge
  %210 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %soc, align 64
  %hw_features138.i = getelementptr inbounds %struct.mtk_soc_data, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %hw_features138.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %hw_features138.i, align 8
  %and139.i = and i64 %213, -385
  %214 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i, align 4
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %215, i32 0, i32 26
  %216 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %and139.i, ptr %vlan_features.i, align 8
  %217 = load ptr, ptr %soc, align 64
  %hw_features143.i = getelementptr inbounds %struct.mtk_soc_data, ptr %217, i32 0, i32 5
  %218 = ptrtoint ptr %hw_features143.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %hw_features143.i, align 8
  %220 = load ptr, ptr %arrayidx.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %220, i32 0, i32 23
  %221 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %features.i, align 16
  %or146.i = or i64 %222, %219
  store i64 %or146.i, ptr %features.i, align 16
  %223 = load ptr, ptr %arrayidx.i, align 4
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %223, i32 0, i32 44
  %224 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @mtk_ethtool_ops, ptr %ethtool_ops.i, align 16
  %225 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %irq, align 16
  %227 = load ptr, ptr %arrayidx.i, align 4
  %irq152.i = getelementptr inbounds %struct.net_device, ptr %227, i32 0, i32 64
  %228 = ptrtoint ptr %irq152.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %226, ptr %irq152.i, align 4
  %229 = load ptr, ptr %arrayidx.i, align 4
  %of_node156.i = getelementptr inbounds %struct.net_device, ptr %229, i32 0, i32 133, i32 27
  %230 = ptrtoint ptr %of_node156.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %mac_np.0573, ptr %of_node156.i, align 16
  %231 = load ptr, ptr %soc, align 64
  %caps158.i = getelementptr inbounds %struct.mtk_soc_data, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %caps158.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %caps158.i, align 4
  %and159.i = and i32 %233, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %cmp160.not.i = icmp eq i32 %and159.i, 0
  %234 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i, align 4
  %max_mtu166.i = getelementptr inbounds %struct.net_device, ptr %235, i32 0, i32 31
  %. = select i1 %cmp160.not.i, i32 2030, i32 1518
  %236 = ptrtoint ptr %max_mtu166.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %., ptr %max_mtu166.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #20
  br label %for.inc240

mtk_add_mac.exit.thread:                          ; preds = %do.end24.i, %do.end12.i, %do.end5.i, %do.end.i
  %retval.0.i512.ph = phi i32 [ -22, %do.end.i ], [ -12, %do.end24.i ], [ -22, %do.end12.i ], [ -22, %do.end5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #20
  br label %if.then238

mtk_add_mac.exit.thread542:                       ; preds = %do.body43.i.mtk_add_mac.exit.thread542_crit_edge, %if.end26.i.mtk_add_mac.exit.thread542_crit_edge
  %.str.91.sink = phi ptr [ @.str.85, %if.end26.i.mtk_add_mac.exit.thread542_crit_edge ], [ @.str.91, %do.body43.i.mtk_add_mac.exit.thread542_crit_edge ]
  %err.0.i.ph = phi i32 [ -12, %if.end26.i.mtk_add_mac.exit.thread542_crit_edge ], [ %call53.i, %do.body43.i.mtk_add_mac.exit.thread542_crit_edge ]
  %237 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %238, ptr noundef nonnull %.str.91.sink) #23
  %239 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %arrayidx.i, align 4
  call void @free_netdev(ptr noundef %240) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #20
  br label %if.then238

mtk_add_mac.exit:                                 ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #22
  %241 = ptrtoint ptr %call111.i to i32
  %242 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx.i, align 4
  call void @free_netdev(ptr noundef %243) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #20
  br label %if.then238

if.then238:                                       ; preds = %mtk_add_mac.exit, %mtk_add_mac.exit.thread542, %mtk_add_mac.exit.thread
  %retval.0.i512536 = phi i32 [ %retval.0.i512.ph, %mtk_add_mac.exit.thread ], [ %241, %mtk_add_mac.exit ], [ %err.0.i.ph, %mtk_add_mac.exit.thread542 ]
  call void @of_node_put(ptr noundef nonnull %mac_np.0573) #20
  br label %err_deinit_hw

for.inc240:                                       ; preds = %if.end136.i, %if.end232.for.inc240_crit_edge, %for.body228.for.inc240_crit_edge
  %244 = ptrtoint ptr %of_node224 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %of_node224, align 8
  %call243 = call ptr @of_get_next_child(ptr noundef %245, ptr noundef nonnull %mac_np.0573) #20
  %cmp227.not = icmp eq ptr %call243, null
  br i1 %cmp227.not, label %for.inc240.for.end244_crit_edge, label %for.inc240.for.body228_crit_edge

for.inc240.for.body228_crit_edge:                 ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body228

for.inc240.for.end244_crit_edge:                  ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end244

for.end244:                                       ; preds = %for.inc240.for.end244_crit_edge, %if.end218.for.end244_crit_edge
  %246 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %soc, align 64
  %caps246 = getelementptr inbounds %struct.mtk_soc_data, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %caps246 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %caps246, align 4
  %and247 = and i32 %249, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %cmp248.not = icmp eq i32 %and247, 0
  %250 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %call.i, align 128
  br i1 %cmp248.not, label %if.else256, label %if.then249

if.then249:                                       ; preds = %for.end244
  %252 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %irq, align 16
  %init_name.i = getelementptr inbounds %struct.device, ptr %251, i32 0, i32 3
  %254 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i513 = icmp eq ptr %255, null
  br i1 %tobool.not.i513, label %if.end.i514, label %if.then249.dev_name.exit_crit_edge

if.then249.dev_name.exit_crit_edge:               ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit

if.end.i514:                                      ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #22
  %256 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %251, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i514, %if.then249.dev_name.exit_crit_edge
  %retval.0.i515 = phi ptr [ %257, %if.end.i514 ], [ %255, %if.then249.dev_name.exit_crit_edge ]
  %call.i516 = call i32 @devm_request_threaded_irq(ptr noundef %251, i32 noundef %253, ptr noundef nonnull @mtk_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i515, ptr noundef %call.i) #20
  br label %if.end272

if.else256:                                       ; preds = %for.end244
  %258 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %79, align 4
  %init_name.i517 = getelementptr inbounds %struct.device, ptr %251, i32 0, i32 3
  %260 = ptrtoint ptr %init_name.i517 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %init_name.i517, align 8
  %tobool.not.i518 = icmp eq ptr %261, null
  br i1 %tobool.not.i518, label %if.end.i519, label %if.else256.dev_name.exit521_crit_edge

if.else256.dev_name.exit521_crit_edge:            ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit521

if.end.i519:                                      ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #22
  %262 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %251, align 4
  br label %dev_name.exit521

dev_name.exit521:                                 ; preds = %if.end.i519, %if.else256.dev_name.exit521_crit_edge
  %retval.0.i520 = phi ptr [ %263, %if.end.i519 ], [ %261, %if.else256.dev_name.exit521_crit_edge ]
  %call.i522 = call i32 @devm_request_threaded_irq(ptr noundef %251, i32 noundef %259, ptr noundef nonnull @mtk_handle_irq_tx, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i520, ptr noundef %call.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i522)
  %tobool263.not = icmp eq i32 %call.i522, 0
  br i1 %tobool263.not, label %if.end265, label %dev_name.exit521.err_free_dev_crit_edge

dev_name.exit521.err_free_dev_crit_edge:          ; preds = %dev_name.exit521
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_dev

if.end265:                                        ; preds = %dev_name.exit521
  %264 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %call.i, align 128
  %266 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %87, align 8
  %init_name.i523 = getelementptr inbounds %struct.device, ptr %265, i32 0, i32 3
  %268 = ptrtoint ptr %init_name.i523 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %init_name.i523, align 8
  %tobool.not.i524 = icmp eq ptr %269, null
  br i1 %tobool.not.i524, label %if.end.i525, label %if.end265.dev_name.exit527_crit_edge

if.end265.dev_name.exit527_crit_edge:             ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit527

if.end.i525:                                      ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #22
  %270 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %265, align 4
  br label %dev_name.exit527

dev_name.exit527:                                 ; preds = %if.end.i525, %if.end265.dev_name.exit527_crit_edge
  %retval.0.i526 = phi ptr [ %271, %if.end.i525 ], [ %269, %if.end265.dev_name.exit527_crit_edge ]
  %call.i528 = call i32 @devm_request_threaded_irq(ptr noundef %265, i32 noundef %267, ptr noundef nonnull @mtk_handle_irq_rx, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i526, ptr noundef %call.i) #20
  br label %if.end272

if.end272:                                        ; preds = %dev_name.exit527, %dev_name.exit
  %err.0 = phi i32 [ %call.i516, %dev_name.exit ], [ %call.i528, %dev_name.exit527 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool273.not = icmp eq i32 %err.0, 0
  br i1 %tobool273.not, label %if.end275, label %if.end272.err_free_dev_crit_edge

if.end272.err_free_dev_crit_edge:                 ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_dev

if.end275:                                        ; preds = %if.end272
  %272 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %soc, align 64
  %caps277 = getelementptr inbounds %struct.mtk_soc_data, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %caps277 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %caps277, align 4
  %and278 = and i32 %275, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %cmp279.not = icmp eq i32 %and278, 0
  br i1 %cmp279.not, label %if.then280, label %if.end275.if.end285_crit_edge

if.end275.if.end285_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end285

if.then280:                                       ; preds = %if.end275
  %call281 = call fastcc i32 @mtk_mdio_init(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.then280.if.end285_crit_edge, label %if.then280.err_free_dev_crit_edge

if.then280.err_free_dev_crit_edge:                ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_dev

if.then280.if.end285_crit_edge:                   ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end285

if.end285:                                        ; preds = %if.then280.if.end285_crit_edge, %if.end275.if.end285_crit_edge
  %276 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %soc, align 64
  %offload_version = getelementptr inbounds %struct.mtk_soc_data, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %offload_version to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %offload_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool287.not = icmp eq i8 %279, 0
  br i1 %tobool287.not, label %if.end285.if.end299_crit_edge, label %if.then288

if.end285.if.end299_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end299

if.then288:                                       ; preds = %if.end285
  %ppe = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 44
  %280 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %call.i, align 128
  %282 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %283, i32 3072
  %call291 = call i32 @mtk_ppe_init(ptr noundef %ppe, ptr noundef %281, ptr noundef %add.ptr, i32 noundef 2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %if.end294, label %if.then288.err_free_dev_crit_edge

if.then288.err_free_dev_crit_edge:                ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_dev

if.end294:                                        ; preds = %if.then288
  %call295 = call i32 @mtk_eth_offload_init(ptr noundef %call.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %if.end294.if.end299_crit_edge, label %if.end294.err_free_dev_crit_edge

if.end294.err_free_dev_crit_edge:                 ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_dev

if.end294.if.end299_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end299

if.end299:                                        ; preds = %if.end294.if.end299_crit_edge, %if.end285.if.end299_crit_edge
  %arrayidx303 = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 7, i32 0
  %284 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx303, align 4
  %tobool304.not = icmp eq ptr %285, null
  br i1 %tobool304.not, label %if.end299.for.inc332_crit_edge, label %if.end306

if.end299.for.inc332_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc332

if.end306:                                        ; preds = %if.end299
  %call309 = call i32 @register_netdev(ptr noundef nonnull %285) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %do.body317, label %if.end306.do.end314_crit_edge

if.end306.do.end314_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end314

do.end314:                                        ; preds = %if.end306.1.do.end314_crit_edge, %if.end306.do.end314_crit_edge
  %call309.lcssa = phi i32 [ %call309, %if.end306.do.end314_crit_edge ], [ %call309.1, %if.end306.1.do.end314_crit_edge ]
  %286 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %287, ptr noundef nonnull @.str.37) #23
  %mii_bus.i = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 27
  %288 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i529 = icmp eq ptr %289, null
  br i1 %tobool.not.i529, label %do.end314.err_free_dev_crit_edge, label %if.end.i530

do.end314.err_free_dev_crit_edge:                 ; preds = %do.end314
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_free_dev

if.end.i530:                                      ; preds = %do.end314
  call void @__sanitizer_cov_trace_pc() #22
  call void @mdiobus_unregister(ptr noundef nonnull %289) #20
  br label %err_free_dev

do.body317:                                       ; preds = %if.end306
  %290 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %msg_enable, align 4
  %and319 = and i32 %291, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319)
  %tobool320.not = icmp eq i32 %and319, 0
  br i1 %tobool320.not, label %do.body317.for.inc332_crit_edge, label %if.then321

do.body317.for.inc332_crit_edge:                  ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc332

if.then321:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #22
  %292 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx303, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %293, i32 0, i32 5
  %294 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %base_addr, align 32
  %296 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %irq, align 16
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %293, ptr noundef nonnull @.str.39, i32 noundef %295, i32 noundef %297) #23
  br label %for.inc332

for.inc332:                                       ; preds = %if.then321, %do.body317.for.inc332_crit_edge, %if.end299.for.inc332_crit_edge
  %arrayidx303.1 = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 7, i32 1
  %298 = ptrtoint ptr %arrayidx303.1 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %arrayidx303.1, align 4
  %tobool304.not.1 = icmp eq ptr %299, null
  br i1 %tobool304.not.1, label %for.inc332.for.inc332.1_crit_edge, label %if.end306.1

for.inc332.for.inc332.1_crit_edge:                ; preds = %for.inc332
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc332.1

if.end306.1:                                      ; preds = %for.inc332
  %call309.1 = call i32 @register_netdev(ptr noundef nonnull %299) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309.1)
  %tobool310.not.1 = icmp eq i32 %call309.1, 0
  br i1 %tobool310.not.1, label %do.body317.1, label %if.end306.1.do.end314_crit_edge

if.end306.1.do.end314_crit_edge:                  ; preds = %if.end306.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end314

do.body317.1:                                     ; preds = %if.end306.1
  %300 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %msg_enable, align 4
  %and319.1 = and i32 %301, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.1)
  %tobool320.not.1 = icmp eq i32 %and319.1, 0
  br i1 %tobool320.not.1, label %do.body317.1.for.inc332.1_crit_edge, label %if.then321.1

do.body317.1.for.inc332.1_crit_edge:              ; preds = %do.body317.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc332.1

if.then321.1:                                     ; preds = %do.body317.1
  call void @__sanitizer_cov_trace_pc() #22
  %302 = ptrtoint ptr %arrayidx303.1 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx303.1, align 4
  %base_addr.1 = getelementptr inbounds %struct.net_device, ptr %303, i32 0, i32 5
  %304 = ptrtoint ptr %base_addr.1 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %base_addr.1, align 32
  %306 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %irq, align 16
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %303, ptr noundef nonnull @.str.39, i32 noundef %305, i32 noundef %307) #23
  br label %for.inc332.1

for.inc332.1:                                     ; preds = %if.then321.1, %do.body317.1.for.inc332.1_crit_edge, %for.inc332.for.inc332.1_crit_edge
  %dummy_dev = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 6
  %call335 = call i32 @init_dummy_netdev(ptr noundef %dummy_dev) #20
  %tx_napi = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 21
  call void @netif_napi_add(ptr noundef %dummy_dev, ptr noundef %tx_napi, ptr noundef nonnull @mtk_napi_tx, i32 noundef 64) #20
  %rx_napi = getelementptr inbounds %struct.mtk_eth, ptr %call.i, i32 0, i32 22
  call void @netif_napi_add(ptr noundef %dummy_dev, ptr noundef %rx_napi, ptr noundef nonnull @mtk_napi_rx, i32 noundef 64) #20
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %308 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_free_dev:                                     ; preds = %if.end.i530, %do.end314.err_free_dev_crit_edge, %if.end294.err_free_dev_crit_edge, %if.then288.err_free_dev_crit_edge, %if.then280.err_free_dev_crit_edge, %if.end272.err_free_dev_crit_edge, %dev_name.exit521.err_free_dev_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end272.err_free_dev_crit_edge ], [ %call291, %if.then288.err_free_dev_crit_edge ], [ %call295, %if.end294.err_free_dev_crit_edge ], [ %call281, %if.then280.err_free_dev_crit_edge ], [ %call.i522, %dev_name.exit521.err_free_dev_crit_edge ], [ %call309.lcssa, %do.end314.err_free_dev_crit_edge ], [ %call309.lcssa, %if.end.i530 ]
  %arrayidx.i531 = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 7, i32 0
  %309 = ptrtoint ptr %arrayidx.i531 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx.i531, align 4
  %tobool.not.i532 = icmp eq ptr %310, null
  br i1 %tobool.not.i532, label %err_free_dev.for.inc.i_crit_edge, label %if.end.i533

err_free_dev.for.inc.i_crit_edge:                 ; preds = %err_free_dev
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end.i533:                                      ; preds = %err_free_dev
  call void @__sanitizer_cov_trace_pc() #22
  call void @free_netdev(ptr noundef nonnull %310) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i533, %err_free_dev.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.mtk_eth, ptr %call.i, i32 0, i32 7, i32 1
  %311 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %312, null
  br i1 %tobool.not.1.i, label %for.inc.i.err_deinit_hw_crit_edge, label %if.end.1.i

for.inc.i.err_deinit_hw_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_deinit_hw

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @free_netdev(ptr noundef nonnull %312) #20
  br label %err_deinit_hw

err_deinit_hw:                                    ; preds = %if.end.1.i, %for.inc.i.err_deinit_hw_crit_edge, %if.then238
  %err.2 = phi i32 [ %retval.0.i512536, %if.then238 ], [ %err.1, %for.inc.i.err_deinit_hw_crit_edge ], [ %err.1, %if.end.1.i ]
  call fastcc void @mtk_hw_deinit(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_deinit_hw, %for.inc332.1, %netif_msg_init.exit.cleanup_crit_edge, %do.end191, %if.then178.cleanup_crit_edge, %do.end165, %do.end139, %if.end118.cleanup_crit_edge, %if.then112.cleanup_crit_edge, %do.end102, %do.end83, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then8 ], [ %48, %do.end102 ], [ %71, %do.end139 ], [ -6, %do.end165 ], [ -22, %do.end191 ], [ %err.2, %err_deinit_hw ], [ 0, %for.inc332.1 ], [ %38, %do.end83 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then112.cleanup_crit_edge ], [ %call123, %if.end118.cleanup_crit_edge ], [ %call215, %netif_msg_init.exit.cleanup_crit_edge ], [ -517, %if.then178.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mtk_eth, ptr %1, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call3 = tail call i32 @mtk_stop(ptr noundef nonnull %3)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %phylink = getelementptr i8, ptr %5, i32 2324
  %6 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phylink, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %7) #20
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mtk_eth, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %call3.1 = tail call i32 @mtk_stop(ptr noundef nonnull %9)
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %phylink.1 = getelementptr i8, ptr %11, i32 2324
  %12 = ptrtoint ptr %phylink.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phylink.1, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %13) #20
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  tail call fastcc void @mtk_hw_deinit(ptr noundef %1)
  %tx_napi = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 21
  tail call void @__netif_napi_del(ptr noundef %tx_napi) #20
  tail call void @synchronize_net() #20
  %rx_napi = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 22
  tail call void @__netif_napi_del(ptr noundef %rx_napi) #20
  tail call void @synchronize_net() #20
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %for.inc.1.for.inc.i.i_crit_edge, label %if.end.i.i

for.inc.1.for.inc.i.i_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @unregister_netdev(ptr noundef nonnull %15) #20
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.inc.1.for.inc.i.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.mtk_unreg_dev.exit.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.mtk_unreg_dev.exit.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_unreg_dev.exit.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @unregister_netdev(ptr noundef nonnull %17) #20
  br label %mtk_unreg_dev.exit.i

mtk_unreg_dev.exit.i:                             ; preds = %if.end.1.i.i, %for.inc.i.i.mtk_unreg_dev.exit.i_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i2.i = icmp eq ptr %19, null
  br i1 %tobool.not.i2.i, label %mtk_unreg_dev.exit.i.for.inc.i6.i_crit_edge, label %if.end.i3.i

mtk_unreg_dev.exit.i.for.inc.i6.i_crit_edge:      ; preds = %mtk_unreg_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i6.i

if.end.i3.i:                                      ; preds = %mtk_unreg_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @free_netdev(ptr noundef nonnull %19) #20
  br label %for.inc.i6.i

for.inc.i6.i:                                     ; preds = %if.end.i3.i, %mtk_unreg_dev.exit.i.for.inc.i6.i_crit_edge
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1.i5.i = icmp eq ptr %21, null
  br i1 %tobool.not.1.i5.i, label %for.inc.i6.i.mtk_cleanup.exit_crit_edge, label %if.end.1.i7.i

for.inc.i6.i.mtk_cleanup.exit_crit_edge:          ; preds = %for.inc.i6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_cleanup.exit

if.end.1.i7.i:                                    ; preds = %for.inc.i6.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @free_netdev(ptr noundef nonnull %21) #20
  br label %mtk_cleanup.exit

mtk_cleanup.exit:                                 ; preds = %if.end.1.i7.i, %for.inc.i6.i.mtk_cleanup.exit_crit_edge
  %pending_work.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 28
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %pending_work.i) #20
  %mii_bus.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 27
  %22 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %mtk_cleanup.exit.mtk_mdio_cleanup.exit_crit_edge, label %if.end.i

mtk_cleanup.exit.mtk_mdio_cleanup.exit_crit_edge: ; preds = %mtk_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_mdio_cleanup.exit

if.end.i:                                         ; preds = %mtk_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @mdiobus_unregister(ptr noundef nonnull %23) #20
  br label %mtk_mdio_cleanup.exit

mtk_mdio_cleanup.exit:                            ; preds = %if.end.i, %mtk_cleanup.exit.mtk_mdio_cleanup.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dim_rx(ptr noundef %work) #0 align 64 {
entry:
  %tmp4 = alloca %struct.dim_cq_moder, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp4) #20
  %mode = getelementptr i8, ptr %work, i32 49
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 1
  %profile_ix = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %profile_ix, align 8
  %conv = zext i8 %3 to i32
  call void @net_dim_get_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp4, i8 noundef zeroext %1, i32 noundef %conv) #20
  %4 = ptrtoint ptr %tmp4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %cur_profile.sroa.0.0.copyload33 = load i16, ptr %tmp4, align 2
  %cur_profile.sroa.5.0.tmp4.sroa_idx = getelementptr inbounds i8, ptr %tmp4, i32 2
  %5 = ptrtoint ptr %cur_profile.sroa.5.0.tmp4.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %cur_profile.sroa.5.0.copyload34 = load i16, ptr %cur_profile.sroa.5.0.tmp4.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp4) #20
  %dim_lock = getelementptr i8, ptr %work, i32 -132
  call void @_raw_spin_lock_bh(ptr noundef %dim_lock) #20
  %base.i = getelementptr i8, ptr %work, i32 -3524
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2572
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %and = and i32 %8, -65536
  call void @__sanitizer_cov_trace_const_cmp2(i16 5081, i16 %cur_profile.sroa.0.0.copyload33)
  %cmp = icmp ult i16 %cur_profile.sroa.0.0.copyload33, 5081
  %conv5 = zext i16 %cur_profile.sroa.0.0.copyload33 to i32
  %sub = add nuw nsw i32 %conv5, 19
  %div = udiv i32 %sub, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %cur_profile.sroa.5.0.copyload34)
  %cmp11 = icmp ult i16 %cur_profile.sroa.5.0.copyload34, 127
  %conv9 = zext i16 %cur_profile.sroa.5.0.copyload34 to i32
  %phi.bo = shl nuw nsw i32 %conv9, 8
  %cond16 = select i1 %cmp11, i32 %phi.bo, i32 32512
  %div.op = or i32 %div, 32768
  %or = select i1 %cmp, i32 %div.op, i32 33023
  %or8 = or i32 %or, %cond16
  %or18 = or i32 %or8, %and
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %10, i32 2572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %or18) #20, !srcloc !351
  %soc = getelementptr i8, ptr %work, i32 -136
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps, align 4
  %and19 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %16, i32 6668
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %or18) #20, !srcloc !351
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  call void @_raw_spin_unlock_bh(ptr noundef %dim_lock) #20
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %add.ptr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dim_tx(ptr noundef %work) #0 align 64 {
entry:
  %tmp4 = alloca %struct.dim_cq_moder, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp4) #20
  %mode = getelementptr i8, ptr %work, i32 49
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 1
  %profile_ix = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %profile_ix, align 8
  %conv = zext i8 %3 to i32
  call void @net_dim_get_tx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp4, i8 noundef zeroext %1, i32 noundef %conv) #20
  %4 = ptrtoint ptr %tmp4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %cur_profile.sroa.0.0.copyload33 = load i16, ptr %tmp4, align 2
  %cur_profile.sroa.5.0.tmp4.sroa_idx = getelementptr inbounds i8, ptr %tmp4, i32 2
  %5 = ptrtoint ptr %cur_profile.sroa.5.0.tmp4.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %cur_profile.sroa.5.0.copyload34 = load i16, ptr %cur_profile.sroa.5.0.tmp4.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp4) #20
  %dim_lock = getelementptr i8, ptr %work, i32 -276
  call void @_raw_spin_lock_bh(ptr noundef %dim_lock) #20
  %base.i = getelementptr i8, ptr %work, i32 -3668
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2572
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %and = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 5081, i16 %cur_profile.sroa.0.0.copyload33)
  %cmp = icmp ult i16 %cur_profile.sroa.0.0.copyload33, 5081
  %conv5 = zext i16 %cur_profile.sroa.0.0.copyload33 to i32
  %sub = add nuw nsw i32 %conv5, 19
  %div = udiv i32 %sub, 20
  %phi.bo = shl nuw nsw i32 %div, 16
  %cond = select i1 %cmp, i32 %phi.bo, i32 16711680
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %cur_profile.sroa.5.0.copyload34)
  %cmp11 = icmp ult i16 %cur_profile.sroa.5.0.copyload34, 127
  %conv9 = zext i16 %cur_profile.sroa.5.0.copyload34 to i32
  %phi.bo43 = shl i32 %conv9, 24
  %phi.bo43.op = or i32 %phi.bo43, -2147483648
  %or = select i1 %cmp11, i32 %phi.bo43.op, i32 -16777216
  %or8 = or i32 %or, %cond
  %or18 = or i32 %or8, %and
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %10, i32 2572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %or18) #20, !srcloc !351
  %soc = getelementptr i8, ptr %work, i32 -280
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps, align 4
  %and19 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %16, i32 6668
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %or18) #20, !srcloc !351
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  call void @_raw_spin_unlock_bh(ptr noundef %dim_lock) #20
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %add.ptr, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_sgmii_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pending_work(ptr noundef %work) #0 align 64 {
entry:
  %restart = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3344
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %restart)
  %0 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %restart, align 4
  tail call void @rtnl_lock() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pending_work.__UNIQUE_ID_ddebug725, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pending_work, %if.then)) #20
          to label %do.end [label %if.then], !srcloc !362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pending_work.__UNIQUE_ID_ddebug725, ptr noundef %2, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef 2629) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr i8, ptr %work, i32 44
  br label %while.cond

while.cond:                                       ; preds = %do.end9, %do.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #20
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %while.cond.do.end9_crit_edge

while.cond.do.end9_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end9

test_and_set_bit_lock.exit:                       ; preds = %while.cond
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #20
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 2, ptr elementtype(i32) %state) #20, !srcloc !363
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !364
  %6 = and i32 %asmresult.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %phi.cmp.i.not = icmp eq i32 %6, 0
  br i1 %phi.cmp.i.not, label %do.body14, label %test_and_set_bit_lock.exit.do.end9_crit_edge

test_and_set_bit_lock.exit.do.end9_crit_edge:     ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end9

do.end9:                                          ; preds = %test_and_set_bit_lock.exit.do.end9_crit_edge, %while.cond.do.end9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !365
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !366
  br label %while.cond

do.body14:                                        ; preds = %test_and_set_bit_lock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pending_work.__UNIQUE_ID_ddebug726, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pending_work, %if.then26)) #20
          to label %do.end30 [label %if.then26], !srcloc !362

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pending_work.__UNIQUE_ID_ddebug726, ptr noundef %8, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 2634) #20
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %netdev = getelementptr i8, ptr %work, i32 -784
  %9 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %9)
  %restart.0.restart.promoted = load i32, ptr %restart, align 4
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  %tobool31.not = icmp eq ptr %11, null
  br i1 %tobool31.not, label %do.end30.for.inc_crit_edge, label %if.end33

do.end30.for.inc_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end33:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #22
  %call36 = tail call i32 @mtk_stop(ptr noundef nonnull %11)
  %or.i = or i32 %restart.0.restart.promoted, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %do.end30.for.inc_crit_edge
  %or.i152 = phi i32 [ %restart.0.restart.promoted, %do.end30.for.inc_crit_edge ], [ %or.i, %if.end33 ]
  %arrayidx.1 = getelementptr i8, ptr %work, i32 -780
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool31.not.1 = icmp eq ptr %13, null
  br i1 %tobool31.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end33.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

if.end33.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %call36.1 = tail call i32 @mtk_stop(ptr noundef nonnull %13)
  %or.i.1 = or i32 %or.i152, 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end33.1, %for.inc.for.inc.1_crit_edge
  %or.i152.1 = phi i32 [ %or.i152, %for.inc.for.inc.1_crit_edge ], [ %or.i.1, %if.end33.1 ]
  %14 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i152.1, ptr %restart, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pending_work.__UNIQUE_ID_ddebug727, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pending_work, %if.then49)) #20
          to label %do.end53 [label %if.then49], !srcloc !362

if.then49:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pending_work.__UNIQUE_ID_ddebug727, ptr noundef %16, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef 2642) #20
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %for.inc.1
  tail call fastcc void @mtk_hw_deinit(ptr noundef %add.ptr)
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 128
  %pins = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pins, align 8
  %tobool56.not = icmp eq ptr %20, null
  br i1 %tobool56.not, label %do.end53.if.end63_crit_edge, label %if.then57

do.end53.if.end63_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end63

if.then57:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #22
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %default_state = getelementptr inbounds %struct.dev_pin_info, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %default_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %default_state, align 4
  %call62 = tail call i32 @pinctrl_select_state(ptr noundef %22, ptr noundef %24) #20
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %do.end53.if.end63_crit_edge
  %call64 = tail call fastcc i32 @mtk_hw_init(ptr noundef %add.ptr)
  %msg_enable = getelementptr i8, ptr %work, i32 -756
  %25 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %25)
  %restart.0.restart.0. = load volatile i32, ptr %restart, align 4
  %26 = and i32 %restart.0.restart.0., 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool69.not = icmp eq i32 %26, 0
  br i1 %tobool69.not, label %if.end63.for.inc88_crit_edge, label %if.end71

if.end63.for.inc88_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc88

if.end71:                                         ; preds = %if.end63
  %27 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev, align 4
  %call74 = tail call i32 @mtk_open(ptr noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end71.for.inc88_crit_edge, label %do.body77

if.end71.for.inc88_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc88

do.body77:                                        ; preds = %if.end71
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 4
  %and = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  br i1 %tobool78.not, label %do.body77.do.end84_crit_edge, label %if.then79

do.body77.do.end84_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end84

if.then79:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #22
  %31 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %32, ptr noundef nonnull @.str.63) #23
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %do.body77.do.end84_crit_edge
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 4
  tail call void @dev_close(ptr noundef %34) #20
  br label %for.inc88

for.inc88:                                        ; preds = %do.end84, %if.end71.for.inc88_crit_edge, %if.end63.for.inc88_crit_edge
  %35 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %35)
  %restart.0.restart.0..1 = load volatile i32, ptr %restart, align 4
  %36 = and i32 %restart.0.restart.0..1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool69.not.1 = icmp eq i32 %36, 0
  br i1 %tobool69.not.1, label %for.inc88.for.inc88.1_crit_edge, label %if.end71.1

for.inc88.for.inc88.1_crit_edge:                  ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc88.1

if.end71.1:                                       ; preds = %for.inc88
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.1, align 4
  %call74.1 = tail call i32 @mtk_open(ptr noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.1)
  %tobool75.not.1 = icmp eq i32 %call74.1, 0
  br i1 %tobool75.not.1, label %if.end71.1.for.inc88.1_crit_edge, label %do.body77.1

if.end71.1.for.inc88.1_crit_edge:                 ; preds = %if.end71.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc88.1

do.body77.1:                                      ; preds = %if.end71.1
  %39 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable, align 4
  %and.1 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool78.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool78.not.1, label %do.body77.1.do.end84.1_crit_edge, label %if.then79.1

do.body77.1.do.end84.1_crit_edge:                 ; preds = %do.body77.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end84.1

if.then79.1:                                      ; preds = %do.body77.1
  call void @__sanitizer_cov_trace_pc() #22
  %41 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.1, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %42, ptr noundef nonnull @.str.63) #23
  br label %do.end84.1

do.end84.1:                                       ; preds = %if.then79.1, %do.body77.1.do.end84.1_crit_edge
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.1, align 4
  tail call void @dev_close(ptr noundef %44) #20
  br label %for.inc88.1

for.inc88.1:                                      ; preds = %do.end84.1, %if.end71.1.for.inc88.1_crit_edge, %for.inc88.for.inc88.1_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pending_work.__UNIQUE_ID_ddebug728, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pending_work, %if.then103)) #20
          to label %do.end107 [label %if.then103], !srcloc !362

if.then103:                                       ; preds = %for.inc88.1
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pending_work.__UNIQUE_ID_ddebug728, ptr noundef %46, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59, i32 noundef 2666) #20
  br label %do.end107

do.end107:                                        ; preds = %if.then103, %for.inc88.1
  %call.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !367
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #20
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 2, ptr elementtype(i32) %state) #20, !srcloc !368
  tail call void @rtnl_unlock() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %restart)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_hw_init(ptr noundef %eth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 29
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eth, align 128
  tail call void @pm_runtime_enable(ptr noundef %1) #20
  %2 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth, align 128
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %clk.019.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 %clk.019.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.clk_prepare_enable.exit.i_crit_edge

for.body.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @clk_unprepare(ptr noundef %5) #20
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %for.body.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %for.body.i.clk_prepare_enable.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk.019.i)
  %cmp121.not.i = icmp eq i32 %clk.019.i, 0
  br i1 %cmp121.not.i, label %clk_prepare_enable.exit.i.err_disable_pm_crit_edge, label %clk_prepare_enable.exit.i.while.body.i_crit_edge

clk_prepare_enable.exit.i.while.body.i_crit_edge: ; preds = %clk_prepare_enable.exit.i
  br label %while.body.i

clk_prepare_enable.exit.i.err_disable_pm_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_disable_pm

for.inc.i:                                        ; preds = %if.end.i.i
  %inc.i = add nuw nsw i32 %clk.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %if.end6, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %clk_prepare_enable.exit.i.while.body.i_crit_edge
  %dec22.in.i = phi i32 [ %dec22.i, %while.body.i.while.body.i_crit_edge ], [ %clk.019.i, %clk_prepare_enable.exit.i.while.body.i_crit_edge ]
  %dec22.i = add nsw i32 %dec22.in.i, -1
  %arrayidx3.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 %dec22.i
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @clk_disable(ptr noundef %7) #20
  tail call void @clk_unprepare(ptr noundef %7) #20
  %cmp1.i = icmp sgt i32 %dec22.in.i, 1
  br i1 %cmp1.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.err_disable_pm_crit_edge

while.body.i.err_disable_pm_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_disable_pm

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

if.end6:                                          ; preds = %for.inc.i
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 30
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 4
  %and = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eth, align 128
  %call.i71 = tail call i32 @__device_reset(ptr noundef %13, i1 noundef zeroext false) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool10.not = icmp eq i32 %call.i71, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eth, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.70) #23
  br label %err_disable_pm

if.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  %work = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 35, i32 4
  tail call void @mtk_dim_rx(ptr noundef %work)
  %work14 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 39, i32 4
  tail call void @mtk_dim_tx(ptr noundef %work14)
  %tx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %tx_int_mask_reg.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 40
  %16 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_int_mask_reg.i, align 16
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %21 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_int_mask_reg.i, align 16
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %24, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i) #20
  %rx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 4
  %call2.i72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %26, i32 2600
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #20, !srcloc !352
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %29, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i72) #20
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %ethsys.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 12
  %30 = ptrtoint ptr %ethsys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ethsys.i, align 4
  %call.i.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 52, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #20
  %32 = ptrtoint ptr %ethsys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ethsys.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 52, i32 noundef 64, i32 noundef -65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #20
  %44 = ptrtoint ptr %ethsys.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ethsys.i, align 4
  %call.i.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 52, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #20
  %46 = ptrtoint ptr %ethsys.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ethsys.i, align 4
  %call.i7.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 52, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #20
  %pctl = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 15
  %58 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pctl, align 16
  %tobool16.not = icmp eq ptr %59, null
  br i1 %tobool16.not, label %if.end15.if.end24_crit_edge, label %if.then17

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  %call19 = tail call i32 @regmap_write(ptr noundef nonnull %59, i32 noundef 3840, i32 noundef 2560) #20
  %60 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pctl, align 16
  %call21 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 1216, i32 noundef 5) #20
  %62 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pctl, align 16
  %call23 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 3792, i32 noundef 0) #20
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end15.if.end24_crit_edge
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 65792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32768) #20, !srcloc !351
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %67, i32 66048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 32768) #20, !srcloc !351
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %69, i32 5120
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #20, !srcloc !352
  %or = or i32 %70, 1
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %72, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %or) #20, !srcloc !351
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %74, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 1) #20, !srcloc !351
  %work28 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 35, i32 4
  tail call void @mtk_dim_rx(ptr noundef %work28)
  %work30 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 39, i32 4
  tail call void @mtk_dim_tx(ptr noundef %work30)
  %tx_irq_lock.i85 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 3
  %call2.i86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i85) #20
  %tx_int_mask_reg.i87 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 40
  %75 = ptrtoint ptr %tx_int_mask_reg.i87 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_int_mask_reg.i87, align 16
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %78, i32 %76
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89) #20, !srcloc !352
  %80 = ptrtoint ptr %tx_int_mask_reg.i87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_int_mask_reg.i87, align 16
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i14.i90 = getelementptr i8, ptr %83, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i90, i32 0) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i85, i32 noundef %call2.i86) #20
  %rx_irq_lock.i91 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 4
  %call2.i92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i91) #20
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %85, i32 2600
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #20, !srcloc !352
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i95 = getelementptr i8, ptr %88, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i95, i32 0) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i91, i32 noundef %call2.i92) #20
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %90, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 268435456) #20, !srcloc !351
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %92, i32 2644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 1073741824) #20, !srcloc !351
  %93 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %94, i32 6688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 268435456) #20, !srcloc !351
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %96, i32 6692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 1073741824) #20, !srcloc !351
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %98, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 553783296) #20, !srcloc !351
  br label %cleanup

err_disable_pm:                                   ; preds = %do.end, %while.body.i.err_disable_pm_crit_edge, %clk_prepare_enable.exit.i.err_disable_pm_crit_edge
  %ret.0 = phi i32 [ %call.i71, %do.end ], [ %retval.0.i.i, %clk_prepare_enable.exit.i.err_disable_pm_crit_edge ], [ %retval.0.i.i, %while.body.i.err_disable_pm_crit_edge ]
  %99 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %eth, align 128
  %call.i106 = tail call i32 @__pm_runtime_idle(ptr noundef %100, i32 noundef 4) #20
  %101 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %eth, align 128
  tail call void @__pm_runtime_disable(ptr noundef %102, i1 noundef zeroext true) #20
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pm, %if.end24, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_disable_pm ], [ 0, %if.end13 ], [ 0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_handle_irq(i32 noundef %irq, ptr noundef %_eth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2600
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %and = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %4, i32 2592
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #20, !srcloc !352
  %and2 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then4:                                         ; preds = %if.then
  %rx_events.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 32
  %6 = ptrtoint ptr %rx_events.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_events.i, align 16
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %rx_events.i, align 16
  %rx_napi.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 22
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %rx_napi.i) #20
  br i1 %call.i, label %if.then.i, label %if.then4.if.end6_crit_edge, !prof !357

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__napi_schedule(ptr noundef %rx_napi.i) #20
  %rx_irq_lock.i.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i.i) #20
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 2600
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %and.i.i = and i32 %10, -1073741825
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %12, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %and.i.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i.i, i32 noundef %call2.i.i) #20
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %tx_int_mask_reg = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 40
  %13 = ptrtoint ptr %tx_int_mask_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_int_mask_reg, align 16
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %16, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #20, !srcloc !352
  %and8 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end17_crit_edge, label %if.then10

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then10:                                        ; preds = %if.end6
  %tx_int_status_reg = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 41
  %18 = ptrtoint ptr %tx_int_status_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_int_status_reg, align 4
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %21, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #20, !srcloc !352
  %and12 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then10.if.end17_crit_edge, label %if.then14

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  %tx_events.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 36
  %23 = ptrtoint ptr %tx_events.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_events.i, align 128
  %inc.i32 = add i32 %24, 1
  store i32 %inc.i32, ptr %tx_events.i, align 128
  %tx_napi.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 21
  %call.i33 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi.i) #20
  br i1 %call.i33, label %if.then.i38, label %if.then14.if.end17_crit_edge, !prof !357

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then.i38:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__napi_schedule(ptr noundef %tx_napi.i) #20
  %tx_irq_lock.i.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 3
  %call2.i.i34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i.i) #20
  %25 = ptrtoint ptr %tx_int_mask_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_int_mask_reg, align 16
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %28, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i36) #20, !srcloc !352
  %and.i.i37 = and i32 %29, -268435457
  %30 = ptrtoint ptr %tx_int_mask_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_int_mask_reg, align 16
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %33, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %and.i.i37) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i.i, i32 noundef %call2.i.i34) #20
  br label %if.end17

if.end17:                                         ; preds = %if.then.i38, %if.then14.if.end17_crit_edge, %if.then10.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_handle_irq_tx(i32 noundef %irq, ptr noundef %_eth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_events = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 36
  %0 = ptrtoint ptr %tx_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_events, align 128
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_events, align 128
  %tx_napi = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 21
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %tx_napi) #20
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !357

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__napi_schedule(ptr noundef %tx_napi) #20
  %tx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %tx_int_mask_reg.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 40
  %2 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_int_mask_reg.i, align 16
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %and.i = and i32 %6, -268435457
  %7 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_int_mask_reg.i, align 16
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %10, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %and.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_handle_irq_rx(i32 noundef %irq, ptr noundef %_eth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_events = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 32
  %0 = ptrtoint ptr %rx_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_events, align 16
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rx_events, align 16
  %rx_napi = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 22
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %rx_napi) #20
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !357

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__napi_schedule(ptr noundef %rx_napi) #20
  %rx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %_eth, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2600
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %and.i = and i32 %4, -1073741825
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %6, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %and.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_mdio_init(ptr noundef %eth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eth, align 128
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.145) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %4 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.145) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #20
  br i1 %call2, label %if.end4, label %if.end.err_put_node_crit_edge

if.end.err_put_node_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_put_node

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eth, align 128
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %7, i32 noundef 0) #20
  %mii_bus = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 27
  %8 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %mii_bus, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end4.err_put_node_crit_edge, label %if.end10

if.end4.err_put_node_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_put_node

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.148, ptr %name, align 4
  %10 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mii_bus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtk_mdio_read, ptr %read, align 4
  %13 = load ptr, ptr %mii_bus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtk_mdio_write, ptr %write, align 8
  %15 = load ptr, ptr %mii_bus, align 4
  %probe_capabilities = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %probe_capabilities to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %probe_capabilities, align 4
  %17 = load ptr, ptr %mii_bus, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %eth, ptr %priv, align 8
  %19 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eth, align 128
  %21 = load ptr, ptr %mii_bus, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %parent, align 4
  %23 = load ptr, ptr %mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 2
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.149, ptr noundef nonnull %call)
  %24 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mii_bus, align 4
  %call21 = tail call i32 @of_mdiobus_register(ptr noundef %25, ptr noundef nonnull %call) #20
  br label %err_put_node

err_put_node:                                     ; preds = %if.end10, %if.end4.err_put_node_crit_edge, %if.end.err_put_node_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end10 ], [ -19, %if.end.err_put_node_crit_edge ], [ -12, %if.end4.err_put_node_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #20
  br label %cleanup

cleanup:                                          ; preds = %err_put_node, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_put_node ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ppe_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eth_offload_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_napi_tx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %done.i = alloca [2 x i32], align 8
  %bytes.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -2808
  %soc = getelementptr i8, ptr %napi, i32 584
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  %base.i.i = getelementptr i8, ptr %napi, i32 -2804
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %and.i = and i32 %6, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i, !prof !357

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @mtk_stats_update(ptr noundef %add.ptr) #20
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 805306368) #20, !srcloc !351
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_int_status_reg = getelementptr i8, ptr %napi, i32 924
  %9 = ptrtoint ptr %tx_int_status_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_int_status_reg, align 4
  %base.i = getelementptr i8, ptr %napi, i32 -2804
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #20, !srcloc !351
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done.i) #20
  %13 = getelementptr inbounds [2 x i32], ptr %done.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes.i) #20
  %14 = getelementptr inbounds [2 x i32], ptr %bytes.i, i32 0, i32 1
  %15 = ptrtoint ptr %done.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %done.i, align 8
  %16 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %bytes.i, align 8
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc, align 64
  %caps.i = getelementptr inbounds %struct.mtk_soc_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %caps.i, align 4
  %and.i42 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %cmp.not.i = icmp eq i32 %and.i42, 0
  %tx_ring.i59.i = getelementptr i8, ptr %napi, i32 -188
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i43

if.then.i43:                                      ; preds = %if.end
  %last_free_ptr.i.i = getelementptr i8, ptr %napi, i32 -168
  %21 = ptrtoint ptr %last_free_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_free_ptr.i.i, align 4
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 6932
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %phys.i.i.i = getelementptr i8, ptr %napi, i32 -180
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %25)
  %cmp.not11.i.i = icmp eq i32 %22, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not12.i.i = icmp eq i32 %budget, 0
  %or.cond13.i.i = or i1 %tobool.not12.i.i, %cmp.not11.i.i
  br i1 %or.cond13.i.i, label %if.then.i43.mtk_poll_tx_qdma.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then.i43.mtk_poll_tx_qdma.exit.i_crit_edge:    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_qdma.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then.i43
  %26 = ptrtoint ptr %tx_ring.i59.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_ring.i59.i, align 4
  %28 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phys.i.i.i, align 4
  %sub.i.i.i = sub i32 %22, %29
  %add.ptr.i1.i.i = getelementptr i8, ptr %27, i32 %sub.i.i.i
  %buf.i.i.i = getelementptr i8, ptr %napi, i32 -184
  %last_free.i.i = getelementptr i8, ptr %napi, i32 -172
  %free_count.i.i = getelementptr i8, ptr %napi, i32 -160
  %txd2.i94.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %add.ptr.i1.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %txd2.i94.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %txd2.i94.i, align 4
  %sub.i3.i95.i = sub i32 %31, %29
  %add.ptr.i4.i96.i = getelementptr i8, ptr %27, i32 %sub.i3.i95.i
  %txd3.i97.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %add.ptr.i4.i96.i, i32 0, i32 2
  %32 = ptrtoint ptr %txd3.i97.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %txd3.i97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp4.i98.i = icmp sgt i32 %33, -1
  br i1 %cmp4.i98.i, label %while.body.lr.ph.i.i.mtk_poll_tx_qdma.exit.i_crit_edge, label %while.body.lr.ph.i.i.if.end.i.i_crit_edge

while.body.lr.ph.i.i.if.end.i.i_crit_edge:        ; preds = %while.body.lr.ph.i.i
  br label %if.end.i.i

while.body.lr.ph.i.i.mtk_poll_tx_qdma.exit.i_crit_edge: ; preds = %while.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_qdma.exit.i

while.body.i.i:                                   ; preds = %cleanup.i.i
  %txd2.i.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %add.ptr.i4.i102.i, i32 0, i32 1
  %34 = ptrtoint ptr %txd2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txd2.i.i, align 4
  %36 = ptrtoint ptr %tx_ring.i59.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_ring.i59.i, align 4
  %38 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys.i.i.i, align 4
  %sub.i3.i.i = sub i32 %35, %39
  %add.ptr.i4.i.i = getelementptr i8, ptr %37, i32 %sub.i3.i.i
  %txd3.i.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %add.ptr.i4.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %txd3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %txd3.i.i, align 4
  %cmp4.i.i = icmp sgt i32 %41, -1
  br i1 %cmp4.i.i, label %while.body.i.i.mtk_poll_tx_qdma.exit.i_crit_edge, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

while.body.i.i.mtk_poll_tx_qdma.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_qdma.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i.if.end.i.i_crit_edge, %while.body.lr.ph.i.i.if.end.i.i_crit_edge
  %add.ptr.i4.i102.i = phi ptr [ %add.ptr.i4.i.i, %while.body.i.i.if.end.i.i_crit_edge ], [ %add.ptr.i4.i96.i, %while.body.lr.ph.i.i.if.end.i.i_crit_edge ]
  %sub.i3.i101.i = phi i32 [ %sub.i3.i.i, %while.body.i.i.if.end.i.i_crit_edge ], [ %sub.i3.i95.i, %while.body.lr.ph.i.i.if.end.i.i_crit_edge ]
  %42 = phi i32 [ %35, %while.body.i.i.if.end.i.i_crit_edge ], [ %31, %while.body.lr.ph.i.i.if.end.i.i_crit_edge ]
  %budget.addr.014.i100.i = phi i32 [ %budget.addr.1.i.i, %while.body.i.i.if.end.i.i_crit_edge ], [ %budget, %while.body.lr.ph.i.i.if.end.i.i_crit_edge ]
  %cpu.016.i99.i = phi i32 [ %42, %while.body.i.i.if.end.i.i_crit_edge ], [ %22, %while.body.lr.ph.i.i.if.end.i.i_crit_edge ]
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.i3.i101.i, 4
  %43 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mtk_tx_buf, ptr %44, i32 %sub.ptr.div.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %magicptr.i.i = ptrtoint ptr %46 to i32
  %47 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i.i, label %if.then15.i.i [
    i32 0, label %if.end.i.i.mtk_poll_tx_qdma.exit.i_crit_edge
    i32 -1, label %if.end.i.i.cleanup.i.i_crit_edge
  ]

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i.i

if.end.i.i.mtk_poll_tx_qdma.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_qdma.exit.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %flags.i.i = getelementptr %struct.mtk_tx_buf, ptr %44, i32 %sub.ptr.div.i.i.i, i32 1
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i.i, align 4
  %and6.i.i = lshr i32 %49, 3
  %and6.lobit.i.i = and i32 %and6.i.i, 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 6
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %bytes.i, i32 %and6.lobit.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %53, %51
  store i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx16.i.i = getelementptr i32, ptr %done.i, i32 %and6.lobit.i.i
  %54 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx16.i.i, align 4
  %inc.i.i = add i32 %55, 1
  store i32 %inc.i.i, ptr %arrayidx16.i.i, align 4
  %dec.i.i = add i32 %budget.addr.014.i100.i, -1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then15.i.i, %if.end.i.i.cleanup.i.i_crit_edge
  %budget.addr.1.i.i = phi i32 [ %dec.i.i, %if.then15.i.i ], [ %budget.addr.014.i100.i, %if.end.i.i.cleanup.i.i_crit_edge ]
  tail call fastcc void @mtk_tx_unmap(ptr noundef %add.ptr, ptr noundef %arrayidx.i.i.i, i1 noundef zeroext true) #20
  %56 = ptrtoint ptr %last_free.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i4.i102.i, ptr %last_free.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_count.i.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %free_count.i.i, i32 1, i32 3, i32 1) #20
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_count.i.i, ptr %free_count.i.i, i32 1, ptr elementtype(i32) %free_count.i.i) #20, !srcloc !369
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %25)
  %cmp.not.i.i = icmp eq i32 %42, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.addr.1.i.i)
  %tobool.not.i.i = icmp eq i32 %budget.addr.1.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %cleanup.i.i.mtk_poll_tx_qdma.exit.i_crit_edge, label %while.body.i.i

cleanup.i.i.mtk_poll_tx_qdma.exit.i_crit_edge:    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_qdma.exit.i

mtk_poll_tx_qdma.exit.i:                          ; preds = %cleanup.i.i.mtk_poll_tx_qdma.exit.i_crit_edge, %if.end.i.i.mtk_poll_tx_qdma.exit.i_crit_edge, %while.body.i.i.mtk_poll_tx_qdma.exit.i_crit_edge, %while.body.lr.ph.i.i.mtk_poll_tx_qdma.exit.i_crit_edge, %if.then.i43.mtk_poll_tx_qdma.exit.i_crit_edge
  %cpu.0.lcssa.i.i = phi i32 [ %22, %if.then.i43.mtk_poll_tx_qdma.exit.i_crit_edge ], [ %22, %while.body.lr.ph.i.i.mtk_poll_tx_qdma.exit.i_crit_edge ], [ %42, %while.body.i.i.mtk_poll_tx_qdma.exit.i_crit_edge ], [ %cpu.016.i99.i, %if.end.i.i.mtk_poll_tx_qdma.exit.i_crit_edge ], [ %42, %cleanup.i.i.mtk_poll_tx_qdma.exit.i_crit_edge ]
  %58 = ptrtoint ptr %last_free_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cpu.0.lcssa.i.i, ptr %last_free_ptr.i.i, align 4
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %60, i32 6928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %cpu.0.lcssa.i.i) #20, !srcloc !351
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  %cpu_idx.i.i = getelementptr i8, ptr %napi, i32 -144
  %61 = ptrtoint ptr %cpu_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu_idx.i.i, align 4
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i61.i = getelementptr i8, ptr %64, i32 2060
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %65)
  %cmp.not1.i.i = icmp eq i32 %62, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not2.i.i = icmp eq i32 %budget, 0
  %or.cond3.i.i = or i1 %tobool.not2.i.i, %cmp.not1.i.i
  br i1 %or.cond3.i.i, label %if.else.i.mtk_poll_tx_pdma.exit.i_crit_edge, label %while.body.lr.ph.i64.i

if.else.i.mtk_poll_tx_pdma.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_pdma.exit.i

while.body.lr.ph.i64.i:                           ; preds = %if.else.i
  %buf.i.i = getelementptr i8, ptr %napi, i32 -184
  %last_free.i62.i = getelementptr i8, ptr %napi, i32 -172
  %free_count.i63.i = getelementptr i8, ptr %napi, i32 -160
  %dma_size.i.i = getelementptr i8, ptr %napi, i32 -156
  %66 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bytes.promoted.i = load i32, ptr %bytes.i, align 8
  %67 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %done.promoted.i = load i32, ptr %done.i, align 8
  br label %while.body.i67.i

while.body.i67.i:                                 ; preds = %if.end7.i.i.while.body.i67.i_crit_edge, %while.body.lr.ph.i64.i
  %inc.i70109.i = phi i32 [ %done.promoted.i, %while.body.lr.ph.i64.i ], [ %inc.i70108.i, %if.end7.i.i.while.body.i67.i_crit_edge ]
  %add.i69106.i = phi i32 [ %bytes.promoted.i, %while.body.lr.ph.i64.i ], [ %add.i69105.i, %if.end7.i.i.while.body.i67.i_crit_edge ]
  %cpu.05.i.i = phi i32 [ %62, %while.body.lr.ph.i64.i ], [ %and.i.i, %if.end7.i.i.while.body.i67.i_crit_edge ]
  %budget.addr.04.i.i = phi i32 [ %budget, %while.body.lr.ph.i64.i ], [ %budget.addr.1.i72.i, %if.end7.i.i.while.body.i67.i_crit_edge ]
  %68 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i65.i = getelementptr %struct.mtk_tx_buf, ptr %69, i32 %cpu.05.i.i
  %70 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i65.i, align 4
  %magicptr.i66.i = ptrtoint ptr %71 to i32
  %72 = zext i32 %magicptr.i66.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %magicptr.i66.i, label %if.then4.i.i [
    i32 0, label %while.body.i67.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge
    i32 -1, label %while.body.i67.i.if.end7.i.i_crit_edge
  ]

while.body.i67.i.if.end7.i.i_crit_edge:           ; preds = %while.body.i67.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i.i

while.body.i67.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge: ; preds = %while.body.i67.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_pdma.exit.loopexit.i

if.then4.i.i:                                     ; preds = %while.body.i67.i
  call void @__sanitizer_cov_trace_pc() #22
  %len.i68.i = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 6
  %73 = ptrtoint ptr %len.i68.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i68.i, align 4
  %add.i69.i = add i32 %74, %add.i69106.i
  %inc.i70.i = add i32 %inc.i70109.i, 1
  %dec.i71.i = add i32 %budget.addr.04.i.i, -1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %while.body.i67.i.if.end7.i.i_crit_edge
  %inc.i70108.i = phi i32 [ %inc.i70.i, %if.then4.i.i ], [ %inc.i70109.i, %while.body.i67.i.if.end7.i.i_crit_edge ]
  %add.i69105.i = phi i32 [ %add.i69.i, %if.then4.i.i ], [ %add.i69106.i, %while.body.i67.i.if.end7.i.i_crit_edge ]
  %budget.addr.1.i72.i = phi i32 [ %dec.i71.i, %if.then4.i.i ], [ %budget.addr.04.i.i, %while.body.i67.i.if.end7.i.i_crit_edge ]
  tail call fastcc void @mtk_tx_unmap(ptr noundef %add.ptr, ptr noundef %arrayidx.i65.i, i1 noundef zeroext true) #20
  %75 = ptrtoint ptr %tx_ring.i59.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_ring.i59.i, align 4
  %arrayidx9.i.i = getelementptr %struct.mtk_tx_dma, ptr %76, i32 %cpu.05.i.i
  %77 = ptrtoint ptr %last_free.i62.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx9.i.i, ptr %last_free.i62.i, align 4
  %call.i.i.i73.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_count.i63.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %free_count.i63.i, i32 1, i32 3, i32 1) #20
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_count.i63.i, ptr %free_count.i63.i, i32 1, ptr elementtype(i32) %free_count.i63.i) #20, !srcloc !369
  %add10.i.i = add i32 %cpu.05.i.i, 1
  %79 = ptrtoint ptr %dma_size.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_size.i.i, align 4
  %sub.i.i = add i32 %80, -1
  %and.i.i = and i32 %sub.i.i, %add10.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %65)
  %cmp.not.i74.i = icmp eq i32 %and.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.addr.1.i72.i)
  %tobool.not.i75.i = icmp eq i32 %budget.addr.1.i72.i, 0
  %or.cond.i76.i = select i1 %cmp.not.i74.i, i1 true, i1 %tobool.not.i75.i
  br i1 %or.cond.i76.i, label %if.end7.i.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge, label %if.end7.i.i.while.body.i67.i_crit_edge

if.end7.i.i.while.body.i67.i_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i67.i

if.end7.i.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx_pdma.exit.loopexit.i

mtk_poll_tx_pdma.exit.loopexit.i:                 ; preds = %if.end7.i.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge, %while.body.i67.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge
  %inc.i70110.i = phi i32 [ %inc.i70108.i, %if.end7.i.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge ], [ %inc.i70109.i, %while.body.i67.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge ]
  %add.i69107.i = phi i32 [ %add.i69105.i, %if.end7.i.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge ], [ %add.i69106.i, %while.body.i67.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge ]
  %cpu.0.lcssa.i77.ph.i = phi i32 [ %and.i.i, %if.end7.i.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge ], [ %cpu.05.i.i, %while.body.i67.i.mtk_poll_tx_pdma.exit.loopexit.i_crit_edge ]
  %81 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i69107.i, ptr %bytes.i, align 8
  %82 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %inc.i70110.i, ptr %done.i, align 8
  br label %mtk_poll_tx_pdma.exit.i

mtk_poll_tx_pdma.exit.i:                          ; preds = %mtk_poll_tx_pdma.exit.loopexit.i, %if.else.i.mtk_poll_tx_pdma.exit.i_crit_edge
  %cpu.0.lcssa.i77.i = phi i32 [ %62, %if.else.i.mtk_poll_tx_pdma.exit.i_crit_edge ], [ %cpu.0.lcssa.i77.ph.i, %mtk_poll_tx_pdma.exit.loopexit.i ]
  %83 = ptrtoint ptr %cpu_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %cpu.0.lcssa.i77.i, ptr %cpu_idx.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %mtk_poll_tx_pdma.exit.i, %mtk_poll_tx_qdma.exit.i
  %tx_packets.i = getelementptr i8, ptr %napi, i32 780
  %tx_bytes.i = getelementptr i8, ptr %napi, i32 784
  %arrayidx.i = getelementptr i8, ptr %napi, i32 -248
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i44 = icmp eq ptr %85, null
  br i1 %tobool.not.i44, label %if.end.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %86 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %done.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool9.not.i = icmp eq i32 %87, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end11.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %88 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bytes.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 103
  %90 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i.i, label %if.end11.i.netdev_completed_queue.exit.i_crit_edge, label %if.end.i.i.i, !prof !370

if.end11.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.i

if.end.i.i.i:                                     ; preds = %if.end11.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %89) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !371
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 15, i32 1
  %92 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %94 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.end14.i.i.i, !prof !370

if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  %call15.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_schedule_queue(ptr noundef %91) #20
  br label %netdev_completed_queue.exit.i

netdev_completed_queue.exit.i:                    ; preds = %if.then17.i.i.i, %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, %if.end11.i.netdev_completed_queue.exit.i_crit_edge
  %96 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_packets.i, align 4
  %add18.i = add i32 %97, %87
  store i32 %add18.i, ptr %tx_packets.i, align 4
  %98 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_bytes.i, align 8
  %add20.i = add i32 %99, %89
  store i32 %add20.i, ptr %tx_bytes.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %netdev_completed_queue.exit.i, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %total.1.i = phi i32 [ %87, %netdev_completed_queue.exit.i ], [ 0, %lor.lhs.false.i.for.inc.i_crit_edge ], [ 0, %if.end.i.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr i8, ptr %napi, i32 -244
  %100 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %101, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %lor.lhs.false.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc.i
  %102 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool9.not.1.i = icmp eq i32 %103, 0
  br i1 %tobool9.not.1.i, label %lor.lhs.false.1.i.for.inc.1.i_crit_edge, label %if.end11.1.i

lor.lhs.false.1.i.for.inc.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1.i

if.end11.1.i:                                     ; preds = %lor.lhs.false.1.i
  %104 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %14, align 4
  %_tx.i.i.1.i = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 103
  %106 = ptrtoint ptr %_tx.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %_tx.i.i.1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i.i.1.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i.i.1.i, label %if.end11.1.i.netdev_completed_queue.exit.1.i_crit_edge, label %if.end.i.i.1.i, !prof !370

if.end11.1.i.netdev_completed_queue.exit.1.i_crit_edge: ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.1.i

if.end.i.i.1.i:                                   ; preds = %if.end11.1.i
  %dql.i.i.1.i = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i.1.i, i32 noundef %105) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !371
  %adj_limit.i.i.i.1.i = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 15, i32 1
  %108 = ptrtoint ptr %adj_limit.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %adj_limit.i.i.i.1.i, align 4
  %110 = ptrtoint ptr %dql.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %dql.i.i.1.i, align 128
  %sub.i.i.i.1.i = sub i32 %109, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.1.i)
  %cmp.i.i.1.i = icmp slt i32 %sub.i.i.i.1.i, 0
  br i1 %cmp.i.i.1.i, label %if.end.i.i.1.i.netdev_completed_queue.exit.1.i_crit_edge, label %if.end14.i.i.1.i, !prof !370

if.end.i.i.1.i.netdev_completed_queue.exit.1.i_crit_edge: ; preds = %if.end.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.1.i

if.end14.i.i.1.i:                                 ; preds = %if.end.i.i.1.i
  %state.i.i.1.i = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 13
  %call15.i.i.1.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.1.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.1.i)
  %tobool16.not.i.i.1.i = icmp eq i32 %call15.i.i.1.i, 0
  br i1 %tobool16.not.i.i.1.i, label %if.end14.i.i.1.i.netdev_completed_queue.exit.1.i_crit_edge, label %if.then17.i.i.1.i

if.end14.i.i.1.i.netdev_completed_queue.exit.1.i_crit_edge: ; preds = %if.end14.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_completed_queue.exit.1.i

if.then17.i.i.1.i:                                ; preds = %if.end14.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_schedule_queue(ptr noundef %107) #20
  br label %netdev_completed_queue.exit.1.i

netdev_completed_queue.exit.1.i:                  ; preds = %if.then17.i.i.1.i, %if.end14.i.i.1.i.netdev_completed_queue.exit.1.i_crit_edge, %if.end.i.i.1.i.netdev_completed_queue.exit.1.i_crit_edge, %if.end11.1.i.netdev_completed_queue.exit.1.i_crit_edge
  %add.1.i = add i32 %103, %total.1.i
  %112 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_packets.i, align 4
  %add18.1.i = add i32 %113, %103
  store i32 %add18.1.i, ptr %tx_packets.i, align 4
  %114 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx_bytes.i, align 8
  %add20.1.i = add i32 %115, %105
  store i32 %add20.1.i, ptr %tx_bytes.i, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %netdev_completed_queue.exit.1.i, %lor.lhs.false.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %total.1.1.i = phi i32 [ %add.1.i, %netdev_completed_queue.exit.1.i ], [ %total.1.i, %lor.lhs.false.1.i.for.inc.1.i_crit_edge ], [ %total.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %tx_events.i = getelementptr i8, ptr %napi, i32 776
  %116 = ptrtoint ptr %tx_events.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_events.i, align 128
  %118 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_packets.i, align 4
  %120 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_bytes.i, align 8
  %call.i.i = tail call i64 @ktime_get() #20
  %conv.mask.i = and i32 %117, 65535
  %dim_sample.sroa.8.16.insert.ext.i = zext i32 %conv.mask.i to i64
  %dim_sample.sroa.8.16.insert.shift.i = shl nuw i64 %dim_sample.sroa.8.16.insert.ext.i, 48
  %tx_dim.i = getelementptr i8, ptr %napi, i32 792
  %.fca.0.insert.i = insertvalue [3 x i64] poison, i64 %call.i.i, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext.i = zext i32 %121 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.ext.i = zext i32 %119 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.shift.i = shl nuw i64 %dim_sample.sroa.5.sroa.0.0.insert.ext.i, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert.i = or i64 %dim_sample.sroa.5.sroa.0.0.insert.shift.i, %dim_sample.sroa.5.sroa.5.0.insert.ext.i
  %.fca.1.insert.i = insertvalue [3 x i64] %.fca.0.insert.i, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert.i, 1
  %.fca.2.insert.i = insertvalue [3 x i64] %.fca.1.insert.i, i64 %dim_sample.sroa.8.16.insert.shift.i, 2
  tail call void @net_dim(ptr noundef %tx_dim.i, [3 x i64] %.fca.2.insert.i) #20
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i79.i = icmp eq ptr %123, null
  br i1 %tobool.not.i79.i, label %for.inc.1.i.for.inc.i.i_crit_edge, label %if.end.i80.i

for.inc.1.i.for.inc.i.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i

if.end.i80.i:                                     ; preds = %for.inc.1.i
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 103
  %124 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %125, i32 0, i32 13
  %126 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.end.i80.i.for.inc.i.i_crit_edge, label %if.end.i80.i.land.lhs.true.i_crit_edge

if.end.i80.i.land.lhs.true.i_crit_edge:           ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i

if.end.i80.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i80.i.for.inc.i.i_crit_edge, %for.inc.1.i.for.inc.i.i_crit_edge
  %128 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %129, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.mtk_poll_tx.exit_crit_edge, label %if.end.1.i.i

for.inc.i.i.mtk_poll_tx.exit_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx.exit

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %_tx.i.i.1.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 103
  %130 = ptrtoint ptr %_tx.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %_tx.i.i.1.i.i, align 128
  %state.i.i.1.i.i = getelementptr inbounds %struct.netdev_queue, ptr %131, i32 0, i32 13
  %132 = ptrtoint ptr %state.i.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %state.i.i.1.i.i, align 4
  %and1.i.i.i.1.i.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.1.i.i)
  %tobool.i.i.not.1.i.i = icmp eq i32 %and1.i.i.i.1.i.i, 0
  br i1 %tobool.i.i.not.1.i.i, label %if.end.1.i.i.mtk_poll_tx.exit_crit_edge, label %if.end.1.i.i.land.lhs.true.i_crit_edge

if.end.1.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i

if.end.1.i.i.mtk_poll_tx.exit_crit_edge:          ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx.exit

land.lhs.true.i:                                  ; preds = %if.end.1.i.i.land.lhs.true.i_crit_edge, %if.end.i80.i.land.lhs.true.i_crit_edge
  %free_count.i = getelementptr i8, ptr %napi, i32 -160
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_count.i, i32 noundef 4) #20
  %134 = ptrtoint ptr %free_count.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %free_count.i, align 4
  %thresh.i = getelementptr i8, ptr %napi, i32 -164
  %136 = ptrtoint ptr %thresh.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %thresh.i, align 4
  %conv28.i = zext i16 %137 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %conv28.i)
  %cmp29.i = icmp sgt i32 %135, %conv28.i
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true.i.mtk_poll_tx.exit_crit_edge

land.lhs.true.i.mtk_poll_tx.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx.exit

if.then31.i:                                      ; preds = %land.lhs.true.i
  %138 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i83.i = icmp eq ptr %139, null
  br i1 %tobool.not.i83.i, label %if.then31.i.for.inc.i88.i_crit_edge, label %if.end.i85.i

if.then31.i.for.inc.i88.i_crit_edge:              ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i88.i

if.end.i85.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #22
  %_tx.i.i.i84.i = getelementptr inbounds %struct.net_device, ptr %139, i32 0, i32 103
  %140 = ptrtoint ptr %_tx.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %_tx.i.i.i84.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %141) #20
  br label %for.inc.i88.i

for.inc.i88.i:                                    ; preds = %if.end.i85.i, %if.then31.i.for.inc.i88.i_crit_edge
  %142 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i87.i = icmp eq ptr %143, null
  br i1 %tobool.not.1.i87.i, label %for.inc.i88.i.mtk_poll_tx.exit_crit_edge, label %if.end.1.i90.i

for.inc.i88.i.mtk_poll_tx.exit_crit_edge:         ; preds = %for.inc.i88.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_tx.exit

if.end.1.i90.i:                                   ; preds = %for.inc.i88.i
  call void @__sanitizer_cov_trace_pc() #22
  %_tx.i.i.1.i89.i = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 103
  %144 = ptrtoint ptr %_tx.i.i.1.i89.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %_tx.i.i.1.i89.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %145) #20
  br label %mtk_poll_tx.exit

mtk_poll_tx.exit:                                 ; preds = %if.end.1.i90.i, %for.inc.i88.i.mtk_poll_tx.exit_crit_edge, %land.lhs.true.i.mtk_poll_tx.exit_crit_edge, %if.end.1.i.i.mtk_poll_tx.exit_crit_edge, %for.inc.i.i.mtk_poll_tx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes.i) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done.i) #20
  %msg_enable = getelementptr i8, ptr %napi, i32 -220
  %146 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %147, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %mtk_poll_tx.exit.if.end8_crit_edge, label %do.end, !prof !357

mtk_poll_tx.exit.if.end8_crit_edge:               ; preds = %mtk_poll_tx.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

do.end:                                           ; preds = %mtk_poll_tx.exit
  call void @__sanitizer_cov_trace_pc() #22
  %148 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %add.ptr, align 128
  %150 = ptrtoint ptr %tx_int_status_reg to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tx_int_status_reg, align 4
  %152 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %153, i32 %151
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #20, !srcloc !352
  %tx_int_mask_reg = getelementptr i8, ptr %napi, i32 920
  %155 = ptrtoint ptr %tx_int_mask_reg to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tx_int_mask_reg, align 16
  %157 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %158, i32 %156
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #20, !srcloc !352
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %149, ptr noundef nonnull @.str.152, i32 noundef %total.1.1.i, i32 noundef %154, i32 noundef %159) #23
  br label %if.end8

if.end8:                                          ; preds = %do.end, %mtk_poll_tx.exit.if.end8_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %total.1.1.i, i32 %budget)
  %cmp9 = icmp eq i32 %total.1.1.i, %budget
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %160 = ptrtoint ptr %tx_int_status_reg to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_int_status_reg, align 4
  %162 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %163, i32 %161
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #20, !srcloc !352
  %and14 = and i32 %164, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %total.1.1.i) #20
  br i1 %call18, label %if.then19, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %tx_irq_lock.i = getelementptr i8, ptr %napi, i32 -2756
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %tx_int_mask_reg.i = getelementptr i8, ptr %napi, i32 920
  %165 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tx_int_mask_reg.i, align 16
  %167 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %168, i32 %166
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #20, !srcloc !352
  %or.i = or i32 %169, 268435456
  %170 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tx_int_mask_reg.i, align 16
  %172 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %173, i32 %171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %if.end8.cleanup_crit_edge ], [ %budget, %if.end11.cleanup_crit_edge ], [ %total.1.1.i, %if.then19 ], [ %total.1.1.i, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_napi_rx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -3032
  %base.i.i = getelementptr i8, ptr %napi, i32 -3028
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %and.i = and i32 %2, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.mtk_handle_status_irq.exit_crit_edge, label %if.then.i, !prof !357

entry.mtk_handle_status_irq.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_handle_status_irq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @mtk_stats_update(ptr noundef %add.ptr) #20
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 805306368) #20, !srcloc !351
  br label %mtk_handle_status_irq.exit

mtk_handle_status_irq.exit:                       ; preds = %if.then.i, %entry.mtk_handle_status_irq.exit_crit_edge
  %arrayidx2.3.i.i = getelementptr i8, ptr %napi, i32 -280
  %calc_idx.3.i.i = getelementptr i8, ptr %napi, i32 -260
  %hwlro.i.i = getelementptr i8, ptr %napi, i32 -420
  %arrayidx2.i.i = getelementptr i8, ptr %napi, i32 -364
  %calc_idx.i.i = getelementptr i8, ptr %napi, i32 -344
  %dma_size.i.i = getelementptr i8, ptr %napi, i32 -348
  %arrayidx2.1.i.i = getelementptr i8, ptr %napi, i32 -336
  %calc_idx.1.i.i = getelementptr i8, ptr %napi, i32 -316
  %dma_size.1.i.i = getelementptr i8, ptr %napi, i32 -320
  %arrayidx2.2.i.i = getelementptr i8, ptr %napi, i32 -308
  %calc_idx.2.i.i = getelementptr i8, ptr %napi, i32 -288
  %dma_size.2.i.i = getelementptr i8, ptr %napi, i32 -292
  %dma_size.3.i.i = getelementptr i8, ptr %napi, i32 -264
  %soc.i = getelementptr i8, ptr %napi, i32 360
  %state.i = getelementptr i8, ptr %napi, i32 356
  %ip_align.i = getelementptr i8, ptr %napi, i32 708
  %rx_dma_l4_valid.i = getelementptr i8, ptr %napi, i32 704
  %calc_idx_update.i248.i = getelementptr i8, ptr %napi, i32 -346
  %crx_idx_reg9.i.i = getelementptr i8, ptr %napi, i32 -340
  %calc_idx_update.1.i.i = getelementptr i8, ptr %napi, i32 -318
  %crx_idx_reg9.1.i.i = getelementptr i8, ptr %napi, i32 -312
  %calc_idx_update.2.i.i = getelementptr i8, ptr %napi, i32 -290
  %crx_idx_reg9.2.i.i = getelementptr i8, ptr %napi, i32 -284
  %calc_idx_update.3.i.i = getelementptr i8, ptr %napi, i32 -262
  %crx_idx_reg9.3.i.i = getelementptr i8, ptr %napi, i32 -256
  %rx_packets.i = getelementptr i8, ptr %napi, i32 412
  %rx_bytes.i = getelementptr i8, ptr %napi, i32 416
  %rx_events.i = getelementptr i8, ptr %napi, i32 408
  %rx_dim.i = getelementptr i8, ptr %napi, i32 424
  %msg_enable = getelementptr i8, ptr %napi, i32 -444
  br label %do.body

do.body:                                          ; preds = %do.cond8.do.body_crit_edge, %mtk_handle_status_irq.exit
  %rx_done_total.0 = phi i32 [ 0, %mtk_handle_status_irq.exit ], [ %add, %do.cond8.do.body_crit_edge ]
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #20, !srcloc !351
  %sub = sub i32 %budget, %rx_done_total.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp290.i = icmp sgt i32 %sub, 0
  br i1 %cmp290.i, label %do.body.while.body.i_crit_edge, label %do.body.mtk_poll_rx.exit_crit_edge

do.body.mtk_poll_rx.exit_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_rx.exit

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %bytes.0292.i = phi i32 [ %bytes.2.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %do.body.while.body.i_crit_edge ]
  %done.0291.i = phi i32 [ %inc146.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %do.body.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %hwlro.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hwlro.i.i, align 4, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %while.body.i.mtk_get_rx_ring.exit.i_crit_edge, label %for.body.preheader.i.i

while.body.i.mtk_get_rx_ring.exit.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_get_rx_ring.exit.i

for.body.preheader.i.i:                           ; preds = %while.body.i
  %9 = ptrtoint ptr %calc_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %calc_idx.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %11 = ptrtoint ptr %dma_size.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dma_size.i.i, align 4
  %conv3.i.i = zext i16 %12 to i32
  %sub.i.i = add nuw nsw i32 %conv3.i.i, 131071
  %and.i.i = and i32 %sub.i.i, %add.i.i
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2.i.i, align 4
  %rxd2.i.i = getelementptr %struct.mtk_rx_dma, ptr %14, i32 %and.i.i, i32 1
  %15 = ptrtoint ptr %rxd2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxd2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool6.not.i.i = icmp sgt i32 %16, -1
  br i1 %tobool6.not.i.i, label %for.inc.i.i, label %for.body.preheader.i.i.if.then7.i.i_crit_edge

for.body.preheader.i.i.if.then7.i.i_crit_edge:    ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %for.inc.2.i.i.if.then7.i.i_crit_edge, %for.inc.1.i.i.if.then7.i.i_crit_edge, %for.inc.i.i.if.then7.i.i_crit_edge, %for.body.preheader.i.i.if.then7.i.i_crit_edge
  %i.020.lcssa.i.i = phi i32 [ 0, %for.body.preheader.i.i.if.then7.i.i_crit_edge ], [ 1, %for.inc.i.i.if.then7.i.i_crit_edge ], [ 2, %for.inc.1.i.i.if.then7.i.i_crit_edge ], [ 3, %for.inc.2.i.i.if.then7.i.i_crit_edge ]
  %arrayidx2.lcssa.i.i = phi ptr [ %arrayidx2.i.i, %for.body.preheader.i.i.if.then7.i.i_crit_edge ], [ %arrayidx2.1.i.i, %for.inc.i.i.if.then7.i.i_crit_edge ], [ %arrayidx2.2.i.i, %for.inc.1.i.i.if.then7.i.i_crit_edge ], [ %arrayidx2.3.i.i, %for.inc.2.i.i.if.then7.i.i_crit_edge ]
  %calc_idx_update.i.i = getelementptr %struct.mtk_eth, ptr %add.ptr, i32 0, i32 19, i32 %i.020.lcssa.i.i, i32 6
  %17 = ptrtoint ptr %calc_idx_update.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %calc_idx_update.i.i, align 2
  br label %mtk_get_rx_ring.exit.i

for.inc.i.i:                                      ; preds = %for.body.preheader.i.i
  %18 = ptrtoint ptr %calc_idx.1.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %calc_idx.1.i.i, align 4
  %conv.1.i.i = zext i16 %19 to i32
  %add.1.i.i = add nuw nsw i32 %conv.1.i.i, 1
  %20 = ptrtoint ptr %dma_size.1.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dma_size.1.i.i, align 4
  %conv3.1.i.i = zext i16 %21 to i32
  %sub.1.i.i = add nuw nsw i32 %conv3.1.i.i, 131071
  %and.1.i.i = and i32 %sub.1.i.i, %add.1.i.i
  %22 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.1.i.i, align 4
  %rxd2.1.i.i = getelementptr %struct.mtk_rx_dma, ptr %23, i32 %and.1.i.i, i32 1
  %24 = ptrtoint ptr %rxd2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxd2.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool6.not.1.i.i = icmp sgt i32 %25, -1
  br i1 %tobool6.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then7.i.i_crit_edge

for.inc.i.i.if.then7.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %26 = ptrtoint ptr %calc_idx.2.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %calc_idx.2.i.i, align 4
  %conv.2.i.i = zext i16 %27 to i32
  %add.2.i.i = add nuw nsw i32 %conv.2.i.i, 1
  %28 = ptrtoint ptr %dma_size.2.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dma_size.2.i.i, align 4
  %conv3.2.i.i = zext i16 %29 to i32
  %sub.2.i.i = add nuw nsw i32 %conv3.2.i.i, 131071
  %and.2.i.i = and i32 %sub.2.i.i, %add.2.i.i
  %30 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2.2.i.i, align 4
  %rxd2.2.i.i = getelementptr %struct.mtk_rx_dma, ptr %31, i32 %and.2.i.i, i32 1
  %32 = ptrtoint ptr %rxd2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxd2.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool6.not.2.i.i = icmp sgt i32 %33, -1
  br i1 %tobool6.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then7.i.i_crit_edge

for.inc.1.i.i.if.then7.i.i_crit_edge:             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %34 = ptrtoint ptr %calc_idx.3.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %calc_idx.3.i.i, align 4
  %conv.3.i.i = zext i16 %35 to i32
  %add.3.i.i = add nuw nsw i32 %conv.3.i.i, 1
  %36 = ptrtoint ptr %dma_size.3.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dma_size.3.i.i, align 4
  %conv3.3.i.i = zext i16 %37 to i32
  %sub.3.i.i = add nuw nsw i32 %conv3.3.i.i, 131071
  %and.3.i.i = and i32 %sub.3.i.i, %add.3.i.i
  %38 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2.3.i.i, align 4
  %rxd2.3.i.i = getelementptr %struct.mtk_rx_dma, ptr %39, i32 %and.3.i.i, i32 1
  %40 = ptrtoint ptr %rxd2.3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rxd2.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool6.not.3.i.i = icmp sgt i32 %41, -1
  br i1 %tobool6.not.3.i.i, label %for.inc.2.i.i.rx_done.i_crit_edge, label %for.inc.2.i.i.if.then7.i.i_crit_edge

for.inc.2.i.i.if.then7.i.i_crit_edge:             ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i.i

for.inc.2.i.i.rx_done.i_crit_edge:                ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rx_done.i

mtk_get_rx_ring.exit.i:                           ; preds = %if.then7.i.i, %while.body.i.mtk_get_rx_ring.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx2.lcssa.i.i, %if.then7.i.i ], [ %arrayidx2.i.i, %while.body.i.mtk_get_rx_ring.exit.i_crit_edge ]
  %tobool.not.i35 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i35, label %mtk_get_rx_ring.exit.i.rx_done.i_crit_edge, label %if.end.i, !prof !370

mtk_get_rx_ring.exit.i.rx_done.i_crit_edge:       ; preds = %mtk_get_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rx_done.i

if.end.i:                                         ; preds = %mtk_get_rx_ring.exit.i
  %calc_idx.i = getelementptr inbounds %struct.mtk_rx_ring, ptr %retval.0.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %calc_idx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %calc_idx.i, align 4
  %conv.i = zext i16 %43 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %dma_size.i = getelementptr inbounds %struct.mtk_rx_ring, ptr %retval.0.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %dma_size.i, align 4
  %conv4.i = zext i16 %45 to i32
  %sub.i = add nuw nsw i32 %conv4.i, 131071
  %and.i36 = and i32 %sub.i, %add.i
  %46 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %retval.0.i.i, align 4
  %arrayidx.i = getelementptr %struct.mtk_rx_dma, ptr %47, i32 %and.i36
  %data5.i = getelementptr inbounds %struct.mtk_rx_ring, ptr %retval.0.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data5.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %49, i32 %and.i36
  %50 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx6.i, align 4
  %rxd2.i237.i = getelementptr %struct.mtk_rx_dma, ptr %47, i32 %and.i36, i32 1
  %52 = ptrtoint ptr %rxd2.i237.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %rxd2.i237.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %tobool.not.i238.i = icmp sgt i32 %53, -1
  br i1 %tobool.not.i238.i, label %if.end.i.rx_done.i_crit_edge, label %if.end9.i

if.end.i.rx_done.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rx_done.i

if.end9.i:                                        ; preds = %if.end.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i, align 4
  %rxd3.i.i = getelementptr %struct.mtk_rx_dma, ptr %47, i32 %and.i36, i32 2
  %56 = ptrtoint ptr %rxd3.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %rxd3.i.i, align 4
  %rxd4.i.i = getelementptr %struct.mtk_rx_dma, ptr %47, i32 %and.i36, i32 3
  %58 = ptrtoint ptr %rxd4.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %rxd4.i.i, align 4
  %60 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %soc.i, align 64
  %caps.i = getelementptr inbounds %struct.mtk_soc_data, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %caps.i, align 4
  %and10.i = and i32 %63, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.not.i = icmp eq i32 %and10.i, 0
  %and13.i = and i32 %59, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %or.cond288.i = select i1 %cmp11.not.i, i1 %tobool14.not.i, i1 false
  %shr.i = lshr i32 %59, 19
  %and17.i = and i32 %shr.i, 7
  %sub18.i = add nsw i32 %and17.i, -1
  %mac.0.i = select i1 %or.cond288.i, i32 %sub18.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mac.0.i)
  %64 = icmp ugt i32 %mac.0.i, 1
  br i1 %64, label %if.end9.i.release_desc.i_crit_edge, label %lor.rhs.i, !prof !372

if.end9.i.release_desc.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %release_desc.i

lor.rhs.i:                                        ; preds = %if.end9.i
  %arrayidx26.i = getelementptr %struct.mtk_eth, ptr %add.ptr, i32 0, i32 7, i32 %mac.0.i
  %65 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx26.i, align 4
  %tobool27.not.i = icmp eq ptr %66, null
  br i1 %tobool27.not.i, label %lor.rhs.i.release_desc.i_crit_edge, label %if.end37.i, !prof !370

lor.rhs.i.release_desc.i_crit_edge:               ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %release_desc.i

if.end37.i:                                       ; preds = %lor.rhs.i
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %state.i, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool41.not.i = icmp eq i32 %69, 0
  br i1 %tobool41.not.i, label %if.end49.i, label %if.end37.i.release_desc.i_crit_edge, !prof !357

if.end37.i.release_desc.i_crit_edge:              ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %release_desc.i

if.end49.i:                                       ; preds = %if.end37.i
  %frag_size.i = getelementptr inbounds %struct.mtk_rx_ring, ptr %retval.0.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %frag_size.i, align 4
  %conv50.i = zext i16 %71 to i32
  %call.i.i = tail call ptr @__napi_alloc_frag_align(i32 noundef %conv50.i, i32 noundef -1) #20
  %tobool52.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool52.not.i, label %if.then61.i, label %if.end62.i, !prof !370

if.then61.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #22
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 36, i32 6
  %72 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_dropped.i, align 8
  %inc.i = add i32 %73, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 8
  br label %release_desc.i

if.end62.i:                                       ; preds = %if.end49.i
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i37 = getelementptr i8, ptr %call.i.i, i32 128
  %76 = ptrtoint ptr %ip_align.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ip_align.i, align 4
  %add.ptr63.i = getelementptr i8, ptr %add.ptr.i37, i32 %77
  %buf_size.i = getelementptr inbounds %struct.mtk_rx_ring, ptr %retval.0.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %buf_size.i, align 2
  %call.i239.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr63.i) #20
  br i1 %call.i239.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end62.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i240.i, !prof !357

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit.thread.i

if.then.i240.i:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %75) #20
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 3
  %80 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i240.i.dev_name.exit.i.i_crit_edge

if.then.i240.i.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i240.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i240.i
  call void @__sanitizer_cov_trace_pc() #22
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %75, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i240.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %83, %if.end.i.i.i ], [ %81, %if.then.i240.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #20
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %85, i32 noundef -1) #20
  br label %if.then75.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end62.i
  %conv64.i = zext i16 %79 to i32
  tail call void @debug_dma_map_single(ptr noundef %75, ptr noundef %add.ptr63.i, i32 noundef %conv64.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %add.ptr63.i to i32
  %sub.i241.i = add i32 %87, 1073741824
  %shr.i242.i = lshr i32 %sub.i241.i, 12
  %add.ptr.i.i38 = getelementptr %struct.page, ptr %86, i32 %shr.i242.i
  %and.i243.i = and i32 %87, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %75, ptr noundef %add.ptr.i.i38, i32 noundef %and.i243.i, i32 noundef %conv64.i, i32 noundef 2, i32 noundef 0) #20
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %89, i32 noundef %call41.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then75.i_crit_edge, label %if.end79.i

dma_map_single_attrs.exit.i.if.then75.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then75.i

if.then75.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then75.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @page_frag_free(ptr noundef nonnull %call.i.i) #20
  %rx_dropped77.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 36, i32 6
  %90 = ptrtoint ptr %rx_dropped77.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_dropped77.i, align 8
  %inc78.i = add i32 %91, 1
  store i32 %inc78.i, ptr %rx_dropped77.i, align 8
  br label %release_desc.i

if.end79.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr, align 128
  %94 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %buf_size.i, align 2
  %conv82.i = zext i16 %95 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %93, i32 noundef %55, i32 noundef %conv82.i, i32 noundef 2, i32 noundef 0) #20
  %96 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %frag_size.i, align 4
  %conv84.i = zext i16 %97 to i32
  %call85.i = tail call ptr @build_skb(ptr noundef %51, i32 noundef %conv84.i) #20
  %tobool86.not.i = icmp eq ptr %call85.i, null
  br i1 %tobool86.not.i, label %if.then95.i, label %if.end99.i, !prof !370

if.then95.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @page_frag_free(ptr noundef %51) #20
  %rx_dropped97.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 36, i32 6
  %98 = ptrtoint ptr %rx_dropped97.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_dropped97.i, align 8
  %inc98.i = add i32 %99, 1
  store i32 %inc98.i, ptr %rx_dropped97.i, align 8
  br label %skip_rx.i

if.end99.i:                                       ; preds = %if.end79.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i245.i = getelementptr i8, ptr %101, i32 130
  store ptr %add.ptr.i245.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 16
  %102 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %103, i32 130
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %shr100.i = lshr i32 %53, 16
  %and101.i = and i32 %shr100.i, 16383
  %104 = getelementptr inbounds %struct.anon.51, ptr %call85.i, i32 0, i32 2
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %66, ptr %104, align 8
  %call102.i = tail call ptr @skb_put(ptr noundef nonnull %call85.i, i32 noundef %and101.i) #20
  %106 = ptrtoint ptr %rx_dma_l4_valid.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_dma_l4_valid.i, align 8
  %and104.i = and i32 %107, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end99.i.if.end108.i_crit_edge, label %if.then106.i

if.end99.i.if.end108.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end108.i

if.then106.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #22
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 15
  %108 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then106.i, %if.end99.i.if.end108.i_crit_edge
  %call109.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call85.i, ptr noundef nonnull %66) #20
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 15, i32 0, i32 18
  %109 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %call109.i, ptr %protocol.i, align 8
  %add110.i = add i32 %and101.i, %bytes.0292.i
  %and112.i = and i32 %59, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %and112.i)
  %cmp113.not.i = icmp eq i32 %and112.i, 16383
  br i1 %cmp113.not.i, label %if.end108.i.if.end117.i_crit_edge, label %if.then115.i

if.end108.i.if.end117.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end117.i

if.then115.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.i.i.i = add nuw nsw i32 %and112.i, -559038733
  %xor3.i.i.i = xor i32 %add.i.i.i, -1874655147
  %sub5.i.i.i = add nsw i32 %xor3.i.i.i, -407022722
  %xor6.i.i.i = xor i32 %sub5.i.i.i, -559038733
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #20
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i1.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, -1874655147
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #20
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i2.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #20
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i3.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #20
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i4.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #20
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i5.i.i.i
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 15
  %110 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %bf.set.i.i.i = and i16 %bf.load.i.i.i, -193
  %bf.clear7.i.i.i = or i16 %bf.set.i.i.i, 128
  store i16 %bf.clear7.i.i.i, ptr %l4_hash.i.i.i, align 8
  %hash10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 15, i32 0, i32 8
  %111 = ptrtoint ptr %hash10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub20.i.i.i, ptr %hash10.i.i.i, align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then115.i, %if.end108.i.if.end117.i_crit_edge
  %features.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 23
  %112 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %features.i, align 16
  %and118.i = and i64 %113, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and118.i)
  %tobool119.not.i = icmp eq i64 %and118.i, 0
  %and121.i = and i32 %53, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  %or.cond289.i = select i1 %tobool119.not.i, i1 true, i1 %tobool122.not.i
  br i1 %or.cond289.i, label %if.end117.i.if.end126.i_crit_edge, label %if.then123.i

if.end117.i.if.end126.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end126.i

if.then123.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #22
  %114 = trunc i32 %57 to i16
  %conv125.i = and i16 %114, 4095
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 15, i32 0, i32 9
  %115 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 15, i32 0, i32 10
  %116 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv125.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 15, i32 0, i32 3
  %117 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then123.i, %if.end117.i.if.end126.i_crit_edge
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call85.i, i32 0, i32 10
  %118 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 1, ptr %queue_mapping.i.i, align 8
  %call127.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call85.i) #20
  br label %skip_rx.i

skip_rx.i:                                        ; preds = %if.end126.i, %if.then95.i
  %bytes.1.i = phi i32 [ %bytes.0292.i, %if.then95.i ], [ %add110.i, %if.end126.i ]
  %119 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data5.i, align 4
  %arrayidx129.i = getelementptr ptr, ptr %120, i32 %and.i36
  %121 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i, ptr %arrayidx129.i, align 4
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call41.i.i, ptr %arrayidx.i, align 4
  br label %release_desc.i

release_desc.i:                                   ; preds = %skip_rx.i, %if.then75.i, %if.then61.i, %if.end37.i.release_desc.i_crit_edge, %lor.rhs.i.release_desc.i_crit_edge, %if.end9.i.release_desc.i_crit_edge
  %bytes.2.i = phi i32 [ %bytes.0292.i, %lor.rhs.i.release_desc.i_crit_edge ], [ %bytes.0292.i, %if.end37.i.release_desc.i_crit_edge ], [ %bytes.0292.i, %if.then61.i ], [ %bytes.0292.i, %if.then75.i ], [ %bytes.1.i, %skip_rx.i ], [ %bytes.0292.i, %if.end9.i.release_desc.i_crit_edge ]
  %123 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %soc.i, align 64
  %caps132.i = getelementptr inbounds %struct.mtk_soc_data, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %caps132.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %caps132.i, align 4
  %and133.i = and i32 %126, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %cmp134.not.i = icmp eq i32 %and133.i, 0
  br i1 %cmp134.not.i, label %if.else138.i, label %release_desc.i.cleanup.i_crit_edge

release_desc.i.cleanup.i_crit_edge:               ; preds = %release_desc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else138.i:                                     ; preds = %release_desc.i
  call void @__sanitizer_cov_trace_pc() #22
  %buf_size139.i = getelementptr inbounds %struct.mtk_rx_ring, ptr %retval.0.i.i, i32 0, i32 4
  %127 = ptrtoint ptr %buf_size139.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %buf_size139.i, align 2
  %129 = and i16 %128, 16383
  %and141.i = zext i16 %129 to i32
  %shl.i = shl nuw nsw i32 %and141.i, 16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else138.i, %release_desc.i.cleanup.i_crit_edge
  %.sink.i = phi i32 [ %shl.i, %if.else138.i ], [ 1073741824, %release_desc.i.cleanup.i_crit_edge ]
  %130 = ptrtoint ptr %rxd2.i237.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.sink.i, ptr %rxd2.i237.i, align 4
  %conv144.i = trunc i32 %and.i36 to i16
  %131 = ptrtoint ptr %calc_idx.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv144.i, ptr %calc_idx.i, align 4
  %inc146.i = add nuw nsw i32 %done.0291.i, 1
  %exitcond.not.i = icmp eq i32 %inc146.i, %sub
  br i1 %exitcond.not.i, label %cleanup.i.rx_done.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

cleanup.i.rx_done.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rx_done.i

rx_done.i:                                        ; preds = %cleanup.i.rx_done.i_crit_edge, %if.end.i.rx_done.i_crit_edge, %mtk_get_rx_ring.exit.i.rx_done.i_crit_edge, %for.inc.2.i.i.rx_done.i_crit_edge
  %done.0.lcssa.i = phi i32 [ %sub, %cleanup.i.rx_done.i_crit_edge ], [ %done.0291.i, %mtk_get_rx_ring.exit.i.rx_done.i_crit_edge ], [ %done.0291.i, %if.end.i.rx_done.i_crit_edge ], [ %done.0291.i, %for.inc.2.i.i.rx_done.i_crit_edge ]
  %bytes.0.lcssa.i = phi i32 [ %bytes.2.i, %cleanup.i.rx_done.i_crit_edge ], [ %bytes.0292.i, %mtk_get_rx_ring.exit.i.rx_done.i_crit_edge ], [ %bytes.0292.i, %if.end.i.rx_done.i_crit_edge ], [ %bytes.0292.i, %for.inc.2.i.i.rx_done.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.lcssa.i)
  %tobool151.not.i = icmp eq i32 %done.0.lcssa.i, 0
  br i1 %tobool151.not.i, label %rx_done.i.mtk_poll_rx.exit_crit_edge, label %do.body.i

rx_done.i.mtk_poll_rx.exit_crit_edge:             ; preds = %rx_done.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_rx.exit

do.body.i:                                        ; preds = %rx_done.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !373
  tail call void @arm_heavy_mb() #20
  %132 = ptrtoint ptr %hwlro.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %hwlro.i.i, align 4, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i247.i = icmp eq i8 %133, 0
  br i1 %tobool.not.i247.i, label %if.then.i251.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %do.body.i
  %134 = ptrtoint ptr %calc_idx_update.i248.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %calc_idx_update.i248.i, align 2, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool4.not.i.i = icmp eq i8 %135, 0
  br i1 %tobool4.not.i.i, label %for.cond.preheader.i.i.for.inc.i252.i_crit_edge, label %if.then5.i.i

for.cond.preheader.i.i.for.inc.i252.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i252.i

if.then.i251.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %136 = ptrtoint ptr %calc_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %calc_idx.i.i, align 4
  %conv.i250.i = zext i16 %137 to i32
  %138 = ptrtoint ptr %crx_idx_reg9.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %crx_idx_reg9.i.i, align 4
  %140 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %141, i32 %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %conv.i250.i) #20, !srcloc !351
  br label %mtk_poll_rx.exit

if.then5.i.i:                                     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %142 = ptrtoint ptr %calc_idx_update.i248.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %calc_idx_update.i248.i, align 2
  %143 = ptrtoint ptr %calc_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %calc_idx.i.i, align 4
  %conv8.i.i = zext i16 %144 to i32
  %145 = ptrtoint ptr %crx_idx_reg9.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %crx_idx_reg9.i.i, align 4
  %147 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %148, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %conv8.i.i) #20, !srcloc !351
  br label %for.inc.i252.i

for.inc.i252.i:                                   ; preds = %if.then5.i.i, %for.cond.preheader.i.i.for.inc.i252.i_crit_edge
  %149 = ptrtoint ptr %calc_idx_update.1.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %calc_idx_update.1.i.i, align 2, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool4.not.1.i.i = icmp eq i8 %150, 0
  br i1 %tobool4.not.1.i.i, label %for.inc.i252.i.for.inc.1.i253.i_crit_edge, label %if.then5.1.i.i

for.inc.i252.i.for.inc.1.i253.i_crit_edge:        ; preds = %for.inc.i252.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1.i253.i

if.then5.1.i.i:                                   ; preds = %for.inc.i252.i
  call void @__sanitizer_cov_trace_pc() #22
  %151 = ptrtoint ptr %calc_idx_update.1.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %calc_idx_update.1.i.i, align 2
  %152 = ptrtoint ptr %calc_idx.1.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %calc_idx.1.i.i, align 4
  %conv8.1.i.i = zext i16 %153 to i32
  %154 = ptrtoint ptr %crx_idx_reg9.1.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %crx_idx_reg9.1.i.i, align 4
  %156 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i23.1.i.i = getelementptr i8, ptr %157, i32 %155
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.1.i.i, i32 %conv8.1.i.i) #20, !srcloc !351
  br label %for.inc.1.i253.i

for.inc.1.i253.i:                                 ; preds = %if.then5.1.i.i, %for.inc.i252.i.for.inc.1.i253.i_crit_edge
  %158 = ptrtoint ptr %calc_idx_update.2.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %calc_idx_update.2.i.i, align 2, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool4.not.2.i.i = icmp eq i8 %159, 0
  br i1 %tobool4.not.2.i.i, label %for.inc.1.i253.i.for.inc.2.i254.i_crit_edge, label %if.then5.2.i.i

for.inc.1.i253.i.for.inc.2.i254.i_crit_edge:      ; preds = %for.inc.1.i253.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.2.i254.i

if.then5.2.i.i:                                   ; preds = %for.inc.1.i253.i
  call void @__sanitizer_cov_trace_pc() #22
  %160 = ptrtoint ptr %calc_idx_update.2.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %calc_idx_update.2.i.i, align 2
  %161 = ptrtoint ptr %calc_idx.2.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %calc_idx.2.i.i, align 4
  %conv8.2.i.i = zext i16 %162 to i32
  %163 = ptrtoint ptr %crx_idx_reg9.2.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %crx_idx_reg9.2.i.i, align 4
  %165 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i23.2.i.i = getelementptr i8, ptr %166, i32 %164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.2.i.i, i32 %conv8.2.i.i) #20, !srcloc !351
  br label %for.inc.2.i254.i

for.inc.2.i254.i:                                 ; preds = %if.then5.2.i.i, %for.inc.1.i253.i.for.inc.2.i254.i_crit_edge
  %167 = ptrtoint ptr %calc_idx_update.3.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %calc_idx_update.3.i.i, align 2, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool4.not.3.i.i = icmp eq i8 %168, 0
  br i1 %tobool4.not.3.i.i, label %for.inc.2.i254.i.mtk_poll_rx.exit_crit_edge, label %if.then5.3.i.i

for.inc.2.i254.i.mtk_poll_rx.exit_crit_edge:      ; preds = %for.inc.2.i254.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_poll_rx.exit

if.then5.3.i.i:                                   ; preds = %for.inc.2.i254.i
  call void @__sanitizer_cov_trace_pc() #22
  %169 = ptrtoint ptr %calc_idx_update.3.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %calc_idx_update.3.i.i, align 2
  %170 = ptrtoint ptr %calc_idx.3.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %calc_idx.3.i.i, align 4
  %conv8.3.i.i = zext i16 %171 to i32
  %172 = ptrtoint ptr %crx_idx_reg9.3.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %crx_idx_reg9.3.i.i, align 4
  %174 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i23.3.i.i = getelementptr i8, ptr %175, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.3.i.i, i32 %conv8.3.i.i) #20, !srcloc !351
  br label %mtk_poll_rx.exit

mtk_poll_rx.exit:                                 ; preds = %if.then5.3.i.i, %for.inc.2.i254.i.mtk_poll_rx.exit_crit_edge, %if.then.i251.i, %rx_done.i.mtk_poll_rx.exit_crit_edge, %do.body.mtk_poll_rx.exit_crit_edge
  %bytes.0.lcssa304.i = phi i32 [ %bytes.0.lcssa.i, %rx_done.i.mtk_poll_rx.exit_crit_edge ], [ %bytes.0.lcssa.i, %if.then.i251.i ], [ %bytes.0.lcssa.i, %for.inc.2.i254.i.mtk_poll_rx.exit_crit_edge ], [ %bytes.0.lcssa.i, %if.then5.3.i.i ], [ 0, %do.body.mtk_poll_rx.exit_crit_edge ]
  %done.0.lcssa303.i = phi i32 [ 0, %rx_done.i.mtk_poll_rx.exit_crit_edge ], [ %done.0.lcssa.i, %if.then.i251.i ], [ %done.0.lcssa.i, %for.inc.2.i254.i.mtk_poll_rx.exit_crit_edge ], [ %done.0.lcssa.i, %if.then5.3.i.i ], [ 0, %do.body.mtk_poll_rx.exit_crit_edge ]
  %176 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rx_packets.i, align 4
  %add154.i = add i32 %177, %done.0.lcssa303.i
  store i32 %add154.i, ptr %rx_packets.i, align 4
  %178 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rx_bytes.i, align 8
  %add155.i = add i32 %179, %bytes.0.lcssa304.i
  store i32 %add155.i, ptr %rx_bytes.i, align 8
  %180 = ptrtoint ptr %rx_events.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %rx_events.i, align 16
  %call.i255.i = tail call i64 @ktime_get() #20
  %conv156.mask.i = and i32 %181, 65535
  %dim_sample.sroa.8.16.insert.ext.i = zext i32 %conv156.mask.i to i64
  %dim_sample.sroa.8.16.insert.shift.i = shl nuw i64 %dim_sample.sroa.8.16.insert.ext.i, 48
  %.fca.0.insert.i = insertvalue [3 x i64] poison, i64 %call.i255.i, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext.i = zext i32 %add155.i to i64
  %dim_sample.sroa.5.sroa.0.0.insert.ext.i = zext i32 %add154.i to i64
  %dim_sample.sroa.5.sroa.0.0.insert.shift.i = shl nuw i64 %dim_sample.sroa.5.sroa.0.0.insert.ext.i, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert.i = or i64 %dim_sample.sroa.5.sroa.0.0.insert.shift.i, %dim_sample.sroa.5.sroa.5.0.insert.ext.i
  %.fca.1.insert.i = insertvalue [3 x i64] %.fca.0.insert.i, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert.i, 1
  %.fca.2.insert.i = insertvalue [3 x i64] %.fca.1.insert.i, i64 %dim_sample.sroa.8.16.insert.shift.i, 2
  tail call void @net_dim(ptr noundef %rx_dim.i, [3 x i64] %.fca.2.insert.i) #20
  %add = add i32 %done.0.lcssa303.i, %rx_done_total.0
  %182 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %msg_enable, align 4
  %and = and i32 %183, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mtk_poll_rx.exit.if.end_crit_edge, label %do.end, !prof !357

mtk_poll_rx.exit.if.end_crit_edge:                ; preds = %mtk_poll_rx.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %mtk_poll_rx.exit
  call void @__sanitizer_cov_trace_pc() #22
  %184 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %add.ptr, align 128
  %186 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %187, i32 2592
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #20, !srcloc !352
  %189 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %190, i32 2600
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #20, !srcloc !352
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %185, ptr noundef nonnull @.str.155, i32 noundef %done.0.lcssa303.i, i32 noundef %188, i32 noundef %191) #23
  br label %if.end

if.end:                                           ; preds = %do.end, %mtk_poll_rx.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp = icmp eq i32 %add, %budget
  br i1 %cmp, label %if.end.cleanup16_crit_edge, label %do.cond8

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup16

do.cond8:                                         ; preds = %if.end
  %192 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %193, i32 2592
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #20, !srcloc !352
  %and10 = and i32 %194, 1073741824
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end12, label %do.cond8.do.body_crit_edge

do.cond8.do.body_crit_edge:                       ; preds = %do.cond8
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.end12:                                         ; preds = %do.cond8
  %call13 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %add) #20
  br i1 %call13, label %if.then14, label %do.end12.cleanup16_crit_edge

do.end12.cleanup16_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup16

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #22
  %rx_irq_lock.i = getelementptr i8, ptr %napi, i32 -2936
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %195 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %196, i32 2600
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #20, !srcloc !352
  %or.i = or i32 %197, 1073741824
  %198 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %199, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i) #20
  br label %cleanup16

cleanup16:                                        ; preds = %if.then14, %do.end12.cleanup16_crit_edge, %if.end.cleanup16_crit_edge
  %retval.2 = phi i32 [ %add, %if.then14 ], [ %add, %do.end12.cleanup16_crit_edge ], [ %budget, %if.end.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hw_deinit(ptr noundef %eth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 29
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 17
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %1) #20
  tail call void @clk_unprepare(ptr noundef %1) #20
  %arrayidx.1.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 16
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @clk_disable(ptr noundef %3) #20
  tail call void @clk_unprepare(ptr noundef %3) #20
  %arrayidx.2.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 15
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @clk_disable(ptr noundef %5) #20
  tail call void @clk_unprepare(ptr noundef %5) #20
  %arrayidx.3.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 14
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @clk_disable(ptr noundef %7) #20
  tail call void @clk_unprepare(ptr noundef %7) #20
  %arrayidx.4.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 13
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void @clk_disable(ptr noundef %9) #20
  tail call void @clk_unprepare(ptr noundef %9) #20
  %arrayidx.5.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 12
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5.i, align 4
  tail call void @clk_disable(ptr noundef %11) #20
  tail call void @clk_unprepare(ptr noundef %11) #20
  %arrayidx.6.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 11
  %12 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6.i, align 4
  tail call void @clk_disable(ptr noundef %13) #20
  tail call void @clk_unprepare(ptr noundef %13) #20
  %arrayidx.7.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 10
  %14 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7.i, align 4
  tail call void @clk_disable(ptr noundef %15) #20
  tail call void @clk_unprepare(ptr noundef %15) #20
  %arrayidx.8.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 9
  %16 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8.i, align 4
  tail call void @clk_disable(ptr noundef %17) #20
  tail call void @clk_unprepare(ptr noundef %17) #20
  %arrayidx.9.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 8
  %18 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9.i, align 4
  tail call void @clk_disable(ptr noundef %19) #20
  tail call void @clk_unprepare(ptr noundef %19) #20
  %arrayidx.10.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 7
  %20 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10.i, align 4
  tail call void @clk_disable(ptr noundef %21) #20
  tail call void @clk_unprepare(ptr noundef %21) #20
  %arrayidx.11.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 6
  %22 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11.i, align 4
  tail call void @clk_disable(ptr noundef %23) #20
  tail call void @clk_unprepare(ptr noundef %23) #20
  %arrayidx.12.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 5
  %24 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12.i, align 4
  tail call void @clk_disable(ptr noundef %25) #20
  tail call void @clk_unprepare(ptr noundef %25) #20
  %arrayidx.13.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 4
  %26 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13.i, align 4
  tail call void @clk_disable(ptr noundef %27) #20
  tail call void @clk_unprepare(ptr noundef %27) #20
  %arrayidx.14.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 3
  %28 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.14.i, align 4
  tail call void @clk_disable(ptr noundef %29) #20
  tail call void @clk_unprepare(ptr noundef %29) #20
  %arrayidx.15.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 2
  %30 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.15.i, align 4
  tail call void @clk_disable(ptr noundef %31) #20
  tail call void @clk_unprepare(ptr noundef %31) #20
  %arrayidx.16.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 1
  %32 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.16.i, align 4
  tail call void @clk_disable(ptr noundef %33) #20
  tail call void @clk_unprepare(ptr noundef %33) #20
  %arrayidx.17.i = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 0
  %34 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.17.i, align 4
  tail call void @clk_disable(ptr noundef %35) #20
  tail call void @clk_unprepare(ptr noundef %35) #20
  %36 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %eth, align 128
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 4) #20
  %38 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eth, align 128
  tail call void @__pm_runtime_disable(ptr noundef %39, i1 noundef zeroext true) #20
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_tx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %phylink = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 4
  tail call void @phylink_stop(ptr noundef %3) #20
  tail call fastcc void @local_bh_disable() #20
  %4 = tail call i32 @llvm.read_register.i32(metadata !341) #20
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #20
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %8 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13.not.i = icmp eq i32 %9, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #20
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %i.014.i, i32 11
  %12 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %7, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  %13 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #20
  %inc.i = add nuw i32 %i.014.i, 1
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #20
  tail call fastcc void @local_bh_enable() #20
  %16 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phylink, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %17) #20
  %dma_refcnt = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_refcnt, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !374
  tail call void @llvm.prefetch.p0(ptr %dma_refcnt, i32 1, i32 3, i32 1) #20
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_refcnt, ptr %dma_refcnt, i32 1, ptr elementtype(i32) %dma_refcnt) #20, !srcloc !375
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !357

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @refcount_warn_saturate(ptr noundef %dma_refcnt, i32 noundef 3) #20
  br label %cleanup

if.end:                                           ; preds = %netif_tx_disable.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !376
  %soc.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 30
  %19 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc.i, align 64
  %caps.i = getelementptr inbounds %struct.mtk_soc_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i, label %if.end.mtk_gdm_config.exit_crit_edge

if.end.mtk_gdm_config.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_gdm_config.exit

land.lhs.true.i:                                  ; preds = %if.end
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 1280
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %and2.i = and i32 %25, -7405568
  %or3.i = or i32 %and2.i, 7370615
  %netdev.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 128
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end11.1.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end11.1.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.1.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 75
  %28 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dsa_ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %land.lhs.true5.i.if.end11.1.i_crit_edge, label %netdev_uses_dsa.exit.i

land.lhs.true5.i.if.end11.1.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.1.i

netdev_uses_dsa.exit.i:                           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  %rcv.i.i = getelementptr inbounds %struct.dsa_port, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rcv.i.i, align 4
  %tobool2.i.not.i = icmp eq ptr %31, null
  %or10.i = or i32 %and2.i, 24147831
  %spec.select.i = select i1 %tobool2.i.not.i, i32 %or3.i, i32 %or10.i
  br label %if.end11.1.i

if.end11.1.i:                                     ; preds = %netdev_uses_dsa.exit.i, %land.lhs.true5.i.if.end11.1.i_crit_edge, %land.lhs.true.i.if.end11.1.i_crit_edge
  %val.0.i = phi i32 [ %or3.i, %land.lhs.true.i.if.end11.1.i_crit_edge ], [ %or3.i, %land.lhs.true5.i.if.end11.1.i_crit_edge ], [ %spec.select.i, %netdev_uses_dsa.exit.i ]
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %33, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %val.0.i) #20, !srcloc !351
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %35, i32 5376
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #20, !srcloc !352
  %and2.1.i = and i32 %36, -7405568
  %or3.1.i = or i32 %and2.1.i, 7370615
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29.1.i = getelementptr i8, ptr %38, i32 5376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.1.i, i32 %or3.1.i) #20, !srcloc !351
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 1) #20, !srcloc !351
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 0) #20, !srcloc !351
  br label %mtk_gdm_config.exit

mtk_gdm_config.exit:                              ; preds = %if.end11.1.i, %if.end.mtk_gdm_config.exit_crit_edge
  %tx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %tx_int_mask_reg.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 40
  %43 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_int_mask_reg.i, align 16
  %base.i.i29 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %46, i32 %44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #20, !srcloc !352
  %and.i31 = and i32 %47, -268435457
  %48 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_int_mask_reg.i, align 16
  %50 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %51, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %and.i31) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i) #20
  %rx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 4
  %call2.i32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %52 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %53, i32 2600
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #20, !srcloc !352
  %and.i35 = and i32 %54, -1073741825
  %55 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %56, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %and.i35) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i32) #20
  %tx_napi = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 21
  tail call void @napi_disable(ptr noundef %tx_napi) #20
  %rx_napi = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 22
  tail call void @napi_disable(ptr noundef %rx_napi) #20
  %work = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 35, i32 4
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #20
  %work4 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 39, i32 4
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work4) #20
  %57 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %soc.i, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caps, align 4
  %and = and i32 %60, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %mtk_gdm_config.exit.if.end7_crit_edge, label %if.then6

mtk_gdm_config.exit.if.end7_crit_edge:            ; preds = %mtk_gdm_config.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then6:                                         ; preds = %mtk_gdm_config.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @mtk_stop_dma(ptr noundef %1, i32 noundef 6660)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %mtk_gdm_config.exit.if.end7_crit_edge
  tail call fastcc void @mtk_stop_dma(ptr noundef %1, i32 noundef 2564)
  tail call fastcc void @mtk_dma_free(ptr noundef %1)
  %61 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %soc.i, align 64
  %offload_version = getelementptr inbounds %struct.mtk_soc_data, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %offload_version to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %offload_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not = icmp eq i8 %64, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  %ppe = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 44
  %call10 = tail call i32 @mtk_ppe_stop(ptr noundef %ppe) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %phylink = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 4
  %of_node = getelementptr i8, ptr %dev, i32 2320
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 4
  %call1 = tail call i32 @phylink_of_phy_connect(ptr noundef %3, ptr noundef %5, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.mtk_open, i32 noundef %call1) #23
  br label %cleanup18

if.end:                                           ; preds = %entry
  %dma_refcnt = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_refcnt, i32 noundef 4) #20
  %6 = ptrtoint ptr %dma_refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dma_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %soc.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i.i.i, align 64
  %caps.i.i.i = getelementptr inbounds %struct.mtk_soc_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %..i.i.i = select i1 %cmp.not.i.i.i, i32 2564, i32 6660
  %call.i.i.i40 = tail call i64 @ktime_get() #20
  %add.i.i.i.i = add i64 %call.i.i.i40, 1000000000
  %base.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr40.i.i.i = getelementptr i8, ptr %13, i32 %..i.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i.i) #20, !srcloc !352
  %and341.i.i.i = and i32 %14, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341.i.i.i)
  %tobool.not42.i.i.i = icmp eq i32 %and341.i.i.i, 0
  br i1 %tobool.not42.i.i.i, label %if.then4.if.end.i.i_crit_edge, label %if.then4.land.lhs.true.i.i.i_crit_edge

if.then4.land.lhs.true.i.i.i_crit_edge:           ; preds = %if.then4
  br label %land.lhs.true.i.i.i

if.then4.if.end.i.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.then4.land.lhs.true.i.i.i_crit_edge
  %call7.i.i.i = tail call i64 @ktime_get() #20
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call7.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i, label %cond.false.i.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #20
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %..i.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %and3.i.i.i = and i32 %18, 10
  %tobool.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i.if.end.i.i_crit_edge, label %cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge

cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge:   ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i.i.i

cond.false.i.i.i.if.end.i.i_crit_edge:            ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

for.end.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr12.i.i.i = getelementptr i8, ptr %20, i32 %..i.i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i.i) #20, !srcloc !352
  %.pre.i.i.i = and i32 %21, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %for.end.i.i.i.if.end.i.i_crit_edge, label %mtk_dma_busy_wait.exit.i.i

for.end.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

mtk_dma_busy_wait.exit.i.i:                       ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.66) #23
  br label %mtk_start_dma.exit

if.end.i.i:                                       ; preds = %for.end.i.i.i.if.end.i.i_crit_edge, %cond.false.i.i.i.if.end.i.i_crit_edge, %if.then4.if.end.i.i_crit_edge
  %24 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc.i.i.i, align 64
  %caps.i.i = getelementptr inbounds %struct.mtk_soc_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 128
  %phy_scratch_ring.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 24
  %call.i.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %29, i32 noundef 8192, ptr noundef %phy_scratch_ring.i.i.i, i32 noundef 2592, i32 noundef 0) #20
  %scratch_ring.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 23
  %30 = ptrtoint ptr %scratch_ring.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i.i.i, ptr %scratch_ring.i.i.i, align 8
  %tobool.not.i69.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i69.i.i, label %if.then1.i.i.mtk_start_dma.exit_crit_edge, label %if.end.i.i.i, !prof !370

if.then1.i.i.mtk_start_dma.exit_crit_edge:        ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

if.end.i.i.i:                                     ; preds = %if.then1.i.i
  %call1.i.i.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 1048576, i32 noundef 3520, i32 noundef 8) #24
  %scratch_head.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 25
  %31 = ptrtoint ptr %scratch_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call1.i.i.i.i.i.i.i, ptr %scratch_head.i.i.i, align 64
  %tobool7.not.i.i.i = icmp eq ptr %call1.i.i.i.i.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %if.end.i.i.i.mtk_start_dma.exit_crit_edge, label %if.end17.i.i.i, !prof !370

if.end.i.i.i.mtk_start_dma.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

if.end17.i.i.i:                                   ; preds = %if.end.i.i.i
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  %call.i87.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i.i.i.i.i.i) #20
  br i1 %call.i87.i.i.i, label %land.rhs.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end17.i.i.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !357

land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit.thread.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef %33) #20
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %37, %if.end.i.i.i.i.i ], [ %35, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #20
  br label %dma_map_single_attrs.exit.thread.i.i.i

dma_map_single_attrs.exit.thread.i.i.i:           ; preds = %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef -1) #20
  br label %mtk_start_dma.exit

dma_map_single_attrs.exit.i.i.i:                  ; preds = %if.end17.i.i.i
  tail call void @debug_dma_map_single(ptr noundef %33, ptr noundef nonnull %call1.i.i.i.i.i.i.i, i32 noundef 1048576) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %call1.i.i.i.i.i.i.i to i32
  %sub.i.i.i.i = add i32 %41, 1073741824
  %shr.i.i.i.i = lshr exact i32 %sub.i.i.i.i, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %40, i32 %shr.i.i.i.i
  %call41.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %33, ptr noundef %add.ptr.i.i.i.i, i32 noundef 0, i32 noundef 1048576, i32 noundef 2, i32 noundef 0) #20
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %43, i32 noundef %call41.i.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call41.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i.mtk_start_dma.exit_crit_edge, label %if.end32.i.i.i

dma_map_single_attrs.exit.i.i.i.mtk_start_dma.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

if.end32.i.i.i:                                   ; preds = %dma_map_single_attrs.exit.i.i.i
  %44 = ptrtoint ptr %phy_scratch_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_scratch_ring.i.i.i, align 4
  %46 = ptrtoint ptr %scratch_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scratch_ring.i.i.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call41.i.i.i.i, ptr %47, align 4
  br label %if.end47.i.i.i

if.end47.i.i.i:                                   ; preds = %if.end47.i.i.i.if.end47.i.i.i_crit_edge, %if.end32.i.i.i
  %i.0102.i96.i.i = phi i32 [ 0, %if.end32.i.i.i ], [ %inc.i.i.i, %if.end47.i.i.i.if.end47.i.i.i_crit_edge ]
  %49 = ptrtoint ptr %phy_scratch_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phy_scratch_ring.i.i.i, align 4
  %add42.i.i.i = shl i32 %i.0102.i96.i.i, 4
  %mul43.i.i.i = add nuw nsw i32 %add42.i.i.i, 16
  %add44.i.i.i = add i32 %mul43.i.i.i, %50
  %51 = ptrtoint ptr %scratch_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scratch_ring.i.i.i, align 8
  %txd2.i.i.i = getelementptr %struct.mtk_tx_dma, ptr %52, i32 %i.0102.i96.i.i, i32 1
  %53 = ptrtoint ptr %txd2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add44.i.i.i, ptr %txd2.i.i.i, align 4
  %54 = load ptr, ptr %scratch_ring.i.i.i, align 8
  %txd3.i.i.i = getelementptr %struct.mtk_tx_dma, ptr %54, i32 %i.0102.i96.i.i, i32 2
  %55 = ptrtoint ptr %txd3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 134217728, ptr %txd3.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.0102.i96.i.i, 1
  %mul35.i.i.i = shl i32 %inc.i.i.i, 11
  %add36.i.i.i = add i32 %mul35.i.i.i, %call41.i.i.i.i
  %56 = load ptr, ptr %scratch_ring.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.mtk_tx_dma, ptr %56, i32 %inc.i.i.i
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add36.i.i.i, ptr %arrayidx.i.i.i, align 4
  %cmp39.not.i.i.i = icmp eq i32 %inc.i.i.i, 511
  br i1 %cmp39.not.i.i.i, label %mtk_init_fq_dma.exit.i.i, label %if.end47.i.i.i.if.end47.i.i.i_crit_edge

if.end47.i.i.i.if.end47.i.i.i_crit_edge:          ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47.i.i.i

mtk_init_fq_dma.exit.i.i:                         ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %58 = ptrtoint ptr %scratch_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scratch_ring.i.i.i, align 8
  %txd3104.i.i.i = getelementptr %struct.mtk_tx_dma, ptr %59, i32 511, i32 2
  %60 = ptrtoint ptr %txd3104.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 134217728, ptr %txd3104.i.i.i, align 4
  %add.i.i.i = add i32 %45, 8176
  %61 = ptrtoint ptr %phy_scratch_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %phy_scratch_ring.i.i.i, align 4
  %63 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i88.i.i.i = getelementptr i8, ptr %64, i32 6944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i.i.i, i32 %62) #20, !srcloc !351
  %65 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i90.i.i.i = getelementptr i8, ptr %66, i32 6948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i.i.i, i32 %add.i.i.i) #20, !srcloc !351
  %67 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i92.i.i.i = getelementptr i8, ptr %68, i32 6952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i.i.i, i32 33554944) #20, !srcloc !351
  %69 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i94.i.i.i = getelementptr i8, ptr %70, i32 6956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i.i.i, i32 134217728) #20, !srcloc !351
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %mtk_init_fq_dma.exit.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %tx_ring.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18
  %call1.i.i.i.i.i71.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12288, i32 noundef 3520, i32 noundef 2) #24
  %buf.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 1
  %71 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call1.i.i.i.i.i71.i.i, ptr %buf.i.i.i, align 4
  %tobool.not.i72.i.i = icmp eq ptr %call1.i.i.i.i.i71.i.i, null
  br i1 %tobool.not.i72.i.i, label %if.end6.i.i.mtk_start_dma.exit_crit_edge, label %if.end.i74.i.i

if.end6.i.i.mtk_start_dma.exit_crit_edge:         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

if.end.i74.i.i:                                   ; preds = %if.end6.i.i
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 128
  %phys.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 2
  %call.i.i73.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %73, i32 noundef 8192, ptr noundef %phys.i.i.i, i32 noundef 2592, i32 noundef 0) #20
  %74 = ptrtoint ptr %tx_ring.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i73.i.i, ptr %tx_ring.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %call.i.i73.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end.i74.i.i.mtk_start_dma.exit_crit_edge, label %if.end.i74.i.i.for.body.i78.i.i_crit_edge

if.end.i74.i.i.for.body.i78.i.i_crit_edge:        ; preds = %if.end.i74.i.i
  br label %for.body.i78.i.i

if.end.i74.i.i.mtk_start_dma.exit_crit_edge:      ; preds = %if.end.i74.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

for.body.i78.i.i:                                 ; preds = %for.body.i78.i.i.for.body.i78.i.i_crit_edge, %if.end.i74.i.i.for.body.i78.i.i_crit_edge
  %i.0124.i.i.i = phi i32 [ %add.i75.i.i, %for.body.i78.i.i.for.body.i78.i.i_crit_edge ], [ 0, %if.end.i74.i.i.for.body.i78.i.i_crit_edge ]
  %add.i75.i.i = add nuw nsw i32 %i.0124.i.i.i, 1
  %75 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %phys.i.i.i, align 4
  %rem.i.i.i = shl i32 %add.i75.i.i, 4
  %mul8.i.i.i = and i32 %rem.i.i.i, 8176
  %add9.i.i.i = add i32 %mul8.i.i.i, %76
  %77 = ptrtoint ptr %tx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_ring.i.i.i, align 4
  %txd2.i76.i.i = getelementptr %struct.mtk_tx_dma, ptr %78, i32 %i.0124.i.i.i, i32 1
  %79 = ptrtoint ptr %txd2.i76.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add9.i.i.i, ptr %txd2.i76.i.i, align 4
  %80 = load ptr, ptr %tx_ring.i.i.i, align 4
  %txd3.i77.i.i = getelementptr %struct.mtk_tx_dma, ptr %80, i32 %i.0124.i.i.i, i32 2
  %81 = ptrtoint ptr %txd3.i77.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1073741824, ptr %txd3.i77.i.i, align 4
  %exitcond.not.i.i.i = icmp eq i32 %add.i75.i.i, 512
  br i1 %exitcond.not.i.i.i, label %for.end.i82.i.i, label %for.body.i78.i.i.for.body.i78.i.i_crit_edge

for.body.i78.i.i.for.body.i78.i.i_crit_edge:      ; preds = %for.body.i78.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i78.i.i

for.end.i82.i.i:                                  ; preds = %for.body.i78.i.i
  %82 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %soc.i.i.i, align 64
  %caps.i80.i.i = getelementptr inbounds %struct.mtk_soc_data, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %caps.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %caps.i80.i.i, align 4
  %and.i81.i.i = and i32 %85, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81.i.i)
  %cmp13.not.i.i.i = icmp eq i32 %and.i81.i.i, 0
  br i1 %cmp13.not.i.i.i, label %if.then14.i.i.i, label %for.end.i82.i.i.if.end33.i.i.i_crit_edge

for.end.i82.i.i.if.end33.i.i.i_crit_edge:         ; preds = %for.end.i82.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33.i.i.i

if.then14.i.i.i:                                  ; preds = %for.end.i82.i.i
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 128
  %phys_pdma.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 10
  %call.i107.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %87, i32 noundef 8192, ptr noundef %phys_pdma.i.i.i, i32 noundef 2592, i32 noundef 0) #20
  %dma_pdma.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 9
  %88 = ptrtoint ptr %dma_pdma.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i107.i.i.i, ptr %dma_pdma.i.i.i, align 4
  %tobool19.not.i.i.i = icmp eq ptr %call.i107.i.i.i, null
  br i1 %tobool19.not.i.i.i, label %if.then14.i.i.i.mtk_start_dma.exit_crit_edge, label %if.then14.i.i.i.for.body24.i.i.i_crit_edge

if.then14.i.i.i.for.body24.i.i.i_crit_edge:       ; preds = %if.then14.i.i.i
  br label %for.body24.i.i.i

if.then14.i.i.i.mtk_start_dma.exit_crit_edge:     ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

for.body24.i.i.i:                                 ; preds = %for.body24.i.i.i.for.body24.i.i.i_crit_edge, %if.then14.i.i.i.for.body24.i.i.i_crit_edge
  %i.1125.i.i.i = phi i32 [ %inc31.i.i.i, %for.body24.i.i.i.for.body24.i.i.i_crit_edge ], [ 0, %if.then14.i.i.i.for.body24.i.i.i_crit_edge ]
  %89 = ptrtoint ptr %dma_pdma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_pdma.i.i.i, align 4
  %txd227.i.i.i = getelementptr %struct.mtk_tx_dma, ptr %90, i32 %i.1125.i.i.i, i32 1
  %91 = ptrtoint ptr %txd227.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1073741824, ptr %txd227.i.i.i, align 4
  %92 = load ptr, ptr %dma_pdma.i.i.i, align 4
  %txd4.i.i.i = getelementptr %struct.mtk_tx_dma, ptr %92, i32 %i.1125.i.i.i, i32 3
  %93 = ptrtoint ptr %txd4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %txd4.i.i.i, align 4
  %inc31.i.i.i = add nuw nsw i32 %i.1125.i.i.i, 1
  %exitcond126.not.i.i.i = icmp eq i32 %inc31.i.i.i, 512
  br i1 %exitcond126.not.i.i.i, label %for.body24.i.i.i.if.end33.i.i.i_crit_edge, label %for.body24.i.i.i.for.body24.i.i.i_crit_edge

for.body24.i.i.i.for.body24.i.i.i_crit_edge:      ; preds = %for.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body24.i.i.i

for.body24.i.i.i.if.end33.i.i.i_crit_edge:        ; preds = %for.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %for.body24.i.i.i.if.end33.i.i.i_crit_edge, %for.end.i82.i.i.if.end33.i.i.i_crit_edge
  %dma_size.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 8
  %94 = ptrtoint ptr %dma_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 512, ptr %dma_size.i.i.i, align 4
  %free_count.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_count.i.i.i, i32 noundef 4) #20
  %95 = ptrtoint ptr %free_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 510, ptr %free_count.i.i.i, align 4
  %96 = ptrtoint ptr %tx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_ring.i.i.i, align 4
  %next_free.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 3
  %98 = ptrtoint ptr %next_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %next_free.i.i.i, align 4
  %arrayidx37.i.i.i = getelementptr %struct.mtk_tx_dma, ptr %97, i32 511
  %last_free.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 4
  %99 = ptrtoint ptr %last_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %arrayidx37.i.i.i, ptr %last_free.i.i.i, align 4
  %100 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %phys.i.i.i, align 4
  %add40.i.i.i = add i32 %101, 8176
  %last_free_ptr.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 5
  %102 = ptrtoint ptr %last_free_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add40.i.i.i, ptr %last_free_ptr.i.i.i, align 4
  %thresh.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 6
  %103 = ptrtoint ptr %thresh.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 17, ptr %thresh.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !377
  tail call void @arm_heavy_mb() #20
  %104 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %soc.i.i.i, align 64
  %caps42.i.i.i = getelementptr inbounds %struct.mtk_soc_data, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %caps42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %caps42.i.i.i, align 4
  %and43.i.i.i = and i32 %107, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i.i)
  %cmp44.not.i.i.i = icmp eq i32 %and43.i.i.i, 0
  br i1 %cmp44.not.i.i.i, label %if.else.i.i.i, label %if.then45.i.i.i

if.then45.i.i.i:                                  ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %108 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %phys.i.i.i, align 4
  %110 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i84.i.i = getelementptr i8, ptr %111, i32 6912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.i.i, i32 %109) #20, !srcloc !351
  %112 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %phys.i.i.i, align 4
  %114 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i109.i.i.i = getelementptr i8, ptr %115, i32 6916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i.i.i, i32 %113) #20, !srcloc !351
  %116 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %phys.i.i.i, align 4
  %add50.i.i.i = add i32 %117, 8176
  %118 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i111.i.i.i = getelementptr i8, ptr %119, i32 6928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i.i.i, i32 %add50.i.i.i) #20, !srcloc !351
  %120 = ptrtoint ptr %last_free_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %last_free_ptr.i.i.i, align 4
  %122 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i113.i.i.i = getelementptr i8, ptr %123, i32 6932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i.i.i, i32 %121) #20, !srcloc !351
  %124 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i115.i.i.i = getelementptr i8, ptr %125, i32 6144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i.i.i, i32 1028) #20, !srcloc !351
  br label %if.end10.i.i

if.else.i.i.i:                                    ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %phys_pdma52.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 10
  %126 = ptrtoint ptr %phys_pdma52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %phys_pdma52.i.i.i, align 4
  %128 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i117.i.i.i = getelementptr i8, ptr %129, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i.i.i, i32 %127) #20, !srcloc !351
  %130 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i119.i.i.i = getelementptr i8, ptr %131, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i.i.i, i32 512) #20, !srcloc !351
  %132 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i121.i.i.i = getelementptr i8, ptr %133, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i.i.i, i32 0) #20, !srcloc !351
  %134 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i123.i.i.i = getelementptr i8, ptr %135, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i.i.i, i32 1) #20, !srcloc !351
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i.i, %if.then45.i.i.i
  %136 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %soc.i.i.i, align 64
  %caps12.i.i = getelementptr inbounds %struct.mtk_soc_data, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %caps12.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %caps12.i.i, align 4
  %and13.i.i = and i32 %139, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %cmp14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %cmp14.not.i.i, label %if.end10.i.i.if.end20.i.i_crit_edge, label %if.then15.i.i

if.end10.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20.i.i

if.then15.i.i:                                    ; preds = %if.end10.i.i
  %call16.i.i = tail call fastcc i32 @mtk_rx_alloc(ptr noundef %1, i32 noundef 0, i32 noundef 2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then15.i.i.if.end20.i.i_crit_edge, label %if.then15.i.i.mtk_start_dma.exit_crit_edge

if.then15.i.i.mtk_start_dma.exit_crit_edge:       ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

if.then15.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then15.i.i.if.end20.i.i_crit_edge, %if.end10.i.i.if.end20.i.i_crit_edge
  %call21.i.i = tail call fastcc i32 @mtk_rx_alloc(ptr noundef %1, i32 noundef 0, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end20.i.i.mtk_start_dma.exit_crit_edge

if.end20.i.i.mtk_start_dma.exit_crit_edge:        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

if.end24.i.i:                                     ; preds = %if.end20.i.i
  %hwlro.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 16
  %140 = ptrtoint ptr %hwlro.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %hwlro.i.i, align 4, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool25.not.i.i = icmp eq i8 %141, 0
  br i1 %tobool25.not.i.i, label %if.end24.i.i.if.end36.i.i_crit_edge, label %for.body.preheader.i.i

if.end24.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36.i.i

for.body.preheader.i.i:                           ; preds = %if.end24.i.i
  %call28.i.i = tail call fastcc i32 @mtk_rx_alloc(ptr noundef %1, i32 noundef 1, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %for.cond.i.i, label %for.body.preheader.i.i.mtk_start_dma.exit_crit_edge

for.body.preheader.i.i.mtk_start_dma.exit_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

for.cond.i.i:                                     ; preds = %for.body.preheader.i.i
  %call28.1.i.i = tail call fastcc i32 @mtk_rx_alloc(ptr noundef %1, i32 noundef 2, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i.i)
  %tobool29.not.1.i.i = icmp eq i32 %call28.1.i.i, 0
  br i1 %tobool29.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.mtk_start_dma.exit_crit_edge

for.cond.i.i.mtk_start_dma.exit_crit_edge:        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call28.2.i.i = tail call fastcc i32 @mtk_rx_alloc(ptr noundef %1, i32 noundef 3, i32 noundef 1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i.i)
  %tobool29.not.2.i.i = icmp eq i32 %call28.2.i.i, 0
  br i1 %tobool29.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.mtk_start_dma.exit_crit_edge

for.cond.1.i.i.mtk_start_dma.exit_crit_edge:      ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_start_dma.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %142 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %143, i32 2920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.i, i32 209715200) #20, !srcloc !351
  %144 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %145, i32 2924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 10688) #20, !srcloc !351
  %146 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %147, i32 2928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 1) #20, !srcloc !351
  %148 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %149, i32 2984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 209715200) #20, !srcloc !351
  %150 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.1.i.i = getelementptr i8, ptr %151, i32 2988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.1.i.i, i32 10688) #20, !srcloc !351
  %152 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i4.1.i.i = getelementptr i8, ptr %153, i32 2992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.1.i.i, i32 1) #20, !srcloc !351
  %154 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %155, i32 3048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 209715200) #20, !srcloc !351
  %156 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.2.i.i = getelementptr i8, ptr %157, i32 3052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.2.i.i, i32 10688) #20, !srcloc !351
  %158 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i4.2.i.i = getelementptr i8, ptr %159, i32 3056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.2.i.i, i32 1) #20, !srcloc !351
  %160 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %161, i32 2440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 3000) #20, !srcloc !351
  %162 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %163, i32 2636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 1000) #20, !srcloc !351
  %164 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %165, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 115536) #20, !srcloc !351
  %166 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %167, i32 2444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 99778624) #20, !srcloc !351
  %168 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %169, i32 2432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 2097281) #20, !srcloc !351
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %for.cond.2.i.i, %if.end24.i.i.if.end36.i.i_crit_edge
  %170 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %soc.i.i.i, align 64
  %caps38.i.i = getelementptr inbounds %struct.mtk_soc_data, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %caps38.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %caps38.i.i, align 4
  %and39.i.i = and i32 %173, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %cmp40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %cmp40.not.i.i, label %if.end36.i.i.if.end.i_crit_edge, label %if.then41.i.i

if.end36.i.i.if.end.i_crit_edge:                  ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then41.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %174 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i87.i.i = getelementptr i8, ptr %175, i32 6672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i.i, i32 1524804) #20, !srcloc !351
  %176 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i89.i.i = getelementptr i8, ptr %177, i32 6724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i.i, i32 0) #20, !srcloc !351
  br label %if.end.i

if.end.i:                                         ; preds = %if.then41.i.i, %if.end36.i.i.if.end.i_crit_edge
  %178 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %soc.i.i.i, align 64
  %caps.i = getelementptr inbounds %struct.mtk_soc_data, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %181, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %182 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base.i.i.i, align 4
  br i1 %cmp.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i = getelementptr i8, ptr %183, i32 6660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2147476363) #20, !srcloc !351
  %184 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %185, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 -2147476476) #20, !srcloc !351
  br label %if.end8

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i15.i = getelementptr i8, ptr %183, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 1109) #20, !srcloc !351
  br label %if.end8

mtk_start_dma.exit:                               ; preds = %for.cond.1.i.i.mtk_start_dma.exit_crit_edge, %for.cond.i.i.mtk_start_dma.exit_crit_edge, %for.body.preheader.i.i.mtk_start_dma.exit_crit_edge, %if.end20.i.i.mtk_start_dma.exit_crit_edge, %if.then15.i.i.mtk_start_dma.exit_crit_edge, %if.then14.i.i.i.mtk_start_dma.exit_crit_edge, %if.end.i74.i.i.mtk_start_dma.exit_crit_edge, %if.end6.i.i.mtk_start_dma.exit_crit_edge, %dma_map_single_attrs.exit.i.i.i.mtk_start_dma.exit_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i, %if.end.i.i.i.mtk_start_dma.exit_crit_edge, %if.then1.i.i.mtk_start_dma.exit_crit_edge, %mtk_dma_busy_wait.exit.i.i
  %retval.0.i.ph.i = phi i32 [ %call28.2.i.i, %for.cond.1.i.i.mtk_start_dma.exit_crit_edge ], [ %call28.1.i.i, %for.cond.i.i.mtk_start_dma.exit_crit_edge ], [ %call28.i.i, %for.body.preheader.i.i.mtk_start_dma.exit_crit_edge ], [ -12, %if.end6.i.i.mtk_start_dma.exit_crit_edge ], [ -12, %if.end.i74.i.i.mtk_start_dma.exit_crit_edge ], [ -12, %if.then14.i.i.i.mtk_start_dma.exit_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread.i.i.i ], [ -12, %dma_map_single_attrs.exit.i.i.i.mtk_start_dma.exit_crit_edge ], [ -12, %if.end.i.i.i.mtk_start_dma.exit_crit_edge ], [ -12, %if.then1.i.i.mtk_start_dma.exit_crit_edge ], [ %call21.i.i, %if.end20.i.i.mtk_start_dma.exit_crit_edge ], [ %call16.i.i, %if.then15.i.i.mtk_start_dma.exit_crit_edge ], [ -16, %mtk_dma_busy_wait.exit.i.i ]
  tail call fastcc void @mtk_dma_free(ptr noundef %1) #20
  br label %cleanup18

if.end8:                                          ; preds = %if.else.i, %if.then1.i
  %186 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %soc.i.i.i, align 64
  %offload_version = getelementptr inbounds %struct.mtk_soc_data, ptr %187, i32 0, i32 4
  %188 = ptrtoint ptr %offload_version to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %offload_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool9.not = icmp eq i8 %189, 0
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %land.lhs.true

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %ppe = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 44
  %call10 = tail call i32 @mtk_ppe_start(ptr noundef %ppe) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  %spec.select = select i1 %cmp, i32 17476, i32 0
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end8.if.end13_crit_edge
  %gdm_config.0 = phi i32 [ 0, %if.end8.if.end13_crit_edge ], [ %spec.select, %land.lhs.true ]
  %190 = ptrtoint ptr %soc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %soc.i.i.i, align 64
  %caps.i41 = getelementptr inbounds %struct.mtk_soc_data, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %caps.i41 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %caps.i41, align 4
  %and.i42 = and i32 %193, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %cmp.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %cmp.not.i43, label %land.lhs.true.i, label %if.end13.mtk_gdm_config.exit_crit_edge

if.end13.mtk_gdm_config.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_gdm_config.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %194 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %195, i32 1280
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #20, !srcloc !352
  %and2.i = and i32 %196, -7405568
  %or.i = or i32 %and2.i, %gdm_config.0
  %or3.i = or i32 %or.i, 7340032
  %netdev.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 7
  %197 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %netdev.i, align 128
  %tobool4.not.i = icmp eq ptr %198, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end11.1.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end11.1.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.1.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 75
  %199 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dsa_ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %200, null
  br i1 %tobool.not.i.i, label %land.lhs.true5.i.if.end11.1.i_crit_edge, label %netdev_uses_dsa.exit.i

land.lhs.true5.i.if.end11.1.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11.1.i

netdev_uses_dsa.exit.i:                           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #22
  %rcv.i.i = getelementptr inbounds %struct.dsa_port, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rcv.i.i, align 4
  %tobool2.i.not.i = icmp eq ptr %202, null
  %or10.i = or i32 %or.i, 24117248
  %spec.select.i = select i1 %tobool2.i.not.i, i32 %or3.i, i32 %or10.i
  br label %if.end11.1.i

if.end11.1.i:                                     ; preds = %netdev_uses_dsa.exit.i, %land.lhs.true5.i.if.end11.1.i_crit_edge, %land.lhs.true.i.if.end11.1.i_crit_edge
  %val.0.i = phi i32 [ %or3.i, %land.lhs.true.i.if.end11.1.i_crit_edge ], [ %or3.i, %land.lhs.true5.i.if.end11.1.i_crit_edge ], [ %spec.select.i, %netdev_uses_dsa.exit.i ]
  %203 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %204, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %val.0.i) #20, !srcloc !351
  %205 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %206, i32 5376
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #20, !srcloc !352
  %and2.1.i = and i32 %207, -7405568
  %or.1.i = or i32 %gdm_config.0, %and2.1.i
  %or3.1.i = or i32 %or.1.i, 7340032
  %208 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i29.1.i = getelementptr i8, ptr %209, i32 5376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.1.i, i32 %or3.1.i) #20, !srcloc !351
  %210 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %211, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 1) #20, !srcloc !351
  %212 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %213, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 0) #20, !srcloc !351
  br label %mtk_gdm_config.exit

mtk_gdm_config.exit:                              ; preds = %if.end11.1.i, %if.end13.mtk_gdm_config.exit_crit_edge
  %tx_napi = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 21
  tail call void @napi_enable(ptr noundef %tx_napi) #20
  %rx_napi = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 22
  tail call void @napi_enable(ptr noundef %rx_napi) #20
  %tx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %tx_int_mask_reg.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 40
  %214 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tx_int_mask_reg.i, align 16
  %216 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %217, i32 %215
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #20, !srcloc !352
  %or.i47 = or i32 %218, 268435456
  %219 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %tx_int_mask_reg.i, align 16
  %221 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %222, i32 %220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i47) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i) #20
  %rx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 4
  %call2.i48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %223 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %224, i32 2600
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #20, !srcloc !352
  %or.i51 = or i32 %225, 1073741824
  %226 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i52 = getelementptr i8, ptr %227, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i52, i32 %or.i51) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i48) #20
  %call.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_refcnt, i32 noundef 4) #20
  %228 = ptrtoint ptr %dma_refcnt to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile i32 1, ptr %dma_refcnt, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %call.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_refcnt, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %dma_refcnt, i32 1, i32 3, i32 1) #20
  %229 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_refcnt, ptr %dma_refcnt, i32 1, ptr elementtype(i32) %dma_refcnt) #20, !srcloc !378
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %229, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i56, !prof !370

if.else.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i56:                                  ; preds = %if.else
  %add.i.i.i55 = add i32 %asmresult.i.i.i.i.i, 1
  %230 = or i32 %add.i.i.i55, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %230)
  %.not.i.i.i = icmp sgt i32 %230, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i56.if.end16_crit_edge, label %if.else.i.i.i56.if.end15.sink.split.i.i.i_crit_edge, !prof !357

if.else.i.i.i56.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i56
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i56.if.end16_crit_edge:               ; preds = %if.else.i.i.i56
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i56.if.end15.sink.split.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i56.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dma_refcnt, i32 noundef %.sink.i.i.i) #20
  br label %if.end16

if.end16:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i56.if.end16_crit_edge, %mtk_gdm_config.exit
  %231 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %phylink, align 4
  tail call void @phylink_start(ptr noundef %232) #20
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %233 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %234, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  br label %cleanup18

cleanup18:                                        ; preds = %if.end16, %mtk_start_dma.exit, %if.then
  %retval.1 = phi i32 [ %call1, %if.then ], [ 0, %if.end16 ], [ %retval.0.i.ph.i, %mtk_start_dma.exit ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_stop_dma(ptr noundef %eth, i32 noundef %glo_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %page_lock = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %page_lock) #20
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %glo_cfg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %and = and i32 %2, -70
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %4, i32 %glo_cfg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %and) #20, !srcloc !351
  tail call void @_raw_spin_unlock_bh(ptr noundef %page_lock) #20
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %6, i32 %glo_cfg
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #20, !srcloc !352
  %and3 = and i32 %7, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.then

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 20) #20
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.1 = getelementptr i8, ptr %9, i32 %glo_cfg
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.1) #20, !srcloc !352
  %and3.1 = and i32 %10, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1)
  %tobool.not.1 = icmp eq i32 %and3.1, 0
  br i1 %tobool.not.1, label %if.then.for.end_crit_edge, label %if.then.1

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.1:                                        ; preds = %if.then
  tail call void @msleep(i32 noundef 20) #20
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.2 = getelementptr i8, ptr %12, i32 %glo_cfg
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.2) #20, !srcloc !352
  %and3.2 = and i32 %13, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2)
  %tobool.not.2 = icmp eq i32 %and3.2, 0
  br i1 %tobool.not.2, label %if.then.1.for.end_crit_edge, label %if.then.2

if.then.1.for.end_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.2:                                        ; preds = %if.then.1
  tail call void @msleep(i32 noundef 20) #20
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.3 = getelementptr i8, ptr %15, i32 %glo_cfg
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.3) #20, !srcloc !352
  %and3.3 = and i32 %16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3)
  %tobool.not.3 = icmp eq i32 %and3.3, 0
  br i1 %tobool.not.3, label %if.then.2.for.end_crit_edge, label %if.then.3

if.then.2.for.end_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.3:                                        ; preds = %if.then.2
  tail call void @msleep(i32 noundef 20) #20
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.4 = getelementptr i8, ptr %18, i32 %glo_cfg
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.4) #20, !srcloc !352
  %and3.4 = and i32 %19, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.4)
  %tobool.not.4 = icmp eq i32 %and3.4, 0
  br i1 %tobool.not.4, label %if.then.3.for.end_crit_edge, label %if.then.4

if.then.3.for.end_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.4:                                        ; preds = %if.then.3
  tail call void @msleep(i32 noundef 20) #20
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.5 = getelementptr i8, ptr %21, i32 %glo_cfg
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.5) #20, !srcloc !352
  %and3.5 = and i32 %22, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.5)
  %tobool.not.5 = icmp eq i32 %and3.5, 0
  br i1 %tobool.not.5, label %if.then.4.for.end_crit_edge, label %if.then.5

if.then.4.for.end_crit_edge:                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.5:                                        ; preds = %if.then.4
  tail call void @msleep(i32 noundef 20) #20
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.6 = getelementptr i8, ptr %24, i32 %glo_cfg
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.6) #20, !srcloc !352
  %and3.6 = and i32 %25, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.6)
  %tobool.not.6 = icmp eq i32 %and3.6, 0
  br i1 %tobool.not.6, label %if.then.5.for.end_crit_edge, label %if.then.6

if.then.5.for.end_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.6:                                        ; preds = %if.then.5
  tail call void @msleep(i32 noundef 20) #20
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.7 = getelementptr i8, ptr %27, i32 %glo_cfg
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.7) #20, !srcloc !352
  %and3.7 = and i32 %28, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.7)
  %tobool.not.7 = icmp eq i32 %and3.7, 0
  br i1 %tobool.not.7, label %if.then.6.for.end_crit_edge, label %if.then.7

if.then.6.for.end_crit_edge:                      ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.7:                                        ; preds = %if.then.6
  tail call void @msleep(i32 noundef 20) #20
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.8 = getelementptr i8, ptr %30, i32 %glo_cfg
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.8) #20, !srcloc !352
  %and3.8 = and i32 %31, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.8)
  %tobool.not.8 = icmp eq i32 %and3.8, 0
  br i1 %tobool.not.8, label %if.then.7.for.end_crit_edge, label %if.then.8

if.then.7.for.end_crit_edge:                      ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.8:                                        ; preds = %if.then.7
  tail call void @msleep(i32 noundef 20) #20
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.9 = getelementptr i8, ptr %33, i32 %glo_cfg
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.9) #20, !srcloc !352
  %and3.9 = and i32 %34, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.9)
  %tobool.not.9 = icmp eq i32 %and3.9, 0
  br i1 %tobool.not.9, label %if.then.8.for.end_crit_edge, label %if.then.9

if.then.8.for.end_crit_edge:                      ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.then.9:                                        ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @msleep(i32 noundef 20) #20
  br label %for.end

for.end:                                          ; preds = %if.then.9, %if.then.8.for.end_crit_edge, %if.then.7.for.end_crit_edge, %if.then.6.for.end_crit_edge, %if.then.5.for.end_crit_edge, %if.then.4.for.end_crit_edge, %if.then.3.for.end_crit_edge, %if.then.2.for.end_crit_edge, %if.then.1.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dma_free(ptr noundef %eth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 7, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #20
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #20
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i.1, align 128
  %state.i.i.1 = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.1) #20
  %dql.i.i.1 = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i.1) #20
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %scratch_ring = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 23
  %8 = ptrtoint ptr %scratch_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scratch_ring, align 8
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.inc.1.if.end8_crit_edge, label %if.then4

for.inc.1.if.end8_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then4:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eth, align 128
  %phy_scratch_ring = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 24
  %12 = ptrtoint ptr %phy_scratch_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_scratch_ring, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 8192, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #20
  %14 = ptrtoint ptr %scratch_ring to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %scratch_ring, align 8
  %15 = ptrtoint ptr %phy_scratch_ring to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %phy_scratch_ring, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %for.inc.1.if.end8_crit_edge
  %tx_ring.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 18
  %buf.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end8.if.end.i_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr %struct.mtk_tx_buf, ptr %19, i32 %i.032.i
  tail call fastcc void @mtk_tx_unmap(ptr noundef %eth, ptr noundef %arrayidx.i, i1 noundef zeroext false) #20
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %21) #20
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %buf.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i, %if.end8.if.end.i_crit_edge
  %23 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_ring.i, align 4
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eth, align 128
  %phys.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 18, i32 2
  %27 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %26, i32 noundef 8192, ptr noundef nonnull %24, i32 noundef %28, i32 noundef 0) #20
  %29 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %tx_ring.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %dma_pdma.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 18, i32 9
  %30 = ptrtoint ptr %dma_pdma.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_pdma.i, align 4
  %tobool9.not.i = icmp eq ptr %31, null
  br i1 %tobool9.not.i, label %if.end8.i.mtk_tx_clean.exit_crit_edge, label %if.then10.i

if.end8.i.mtk_tx_clean.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_tx_clean.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #22
  %32 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eth, align 128
  %phys_pdma.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 18, i32 10
  %34 = ptrtoint ptr %phys_pdma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phys_pdma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef 8192, ptr noundef nonnull %31, i32 noundef %35, i32 noundef 0) #20
  %36 = ptrtoint ptr %dma_pdma.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %dma_pdma.i, align 4
  br label %mtk_tx_clean.exit

mtk_tx_clean.exit:                                ; preds = %if.then10.i, %if.end8.i.mtk_tx_clean.exit_crit_edge
  %rx_ring = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 19
  tail call fastcc void @mtk_rx_clean(ptr noundef %eth, ptr noundef %rx_ring)
  %rx_ring_qdma = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 20
  tail call fastcc void @mtk_rx_clean(ptr noundef %eth, ptr noundef %rx_ring_qdma)
  %hwlro = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 16
  %37 = ptrtoint ptr %hwlro to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hwlro, align 4, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool10.not = icmp eq i8 %38, 0
  br i1 %tobool10.not, label %mtk_tx_clean.exit.if.end20_crit_edge, label %if.then11

mtk_tx_clean.exit.if.end20_crit_edge:             ; preds = %mtk_tx_clean.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

if.then11:                                        ; preds = %mtk_tx_clean.exit
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 2432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 469762048) #20, !srcloc !351
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %42, i32 2432
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %43)
  %tobool.not.i45 = icmp ult i32 %43, 536870912
  br i1 %tobool.not.i45, label %if.then11.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.i

if.then11.mtk_hwlro_rx_uninit.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.i:                                        ; preds = %if.then11
  tail call void @msleep(i32 noundef 20) #20
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.1.i = getelementptr i8, ptr %45, i32 2432
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.1.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %46)
  %tobool.not.1.i = icmp ult i32 %46, 536870912
  br i1 %tobool.not.1.i, label %if.then.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.1.i

if.then.i.mtk_hwlro_rx_uninit.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.1.i:                                      ; preds = %if.then.i
  tail call void @msleep(i32 noundef 20) #20
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.2.i = getelementptr i8, ptr %48, i32 2432
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.2.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %49)
  %tobool.not.2.i = icmp ult i32 %49, 536870912
  br i1 %tobool.not.2.i, label %if.then.1.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.2.i

if.then.1.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.2.i:                                      ; preds = %if.then.1.i
  tail call void @msleep(i32 noundef 20) #20
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.3.i = getelementptr i8, ptr %51, i32 2432
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.3.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %52)
  %tobool.not.3.i = icmp ult i32 %52, 536870912
  br i1 %tobool.not.3.i, label %if.then.2.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.3.i

if.then.2.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.3.i:                                      ; preds = %if.then.2.i
  tail call void @msleep(i32 noundef 20) #20
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.4.i = getelementptr i8, ptr %54, i32 2432
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.4.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %55)
  %tobool.not.4.i = icmp ult i32 %55, 536870912
  br i1 %tobool.not.4.i, label %if.then.3.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.4.i

if.then.3.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.4.i:                                      ; preds = %if.then.3.i
  tail call void @msleep(i32 noundef 20) #20
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.5.i = getelementptr i8, ptr %57, i32 2432
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.5.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %58)
  %tobool.not.5.i = icmp ult i32 %58, 536870912
  br i1 %tobool.not.5.i, label %if.then.4.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.5.i

if.then.4.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.5.i:                                      ; preds = %if.then.4.i
  tail call void @msleep(i32 noundef 20) #20
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.6.i = getelementptr i8, ptr %60, i32 2432
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.6.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %61)
  %tobool.not.6.i = icmp ult i32 %61, 536870912
  br i1 %tobool.not.6.i, label %if.then.5.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.6.i

if.then.5.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.6.i:                                      ; preds = %if.then.5.i
  tail call void @msleep(i32 noundef 20) #20
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.7.i = getelementptr i8, ptr %63, i32 2432
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.7.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %64)
  %tobool.not.7.i = icmp ult i32 %64, 536870912
  br i1 %tobool.not.7.i, label %if.then.6.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.7.i

if.then.6.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.7.i:                                      ; preds = %if.then.6.i
  tail call void @msleep(i32 noundef 20) #20
  %65 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.8.i = getelementptr i8, ptr %66, i32 2432
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.8.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %67)
  %tobool.not.8.i = icmp ult i32 %67, 536870912
  br i1 %tobool.not.8.i, label %if.then.7.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.8.i

if.then.7.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.8.i:                                      ; preds = %if.then.7.i
  tail call void @msleep(i32 noundef 20) #20
  %68 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.9.i = getelementptr i8, ptr %69, i32 2432
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.9.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %70)
  %tobool.not.9.i = icmp ult i32 %70, 536870912
  br i1 %tobool.not.9.i, label %if.then.8.i.mtk_hwlro_rx_uninit.exit_crit_edge, label %if.then.9.i

if.then.8.i.mtk_hwlro_rx_uninit.exit_crit_edge:   ; preds = %if.then.8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_rx_uninit.exit

if.then.9.i:                                      ; preds = %if.then.8.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @msleep(i32 noundef 20) #20
  br label %mtk_hwlro_rx_uninit.exit

mtk_hwlro_rx_uninit.exit:                         ; preds = %if.then.9.i, %if.then.8.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.7.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.6.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.5.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.4.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.3.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.2.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.1.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then.i.mtk_hwlro_rx_uninit.exit_crit_edge, %if.then11.mtk_hwlro_rx_uninit.exit_crit_edge
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %72, i32 2924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #20, !srcloc !351
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.1.i = getelementptr i8, ptr %74, i32 2988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.1.i, i32 0) #20, !srcloc !351
  %75 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.2.i = getelementptr i8, ptr %76, i32 3052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.2.i, i32 0) #20, !srcloc !351
  %77 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %78, i32 2432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 0) #20, !srcloc !351
  %arrayidx16 = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 19, i32 1
  tail call fastcc void @mtk_rx_clean(ptr noundef %eth, ptr noundef %arrayidx16)
  %arrayidx16.1 = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 19, i32 2
  tail call fastcc void @mtk_rx_clean(ptr noundef %eth, ptr noundef %arrayidx16.1)
  %arrayidx16.2 = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 19, i32 3
  tail call fastcc void @mtk_rx_clean(ptr noundef %eth, ptr noundef %arrayidx16.2)
  br label %if.end20

if.end20:                                         ; preds = %mtk_hwlro_rx_uninit.exit, %mtk_tx_clean.exit.if.end20_crit_edge
  %scratch_head = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 25
  %79 = ptrtoint ptr %scratch_head to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %scratch_head, align 64
  tail call void @kfree(ptr noundef %80) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ppe_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_rx_clean(ptr nocapture noundef readonly %eth, ptr nocapture noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end28_crit_edge, label %for.cond.preheader

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28

for.cond.preheader:                               ; preds = %land.lhs.true
  %dma_size = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %dma_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp52.not = icmp eq i16 %5, 0
  br i1 %cmp52.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buf_size = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.053
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 4
  %arrayidx7 = getelementptr %struct.mtk_rx_dma, ptr %11, i32 %i.053
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eth, align 128
  %16 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %buf_size, align 2
  %conv14 = zext i16 %17 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %13, i32 noundef %conv14, i32 noundef 2, i32 noundef 0) #20
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %arrayidx16 = getelementptr ptr, ptr %19, i32 %i.053
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx16, align 4
  tail call void @page_frag_free(ptr noundef %21) #20
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %22 = ptrtoint ptr %dma_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dma_size, align 4
  %conv = zext i16 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %25) #20
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %data, align 4
  br label %if.end19

if.end19:                                         ; preds = %for.end, %entry.if.end19_crit_edge
  %27 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load ptr, ptr %ring, align 4
  %tobool21.not = icmp eq ptr %.pr, null
  br i1 %tobool21.not, label %if.end19.if.end28_crit_edge, label %if.then22

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  %28 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eth, align 128
  %dma_size24 = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring, i32 0, i32 5
  %30 = ptrtoint ptr %dma_size24 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dma_size24, align 4
  %conv25 = zext i16 %31 to i32
  %mul = shl nuw nsw i32 %conv25, 4
  %phys = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring, i32 0, i32 2
  %32 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %mul, ptr noundef nonnull %.pr, i32 noundef %33, i32 noundef 0) #20
  %34 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ring, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end19.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_tx_unmap(ptr nocapture noundef readonly %eth, ptr nocapture noundef %tx_buf, i1 noundef zeroext %napi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 30
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and1 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %6 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eth, align 128
  %dma_addr0 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 2
  %8 = ptrtoint ptr %dma_addr0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr0, align 4
  %dma_len0 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 3
  %10 = ptrtoint ptr %dma_len0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_len0, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #20
  br label %if.end24

if.else:                                          ; preds = %if.then
  %and4 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end24_crit_edge, label %if.then6

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eth, align 128
  %dma_addr08 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 2
  %14 = ptrtoint ptr %dma_addr08 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr08, align 4
  %dma_len09 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 3
  %16 = ptrtoint ptr %dma_len09 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_len09, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef 0) #20
  br label %if.end24

if.else11:                                        ; preds = %entry
  %dma_len012 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 3
  %18 = ptrtoint ptr %dma_len012 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_len012, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.else11.if.end18_crit_edge, label %if.then14

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eth, align 128
  %dma_addr016 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 2
  %22 = ptrtoint ptr %dma_addr016 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_addr016, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %23, i32 noundef %19, i32 noundef 1, i32 noundef 0) #20
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else11.if.end18_crit_edge
  %dma_len1 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 5
  %24 = ptrtoint ptr %dma_len1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool19.not = icmp eq i32 %25, 0
  br i1 %tobool19.not, label %if.end18.if.end24_crit_edge, label %if.then20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eth, align 128
  %dma_addr1 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 4
  %28 = ptrtoint ptr %dma_addr1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr1, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %29, i32 noundef %25, i32 noundef 1, i32 noundef 0) #20
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end18.if.end24_crit_edge, %if.then6, %if.else.if.end24_crit_edge, %if.then2
  %flags25 = getelementptr inbounds %struct.mtk_tx_buf, ptr %tx_buf, i32 0, i32 1
  %30 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags25, align 4
  %31 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_buf, align 4
  %magicptr = ptrtoint ptr %32 to i32
  %33 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %magicptr, label %if.then29 [
    i32 0, label %if.end24.if.end37_crit_edge
    i32 -1, label %if.end24.if.end37_crit_edge63
  ]

if.end24.if.end37_crit_edge63:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

if.then29:                                        ; preds = %if.end24
  br i1 %napi, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @napi_consume_skb(ptr noundef nonnull %32, i32 noundef 1) #20
  br label %if.end37

if.else34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__dev_kfree_skb_any(ptr noundef %32, i32 noundef 1) #20
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31, %if.end24.if.end37_crit_edge, %if.end24.if.end37_crit_edge63
  %34 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %tx_buf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ppe_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_rx_alloc(ptr noundef %eth, i32 noundef %ring_no, i32 noundef %rx_flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rx_flag)
  %cmp = icmp eq i32 %rx_flag, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ring_no)
  %tobool.not = icmp eq i32 %ring_no, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup85_crit_edge

if.then.cleanup85_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup85

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %rx_ring_qdma = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 20
  br label %mtk_max_buf_size.exit

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 19, i32 %ring_no
  br label %mtk_max_buf_size.exit

mtk_max_buf_size.exit:                            ; preds = %if.else, %if.end
  %ring.0 = phi ptr [ %rx_ring_qdma, %if.end ], [ %arrayidx, %if.else ]
  %offset.0 = phi i32 [ 4096, %if.end ], [ 0, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_flag)
  %cmp3 = icmp eq i32 %rx_flag, 1
  %.148 = select i1 %cmp3, i32 8, i32 512
  %add3.i = select i1 %cmp3, i32 12800, i32 2560
  %conv = trunc i32 %add3.i to i16
  %frag_size = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 3
  %0 = ptrtoint ptr %frag_size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %frag_size, align 4
  %1 = trunc i32 %add3.i to i16
  %conv10 = add nsw i16 %1, -386
  %buf_size = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 4
  %2 = ptrtoint ptr %buf_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv10, ptr %buf_size, align 2
  %3 = shl nuw nsw i32 %.148, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #24
  %data = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %data, align 4
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %mtk_max_buf_size.exit.cleanup85_crit_edge, label %mtk_max_buf_size.exit.for.body_crit_edge

mtk_max_buf_size.exit.for.body_crit_edge:         ; preds = %mtk_max_buf_size.exit
  br label %for.body

mtk_max_buf_size.exit.cleanup85_crit_edge:        ; preds = %mtk_max_buf_size.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup85

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc, %.148
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %mtk_max_buf_size.exit.for.body_crit_edge
  %i.0175 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %mtk_max_buf_size.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %frag_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %frag_size, align 4
  %conv19 = zext i16 %6 to i32
  %call.i = tail call ptr @__netdev_alloc_frag_align(i32 noundef %conv19, i32 noundef -1) #20
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %arrayidx22 = getelementptr ptr, ptr %8, i32 %i.0175
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %arrayidx22, align 4
  %10 = load ptr, ptr %data, align 4
  %arrayidx24 = getelementptr ptr, ptr %10, i32 %i.0175
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %for.body.cleanup85_crit_edge, label %for.cond

for.body.cleanup85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup85

for.end:                                          ; preds = %for.cond
  %13 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eth, align 128
  %mul = shl nuw nsw i32 %.148, 4
  %phys = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 2
  %call.i151 = tail call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef %mul, ptr noundef %phys, i32 noundef 2592, i32 noundef 0) #20
  %15 = ptrtoint ptr %ring.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i151, ptr %ring.0, align 4
  %tobool30.not = icmp eq ptr %call.i151, null
  br i1 %tobool30.not, label %for.end.cleanup85_crit_edge, label %for.cond33.preheader

for.end.cleanup85_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup85

for.cond33.preheader:                             ; preds = %for.end
  %ip_align = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 43
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 30
  br label %for.body36

for.body36:                                       ; preds = %for.inc66.for.body36_crit_edge, %for.cond33.preheader
  %i.1176 = phi i32 [ 0, %for.cond33.preheader ], [ %inc67, %for.inc66.for.body36_crit_edge ]
  %16 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eth, align 128
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %arrayidx39 = getelementptr ptr, ptr %19, i32 %i.1176
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 128
  %22 = ptrtoint ptr %ip_align to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip_align, align 4
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i32 %23
  %24 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %buf_size, align 2
  %call.i152 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr40) #20
  br i1 %call.i152, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %for.body36
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !357

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %17) #20
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.i153, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i

if.end.i.i153:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i153, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i154 = phi ptr [ %29, %if.end.i.i153 ], [ %27, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef %call16.i, ptr noundef %retval.0.i.i154) #20
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %30 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %eth, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %31, i32 noundef -1) #20
  br label %cleanup85

dma_map_single_attrs.exit:                        ; preds = %for.body36
  %conv42 = zext i16 %25 to i32
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %add.ptr40, i32 noundef %conv42) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %add.ptr40 to i32
  %sub.i = add i32 %33, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %32, i32 %shr.i
  %and.i = and i32 %33, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv42, i32 noundef 2, i32 noundef 0) #20
  %34 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %eth, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %35, i32 noundef %call41.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i155 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i155, label %dma_map_single_attrs.exit.cleanup85_crit_edge, label %if.end50

dma_map_single_attrs.exit.cleanup85_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup85

if.end50:                                         ; preds = %dma_map_single_attrs.exit
  %36 = ptrtoint ptr %ring.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring.0, align 4
  %arrayidx52 = getelementptr %struct.mtk_rx_dma, ptr %37, i32 %i.1176
  %38 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call41.i, ptr %arrayidx52, align 4
  %39 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %caps, align 4
  %and = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp53.not = icmp eq i32 %and, 0
  br i1 %cmp53.not, label %if.else58, label %if.end50.for.inc66_crit_edge

if.end50.for.inc66_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc66

if.else58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  %43 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %buf_size, align 2
  %45 = and i16 %44, 16383
  %and61 = zext i16 %45 to i32
  %shl = shl nuw nsw i32 %and61, 16
  br label %for.inc66

for.inc66:                                        ; preds = %if.else58, %if.end50.for.inc66_crit_edge
  %shl.sink = phi i32 [ %shl, %if.else58 ], [ 1073741824, %if.end50.for.inc66_crit_edge ]
  %46 = ptrtoint ptr %ring.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring.0, align 4
  %rxd264 = getelementptr %struct.mtk_rx_dma, ptr %47, i32 %i.1176, i32 1
  %48 = ptrtoint ptr %rxd264 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl.sink, ptr %rxd264, align 4
  %inc67 = add nuw nsw i32 %i.1176, 1
  %exitcond181.not = icmp eq i32 %inc67, %.148
  br i1 %exitcond181.not, label %for.end68, label %for.inc66.for.body36_crit_edge

for.inc66.for.body36_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body36

for.end68:                                        ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #22
  %conv69 = trunc i32 %.148 to i16
  %dma_size = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 5
  %49 = ptrtoint ptr %dma_size to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv69, ptr %dma_size, align 4
  %calc_idx_update = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 6
  %50 = ptrtoint ptr %calc_idx_update to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %calc_idx_update, align 2
  %conv70 = add nsw i16 %conv69, -1
  %calc_idx = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 7
  %51 = ptrtoint ptr %calc_idx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv70, ptr %calc_idx, align 4
  %mul71 = shl i32 %ring_no, 4
  %add = add i32 %mul71, 2312
  %crx_idx_reg = getelementptr inbounds %struct.mtk_rx_ring, ptr %ring.0, i32 0, i32 8
  %52 = ptrtoint ptr %crx_idx_reg to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add, ptr %crx_idx_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !379
  tail call void @arm_heavy_mb() #20
  %53 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phys, align 4
  %add74 = add i32 %offset.0, %mul71
  %add75 = add i32 %add74, 2304
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %56, i32 %add75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %54) #20, !srcloc !351
  %add78 = add i32 %add74, 2308
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %58, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %.148) #20, !srcloc !351
  %59 = ptrtoint ptr %calc_idx to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %calc_idx, align 4
  %conv80 = zext i16 %60 to i32
  %61 = ptrtoint ptr %crx_idx_reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crx_idx_reg, align 4
  %add82 = add i32 %62, %offset.0
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %64, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %conv80) #20, !srcloc !351
  %shl83 = shl i32 65536, %ring_no
  %add84 = or i32 %offset.0, 2568
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %66, i32 %add84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %shl83) #20, !srcloc !351
  br label %cleanup85

cleanup85:                                        ; preds = %for.end68, %dma_map_single_attrs.exit.cleanup85_crit_edge, %dma_map_single_attrs.exit.thread, %for.end.cleanup85_crit_edge, %for.body.cleanup85_crit_edge, %mtk_max_buf_size.exit.cleanup85_crit_edge, %if.then.cleanup85_crit_edge
  %retval.2 = phi i32 [ 0, %for.end68 ], [ -22, %if.then.cleanup85_crit_edge ], [ -12, %mtk_max_buf_size.exit.cleanup85_crit_edge ], [ -12, %for.end.cleanup85_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ], [ -12, %dma_map_single_attrs.exit.cleanup85_crit_edge ], [ -12, %for.body.cleanup85_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_frag_align(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mac_pcs_get_state(ptr nocapture noundef readonly %config, ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -24
  %hw = getelementptr i8, ptr %config, i32 24
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %mul = shl i32 %3, 8
  %add = add i32 %mul, 65800
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %7 = trunc i32 %6 to i8
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %link, align 4
  %bf.shl = shl i8 %7, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %link, align 4
  %and1 = lshr i32 %6, 1
  %shr = and i32 %and1, 1
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %duplex, align 4
  %and2 = and i32 %6, 12
  %10 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %and2, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb3
    i32 8, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ -1, %sw.default ], [ 1000, %sw.bb5 ], [ 100, %sw.bb3 ], [ 10, %entry.sw.epilog_crit_edge ]
  %speed7 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %11 = ptrtoint ptr %speed7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %speed7, align 4
  %pause = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %12 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pause, align 4
  %and8 = and i32 %13, 3
  %and9 = lshr i32 %6, 5
  %14 = and i32 %and9, 1
  %15 = or i32 %and8, %14
  %and11 = lshr i32 %6, 3
  %16 = and i32 %and11, 2
  %17 = or i32 %16, %15
  store i32 %17, ptr %pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mac_config(ptr nocapture noundef %config, i32 noundef %mode, ptr noundef %state) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -24
  %hw = getelementptr i8, ptr %config, i32 24
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #20
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !361
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 30
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 4
  %and = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %land.lhs.true, label %entry.if.end107_crit_edge

entry.if.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end107

land.lhs.true:                                    ; preds = %entry
  %interface = getelementptr i8, ptr %config, i32 -20
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface, align 4
  %interface1 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %interface1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interface1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp2.not = icmp eq i32 %8, %10
  br i1 %cmp2.not, label %land.lhs.true.if.end107_crit_edge, label %if.then

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end107

if.then:                                          ; preds = %land.lhs.true
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %10, label %if.then.do.end158_crit_edge [
    i32 19, label %sw.bb
    i32 12, label %if.then.sw.bb12_crit_edge
    i32 11, label %if.then.sw.bb12_crit_edge261
    i32 10, label %if.then.sw.bb12_crit_edge262
    i32 9, label %if.then.sw.bb12_crit_edge263
    i32 2, label %if.then.sw.bb12_crit_edge264
    i32 6, label %if.then.sw.bb12_crit_edge265
    i32 7, label %if.then.sw.bb12_crit_edge266
    i32 21, label %if.then.sw.bb23_crit_edge
    i32 22, label %if.then.sw.bb23_crit_edge267
    i32 4, label %if.then.sw.bb23_crit_edge268
    i32 3, label %sw.bb35
  ]

if.then.sw.bb23_crit_edge268:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb23

if.then.sw.bb23_crit_edge267:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb23

if.then.sw.bb23_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb23

if.then.sw.bb12_crit_edge266:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

if.then.sw.bb12_crit_edge265:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

if.then.sw.bb12_crit_edge264:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

if.then.sw.bb12_crit_edge263:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

if.then.sw.bb12_crit_edge262:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

if.then.sw.bb12_crit_edge261:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

if.then.sw.bb12_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

if.then.do.end158_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end158

sw.bb:                                            ; preds = %if.then
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %and8 = and i32 %6, 524290
  call void @__sanitizer_cov_trace_const_cmp4(i32 524290, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 524290
  %or.cond = select i1 %tobool.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %sw.bb.sw.bb12_crit_edge, label %sw.bb.do.end158_crit_edge

sw.bb.do.end158_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end158

sw.bb.sw.bb12_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb.sw.bb12_crit_edge, %if.then.sw.bb12_crit_edge, %if.then.sw.bb12_crit_edge261, %if.then.sw.bb12_crit_edge262, %if.then.sw.bb12_crit_edge263, %if.then.sw.bb12_crit_edge264, %if.then.sw.bb12_crit_edge265, %if.then.sw.bb12_crit_edge266
  %and15 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16.not = icmp eq i32 %and15, 0
  br i1 %cmp16.not, label %sw.bb12.sw.epilog_crit_edge, label %if.then17

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then17:                                        ; preds = %sw.bb12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %call = tail call i32 @mtk_gmac_rgmii_path_setup(ptr noundef %1, i32 noundef %15) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %if.then17.sw.epilog_crit_edge, label %if.then17.do.end165_crit_edge

if.then17.do.end165_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end165

if.then17.sw.epilog_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then.sw.bb23_crit_edge, %if.then.sw.bb23_crit_edge267, %if.then.sw.bb23_crit_edge268
  %and26 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %sw.bb23.sw.epilog_crit_edge, label %if.then28

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb23
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %call30 = tail call i32 @mtk_gmac_sgmii_path_setup(ptr noundef %1, i32 noundef %17) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then28.sw.epilog_crit_edge, label %if.then28.do.end165_crit_edge

if.then28.do.end165_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end165

if.then28.sw.epilog_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then
  %and38 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %cmp39.not = icmp eq i32 %and38, 0
  br i1 %cmp39.not, label %sw.bb35.sw.epilog_crit_edge, label %if.then40

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then40:                                        ; preds = %sw.bb35
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %call42 = tail call i32 @mtk_gmac_gephy_path_setup(ptr noundef %1, i32 noundef %19) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then40.sw.epilog_crit_edge, label %if.then40.do.end165_crit_edge

if.then40.do.end165_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end165

if.then40.sw.epilog_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then40.sw.epilog_crit_edge, %sw.bb35.sw.epilog_crit_edge, %if.then28.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %if.then17.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool48.not = icmp eq i32 %21, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %sw.epilog.if.end83thread-pre-split_crit_edge

sw.epilog.if.end83thread-pre-split_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83thread-pre-split

land.lhs.true49:                                  ; preds = %sw.epilog
  %22 = ptrtoint ptr %interface1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interface1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp51.not = icmp eq i32 %23, 4
  br i1 %cmp51.not, label %land.lhs.true49.sw.epilog93_crit_edge, label %land.lhs.true52

land.lhs.true49.sw.epilog93_crit_edge:            ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog93

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %24 = add i32 %23, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %land.lhs.true52.if.end83_crit_edge, label %land.lhs.true55

land.lhs.true52.if.end83_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %soc57 = getelementptr inbounds %struct.mtk_eth, ptr %27, i32 0, i32 30
  %28 = ptrtoint ptr %soc57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc57, align 64
  %caps58 = getelementptr inbounds %struct.mtk_soc_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %caps58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps58, align 4
  %and59 = and i32 %31, 524290
  call void @__sanitizer_cov_trace_const_cmp4(i32 524290, i32 %and59)
  %cmp60 = icmp eq i32 %and59, 524290
  br i1 %cmp60, label %if.then61, label %land.lhs.true55.if.end83thread-pre-split_crit_edge

land.lhs.true55.if.end83thread-pre-split_crit_edge: ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83thread-pre-split

if.then61:                                        ; preds = %land.lhs.true55
  %and65 = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %cmp66.not = icmp eq i32 %and65, 0
  br i1 %cmp66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.then61
  %call70 = tail call fastcc i32 @mt7621_gmac0_rgmii_adjust(ptr noundef %27, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then67.if.end83thread-pre-split_crit_edge, label %if.then67.do.end158_crit_edge

if.then67.do.end158_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end158

if.then67.if.end83thread-pre-split_crit_edge:     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83thread-pre-split

if.else:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #22
  %speed = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %32 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %speed, align 4
  tail call fastcc void @mtk_gmac0_rgmii_adjust(ptr noundef %27, i32 noundef %23, i32 noundef %33)
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 66388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 136) #20, !srcloc !351
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %base.i.1 = getelementptr inbounds %struct.mtk_eth, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %base.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %41, i32 66396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 136) #20, !srcloc !351
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %base.i.2 = getelementptr inbounds %struct.mtk_eth, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %base.i.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %45, i32 66404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 136) #20, !srcloc !351
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %base.i.3 = getelementptr inbounds %struct.mtk_eth, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %base.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %49, i32 66412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 136) #20, !srcloc !351
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %base.i.4 = getelementptr inbounds %struct.mtk_eth, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %base.i.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.4, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %53, i32 66420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 136) #20, !srcloc !351
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 66304
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %or.i = or i32 %58, -1073741824
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %60, i32 66304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #20, !srcloc !351
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 4
  %base.i.i247 = getelementptr inbounds %struct.mtk_eth, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %base.i.i247 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i247, align 4
  %add.ptr.i.i248 = getelementptr i8, ptr %64, i32 66304
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i248) #20, !srcloc !352
  %and.i = and i32 %65, 2147483647
  %66 = ptrtoint ptr %base.i.i247 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i247, align 4
  %add.ptr.i2.i249 = getelementptr i8, ptr %67, i32 66304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i249, i32 %and.i) #20, !srcloc !351
  br label %if.end83thread-pre-split

if.end83thread-pre-split:                         ; preds = %if.else, %if.then67.if.end83thread-pre-split_crit_edge, %land.lhs.true55.if.end83thread-pre-split_crit_edge, %sw.epilog.if.end83thread-pre-split_crit_edge
  %68 = ptrtoint ptr %interface1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %interface1, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end83thread-pre-split, %land.lhs.true52.if.end83_crit_edge
  %69 = phi i32 [ %.pr, %if.end83thread-pre-split ], [ %23, %land.lhs.true52.if.end83_crit_edge ]
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %69, label %if.end83.sw.epilog93_crit_edge [
    i32 2, label %if.end83.sw.bb85_crit_edge
    i32 3, label %if.end83.sw.bb85_crit_edge269
    i32 6, label %sw.bb86
    i32 7, label %sw.bb87
  ]

if.end83.sw.bb85_crit_edge269:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb85

if.end83.sw.bb85_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb85

if.end83.sw.epilog93_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog93

sw.bb85:                                          ; preds = %if.end83.sw.bb85_crit_edge, %if.end83.sw.bb85_crit_edge269
  br label %sw.epilog93

sw.bb86:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog93

sw.bb87:                                          ; preds = %if.end83
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool89.not = icmp eq i32 %72, 0
  br i1 %tobool89.not, label %sw.bb87.sw.epilog93_crit_edge, label %sw.bb87.do.end158_crit_edge

sw.bb87.do.end158_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end158

sw.bb87.sw.epilog93_crit_edge:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog93

sw.epilog93:                                      ; preds = %sw.bb87.sw.epilog93_crit_edge, %sw.bb86, %sw.bb85, %if.end83.sw.epilog93_crit_edge, %land.lhs.true49.sw.epilog93_crit_edge
  %ge_mode.0 = phi i32 [ 0, %if.end83.sw.epilog93_crit_edge ], [ 2, %sw.bb86 ], [ 1, %sw.bb85 ], [ 3, %sw.bb87.sw.epilog93_crit_edge ], [ 0, %land.lhs.true49.sw.epilog93_crit_edge ]
  %ethsys = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 12
  %73 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ethsys, align 4
  %call94 = call i32 @regmap_read(ptr noundef %74, i32 noundef 20, ptr noundef nonnull %val) #20
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr, align 4
  %mul96 = shl i32 %76, 1
  %add97 = add i32 %mul96, 12
  %shl = shl i32 3, %add97
  %neg = xor i32 %shl, -1
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val, align 4
  %and98 = and i32 %78, %neg
  %shl102 = shl i32 %ge_mode.0, %add97
  %or = or i32 %and98, %shl102
  store i32 %or, ptr %val, align 4
  %79 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ethsys, align 4
  %call104 = call i32 @regmap_write(ptr noundef %80, i32 noundef 20, i32 noundef %or) #20
  %81 = ptrtoint ptr %interface1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %interface1, align 4
  %83 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %interface, align 4
  br label %if.end107

if.end107:                                        ; preds = %sw.epilog93, %land.lhs.true.if.end107_crit_edge, %entry.if.end107_crit_edge
  %interface108 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %84 = ptrtoint ptr %interface108 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %interface108, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %85, label %if.else138 [
    i32 22, label %if.end107.if.then112_crit_edge
    i32 21, label %if.end107.if.then112_crit_edge270
    i32 4, label %if.end107.if.then112_crit_edge271
  ]

if.end107.if.then112_crit_edge271:                ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then112

if.end107.if.then112_crit_edge270:                ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then112

if.end107.if.then112_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then112

if.then112:                                       ; preds = %if.end107.if.then112_crit_edge, %if.end107.if.then112_crit_edge270, %if.end107.if.then112_crit_edge271
  %ethsys113 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 12
  %87 = ptrtoint ptr %ethsys113 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ethsys113, align 4
  %call114 = call i32 @regmap_read(ptr noundef %88, i32 noundef 20, ptr noundef nonnull %val) #20
  %89 = ptrtoint ptr %ethsys113 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ethsys113, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 20, i32 noundef 768, i32 noundef -769, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  %91 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %soc, align 64
  %caps118 = getelementptr inbounds %struct.mtk_soc_data, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %caps118 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %caps118, align 4
  %and119 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %cmp120.not = icmp eq i32 %and119, 0
  br i1 %cmp120.not, label %cond.false, label %if.then112.cond.end_crit_edge

if.then112.cond.end_crit_edge:                    ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #22
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then112.cond.end_crit_edge
  %cond = phi i32 [ %96, %cond.false ], [ 0, %if.then112.cond.end_crit_edge ]
  %97 = ptrtoint ptr %interface108 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %interface108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp123.not = icmp eq i32 %98, 4
  br i1 %cmp123.not, label %if.else126, label %if.then124

if.then124:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  %sgmii = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 14
  %99 = ptrtoint ptr %sgmii to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sgmii, align 4
  %call125 = call i32 @mtk_sgmii_setup_mode_force(ptr noundef %100, i32 noundef %cond, ptr noundef %state) #20
  br label %if.end132

if.else126:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  br i1 %cmp.i, label %if.then128, label %if.else126.if.end135_crit_edge

if.else126.if.end135_crit_edge:                   ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end135

if.then128:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #22
  %sgmii129 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 14
  %101 = ptrtoint ptr %sgmii129 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sgmii129, align 4
  %call130 = call i32 @mtk_sgmii_setup_mode_an(ptr noundef %102, i32 noundef %cond) #20
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.then124
  %err.2 = phi i32 [ %call125, %if.then124 ], [ %call130, %if.then128 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool133.not = icmp eq i32 %err.2, 0
  br i1 %tobool133.not, label %if.end132.if.end135_crit_edge, label %if.end132.do.end165_crit_edge

if.end132.do.end165_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end165

if.end132.if.end135_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end135

if.end135:                                        ; preds = %if.end132.if.end135_crit_edge, %if.else126.if.end135_crit_edge
  %103 = ptrtoint ptr %ethsys113 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ethsys113, align 4
  %105 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %val, align 4
  %call.i250 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 20, i32 noundef 768, i32 noundef %106, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  br label %if.end142

if.else138:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i251 = icmp eq i32 %mode, 2
  br i1 %cmp.i251, label %do.end, label %if.else138.if.end142_crit_edge

if.else138.if.end142_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end142

do.end:                                           ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #22
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.93) #23
  br label %cleanup

if.end142:                                        ; preds = %if.else138.if.end142_crit_edge, %if.end135
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw, align 4
  %111 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr, align 4
  %mul145 = shl i32 %112, 8
  %add146 = add i32 %mul145, 65792
  %base.i252 = getelementptr inbounds %struct.mtk_eth, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %base.i252 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i252, align 4
  %add.ptr.i253 = getelementptr i8, ptr %114, i32 %add146
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253) #20, !srcloc !352
  %or148 = or i32 %115, 361217
  call void @__sanitizer_cov_trace_cmp4(i32 %or148, i32 %115)
  %cmp149.not = icmp eq i32 %or148, %115
  br i1 %cmp149.not, label %if.end142.cleanup_crit_edge, label %if.then150

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then150:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #22
  %116 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw, align 4
  %118 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr, align 4
  %mul153 = shl i32 %119, 8
  %add154 = add i32 %mul153, 65792
  %base.i254 = getelementptr inbounds %struct.mtk_eth, ptr %117, i32 0, i32 1
  %120 = ptrtoint ptr %base.i254 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i254, align 4
  %add.ptr.i255 = getelementptr i8, ptr %121, i32 %add154
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 %or148) #20, !srcloc !351
  br label %cleanup

do.end158:                                        ; preds = %sw.bb87.do.end158_crit_edge, %if.then67.do.end158_crit_edge, %sw.bb.do.end158_crit_edge, %if.then.do.end158_crit_edge
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 128
  %124 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr, align 4
  %126 = ptrtoint ptr %interface1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %interface1, align 4
  %call162 = tail call fastcc ptr @phy_modes(i32 noundef %127)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef %125, ptr noundef nonnull %call162) #23
  br label %cleanup

do.end165:                                        ; preds = %if.end132.do.end165_crit_edge, %if.then40.do.end165_crit_edge, %if.then28.do.end165_crit_edge, %if.then17.do.end165_crit_edge
  %err.3 = phi i32 [ %err.2, %if.end132.do.end165_crit_edge ], [ %call42, %if.then40.do.end165_crit_edge ], [ %call30, %if.then28.do.end165_crit_edge ], [ %call, %if.then17.do.end165_crit_edge ]
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 128
  %130 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr, align 4
  %interface168 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %132 = ptrtoint ptr %interface168 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %interface168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %133)
  %134 = icmp ult i32 %133, 30
  br i1 %134, label %switch.lookup, label %do.end165.phy_modes.exit_crit_edge

do.end165.phy_modes.exit_crit_edge:               ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #22
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.mtk_mac_config, i32 0, i32 %133
  %135 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %135)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %do.end165.phy_modes.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.137, %do.end165.phy_modes.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94, i32 noundef %131, ptr noundef nonnull %retval.0.i, i32 noundef %err.3) #23
  br label %cleanup

cleanup:                                          ; preds = %phy_modes.exit, %do.end158, %if.then150, %if.end142.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mac_an_restart(ptr nocapture noundef readonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -24
  %hw = getelementptr i8, ptr %config, i32 24
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  tail call void @mtk_sgmii_restart_an(ptr noundef %1, i32 noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mac_link_down(ptr nocapture noundef readonly %config, i32 noundef %mode, i32 noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -24
  %hw = getelementptr i8, ptr %config, i32 24
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %mul = shl i32 %3, 8
  %add = add i32 %mul, 65792
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %and = and i32 %6, -24577
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %mul3 = shl i32 %10, 8
  %add4 = add i32 %mul3, 65792
  %base.i9 = getelementptr inbounds %struct.mtk_eth, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %12, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %and) #20, !srcloc !351
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mac_link_up(ptr nocapture noundef readonly %config, ptr nocapture noundef readnone %phy, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %config, i32 -24
  %hw = getelementptr i8, ptr %config, i32 24
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %mul = shl i32 %3, 8
  %add = add i32 %mul, 65792
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #20, !srcloc !352
  %and = and i32 %6, -63
  %7 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %speed, label %entry.sw.epilog_crit_edge [
    i32 2500, label %entry.sw.bb_crit_edge
    i32 1000, label %entry.sw.bb_crit_edge29
    i32 100, label %sw.bb2
  ]

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29
  %or = or i32 %and, 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %or3 = or i32 %and, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %mcr.0 = phi i32 [ %and, %entry.sw.epilog_crit_edge ], [ %or3, %sw.bb2 ], [ %or, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp = icmp eq i32 %duplex, 1
  %or4 = or i32 %mcr.0, 2
  %spec.select = select i1 %cmp, i32 %or4, i32 %mcr.0
  %or6 = or i32 %spec.select, 16
  %mcr.2 = select i1 %tx_pause, i32 %or6, i32 %spec.select
  %or10 = or i32 %mcr.2, 32
  %mcr.3 = select i1 %rx_pause, i32 %or10, i32 %mcr.2
  %or12 = or i32 %mcr.3, 24576
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %mul15 = shl i32 %11, 8
  %add16 = add i32 %mul15, 65792
  %base.i27 = getelementptr inbounds %struct.mtk_eth, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %base.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %13, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %or12) #20, !srcloc !351
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_gmac_rgmii_path_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_gmac_sgmii_path_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_gmac_gephy_path_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7621_gmac0_rgmii_adjust(ptr nocapture noundef readonly %eth, i32 noundef %interface) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #20
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !361
  %ethsys = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 12
  %1 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ethsys, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %interface)
  %cmp = icmp eq i32 %interface, 19
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %5 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eth, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.101) #23
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cond = phi i32 [ 32, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %val, align 4
  %8 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethsys, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 44, i32 noundef 96, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_gmac0_rgmii_adjust(ptr nocapture noundef readonly %eth, i32 noundef %interface, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %interface)
  %cmp = icmp eq i32 %interface, 19
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 66448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2) #20, !srcloc !351
  %arrayidx = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef 500000000) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %4 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.103, i32 noundef %call) #23
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %cmp3 = icmp eq i32 %speed, 1000
  %cond = select i1 %cmp3, i32 6, i32 0
  %base.i40 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 1
  %6 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %7, i32 66448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %cond) #20, !srcloc !351
  %ethsys = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 12
  %8 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethsys, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 44, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #20
  %cond6 = select i1 %cmp3, i32 250000000, i32 500000000
  %arrayidx8 = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %cond6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end2.if.end16_crit_edge, label %do.end14

if.end2.if.end16_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

do.end14:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eth, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.103, i32 noundef %call9) #23
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end2.if.end16_crit_edge
  %cond18 = select i1 %cmp3, i32 1073876992, i32 131072
  %14 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i40, align 4
  %add.ptr.i43 = getelementptr i8, ptr %15, i32 66304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %cond18) #20, !srcloc !351
  %cond20 = select i1 %cmp3, i32 131072, i32 1073872896
  %16 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i40, align 4
  %add.ptr.i45 = getelementptr i8, ptr %17, i32 66368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %cond20) #20, !srcloc !351
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_sgmii_setup_mode_force(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_sgmii_setup_mode_an(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.137, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_sgmii_restart_an(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_init(ptr noundef %dev) #2 section ".init.text" align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %of_node = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 4
  %call1 = tail call i32 @of_get_ethdev_address(ptr noundef %3, ptr noundef %dev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #20
  %4 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #20
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr.i, align 1
  %7 = and i8 %6, -4
  %8 = or i8 %7, 2
  store i8 %8, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #20
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %9 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #20
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.138, ptr noundef %13) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_uninit(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %phylink = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %3) #20
  %tx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %tx_int_mask_reg.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_int_mask_reg.i, align 16
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %9 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_int_mask_reg.i, align 16
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i) #20
  %rx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 4
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %14, i32 2600
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #20, !srcloc !352
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %17, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tx_ring = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18
  %page_lock = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %page_lock) #20
  %state = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.drop_crit_edge, !prof !357

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

if.end:                                           ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i.not.i = icmp eq i16 %8, 0
  %nr_frags7.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %nr_frags7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_frags7.i, align 2
  %conv8.i = zext i8 %10 to i32
  br i1 %tobool.i.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp19.not.i = icmp eq i8 %10, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.mtk_cal_txd_req.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.mtk_cal_txd_req.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_cal_txd_req.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %nfrags.021.i = phi i32 [ %add5.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %i.020.i, i32 1
  %11 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_len.i.i, align 4
  %sub.i = add i32 %12, 16382
  %div.i = udiv i32 %sub.i, 16383
  %add5.i = add i32 %div.i, %nfrags.021.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv8.i
  br i1 %exitcond.not.i, label %for.body.i.mtk_cal_txd_req.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i.mtk_cal_txd_req.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_cal_txd_req.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %add9.i = add nuw nsw i32 %conv8.i, 1
  br label %mtk_cal_txd_req.exit

mtk_cal_txd_req.exit:                             ; preds = %if.else.i, %for.body.i.mtk_cal_txd_req.exit_crit_edge, %for.cond.preheader.i.mtk_cal_txd_req.exit_crit_edge
  %nfrags.1.i = phi i32 [ %add9.i, %if.else.i ], [ 1, %for.cond.preheader.i.mtk_cal_txd_req.exit_crit_edge ], [ %add5.i, %for.body.i.mtk_cal_txd_req.exit_crit_edge ]
  %free_count = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_count, i32 noundef 4) #20
  %13 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %free_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %nfrags.1.i)
  %cmp.not = icmp sgt i32 %14, %nfrags.1.i
  br i1 %cmp.not, label %if.end18, label %if.then13, !prof !357

if.then13:                                        ; preds = %mtk_cal_txd_req.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  %msg_enable = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then13.do.end_crit_edge, label %if.then15

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.140) #23
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.then13.do.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #20
  br label %cleanup

if.end18:                                         ; preds = %mtk_cal_txd_req.exit
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.i.not = icmp eq i16 %22, 0
  br i1 %tobool.i.not, label %if.end18.if.end40_crit_edge, label %if.then20

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end40

if.then20:                                        ; preds = %if.end18
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %23 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then20.if.end32_crit_edge, label %skb_header_cloned.exit.i

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32

skb_header_cloned.exit.i:                         ; preds = %if.then20
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #20
  %24 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %25, 65535
  %shr.i.i = ashr i32 %25, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.if.end32_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end32_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool22.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool22.not, label %skb_cow_head.exit.if.end32_crit_edge, label %do.body24

skb_cow_head.exit.if.end32_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32

do.body24:                                        ; preds = %skb_cow_head.exit
  %msg_enable25 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %msg_enable25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable25, align 4
  %and26 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.drop_crit_edge, label %if.then28

do.body24.drop_crit_edge:                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

if.then28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.141) #23
  br label %drop

if.end32:                                         ; preds = %skb_cow_head.exit.if.end32_crit_edge, %skb_header_cloned.exit.i.if.end32_crit_edge, %if.then20.if.end32_crit_edge
  %28 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gso_type, align 8
  %and34 = and i32 %31, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end40_crit_edge, label %if.then36

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end40

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 4
  %32 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %gso_size, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %conv.i.i
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %33, ptr %check, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end32.if.end40_crit_edge, %if.end18.if.end40_crit_edge
  %gso.0.off0 = phi i1 [ true, %if.then36 ], [ false, %if.end32.if.end40_crit_edge ], [ false, %if.end18.if.end40_crit_edge ]
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %next_free.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 3
  %41 = ptrtoint ptr %next_free.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %next_free.i, align 4
  %dma_pdma.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 9
  %43 = ptrtoint ptr %dma_pdma.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_pdma.i.i, align 4
  %45 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 4
  %add.ptr.i2.i = getelementptr %struct.mtk_tx_dma, ptr %42, i32 %sub.ptr.div.i.i
  %last_free.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 4
  %47 = ptrtoint ptr %last_free.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %last_free.i, align 4
  %cmp.i = icmp eq ptr %42, %48
  br i1 %cmp.i, label %if.end40.drop_crit_edge, label %if.end.i

if.end40.drop_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

if.end.i:                                         ; preds = %if.end40
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 4
  %add.i = shl i32 %50, 25
  %shl.i = add i32 %add.i, 33554432
  %sub.ptr.lhs.cast.i3.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i5.i = sub i32 %sub.ptr.lhs.cast.i3.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i6.i = ashr exact i32 %sub.ptr.sub.i5.i, 4
  %buf.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mtk_tx_buf, ptr %52, i32 %sub.ptr.div.i6.i
  %53 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 24)
  %or4.i = or i32 %shl.i, 268435456
  %spec.select.i = select i1 %gso.0.off0, i32 %or4.i, i32 %shl.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %54 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %55 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %55)
  %cmp6.i = icmp eq i16 %55, 1536
  %or9.i = or i32 %spec.select.i, -536870912
  %txd4.1.i = select i1 %cmp6.i, i32 %or9.i, i32 %spec.select.i
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %56 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %bf.load11.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load11.i)
  %tobool14.not.i = icmp sgt i32 %bf.load11.i, -1
  br i1 %tobool14.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then15.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %57 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vlan_tci.i, align 2
  %conv16.i = zext i16 %58 to i32
  %or17.i = or i32 %txd4.1.i, %conv16.i
  %or18.i = or i32 %or17.i, 65536
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end.i.if.end19.i_crit_edge
  %txd4.2.i = phi i32 [ %or18.i, %if.then15.i ], [ %txd4.1.i, %if.end.i.if.end19.i_crit_edge ]
  %59 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %40, align 128
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %63 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %65 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_len.i.i, align 8
  %call.i.i93 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %62) #20
  br i1 %call.i.i93, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end19.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !357

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %60) #20
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %67 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %60, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %70, %if.end.i.i.i ], [ %68, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #20
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %71 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %40, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %72, i32 noundef -1) #20
  br label %drop

dma_map_single_attrs.exit.i:                      ; preds = %if.end19.i
  %sub.i.i94 = sub i32 %64, %66
  tail call void @debug_dma_map_single(ptr noundef %60, ptr noundef %62, i32 noundef %sub.i.i94) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %73 = load ptr, ptr @mem_map, align 4
  %74 = ptrtoint ptr %62 to i32
  %sub.i7.i = add i32 %74, 1073741824
  %shr.i.i95 = lshr i32 %sub.i7.i, 12
  %add.ptr.i8.i = getelementptr %struct.page, ptr %73, i32 %shr.i.i95
  %and.i.i96 = and i32 %74, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %60, ptr noundef %add.ptr.i8.i, i32 noundef %and.i.i96, i32 noundef %sub.i.i94, i32 noundef 1, i32 noundef 0) #20
  %75 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %40, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %76, i32 noundef %call41.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.drop_crit_edge, label %do.body31.i

dma_map_single_attrs.exit.i.drop_crit_edge:       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

do.body31.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %77 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 %call41.i.i, ptr %42, align 4
  %flags.i = getelementptr %struct.mtk_tx_buf, ptr %52, i32 %sub.ptr.div.i6.i, i32 1
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 4
  %or36.i = or i32 %79, 1
  store i32 %or36.i, ptr %flags.i, align 4
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool38.not.i = icmp eq i32 %81, 0
  %cond.i = select i1 %tobool38.not.i, i32 4, i32 8
  %or42.i = or i32 %cond.i, %or36.i
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or42.i, ptr %flags.i, align 4
  %83 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i.i, align 4
  %85 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i, align 8
  %sub.i11.i = sub i32 %84, %86
  %soc.i.i = getelementptr inbounds %struct.mtk_eth, ptr %40, i32 0, i32 30
  %87 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %soc.i.i, align 64
  %caps.i.i = getelementptr inbounds %struct.mtk_soc_data, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %caps.i.i, align 4
  %and.i12.i = and i32 %90, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %cmp.not.i.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %do.body31.i.setup_tx_buf.exit.i_crit_edge

do.body31.i.setup_tx_buf.exit.i_crit_edge:        ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %setup_tx_buf.exit.i

if.else.i.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #22
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %arrayidx.i.i, align 4
  %92 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call41.i.i, ptr %add.ptr.i2.i, align 4
  %and5.i.i = shl i32 %sub.i11.i, 16
  %shl.i.i = and i32 %and5.i.i, 1073676288
  %txd26.i.i = getelementptr %struct.mtk_tx_dma, ptr %42, i32 %sub.ptr.div.i.i, i32 1
  %93 = ptrtoint ptr %txd26.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl.i.i, ptr %txd26.i.i, align 4
  br label %setup_tx_buf.exit.i

setup_tx_buf.exit.i:                              ; preds = %if.else.i.i, %do.body31.i.setup_tx_buf.exit.i_crit_edge
  %94 = getelementptr %struct.mtk_tx_buf, ptr %52, i32 %sub.ptr.div.i6.i, i32 2
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call41.i.i, ptr %94, align 4
  %dma_len1.sink.i.i = getelementptr %struct.mtk_tx_buf, ptr %52, i32 %sub.ptr.div.i6.i, i32 3
  %96 = ptrtoint ptr %dma_len1.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub.i11.i, ptr %dma_len1.sink.i.i, align 4
  %97 = ptrtoint ptr %dma_pdma.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dma_pdma.i.i, align 4
  %99 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_ring, align 4
  %sub.ptr.lhs.cast.i15.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i16.i = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i17.i = sub i32 %sub.ptr.lhs.cast.i15.i, %sub.ptr.rhs.cast.i16.i
  %sub.ptr.div.i18.i = ashr exact i32 %sub.ptr.sub.i17.i, 4
  %add.ptr.i19.i = getelementptr %struct.mtk_tx_dma, ptr %42, i32 %sub.ptr.div.i18.i
  %101 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags46.i = getelementptr inbounds %struct.skb_shared_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %nr_frags46.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %nr_frags46.i, align 2
  %conv47.i = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp48126.not.i = icmp eq i8 %104, 0
  br i1 %cmp48126.not.i, label %setup_tx_buf.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

setup_tx_buf.exit.i.for.end.i_crit_edge:          ; preds = %setup_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %setup_tx_buf.exit.i
  %phys.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 2
  %sub.i98 = add nsw i32 %conv47.i, -1
  br label %for.body.i100

for.body.i100:                                    ; preds = %for.inc.i.for.body.i100_crit_edge, %for.body.lr.ph.i
  %k.0132.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %k.1.lcssa.i, %for.inc.i.for.body.i100_crit_edge ]
  %n_desc.0131.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %n_desc.1.lcssa.i, %for.inc.i.for.body.i100_crit_edge ]
  %i.0129.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc149.i, %for.inc.i.for.body.i100_crit_edge ]
  %txd_pdma.0128.i = phi ptr [ %add.ptr.i19.i, %for.body.lr.ph.i ], [ %txd_pdma.1.lcssa.i, %for.inc.i.for.body.i100_crit_edge ]
  %txd.0127.i = phi ptr [ %42, %for.body.lr.ph.i ], [ %txd.1.lcssa.i, %for.inc.i.for.body.i100_crit_edge ]
  %105 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0129.i
  %bv_len.i.i99 = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0129.i, i32 1
  %107 = ptrtoint ptr %bv_len.i.i99 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_len.i.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool52.not116.i = icmp eq i32 %108, 0
  br i1 %tobool52.not116.i, label %for.body.i100.for.inc.i_crit_edge, label %while.body.lr.ph.i

for.body.i100.for.inc.i_crit_edge:                ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

while.body.lr.ph.i:                               ; preds = %for.body.i100
  %and55.i = and i32 %i.0129.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0129.i, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0129.i, i32 %sub.i98)
  %cmp83.i = icmp eq i32 %i.0129.i, %sub.i98
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %frag_size.0122.i = phi i32 [ %108, %while.body.lr.ph.i ], [ %sub140.i, %cleanup.i.while.body.i_crit_edge ]
  %offset.0121.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add141.i, %cleanup.i.while.body.i_crit_edge ]
  %k.1120.i = phi i32 [ %k.0132.i, %while.body.lr.ph.i ], [ %inc139.i, %cleanup.i.while.body.i_crit_edge ]
  %n_desc.1119.i = phi i32 [ %n_desc.0131.i, %while.body.lr.ph.i ], [ %n_desc.2.i, %cleanup.i.while.body.i_crit_edge ]
  %txd_pdma.1118.i = phi ptr [ %txd_pdma.0128.i, %while.body.lr.ph.i ], [ %txd_pdma.2.i, %cleanup.i.while.body.i_crit_edge ]
  %txd.1117.i = phi ptr [ %txd.0127.i, %while.body.lr.ph.i ], [ %txd.2.i, %cleanup.i.while.body.i_crit_edge ]
  %109 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %soc.i.i, align 64
  %caps.i = getelementptr inbounds %struct.mtk_soc_data, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %112, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp53.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp53.not.i, i1 %tobool56.not.i, i1 false
  br i1 %or.cond.i, label %while.body.i.if.end66.i_crit_edge, label %if.then57.i

while.body.i.if.end66.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end66.i

if.then57.i:                                      ; preds = %while.body.i
  %txd2.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd.1117.i, i32 0, i32 1
  %113 = ptrtoint ptr %txd2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %txd2.i, align 4
  %115 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_ring, align 4
  %117 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %phys.i.i, align 4
  %sub.i21.i = sub i32 %114, %118
  %add.ptr.i22.i = getelementptr i8, ptr %116, i32 %sub.i21.i
  %119 = ptrtoint ptr %last_free.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %last_free.i, align 4
  %cmp61.i = icmp eq ptr %add.ptr.i22.i, %120
  br i1 %cmp61.i, label %if.then57.i.cleanup144.i_crit_edge, label %if.end64.i

if.then57.i.cleanup144.i_crit_edge:               ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup144.i

if.end64.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #22
  %121 = ptrtoint ptr %dma_pdma.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dma_pdma.i.i, align 4
  %sub.ptr.lhs.cast.i24.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i25.i = ptrtoint ptr %116 to i32
  %sub.ptr.sub.i26.i = sub i32 %sub.ptr.lhs.cast.i24.i, %sub.ptr.rhs.cast.i25.i
  %sub.ptr.div.i27.i = ashr exact i32 %sub.ptr.sub.i26.i, 4
  %add.ptr.i28.i = getelementptr %struct.mtk_tx_dma, ptr %add.ptr.i22.i, i32 %sub.ptr.div.i27.i
  %inc65.i = add i32 %n_desc.1119.i, 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end64.i, %while.body.i.if.end66.i_crit_edge
  %txd.2.i = phi ptr [ %add.ptr.i22.i, %if.end64.i ], [ %txd.1117.i, %while.body.i.if.end66.i_crit_edge ]
  %txd_pdma.2.i = phi ptr [ %add.ptr.i28.i, %if.end64.i ], [ %txd_pdma.1118.i, %while.body.i.if.end66.i_crit_edge ]
  %n_desc.2.i = phi i32 [ %inc65.i, %if.end64.i ], [ %n_desc.1119.i, %while.body.i.if.end66.i_crit_edge ]
  %123 = tail call i32 @llvm.smin.i32(i32 %frag_size.0122.i, i32 16383) #20
  %124 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %40, align 128
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i, align 4
  %128 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.i.i = add i32 %129, %offset.0121.i
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %125, ptr noundef %127, i32 noundef %add.i.i, i32 noundef %123, i32 noundef 1, i32 noundef 0) #20
  %130 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %40, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %131, i32 noundef %call2.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i29.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i29.not.i, label %if.end66.i.cleanup144.i_crit_edge, label %if.end82.i, !prof !370

if.end66.i.cleanup144.i_crit_edge:                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup144.i

if.end82.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %frag_size.0122.i)
  %cmp86.i = icmp slt i32 %frag_size.0122.i, 16384
  %or.cond1.i = select i1 %cmp83.i, i1 %cmp86.i, i1 false
  %132 = ptrtoint ptr %txd.2.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 %call2.i.i, ptr %txd.2.i, align 4
  %and105.i = shl i32 %123, 16
  %shl106.i = and i32 %and105.i, 1073676288
  %or107.i = select i1 %or.cond1.i, i32 1073758208, i32 16384
  %or110.i = or i32 %or107.i, %shl106.i
  %txd3.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd.2.i, i32 0, i32 2
  %133 = ptrtoint ptr %txd3.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 %or110.i, ptr %txd3.i, align 4
  %txd4120.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd.2.i, i32 0, i32 3
  %134 = ptrtoint ptr %txd4120.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %shl.i, ptr %txd4120.i, align 4
  %135 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_ring, align 4
  %sub.ptr.lhs.cast.i31.i = ptrtoint ptr %txd.2.i to i32
  %sub.ptr.rhs.cast.i32.i = ptrtoint ptr %136 to i32
  %sub.ptr.sub.i33.i = sub i32 %sub.ptr.lhs.cast.i31.i, %sub.ptr.rhs.cast.i32.i
  %sub.ptr.div.i34.i = ashr exact i32 %sub.ptr.sub.i33.i, 4
  %137 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i36.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i
  br i1 %or.cond.i, label %if.end82.i.if.end128.i_crit_edge, label %if.then127.i

if.end82.i.if.end128.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end128.i

if.then127.i:                                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #22
  %139 = getelementptr inbounds i8, ptr %arrayidx.i36.i, i32 4
  %140 = call ptr @memset(ptr %139, i32 0, i32 20)
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then127.i, %if.end82.i.if.end128.i_crit_edge
  %141 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 -1 to ptr), ptr %arrayidx.i36.i, align 4
  %flags130.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i, i32 1
  %142 = ptrtoint ptr %flags130.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags130.i, align 4
  %or131.i = or i32 %143, 2
  store i32 %or131.i, ptr %flags130.i, align 4
  %144 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool133.not.i = icmp eq i32 %145, 0
  %cond136.i = select i1 %tobool133.not.i, i32 4, i32 8
  %or138.i = or i32 %cond136.i, %or131.i
  %146 = ptrtoint ptr %flags130.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or138.i, ptr %flags130.i, align 4
  %inc139.i = add i32 %k.1120.i, 1
  %147 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %soc.i.i, align 64
  %caps.i38.i = getelementptr inbounds %struct.mtk_soc_data, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %caps.i38.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %caps.i38.i, align 4
  %and.i39.i = and i32 %150, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %cmp.not.i40.i = icmp eq i32 %and.i39.i, 0
  br i1 %cmp.not.i40.i, label %if.else.i44.i, label %if.then.i43.i

if.then.i43.i:                                    ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #22
  %dma_addr0.i41.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i, i32 2
  %151 = ptrtoint ptr %dma_addr0.i41.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call2.i.i, ptr %dma_addr0.i41.i, align 4
  %dma_len0.i42.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i, i32 3
  br label %cleanup.i

if.else.i44.i:                                    ; preds = %if.end128.i
  %and1.i.i = and i32 %k.1120.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i101 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i101, label %if.else4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.else.i44.i
  call void @__sanitizer_cov_trace_pc() #22
  %txd3.i.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd_pdma.2.i, i32 0, i32 2
  %152 = ptrtoint ptr %txd3.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call2.i.i, ptr %txd3.i.i, align 4
  %and3.i.i = and i32 %123, 16383
  %txd2.i.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd_pdma.2.i, i32 0, i32 1
  %153 = ptrtoint ptr %txd2.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %txd2.i.i, align 4
  %or.i.i = or i32 %154, %and3.i.i
  store i32 %or.i.i, ptr %txd2.i.i, align 4
  %dma_addr1.i.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i, i32 4
  %155 = ptrtoint ptr %dma_addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call2.i.i, ptr %dma_addr1.i.i, align 4
  %dma_len1.i.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i, i32 5
  br label %cleanup.i

if.else4.i.i:                                     ; preds = %if.else.i44.i
  call void @__sanitizer_cov_trace_pc() #22
  %156 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 -1 to ptr), ptr %arrayidx.i36.i, align 4
  %157 = ptrtoint ptr %txd_pdma.2.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call2.i.i, ptr %txd_pdma.2.i, align 4
  %txd26.i47.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd_pdma.2.i, i32 0, i32 1
  %158 = ptrtoint ptr %txd26.i47.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %shl106.i, ptr %txd26.i47.i, align 4
  %dma_addr07.i48.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i, i32 2
  %159 = ptrtoint ptr %dma_addr07.i48.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call2.i.i, ptr %dma_addr07.i48.i, align 4
  %dma_len08.i49.i = getelementptr %struct.mtk_tx_buf, ptr %138, i32 %sub.ptr.div.i34.i, i32 3
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else4.i.i, %if.then2.i.i, %if.then.i43.i
  %dma_len1.sink.i50.i = phi ptr [ %dma_len1.i.i, %if.then2.i.i ], [ %dma_len08.i49.i, %if.else4.i.i ], [ %dma_len0.i42.i, %if.then.i43.i ]
  %160 = ptrtoint ptr %dma_len1.sink.i50.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %123, ptr %dma_len1.sink.i50.i, align 4
  %sub140.i = sub i32 %frag_size.0122.i, %123
  %add141.i = add i32 %123, %offset.0121.i
  %tobool52.not.i = icmp eq i32 %sub140.i, 0
  br i1 %tobool52.not.i, label %cleanup.i.for.inc.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

cleanup144.i:                                     ; preds = %if.end66.i.cleanup144.i_crit_edge, %if.then57.i.cleanup144.i_crit_edge
  %txd.3.ph.i = phi ptr [ %txd.2.i, %if.end66.i.cleanup144.i_crit_edge ], [ %add.ptr.i22.i, %if.then57.i.cleanup144.i_crit_edge ]
  br label %do.body222.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %for.body.i100.for.inc.i_crit_edge
  %txd.1.lcssa.i = phi ptr [ %txd.0127.i, %for.body.i100.for.inc.i_crit_edge ], [ %txd.2.i, %cleanup.i.for.inc.i_crit_edge ]
  %txd_pdma.1.lcssa.i = phi ptr [ %txd_pdma.0128.i, %for.body.i100.for.inc.i_crit_edge ], [ %txd_pdma.2.i, %cleanup.i.for.inc.i_crit_edge ]
  %n_desc.1.lcssa.i = phi i32 [ %n_desc.0131.i, %for.body.i100.for.inc.i_crit_edge ], [ %n_desc.2.i, %cleanup.i.for.inc.i_crit_edge ]
  %k.1.lcssa.i = phi i32 [ %k.0132.i, %for.body.i100.for.inc.i_crit_edge ], [ %inc139.i, %cleanup.i.for.inc.i_crit_edge ]
  %inc149.i = add nuw nsw i32 %i.0129.i, 1
  %exitcond.not.i102 = icmp eq i32 %inc149.i, %conv47.i
  br i1 %exitcond.not.i102, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i100_crit_edge

for.inc.i.for.body.i100_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i100

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %setup_tx_buf.exit.i.for.end.i_crit_edge
  %or169.i = phi i32 [ 1073758208, %setup_tx_buf.exit.i.for.end.i_crit_edge ], [ 16384, %for.inc.i.for.end.i_crit_edge ]
  %txd.0.lcssa.i = phi ptr [ %42, %setup_tx_buf.exit.i.for.end.i_crit_edge ], [ %txd.1.lcssa.i, %for.inc.i.for.end.i_crit_edge ]
  %txd_pdma.0.lcssa.i = phi ptr [ %add.ptr.i19.i, %setup_tx_buf.exit.i.for.end.i_crit_edge ], [ %txd_pdma.1.lcssa.i, %for.inc.i.for.end.i_crit_edge ]
  %n_desc.0.lcssa.i = phi i32 [ 1, %setup_tx_buf.exit.i.for.end.i_crit_edge ], [ %n_desc.1.lcssa.i, %for.inc.i.for.end.i_crit_edge ]
  %k.0.lcssa.i = phi i32 [ 1, %setup_tx_buf.exit.i.for.end.i_crit_edge ], [ %k.1.lcssa.i, %for.inc.i.for.end.i_crit_edge ]
  %161 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %skb, ptr %arrayidx.i.i, align 4
  %txd4156.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %42, i32 0, i32 3
  %162 = ptrtoint ptr %txd4156.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 %txd4.2.i, ptr %txd4156.i, align 4
  %163 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len.i.i, align 4
  %165 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data_len.i.i, align 8
  %sub.i54.i = sub i32 %164, %166
  %and167.i = shl i32 %sub.i54.i, 16
  %shl168.i = and i32 %and167.i, 1073676288
  %or174.i = or i32 %shl168.i, %or169.i
  %txd3175.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %42, i32 0, i32 2
  %167 = ptrtoint ptr %txd3175.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile i32 %or174.i, ptr %txd3175.i, align 4
  %168 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %soc.i.i, align 64
  %caps181.i = getelementptr inbounds %struct.mtk_soc_data, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %caps181.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %caps181.i, align 4
  %and182.i = and i32 %171, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i)
  %cmp183.not.i = icmp eq i32 %and182.i, 0
  br i1 %cmp183.not.i, label %if.then185.i, label %for.end.i.if.end195.i_crit_edge

for.end.i.if.end195.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end195.i

if.then185.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %and186.i = and i32 %k.0.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186.i)
  %tobool187.not.i = icmp eq i32 %and186.i, 0
  %txd2192.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd_pdma.0.lcssa.i, i32 0, i32 1
  %172 = ptrtoint ptr %txd2192.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %txd2192.i, align 4
  %..i = select i1 %tobool187.not.i, i32 16384, i32 1073741824
  %or190.i = or i32 %173, %..i
  store i32 %or190.i, ptr %txd2192.i, align 4
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then185.i, %for.end.i.if.end195.i_crit_edge
  %174 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len.i.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %176 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %_tx.i.i.i, align 128
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %177, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %175)
  %cmp.i.i.i.i = icmp ugt i32 %175, 268435455
  br i1 %cmp.i.i.i.i, label %do.body2.i.i.i.i, label %dql_queued.exit.i.i.i, !prof !370

do.body2.i.i.i.i:                                 ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #20, !srcloc !380
  unreachable

dql_queued.exit.i.i.i:                            ; preds = %if.end195.i
  %last_obj_cnt.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %177, i32 0, i32 15, i32 2
  %178 = ptrtoint ptr %last_obj_cnt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %175, ptr %last_obj_cnt.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !381
  %179 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dql.i.i.i, align 128
  %add.i.i.i.i = add i32 %180, %175
  store i32 %add.i.i.i.i, ptr %dql.i.i.i, align 128
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %177, i32 0, i32 15, i32 1
  %181 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %183 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %182, %183
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i.i, -1
  br i1 %cmp.i.i.i, label %dql_queued.exit.i.i.i.netdev_sent_queue.exit.i_crit_edge, label %if.end.i.i55.i, !prof !357

dql_queued.exit.i.i.i.netdev_sent_queue.exit.i_crit_edge: ; preds = %dql_queued.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_sent_queue.exit.i

if.end.i.i55.i:                                   ; preds = %dql_queued.exit.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %177, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i.i) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !382
  %184 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %186 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i22.i.i.i = sub i32 %185, %187
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %sub.i22.i.i.i, -1
  br i1 %cmp7.i.i.i, label %if.then14.i.i.i, label %if.end.i.i55.i.netdev_sent_queue.exit.i_crit_edge, !prof !370

if.end.i.i55.i.netdev_sent_queue.exit.i_crit_edge: ; preds = %if.end.i.i55.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %netdev_sent_queue.exit.i

if.then14.i.i.i:                                  ; preds = %if.end.i.i55.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #20
  br label %netdev_sent_queue.exit.i

netdev_sent_queue.exit.i:                         ; preds = %if.then14.i.i.i, %if.end.i.i55.i.netdev_sent_queue.exit.i_crit_edge, %dql_queued.exit.i.i.i.netdev_sent_queue.exit.i_crit_edge
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #20
  %188 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %tx_flags.i.i, align 1
  %192 = and i8 %191, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i56.i = icmp eq i8 %192, 0
  br i1 %tobool.not.i56.i, label %netdev_sent_queue.exit.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i57.i

netdev_sent_queue.exit.i.skb_tx_timestamp.exit.i_crit_edge: ; preds = %netdev_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_tx_timestamp.exit.i

if.then.i57.i:                                    ; preds = %netdev_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #20
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i57.i, %netdev_sent_queue.exit.i.skb_tx_timestamp.exit.i_crit_edge
  %txd2196.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %txd.0.lcssa.i, i32 0, i32 1
  %193 = ptrtoint ptr %txd2196.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %txd2196.i, align 4
  %195 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tx_ring, align 4
  %phys.i58.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 2
  %197 = ptrtoint ptr %phys.i58.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %phys.i58.i, align 4
  %sub.i59.i = sub i32 %194, %198
  %add.ptr.i60.i = getelementptr i8, ptr %196, i32 %sub.i59.i
  %199 = ptrtoint ptr %next_free.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %add.ptr.i60.i, ptr %next_free.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_count, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %free_count, i32 1, i32 3, i32 1) #20
  %200 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_count, ptr %free_count, i32 %n_desc.0.lcssa.i, ptr elementtype(i32) %free_count) #20, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !384
  tail call void @arm_heavy_mb() #20
  %201 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %soc.i.i, align 64
  %caps203.i = getelementptr inbounds %struct.mtk_soc_data, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %caps203.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %caps203.i, align 4
  %and204.i = and i32 %204, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204.i)
  %cmp205.not.i = icmp eq i32 %and204.i, 0
  br i1 %cmp205.not.i, label %if.else216.i, label %if.then207.i

if.then207.i:                                     ; preds = %skb_tx_timestamp.exit.i
  %205 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i103 = getelementptr inbounds %struct.netdev_queue, ptr %206, i32 0, i32 13
  %207 = ptrtoint ptr %state.i.i103 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %state.i.i103, align 4
  %and.i61.i = and i32 %208, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool.i.not.i104 = icmp eq i32 %and.i61.i, 0
  br i1 %tobool.i.not.i104, label %lor.lhs.false211.i, label %if.then207.i.if.then213.i_crit_edge

if.then207.i.if.then213.i_crit_edge:              ; preds = %if.then207.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then213.i

lor.lhs.false211.i:                               ; preds = %if.then207.i
  %209 = tail call i32 @llvm.read_register.i32(metadata !341) #20
  %and.i.i.i = and i32 %209, -16384
  %210 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i62.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %212
  %213 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i62.i, align 4
  %add.i63.i = add i32 %214, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %215 = inttoptr i32 %add.i63.i to ptr
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %215, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.i64.not.i = icmp eq i8 %217, 0
  br i1 %tobool.i64.not.i, label %lor.lhs.false211.i.if.then213.i_crit_edge, label %lor.lhs.false211.i.if.end45_crit_edge

lor.lhs.false211.i.if.end45_crit_edge:            ; preds = %lor.lhs.false211.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45

lor.lhs.false211.i.if.then213.i_crit_edge:        ; preds = %lor.lhs.false211.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then213.i

if.then213.i:                                     ; preds = %lor.lhs.false211.i.if.then213.i_crit_edge, %if.then207.i.if.then213.i_crit_edge
  %218 = ptrtoint ptr %txd2196.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %txd2196.i, align 4
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %40, i32 0, i32 1
  %220 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %221, i32 6912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %219) #20, !srcloc !351
  br label %if.end45

if.else216.i:                                     ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %222 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %tx_ring, align 4
  %sub.ptr.lhs.cast.i66.i = ptrtoint ptr %txd.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i67.i = ptrtoint ptr %223 to i32
  %sub.ptr.sub.i68.i = sub i32 %sub.ptr.lhs.cast.i66.i, %sub.ptr.rhs.cast.i67.i
  %div2.i.i = lshr i32 %sub.ptr.sub.i68.i, 4
  %add218.i = add nuw nsw i32 %div2.i.i, 1
  %dma_size.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 8
  %224 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dma_size.i, align 4
  %sub219.i = add i32 %225, -1
  %and220.i = and i32 %add218.i, %sub219.i
  %base.i69.i = getelementptr inbounds %struct.mtk_eth, ptr %40, i32 0, i32 1
  %226 = ptrtoint ptr %base.i69.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base.i69.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %227, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %and220.i) #20, !srcloc !351
  br label %if.end45

do.body222.i:                                     ; preds = %if.end232.i.do.body222.i_crit_edge, %cleanup144.i
  %itxd.0.i = phi ptr [ %42, %cleanup144.i ], [ %add.ptr.i79.i, %if.end232.i.do.body222.i_crit_edge ]
  %itxd_pdma.0.i = phi ptr [ %add.ptr.i2.i, %cleanup144.i ], [ %add.ptr.i85.i, %if.end232.i.do.body222.i_crit_edge ]
  %228 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %tx_ring, align 4
  %sub.ptr.lhs.cast.i71.i = ptrtoint ptr %itxd.0.i to i32
  %sub.ptr.rhs.cast.i72.i = ptrtoint ptr %229 to i32
  %sub.ptr.sub.i73.i = sub i32 %sub.ptr.lhs.cast.i71.i, %sub.ptr.rhs.cast.i72.i
  %sub.ptr.div.i74.i = ashr exact i32 %sub.ptr.sub.i73.i, 4
  %230 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i76.i = getelementptr %struct.mtk_tx_buf, ptr %231, i32 %sub.ptr.div.i74.i
  tail call fastcc void @mtk_tx_unmap(ptr noundef %40, ptr noundef %arrayidx.i76.i, i1 noundef zeroext false) #20
  %txd3224.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %itxd.0.i, i32 0, i32 2
  %232 = ptrtoint ptr %txd3224.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -1073741824, ptr %txd3224.i, align 4
  %233 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %soc.i.i, align 64
  %caps226.i = getelementptr inbounds %struct.mtk_soc_data, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %caps226.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %caps226.i, align 4
  %and227.i = and i32 %236, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227.i)
  %cmp228.not.i = icmp eq i32 %and227.i, 0
  br i1 %cmp228.not.i, label %if.then230.i, label %do.body222.i.if.end232.i_crit_edge

do.body222.i.if.end232.i_crit_edge:               ; preds = %do.body222.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end232.i

if.then230.i:                                     ; preds = %do.body222.i
  call void @__sanitizer_cov_trace_pc() #22
  %txd2231.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %itxd_pdma.0.i, i32 0, i32 1
  %237 = ptrtoint ptr %txd2231.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 -1073741824, ptr %txd2231.i, align 4
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.then230.i, %do.body222.i.if.end232.i_crit_edge
  %txd2233.i = getelementptr inbounds %struct.mtk_tx_dma, ptr %itxd.0.i, i32 0, i32 1
  %238 = ptrtoint ptr %txd2233.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %txd2233.i, align 4
  %240 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %tx_ring, align 4
  %242 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %phys.i.i, align 4
  %sub.i78.i = sub i32 %239, %243
  %add.ptr.i79.i = getelementptr i8, ptr %241, i32 %sub.i78.i
  %244 = ptrtoint ptr %dma_pdma.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dma_pdma.i.i, align 4
  %sub.ptr.lhs.cast.i81.i = ptrtoint ptr %245 to i32
  %sub.ptr.rhs.cast.i82.i = ptrtoint ptr %241 to i32
  %sub.ptr.sub.i83.i = sub i32 %sub.ptr.lhs.cast.i81.i, %sub.ptr.rhs.cast.i82.i
  %sub.ptr.div.i84.i = ashr exact i32 %sub.ptr.sub.i83.i, 4
  %add.ptr.i85.i = getelementptr %struct.mtk_tx_dma, ptr %add.ptr.i79.i, i32 %sub.ptr.div.i84.i
  %cmp237.not.i = icmp eq ptr %add.ptr.i79.i, %txd.3.ph.i
  br i1 %cmp237.not.i, label %if.end232.i.drop_crit_edge, label %if.end232.i.do.body222.i_crit_edge

if.end232.i.do.body222.i_crit_edge:               ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body222.i

if.end232.i.drop_crit_edge:                       ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %drop

if.end45:                                         ; preds = %if.else216.i, %if.then213.i, %lor.lhs.false211.i.if.end45_crit_edge
  %call.i.i89 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_count, i32 noundef 4) #20
  %246 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %free_count, align 4
  %thresh = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 18, i32 6
  %248 = ptrtoint ptr %thresh to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %thresh, align 4
  %conv = zext i16 %249 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %conv)
  %cmp48.not = icmp sgt i32 %247, %conv
  br i1 %cmp48.not, label %if.end45.if.end57_crit_edge, label %if.then56, !prof !357

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end57

if.then56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #22
  %250 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i106 = getelementptr inbounds %struct.netdev_queue, ptr %251, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i106) #20
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end45.if.end57_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #20
  br label %cleanup

drop:                                             ; preds = %if.end232.i.drop_crit_edge, %dma_map_single_attrs.exit.i.drop_crit_edge, %dma_map_single_attrs.exit.thread.i, %if.end40.drop_crit_edge, %if.then28, %do.body24.drop_crit_edge, %entry.drop_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #20
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %252 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %253, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #20
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end57, %do.end
  %retval.0 = phi i32 [ 0, %drop ], [ 16, %do.end ], [ 0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_set_mac_address(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %p) #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end8, label %if.end.cleanup_crit_edge, !prof !357

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %page_lock = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %page_lock) #20
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 4
  %and = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %conv31 = zext i8 %14 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %arrayidx33 = getelementptr i8, ptr %3, i32 1
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %16 to i32
  %or35 = or i32 %shl32, %conv34
  br i1 %cmp.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %18, i32 3088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %or35) #20, !srcloc !351
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %arrayidx15 = getelementptr i8, ptr %3, i32 2
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  %shl17 = shl nuw i32 %conv16, 24
  %arrayidx18 = getelementptr i8, ptr %3, i32 3
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %24 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %shl20, %shl17
  %arrayidx22 = getelementptr i8, ptr %3, i32 4
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %26 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %or25 = or i32 %or21, %shl24
  %arrayidx26 = getelementptr i8, ptr %3, i32 5
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %28 to i32
  %or28 = or i32 %or25, %conv27
  %base.i84 = getelementptr inbounds %struct.mtk_eth, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %base.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %30, i32 3084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %or28) #20, !srcloc !351
  br label %if.end54

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %mul = shl i32 %32, 12
  %add = or i32 %mul, 1292
  %base.i86 = getelementptr inbounds %struct.mtk_eth, ptr %12, i32 0, i32 1
  %33 = ptrtoint ptr %base.i86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %34, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %or35) #20, !srcloc !351
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %arrayidx37 = getelementptr i8, ptr %3, i32 2
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %38 to i32
  %shl39 = shl nuw i32 %conv38, 24
  %arrayidx40 = getelementptr i8, ptr %3, i32 3
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %40 to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or43 = or i32 %shl42, %shl39
  %arrayidx44 = getelementptr i8, ptr %3, i32 4
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %42 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %or47 = or i32 %or43, %shl46
  %arrayidx48 = getelementptr i8, ptr %3, i32 5
  %43 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %44 to i32
  %or50 = or i32 %or47, %conv49
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i, align 4
  %mul52 = shl i32 %46, 12
  %add53 = or i32 %mul52, 1288
  %base.i88 = getelementptr inbounds %struct.mtk_eth, ptr %36, i32 0, i32 1
  %47 = ptrtoint ptr %base.i88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i88, align 4
  %add.ptr.i89 = getelementptr i8, ptr %48, i32 %add53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %or50) #20, !srcloc !351
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then10
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %page_lock56 = getelementptr inbounds %struct.mtk_eth, ptr %50, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %page_lock56) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ %call, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_do_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %phylink = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_mii_ioctl(ptr noundef %1, ptr noundef %ifr, i32 noundef %cmd) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %new_mtu, 18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %mul = shl i32 %7, 8
  %add2 = add i32 %mul, 65792
  %base.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %9, i32 %add2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #20, !srcloc !352
  %and4 = and i32 %10, -50331649
  call void @__sanitizer_cov_trace_const_cmp4(i32 1519, i32 %add)
  %cmp5 = icmp slt i32 %add, 1519
  br i1 %cmp5, label %if.then.if.end17_crit_edge, label %if.else

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %add)
  %cmp7 = icmp ult i32 %add, 1537
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %or9 = or i32 %and4, 16777216
  br label %if.end17

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1553, i32 %add)
  %cmp11 = icmp ult i32 %add, 1553
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #22
  %or13 = or i32 %and4, 33554432
  br label %if.end17

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #22
  %or15 = or i32 %10, 50331648
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12, %if.then8, %if.then.if.end17_crit_edge
  %mcr_new.0 = phi i32 [ %or9, %if.then8 ], [ %or13, %if.then12 ], [ %or15, %if.else14 ], [ %and4, %if.then.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr_new.0, i32 %10)
  %cmp18.not = icmp eq i32 %mcr_new.0, %10
  br i1 %cmp18.not, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %mul22 = shl i32 %14, 8
  %add23 = add i32 %mul22, 65792
  %base.i41 = getelementptr inbounds %struct.mtk_eth, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %base.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %16, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %mcr_new.0) #20, !srcloc !351
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end17.if.end25_crit_edge, %entry.if.end25_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %new_mtu, ptr %mtu, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.mtk_eth, ptr %1, i32 0, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_errors, align 4
  %msg_enable = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.143) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %pending_work = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %pending_work) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_get_stats64(ptr noundef %dev, ptr nocapture noundef writeonly %storage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_stats1 = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_stats1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i55.not = icmp eq i32 %6, 0
  br i1 %tobool.i55.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %stats_lock = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %stats_lock) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then5

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @mtk_stats_update_mac(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #20
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %syncp = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 14
  %rx_packets = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 5
  %tx_packets = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 1
  %tx_packets10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 1
  %rx_bytes = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 4
  %rx_bytes11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 2
  %tx_bytes12 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 3
  %tx_collisions = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 3
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 9
  %rx_short_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 8
  %rx_long_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 9
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 10
  %rx_overflow = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 6
  %rx_over_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 11
  %rx_fcs_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 7
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 12
  %rx_checksum_errors = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 10
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 4
  %tx_skip = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 2
  %tx_aborted_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end7
  %call8 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %7 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rx_packets, align 8
  %9 = ptrtoint ptr %storage to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %storage, align 8
  %10 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_packets, align 8
  %12 = ptrtoint ptr %tx_packets10 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %tx_packets10, align 8
  %13 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_bytes, align 8
  %15 = ptrtoint ptr %rx_bytes11 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %rx_bytes11, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %1, align 8
  %18 = ptrtoint ptr %tx_bytes12 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %tx_bytes12, align 8
  %19 = ptrtoint ptr %tx_collisions to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_collisions, align 8
  %21 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %collisions, align 8
  %22 = ptrtoint ptr %rx_short_errors to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_short_errors, align 8
  %24 = ptrtoint ptr %rx_long_errors to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_long_errors, align 8
  %add = add i64 %25, %23
  %26 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add, ptr %rx_length_errors, align 8
  %27 = ptrtoint ptr %rx_overflow to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_overflow, align 8
  %29 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %rx_over_errors, align 8
  %30 = ptrtoint ptr %rx_fcs_errors to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_fcs_errors, align 8
  %32 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %rx_crc_errors, align 8
  %33 = ptrtoint ptr %rx_checksum_errors to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_checksum_errors, align 8
  %35 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rx_errors, align 8
  %36 = ptrtoint ptr %tx_skip to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tx_skip, align 8
  %38 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %tx_aborted_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !385
  %39 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %40, %call8
  br i1 %cmp.i.i.i.i.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %41 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_errors, align 4
  %conv = zext i32 %42 to i64
  %tx_errors15 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 5
  %43 = ptrtoint ptr %tx_errors15 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv, ptr %tx_errors15, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %44 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_dropped, align 8
  %conv17 = zext i32 %45 to i64
  %rx_dropped18 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 6
  %46 = ptrtoint ptr %rx_dropped18 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv17, ptr %rx_dropped18, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %47 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_dropped, align 4
  %conv20 = zext i32 %48 to i64
  %tx_dropped21 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 7
  %49 = ptrtoint ptr %tx_dropped21 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv20, ptr %tx_dropped21, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_poll_controller(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %tx_int_mask_reg.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_int_mask_reg.i, align 16
  %base.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #20, !srcloc !352
  %and.i = and i32 %6, -268435457
  %7 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_int_mask_reg.i, align 16
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %10, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %and.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i) #20
  %rx_irq_lock.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 4
  %call2.i7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %12, i32 2600
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #20, !srcloc !352
  %and.i10 = and i32 %13, -1073741825
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %15, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %and.i10) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i7) #20
  %rx_events.i = getelementptr inbounds %struct.mtk_eth, ptr %dev, i32 0, i32 32
  %16 = ptrtoint ptr %rx_events.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_events.i, align 16
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %rx_events.i, align 16
  %rx_napi.i = getelementptr inbounds %struct.mtk_eth, ptr %dev, i32 0, i32 22
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %rx_napi.i) #20
  br i1 %call.i, label %if.then.i, label %entry.mtk_handle_irq_rx.exit_crit_edge, !prof !357

entry.mtk_handle_irq_rx.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_handle_irq_rx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__napi_schedule(ptr noundef %rx_napi.i) #20
  %rx_irq_lock.i.i = getelementptr inbounds %struct.mtk_eth, ptr %dev, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i.i) #20
  %base.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 2600
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %and.i.i = and i32 %20, -1073741825
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %22, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %and.i.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i.i, i32 noundef %call2.i.i) #20
  br label %mtk_handle_irq_rx.exit

mtk_handle_irq_rx.exit:                           ; preds = %if.then.i, %entry.mtk_handle_irq_rx.exit_crit_edge
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_irq_lock.i) #20
  %23 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_int_mask_reg.i, align 16
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %26, i32 %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #20, !srcloc !352
  %or.i = or i32 %27, 268435456
  %28 = ptrtoint ptr %tx_int_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_int_mask_reg.i, align 16
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_irq_lock.i, i32 noundef %call2.i12) #20
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_irq_lock.i) #20
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %33, i32 2600
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #20, !srcloc !352
  %or.i20 = or i32 %34, 1073741824
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i21 = getelementptr i8, ptr %36, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i21, i32 %or.i20) #20, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_irq_lock.i, i32 noundef %call2.i17) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eth_setup_tc(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mtk_fix_features(ptr noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %dev, i32 2360
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp ne i32 %1, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %arrayidx.1.i = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1.i = icmp ne i32 %3, 0
  %inc.1.i.neg = sext i1 %tobool.not.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %inc.1.i.neg)
  %tobool2.not = icmp eq i32 %inc.i, %inc.1.i.neg
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.144) #23
  %or = or i64 %features, 32768
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %features.addr.1 = phi i64 [ %features, %entry.if.end4_crit_edge ], [ %or, %if.then3 ], [ %features, %if.then.if.end4_crit_edge ]
  ret i64 %features.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_set_features(ptr nocapture noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %and2 = and i64 %features, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  %or.cond = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %if.then4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %hw.i = getelementptr i8, ptr %dev, i32 2352
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %3, i32 0, i32 1
  %arrayidx.i = getelementptr i8, ptr %dev, i32 2360
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %mul.i = shl i32 %6, 7
  %add.i.i = add i32 %mul.i, 2860
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %and.i.i = and i32 %9, -513
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %and.i.i) #20, !srcloc !351
  %add4.i.i = add i32 %mul.i, 2820
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %13, i32 %add4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 0) #20, !srcloc !351
  %arrayidx.1.i = getelementptr i8, ptr %dev, i32 2364
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx.1.i, align 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %mul.1.i = shl i32 %16, 7
  %add.i.1.i = add i32 %mul.1.i, 2924
  %17 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %18, i32 %add.i.1.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i) #20, !srcloc !352
  %and.i.1.i = and i32 %19, -513
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i10.i.1.i = getelementptr i8, ptr %21, i32 %add.i.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.1.i, i32 %and.i.1.i) #20, !srcloc !351
  %add4.i.1.i = add i32 %mul.1.i, 2884
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i12.i.1.i = getelementptr i8, ptr %23, i32 %add4.i.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.1.i, i32 0) #20, !srcloc !351
  %hwlro_ip_cnt.i = getelementptr i8, ptr %dev, i32 2368
  %24 = ptrtoint ptr %hwlro_ip_cnt.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %hwlro_ip_cnt.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !386
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @trace_hardirqs_off() #20
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #20
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #20
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #20
  tail call void @trace_hardirqs_on() #20
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #20
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #20
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #20
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !387
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !370

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @warn_bogus_irq_restore() #20
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #20, !srcloc !388
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !389
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !390
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !391
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %driver2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %7, i32 noundef 32) #20
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call8 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #20
  %n_stats = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 8
  %16 = ptrtoint ptr %n_stats to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 12, ptr %n_stats, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_get_msglevel(ptr nocapture noundef readonly %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %msg_enable = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtk_set_msglevel(ptr nocapture noundef readonly %dev, i32 noundef %value) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %msg_enable = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nway_reset(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %phylink = getelementptr i8, ptr %dev, i32 2324
  %5 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phylink, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call8 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef nonnull %6) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -16, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = call ptr @memcpy(ptr %data, ptr @mtk_ethtool_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 7), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %8 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 8), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %9 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 9), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %10 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 10), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %11 = call ptr @memcpy(ptr %add.ptr.10, ptr getelementptr inbounds ([12 x %struct.mtk_ethtool_stats], ptr @mtk_ethtool_stats, i32 0, i32 11), i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_stats = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_stats, align 4
  %hw = getelementptr i8, ptr %dev, i32 2352
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.mtk_eth, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i32.not = icmp eq i32 %11, 0
  br i1 %tobool.i32.not, label %land.lhs.true.if.end12_crit_edge, label %if.then6

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then6:                                         ; preds = %land.lhs.true
  %stats_lock = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %stats_lock) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @mtk_stats_update_mac(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #20
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %syncp = getelementptr inbounds %struct.mtk_hw_stats, ptr %1, i32 0, i32 14
  %incdec.ptr = getelementptr i64, ptr %data, i32 1
  %add.ptr.1 = getelementptr i64, ptr %1, i32 1
  %incdec.ptr.1 = getelementptr i64, ptr %data, i32 2
  %add.ptr.2 = getelementptr i64, ptr %1, i32 2
  %incdec.ptr.2 = getelementptr i64, ptr %data, i32 3
  %add.ptr.3 = getelementptr i64, ptr %1, i32 3
  %incdec.ptr.3 = getelementptr i64, ptr %data, i32 4
  %add.ptr.4 = getelementptr i64, ptr %1, i32 4
  %incdec.ptr.4 = getelementptr i64, ptr %data, i32 5
  %add.ptr.5 = getelementptr i64, ptr %1, i32 5
  %incdec.ptr.5 = getelementptr i64, ptr %data, i32 6
  %add.ptr.6 = getelementptr i64, ptr %1, i32 6
  %incdec.ptr.6 = getelementptr i64, ptr %data, i32 7
  %add.ptr.7 = getelementptr i64, ptr %1, i32 7
  %incdec.ptr.7 = getelementptr i64, ptr %data, i32 8
  %add.ptr.8 = getelementptr i64, ptr %1, i32 8
  %incdec.ptr.8 = getelementptr i64, ptr %data, i32 9
  %add.ptr.9 = getelementptr i64, ptr %1, i32 9
  %incdec.ptr.9 = getelementptr i64, ptr %data, i32 10
  %add.ptr.10 = getelementptr i64, ptr %1, i32 10
  %incdec.ptr.10 = getelementptr i64, ptr %data, i32 11
  %add.ptr.11 = getelementptr i64, ptr %1, i32 11
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end12
  %call13 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %1, align 8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %data, align 8
  %15 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.1, align 8
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %incdec.ptr, align 8
  %18 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.2, align 8
  %20 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %incdec.ptr.1, align 8
  %21 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.3, align 8
  %23 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %incdec.ptr.2, align 8
  %24 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.4, align 8
  %26 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %incdec.ptr.3, align 8
  %27 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.5, align 8
  %29 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %incdec.ptr.4, align 8
  %30 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.6, align 8
  %32 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %incdec.ptr.5, align 8
  %33 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.7, align 8
  %35 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %incdec.ptr.6, align 8
  %36 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr.8, align 8
  %38 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %incdec.ptr.7, align 8
  %39 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.9, align 8
  %41 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %incdec.ptr.8, align 8
  %42 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.10, align 8
  %44 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %incdec.ptr.9, align 8
  %45 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.11, align 8
  %47 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %incdec.ptr.10, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !385
  %48 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %49, %call13
  br i1 %cmp.i.i.i.i.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 12, i32 -95
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_get_rxnfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 47, label %sw.bb8
    i32 48, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %3 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %hw_features, align 8
  %and = and i64 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 4, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %hw_features3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %6 = ptrtoint ptr %hw_features3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hw_features3, align 8
  %and4 = and i64 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then6

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #22
  %hwlro_ip_cnt = getelementptr i8, ptr %dev, i32 2368
  %8 = ptrtoint ptr %hwlro_ip_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwlro_ip_cnt, align 4
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %10, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %hw_features9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hw_features9, align 8
  %and10 = and i64 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then12

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %fs.i, align 8
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %location.i, align 8
  %arrayidx.i = getelementptr %struct.mtk_mac, ptr %add.ptr.i.i, i32 0, i32 9, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ip4dst.i, align 4
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip4dst1.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %ip4dst1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ip4dst1.i, align 4
  %21 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %h_u.i, align 4
  %22 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %m_u.i, align 4
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %psrc.i, align 4
  %psrc7.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %psrc7.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %psrc7.i, align 4
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %25 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %pdst.i, align 2
  %pdst10.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %26 = ptrtoint ptr %pdst10.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %pdst10.i, align 2
  %tos.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tos.i, align 4
  %tos13.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %tos13.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %tos13.i, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %hw_features16 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %29 = ptrtoint ptr %hw_features16 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %hw_features16, align 8
  %and17 = and i64 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %sw.bb15.sw.epilog_crit_edge, label %if.then19

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb15
  %arrayidx.i32 = getelementptr i8, ptr %dev, i32 2360
  %31 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then19.for.inc.i_crit_edge, label %if.then.i

if.then19.for.inc.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  %33 = ptrtoint ptr %rule_locs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %rule_locs, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then19.for.inc.i_crit_edge
  %cnt.1.i = phi i32 [ 1, %if.then.i ], [ 0, %if.then19.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr i8, ptr %dev, i32 2364
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.1.i = icmp eq i32 %35, 0
  br i1 %tobool.not.1.i, label %for.inc.i.mtk_hwlro_get_fdir_all.exit_crit_edge, label %if.then.1.i

for.inc.i.mtk_hwlro_get_fdir_all.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %mtk_hwlro_get_fdir_all.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx1.1.i = getelementptr i32, ptr %rule_locs, i32 %cnt.1.i
  %36 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %arrayidx1.1.i, align 4
  %inc.1.i = add nuw nsw i32 %cnt.1.i, 1
  br label %mtk_hwlro_get_fdir_all.exit

mtk_hwlro_get_fdir_all.exit:                      ; preds = %if.then.1.i, %for.inc.i.mtk_hwlro_get_fdir_all.exit_crit_edge
  %cnt.1.1.i = phi i32 [ %inc.1.i, %if.then.1.i ], [ %cnt.1.i, %for.inc.i.mtk_hwlro_get_fdir_all.exit_crit_edge ]
  %37 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cnt.1.1.i, ptr %37, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %mtk_hwlro_get_fdir_all.exit, %sw.bb15.sw.epilog_crit_edge, %if.then12, %sw.bb8.sw.epilog_crit_edge, %if.then6, %sw.bb2.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %mtk_hwlro_get_fdir_all.exit ], [ -95, %sw.bb15.sw.epilog_crit_edge ], [ 0, %if.then12 ], [ -95, %sw.bb8.sw.epilog_crit_edge ], [ 0, %if.then6 ], [ -95, %sw.bb2.sw.epilog_crit_edge ], [ 0, %if.then ], [ -95, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_set_rxnfc(ptr nocapture noundef %dev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %3 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %hw_features, align 8
  %and = and i64 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %hw.i = getelementptr i8, ptr %dev, i32 2352
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %7 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %if.then
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ip4dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp2.i = icmp ugt i32 %12, 1
  br i1 %cmp2.i, label %lor.lhs.false1.i.sw.epilog_crit_edge, label %if.end.i

lor.lhs.false1.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr %struct.mtk_mac, ptr %add.ptr.i.i, i32 0, i32 9, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %mul.i = shl i32 %15, 1
  %16 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %location.i, align 8
  %add.i = add i32 %mul.i, %17
  %arrayidx.i.i = getelementptr i8, ptr %dev, i32 2360
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp ne i32 %19, 0
  %inc.i.i = zext i1 %tobool.not.i.i to i32
  %arrayidx.1.i.i = getelementptr i8, ptr %dev, i32 2364
  %20 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i.i = icmp ne i32 %21, 0
  %inc.1.i.i = zext i1 %tobool.not.1.i.i to i32
  %spec.select.1.i.i = add nuw nsw i32 %inc.1.i.i, %inc.i.i
  %hwlro_ip_cnt.i = getelementptr i8, ptr %dev, i32 2368
  %22 = ptrtoint ptr %hwlro_ip_cnt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.1.i.i, ptr %hwlro_ip_cnt.i, align 4
  %23 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %location.i, align 8
  %arrayidx10.i = getelementptr %struct.mtk_mac, ptr %add.ptr.i.i, i32 0, i32 9, i32 %24
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.i, align 4
  %mul.i.i = shl i32 %add.i, 6
  %add.i.i = add i32 %mul.i.i, 2860
  %base.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %6, i32 0, i32 1
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %add.i.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %and.i.i = and i32 %29, -513
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %31, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %and.i.i) #20, !srcloc !351
  %add4.i.i = add i32 %mul.i.i, 2820
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %33, i32 %add4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %26) #20, !srcloc !351
  %or.i.i = or i32 %29, 512
  %34 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %35, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %or.i.i) #20, !srcloc !351
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %hw_features3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %36 = ptrtoint ptr %hw_features3 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %hw_features3, align 8
  %and4 = and i64 %37, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then6

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb2
  %location.i14 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %38 = ptrtoint ptr %location.i14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %location.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i = icmp ugt i32 %39, 1
  br i1 %cmp.i, label %if.then6.sw.epilog_crit_edge, label %if.end.i34

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i34:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i15 = getelementptr i8, ptr %dev, i32 2304
  %hw.i16 = getelementptr i8, ptr %dev, i32 2352
  %40 = ptrtoint ptr %hw.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i16, align 4
  %arrayidx.i17 = getelementptr %struct.mtk_mac, ptr %add.ptr.i.i15, i32 0, i32 9, i32 %39
  %42 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx.i17, align 4
  %43 = ptrtoint ptr %add.ptr.i.i15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i15, align 4
  %mul.i18 = shl i32 %44, 1
  %45 = ptrtoint ptr %location.i14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %location.i14, align 8
  %add.i19 = add i32 %mul.i18, %46
  %arrayidx.i.i20 = getelementptr i8, ptr %dev, i32 2360
  %47 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i21 = icmp ne i32 %48, 0
  %inc.i.i22 = zext i1 %tobool.not.i.i21 to i32
  %arrayidx.1.i.i23 = getelementptr i8, ptr %dev, i32 2364
  %49 = ptrtoint ptr %arrayidx.1.i.i23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.1.i.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.1.i.i24 = icmp ne i32 %50, 0
  %inc.1.i.i25 = zext i1 %tobool.not.1.i.i24 to i32
  %spec.select.1.i.i26 = add nuw nsw i32 %inc.1.i.i25, %inc.i.i22
  %hwlro_ip_cnt.i27 = getelementptr i8, ptr %dev, i32 2368
  %51 = ptrtoint ptr %hwlro_ip_cnt.i27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select.1.i.i26, ptr %hwlro_ip_cnt.i27, align 4
  %mul.i.i28 = shl i32 %add.i19, 6
  %add.i.i29 = add i32 %mul.i.i28, 2860
  %base.i.i.i30 = getelementptr inbounds %struct.mtk_eth, ptr %41, i32 0, i32 1
  %52 = ptrtoint ptr %base.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i.i30, align 4
  %add.ptr.i.i.i31 = getelementptr i8, ptr %53, i32 %add.i.i29
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i31) #20, !srcloc !352
  %and.i.i32 = and i32 %54, -513
  %55 = ptrtoint ptr %base.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i.i30, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %56, i32 %add.i.i29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %and.i.i32) #20, !srcloc !351
  %add4.i.i33 = add i32 %mul.i.i28, 2820
  %57 = ptrtoint ptr %base.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i.i30, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %58, i32 %add4.i.i33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 0) #20, !srcloc !351
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i34, %if.then6.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %if.end.i, %lor.lhs.false1.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -95, %sw.bb2.sw.epilog_crit_edge ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end.i ], [ -22, %lor.lhs.false1.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -22, %if.then.sw.epilog_crit_edge ], [ 0, %if.end.i34 ], [ -22, %if.then6.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_get_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %ndev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %phylink = getelementptr i8, ptr %ndev, i32 2324
  %5 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phylink, align 4
  %call4 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %6, ptr noundef %cmd) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_set_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %ndev, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %phylink = getelementptr i8, ptr %ndev, i32 2324
  %5 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phylink, align 4
  %call4 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %6, ptr noundef %cmd) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %phy_reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %base.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %4, i32 65540
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not6.i.i = icmp sgt i32 %5, -1
  br i1 %tobool.not6.i.i, label %entry.if.end.i_crit_edge, label %if.end.lr.ph.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.end.lr.ph.i.i:                                 ; preds = %entry
  %add.i.i = add i32 %2, 100
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end2.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %mtk_mdio_busy_wait.exit.i, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  tail call void @__might_resched(ptr noundef nonnull @.str.16, i32 noundef 90, i32 noundef 0) #20
  %call.i.i.i = tail call i32 @__cond_resched() #20
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 65540
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %tobool.not.i.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i.i, label %if.end2.i.i.if.end.i_crit_edge, label %if.end2.i.i.if.end.i.i_crit_edge

if.end2.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.end2.i.i.if.end.i_crit_edge:                   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

mtk_mdio_busy_wait.exit.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.150) #23
  br label %_mtk_mdio_read.exit

if.end.i:                                         ; preds = %if.end2.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %and.i = and i32 %phy_reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end258.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.end.i
  %12 = shl i32 %phy_reg, 9
  %shl.i = and i32 %12, 1040187392
  %shl70.i = shl i32 %phy_addr, 20
  %and71.i = and i32 %shl70.i, 32505856
  %or49.i = or i32 %shl.i, %and71.i
  %conv90.i = and i32 %phy_reg, 65535
  %or72.i = or i32 %conv90.i, %or49.i
  %or93.i = or i32 %or72.i, -2147483648
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or93.i) #20, !srcloc !351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i304.i = getelementptr i8, ptr %17, i32 65540
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i304.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not6.i305.i = icmp sgt i32 %18, -1
  br i1 %tobool.not6.i305.i, label %do.end68.i.do.end174.i_crit_edge, label %if.end.lr.ph.i307.i

do.end68.i.do.end174.i_crit_edge:                 ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end174.i

if.end.lr.ph.i307.i:                              ; preds = %do.end68.i
  %add.i306.i = add i32 %15, 100
  br label %if.end.i310.i

if.end.i310.i:                                    ; preds = %if.end2.i314.i.if.end.i310.i_crit_edge, %if.end.lr.ph.i307.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i308.i = sub i32 %add.i306.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i308.i)
  %cmp.i309.i = icmp slt i32 %sub.i308.i, 0
  br i1 %cmp.i309.i, label %mtk_mdio_busy_wait.exit317.i, label %if.end2.i314.i

if.end2.i314.i:                                   ; preds = %if.end.i310.i
  tail call void @__might_resched(ptr noundef nonnull @.str.16, i32 noundef 90, i32 noundef 0) #20
  %call.i.i311.i = tail call i32 @__cond_resched() #20
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i312.i = getelementptr i8, ptr %21, i32 65540
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i312.i) #20, !srcloc !352
  %tobool.not.i313.i = icmp sgt i32 %22, -1
  br i1 %tobool.not.i313.i, label %if.end2.i314.i.do.end174.i_crit_edge, label %if.end2.i314.i.if.end.i310.i_crit_edge

if.end2.i314.i.if.end.i310.i_crit_edge:           ; preds = %if.end2.i314.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i310.i

if.end2.i314.i.do.end174.i_crit_edge:             ; preds = %if.end2.i314.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end174.i

mtk_mdio_busy_wait.exit317.i:                     ; preds = %if.end.i310.i
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.150) #23
  br label %_mtk_mdio_read.exit

do.end174.i:                                      ; preds = %if.end2.i314.i.do.end174.i_crit_edge, %do.end68.i.do.end174.i_crit_edge
  %or178.i = or i32 %or49.i, -2146697216
  %25 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i321.i = getelementptr i8, ptr %26, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321.i, i32 %or178.i) #20, !srcloc !351
  br label %if.end263.i

do.end258.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %shl235.i = shl i32 %phy_reg, 25
  %and236.i = and i32 %shl235.i, 1040187392
  %shl260.i = shl i32 %phy_addr, 20
  %and261.i = and i32 %shl260.i, 32505856
  %or237.i = or i32 %and261.i, %and236.i
  %or262.i = or i32 %or237.i, -2146893824
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i323.i = getelementptr i8, ptr %28, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323.i, i32 %or262.i) #20, !srcloc !351
  br label %if.end263.i

if.end263.i:                                      ; preds = %do.end258.i, %do.end174.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i325.i = getelementptr i8, ptr %31, i32 65540
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i325.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool.not6.i326.i = icmp sgt i32 %32, -1
  br i1 %tobool.not6.i326.i, label %if.end263.i.if.end268.i_crit_edge, label %if.end.lr.ph.i328.i

if.end263.i.if.end268.i_crit_edge:                ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end268.i

if.end.lr.ph.i328.i:                              ; preds = %if.end263.i
  %add.i327.i = add i32 %29, 100
  br label %if.end.i331.i

if.end.i331.i:                                    ; preds = %if.end2.i335.i.if.end.i331.i_crit_edge, %if.end.lr.ph.i328.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i329.i = sub i32 %add.i327.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i329.i)
  %cmp.i330.i = icmp slt i32 %sub.i329.i, 0
  br i1 %cmp.i330.i, label %mtk_mdio_busy_wait.exit338.i, label %if.end2.i335.i

if.end2.i335.i:                                   ; preds = %if.end.i331.i
  tail call void @__might_resched(ptr noundef nonnull @.str.16, i32 noundef 90, i32 noundef 0) #20
  %call.i.i332.i = tail call i32 @__cond_resched() #20
  %34 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i333.i = getelementptr i8, ptr %35, i32 65540
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i333.i) #20, !srcloc !352
  %tobool.not.i334.i = icmp sgt i32 %36, -1
  br i1 %tobool.not.i334.i, label %if.end2.i335.i.if.end268.i_crit_edge, label %if.end2.i335.i.if.end.i331.i_crit_edge

if.end2.i335.i.if.end.i331.i_crit_edge:           ; preds = %if.end2.i335.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i331.i

if.end2.i335.i.if.end268.i_crit_edge:             ; preds = %if.end2.i335.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end268.i

mtk_mdio_busy_wait.exit338.i:                     ; preds = %if.end.i331.i
  call void @__sanitizer_cov_trace_pc() #22
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.150) #23
  br label %_mtk_mdio_read.exit

if.end268.i:                                      ; preds = %if.end2.i335.i.if.end268.i_crit_edge, %if.end263.i.if.end268.i_crit_edge
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i340.i = getelementptr i8, ptr %40, i32 65540
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i340.i) #20, !srcloc !352
  %and270.i = and i32 %41, 65535
  br label %_mtk_mdio_read.exit

_mtk_mdio_read.exit:                              ; preds = %if.end268.i, %mtk_mdio_busy_wait.exit338.i, %mtk_mdio_busy_wait.exit317.i, %mtk_mdio_busy_wait.exit.i
  %retval.0.i = phi i32 [ %and270.i, %if.end268.i ], [ -110, %mtk_mdio_busy_wait.exit.i ], [ -110, %mtk_mdio_busy_wait.exit317.i ], [ -110, %mtk_mdio_busy_wait.exit338.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %phy_reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i16 %val to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %base.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %4, i32 65540
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not6.i.i = icmp sgt i32 %5, -1
  br i1 %tobool.not6.i.i, label %entry.if.end.i_crit_edge, label %if.end.lr.ph.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.end.lr.ph.i.i:                                 ; preds = %entry
  %add.i.i = add i32 %2, 100
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end2.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge, label %if.end2.i.i

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  tail call void @__might_resched(ptr noundef nonnull @.str.16, i32 noundef 90, i32 noundef 0) #20
  %call.i.i.i = tail call i32 @__cond_resched() #20
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 65540
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #20, !srcloc !352
  %tobool.not.i.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i.i, label %if.end2.i.i.if.end.i_crit_edge, label %if.end2.i.i.if.end.i.i_crit_edge

if.end2.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.end2.i.i.if.end.i_crit_edge:                   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.end.i:                                         ; preds = %if.end2.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %and.i = and i32 %phy_reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end283.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.end.i
  %10 = shl i32 %phy_reg, 9
  %shl.i = and i32 %10, 1040187392
  %shl70.i = shl i32 %phy_addr, 20
  %and71.i = and i32 %shl70.i, 32505856
  %or49.i = or i32 %shl.i, %and71.i
  %conv90.i = and i32 %phy_reg, 65535
  %or72.i = or i32 %conv90.i, %or49.i
  %or93.i = or i32 %or72.i, -2147483648
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or93.i) #20, !srcloc !351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i360.i = getelementptr i8, ptr %15, i32 65540
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i360.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool.not6.i361.i = icmp sgt i32 %16, -1
  br i1 %tobool.not6.i361.i, label %do.end68.i.do.end174.i_crit_edge, label %if.end.lr.ph.i363.i

do.end68.i.do.end174.i_crit_edge:                 ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end174.i

if.end.lr.ph.i363.i:                              ; preds = %do.end68.i
  %add.i362.i = add i32 %13, 100
  br label %if.end.i366.i

if.end.i366.i:                                    ; preds = %if.end2.i370.i.if.end.i366.i_crit_edge, %if.end.lr.ph.i363.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i364.i = sub i32 %add.i362.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i364.i)
  %cmp.i365.i = icmp slt i32 %sub.i364.i, 0
  br i1 %cmp.i365.i, label %if.end.i366.i.cleanup.sink.split.i_crit_edge, label %if.end2.i370.i

if.end.i366.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end.i366.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end2.i370.i:                                   ; preds = %if.end.i366.i
  tail call void @__might_resched(ptr noundef nonnull @.str.16, i32 noundef 90, i32 noundef 0) #20
  %call.i.i367.i = tail call i32 @__cond_resched() #20
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i368.i = getelementptr i8, ptr %19, i32 65540
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i368.i) #20, !srcloc !352
  %tobool.not.i369.i = icmp sgt i32 %20, -1
  br i1 %tobool.not.i369.i, label %if.end2.i370.i.do.end174.i_crit_edge, label %if.end2.i370.i.if.end.i366.i_crit_edge

if.end2.i370.i.if.end.i366.i_crit_edge:           ; preds = %if.end2.i370.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i366.i

if.end2.i370.i.do.end174.i_crit_edge:             ; preds = %if.end2.i370.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end174.i

do.end174.i:                                      ; preds = %if.end2.i370.i.do.end174.i_crit_edge, %do.end68.i.do.end174.i_crit_edge
  %or178.i = or i32 %or49.i, %conv
  %or203.i = or i32 %or178.i, -2147221504
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i377.i = getelementptr i8, ptr %22, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i377.i, i32 %or203.i) #20, !srcloc !351
  br label %if.end313.i

do.end283.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %shl260.i = shl i32 %phy_reg, 25
  %and261.i = and i32 %shl260.i, 1040187392
  %shl285.i = shl i32 %phy_addr, 20
  %and286.i = and i32 %shl285.i, 32505856
  %or262.i = or i32 %and286.i, %and261.i
  %or287.i = or i32 %or262.i, %conv
  %or312.i = or i32 %or287.i, -2147155968
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i379.i = getelementptr i8, ptr %24, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i379.i, i32 %or312.i) #20, !srcloc !351
  br label %if.end313.i

if.end313.i:                                      ; preds = %do.end283.i, %do.end174.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i381.i = getelementptr i8, ptr %27, i32 65540
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i381.i) #20, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool.not6.i382.i = icmp sgt i32 %28, -1
  br i1 %tobool.not6.i382.i, label %if.end313.i._mtk_mdio_write.exit_crit_edge, label %if.end.lr.ph.i384.i

if.end313.i._mtk_mdio_write.exit_crit_edge:       ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mtk_mdio_write.exit

if.end.lr.ph.i384.i:                              ; preds = %if.end313.i
  %add.i383.i = add i32 %25, 100
  br label %if.end.i387.i

if.end.i387.i:                                    ; preds = %if.end2.i391.i.if.end.i387.i_crit_edge, %if.end.lr.ph.i384.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i385.i = sub i32 %add.i383.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i385.i)
  %cmp.i386.i = icmp slt i32 %sub.i385.i, 0
  br i1 %cmp.i386.i, label %if.end.i387.i.cleanup.sink.split.i_crit_edge, label %if.end2.i391.i

if.end.i387.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end.i387.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.i

if.end2.i391.i:                                   ; preds = %if.end.i387.i
  tail call void @__might_resched(ptr noundef nonnull @.str.16, i32 noundef 90, i32 noundef 0) #20
  %call.i.i388.i = tail call i32 @__cond_resched() #20
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i389.i = getelementptr i8, ptr %31, i32 65540
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i389.i) #20, !srcloc !352
  %tobool.not.i390.i = icmp sgt i32 %32, -1
  br i1 %tobool.not.i390.i, label %if.end2.i391.i._mtk_mdio_write.exit_crit_edge, label %if.end2.i391.i.if.end.i387.i_crit_edge

if.end2.i391.i.if.end.i387.i_crit_edge:           ; preds = %if.end2.i391.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i387.i

if.end2.i391.i._mtk_mdio_write.exit_crit_edge:    ; preds = %if.end2.i391.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mtk_mdio_write.exit

cleanup.sink.split.i:                             ; preds = %if.end.i387.i.cleanup.sink.split.i_crit_edge, %if.end.i366.i.cleanup.sink.split.i_crit_edge, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.150) #23
  br label %_mtk_mdio_write.exit

_mtk_mdio_write.exit:                             ; preds = %cleanup.sink.split.i, %if.end2.i391.i._mtk_mdio_write.exit_crit_edge, %if.end313.i._mtk_mdio_write.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end313.i._mtk_mdio_write.exit_crit_edge ], [ -110, %cleanup.sink.split.i ], [ 0, %if.end2.i391.i._mtk_mdio_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_stats_update(ptr nocapture noundef readonly %eth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %lor.lhs.false

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %hw_stats = getelementptr inbounds %struct.mtk_mac, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_stats, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %stats_lock = getelementptr inbounds %struct.mtk_hw_stats, ptr %3, i32 0, i32 12
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %stats_lock) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.then8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @mtk_stats_update_mac(ptr noundef %5)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %hw_stats13 = getelementptr inbounds %struct.mtk_mac, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %hw_stats13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_stats13, align 4
  %stats_lock14 = getelementptr inbounds %struct.mtk_hw_stats, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock14) #20
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %hw_stats.1 = getelementptr inbounds %struct.mtk_mac, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %hw_stats.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_stats.1, align 4
  %tobool3.not.1 = icmp eq ptr %13, null
  br i1 %tobool3.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  %stats_lock.1 = getelementptr inbounds %struct.mtk_hw_stats, ptr %13, i32 0, i32 12
  %call.i.1 = tail call i32 @_raw_spin_trylock(ptr noundef %stats_lock.1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool7.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool7.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.then8.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

if.then8.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #22
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @mtk_stats_update_mac(ptr noundef %15)
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %hw_stats13.1 = getelementptr inbounds %struct.mtk_mac, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %hw_stats13.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_stats13.1, align 4
  %stats_lock14.1 = getelementptr inbounds %struct.mtk_hw_stats, ptr %19, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock14.1) #20
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %if.end.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim(ptr noundef, [3 x i64]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_frag_align(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !146, !147, !149, !151, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !201, !202, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !298, !299, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !319, !320, !321, !323, !325, !327, !328, !329, !330, !332, !333, !334, !335, !336, !338, !339, !340}
!llvm.named.register.sp = !{!341}
!llvm.module.flags = !{!342, !343, !344, !345, !346, !347, !348, !349}
!llvm.ident = !{!350}

!0 = !{ptr @__param_msg_level, !1, !"__param_msg_level", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_msg_leveltype553, !1, !"__UNIQUE_ID_msg_leveltype553", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msg_level554, !4, !"__UNIQUE_ID_msg_level554", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 29, i32 1}
!5 = !{ptr @of_mtk_match, !6, !"of_mtk_match", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3320, i32 27}
!7 = !{ptr @__initcall__kmod_mtk_eth__729_3340_mtk_driver_init6, !8, !"__initcall__kmod_mtk_eth__729_3340_mtk_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3340, i32 1}
!9 = !{ptr @__exitcall_mtk_driver_exit, !8, !"__exitcall_mtk_driver_exit", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file730, !11, !"__UNIQUE_ID_file730", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3342, i32 1}
!12 = !{ptr @__UNIQUE_ID_license731, !11, !"__UNIQUE_ID_license731", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author732, !14, !"__UNIQUE_ID_author732", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3343, i32 1}
!15 = !{ptr @__UNIQUE_ID_description733, !16, !"__UNIQUE_ID_description733", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3344, i32 1}
!17 = !{ptr @__param_str_msg_level, !1, !"__param_str_msg_level", i1 false, i1 false}
!18 = !{ptr @mtk_msg_level, !19, !"mtk_msg_level", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 27, i32 12}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mt2701_data, !24, !"mt2701_data", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3273, i32 34}
!25 = !{ptr @mt7621_data, !26, !"mt7621_data", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3280, i32 34}
!27 = !{ptr @mt7622_data, !28, !"mt7622_data", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3288, i32 34}
!29 = !{ptr @mt7623_data, !30, !"mt7623_data", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3297, i32 34}
!31 = !{ptr @mt7629_data, !32, !"mt7629_data", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3305, i32 34}
!33 = !{ptr @rt5350_data, !34, !"rt5350_data", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3313, i32 34}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3335, i32 11}
!37 = !{ptr @mtk_driver, !38, !"mtk_driver", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3331, i32 31}
!39 = !{ptr @mtk_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3075, i32 2}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mtk_probe.__key.3, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3076, i32 2}
!44 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtk_probe.__key.5, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3077, i32 2}
!47 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mtk_probe.__key.7, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3078, i32 2}
!50 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mtk_probe.__key.9, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3081, i32 2}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mtk_probe.__key.11, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3084, i32 2}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3088, i32 14}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3090, i32 4}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mtk_probe._entry, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @mtk_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3097, i32 13}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3099, i32 4}
!71 = !{ptr @mtk_probe._entry.20, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_probe._entry_ptr.22, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3119, i32 12}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3121, i32 4}
!77 = !{ptr @mtk_probe._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mtk_probe._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3132, i32 4}
!81 = !{ptr @mtk_probe._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mtk_probe._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3143, i32 5}
!85 = !{ptr @mtk_probe._entry.30, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mtk_probe._entry_ptr.32, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @mtk_probe.__key.33, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3152, i32 2}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3162, i32 11}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3217, i32 4}
!94 = !{ptr @mtk_probe._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mtk_probe._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 3220, i32 4}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 2}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 11}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 23}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 30}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 37}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 44}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 51}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 54, i32 57}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 55, i32 2}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 55, i32 18}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 55, i32 34}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 55, i32 51}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 56, i32 2}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 56, i32 19}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 56, i32 36}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 56, i32 54}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 57, i32 2}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 57, i32 14}
!134 = !{ptr @mtk_clks_source_name, !135, !"mtk_clks_source_name", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 53, i32 27}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2629, i32 2}
!138 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mtk_pending_work.__UNIQUE_ID_ddebug725, !137, !"__UNIQUE_ID_ddebug725", i1 false, i1 false}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2634, i32 2}
!143 = !{ptr @mtk_pending_work.__UNIQUE_ID_ddebug726, !142, !"__UNIQUE_ID_ddebug726", i1 false, i1 false}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2642, i32 2}
!146 = !{ptr @mtk_pending_work.__UNIQUE_ID_ddebug727, !145, !"__UNIQUE_ID_ddebug727", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2660, i32 4}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2666, i32 2}
!151 = !{ptr @mtk_pending_work.__UNIQUE_ID_ddebug728, !150, !"__UNIQUE_ID_ddebug728", i1 false, i1 false}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2257, i32 19}
!154 = !{ptr @__func__.mtk_open, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2257, i32 53}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2035, i32 3}
!158 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mtk_dma_busy_wait._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @mtk_dma_busy_wait._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!163 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2466, i32 4}
!167 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mtk_hw_init._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @mtk_hw_init._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2914, i32 42}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2921, i32 3}
!174 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mtk_add_mac._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @mtk_add_mac._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2927, i32 3}
!179 = !{ptr @mtk_add_mac._entry.75, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @mtk_add_mac._entry_ptr.77, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2932, i32 3}
!183 = !{ptr @mtk_add_mac._entry.78, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @mtk_add_mac._entry_ptr.80, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2938, i32 3}
!187 = !{ptr @mtk_add_mac._entry.81, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @mtk_add_mac._entry_ptr.83, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2954, i32 3}
!191 = !{ptr @mtk_add_mac._entry.84, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @mtk_add_mac._entry_ptr.86, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @mtk_add_mac.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2958, i32 2}
!195 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @mtk_add_mac.__key.88, !197, !"__key", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2959, i32 2}
!198 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2965, i32 3}
!201 = !{ptr @mtk_add_mac._entry.90, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @mtk_add_mac._entry_ptr.92, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @mtk_phylink_ops, !204, !"mtk_phylink_ops", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 516, i32 37}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 400, i32 3}
!207 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @mtk_mac_config._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @mtk_mac_config._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 418, i32 2}
!212 = !{ptr @mtk_mac_config._entry.95, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @mtk_mac_config._entry_ptr.97, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 423, i32 2}
!216 = !{ptr @mtk_mac_config._entry.98, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @mtk_mac_config._entry_ptr.100, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 212, i32 3}
!220 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @mt7621_gmac0_rgmii_adjust._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @mt7621_gmac0_rgmii_adjust._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 237, i32 4}
!225 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @mtk_gmac0_rgmii_adjust._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @mtk_gmac0_rgmii_adjust._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @mtk_gmac0_rgmii_adjust._entry.105, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 252, i32 3}
!230 = !{ptr @mtk_gmac0_rgmii_adjust._entry_ptr.106, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../include/linux/phy.h", i32 211, i32 10}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../include/linux/phy.h", i32 213, i32 10}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../include/linux/phy.h", i32 215, i32 10}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../include/linux/phy.h", i32 217, i32 10}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../include/linux/phy.h", i32 219, i32 10}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../include/linux/phy.h", i32 221, i32 10}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../include/linux/phy.h", i32 223, i32 10}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../include/linux/phy.h", i32 225, i32 10}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../include/linux/phy.h", i32 227, i32 10}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../include/linux/phy.h", i32 229, i32 10}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../include/linux/phy.h", i32 231, i32 10}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../include/linux/phy.h", i32 233, i32 10}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../include/linux/phy.h", i32 235, i32 10}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../include/linux/phy.h", i32 237, i32 10}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../include/linux/phy.h", i32 239, i32 10}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../include/linux/phy.h", i32 241, i32 10}
!263 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../include/linux/phy.h", i32 243, i32 10}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../include/linux/phy.h", i32 245, i32 10}
!267 = !{ptr @.str.125, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../include/linux/phy.h", i32 247, i32 10}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../include/linux/phy.h", i32 249, i32 10}
!271 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../include/linux/phy.h", i32 251, i32 10}
!273 = !{ptr @.str.128, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../include/linux/phy.h", i32 253, i32 10}
!275 = !{ptr @.str.129, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../include/linux/phy.h", i32 255, i32 10}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../include/linux/phy.h", i32 257, i32 10}
!279 = !{ptr @.str.131, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../include/linux/phy.h", i32 259, i32 10}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../include/linux/phy.h", i32 261, i32 10}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../include/linux/phy.h", i32 263, i32 10}
!285 = !{ptr @.str.134, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../include/linux/phy.h", i32 265, i32 10}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../include/linux/phy.h", i32 267, i32 10}
!289 = !{ptr @.str.136, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../include/linux/phy.h", i32 269, i32 10}
!291 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../include/linux/phy.h", i32 271, i32 10}
!293 = !{ptr @mtk_netdev_ops, !294, !"mtk_netdev_ops", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2892, i32 36}
!295 = !{ptr @.str.138, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2559, i32 3}
!297 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @mtk_init._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @mtk_init._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.140, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 1147, i32 3}
!302 = !{ptr @.str.141, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 1156, i32 4}
!304 = distinct !{null, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!306 = !{ptr @.str.143, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2128, i32 2}
!308 = !{ptr @.str.144, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 1997, i32 21}
!310 = !{ptr @mtk_ethtool_ops, !311, !"mtk_ethtool_ops", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 2877, i32 33}
!312 = !{ptr @mtk_ethtool_stats, !313, !"mtk_ethtool_stats", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 38, i32 3}
!314 = !{ptr @.str.145, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 530, i32 51}
!316 = !{ptr @.str.146, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 532, i32 3}
!318 = !{ptr @.str.147, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @mtk_mdio_init._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @mtk_mdio_init._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.148, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 547, i32 23}
!323 = !{ptr @.str.149, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 554, i32 46}
!325 = !{ptr @.str.150, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 93, i32 2}
!327 = !{ptr @.str.151, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @mtk_mdio_busy_wait._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @mtk_mdio_busy_wait._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.152, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 1501, i32 3}
!332 = !{ptr @.str.153, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.154, !331, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @mtk_napi_tx._entry, !331, !"_entry", i1 false, i1 false}
!335 = !{ptr @mtk_napi_tx._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.155, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_soc.c", i32 1534, i32 4}
!338 = !{ptr @.str.156, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @mtk_napi_rx._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @mtk_napi_rx._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{!"sp"}
!342 = !{i32 1, !"wchar_size", i32 2}
!343 = !{i32 1, !"min_enum_size", i32 4}
!344 = !{i32 8, !"branch-target-enforcement", i32 0}
!345 = !{i32 8, !"sign-return-address", i32 0}
!346 = !{i32 8, !"sign-return-address-all", i32 0}
!347 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!348 = !{i32 7, !"uwtable", i32 1}
!349 = !{i32 7, !"frame-pointer", i32 2}
!350 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!351 = !{i64 6896627}
!352 = !{i64 6897045}
!353 = !{i64 2150207565}
!354 = !{i64 2150212499}
!355 = !{i64 2150234217}
!356 = !{i64 2150239111}
!357 = !{!"branch_weights", i32 2000, i32 1}
!358 = !{i64 2150315638}
!359 = !{i64 2150315963}
!360 = !{i8 0, i8 2}
!361 = !{!"auto-init"}
!362 = !{i64 2148373661, i64 2148373666, i64 2148373679, i64 2148373723, i64 2148373757, i64 2148373778}
!363 = !{i64 2148569126, i64 2148569158, i64 2148569187, i64 2148569221, i64 2148569252, i64 2148569275}
!364 = !{i64 2148658207}
!365 = !{i64 2159944228}
!366 = !{i64 2159944070}
!367 = !{i64 2148657094}
!368 = !{i64 2148567513, i64 2148567545, i64 2148567574, i64 2148567608, i64 2148567639, i64 2148567662}
!369 = !{i64 2148560268, i64 2148560294, i64 2148560323, i64 2148560357, i64 2148560388, i64 2148560411}
!370 = !{!"branch_weights", i32 1, i32 2000}
!371 = !{i64 2156607184}
!372 = !{!"branch_weights", i32 4001, i32 4000000}
!373 = !{i64 2159886612}
!374 = !{i64 2148649799}
!375 = !{i64 2148564263, i64 2148564295, i64 2148564324, i64 2148564358, i64 2148564389, i64 2148564412}
!376 = !{i64 2149695769}
!377 = !{i64 2159896190}
!378 = !{i64 2148561798, i64 2148561830, i64 2148561859, i64 2148561893, i64 2148561924, i64 2148561947}
!379 = !{i64 2159899756}
!380 = !{i64 2155809671, i64 2155810171, i64 2155809708, i64 2155809764, i64 2155809798, i64 2155809822, i64 2155809863, i64 2155809884, i64 2155809912, i64 2155809946}
!381 = !{i64 2155811015}
!382 = !{i64 2156606113}
!383 = !{i64 2148562733, i64 2148562759, i64 2148562788, i64 2148562822, i64 2148562853, i64 2148562876}
!384 = !{i64 2159877109}
!385 = !{i64 2150315313}
!386 = !{i64 954526, i64 954587}
!387 = !{i64 957258}
!388 = !{i64 957543}
!389 = !{i64 2155450051}
!390 = !{i64 2155449893}
!391 = !{i64 2155450221}
