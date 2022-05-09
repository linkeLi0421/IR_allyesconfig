; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_tc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.144, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.144 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.145, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.145 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.stmmac_flow_entry = type { i32, i32, i8, i32, i32, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_tc_entry = type { i8, i8, i8, i8, ptr, i32, i32, i32, %struct.anon.125 }
%struct.anon.125 = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.tc_cls_u32_offload = type { %struct.flow_cls_common_offload, i32, %union.anon.126 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%union.anon.126 = type { %struct.tc_cls_u32_knode }
%struct.tc_cls_u32_knode = type { ptr, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.tc_u32_sel = type { i8, i8, i8, i16, i16, i16, i16, i32, [0 x %struct.tc_u32_key] }
%struct.tc_u32_key = type { i32, i32, i32, i32 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.140, %struct.anon.141 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.anon.141 = type { i32, i32, i32, i32 }
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.stmmac_rfs_entry = type { i32, i16, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.tc_etf_qopt_offload = type { i8, i32 }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_match_ports = type { ptr, ptr }
%struct.anon.156 = type { i16, i16 }

@dwmac510_tc_ops = dso_local constant { %struct.stmmac_tc_ops, [40 x i8] } { %struct.stmmac_tc_ops { ptr @tc_init, ptr @tc_setup_cls_u32, ptr @tc_setup_cbs, ptr @tc_setup_cls, ptr @tc_setup_taprio, ptr @tc_setup_etf }, [40 x i8] zeroinitializer }, align 32
@tc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enabled L3L4 Flow TC (entries=%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc_init\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc_init._entry_ptr = internal global ptr @tc_init._entry, section ".printk_index", align 4
@tc_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 337, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Enabling HW TC (entries=%d, max_off=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@tc_init._entry_ptr.7 = internal global ptr @tc_init._entry.5, section ".printk_index", align 4
@tc_rfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Enabled RFS Flow TC (entries=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tc_rfs_init\00", [20 x i8] zeroinitializer }, align 32
@tc_rfs_init._entry_ptr = internal global ptr @tc_rfs_init._entry, section ".printk_index", align 4
@tc_setup_cbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CBS queue %d: send %d, idle %d, hi %d, lo %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc_setup_cbs\00", [19 x i8] zeroinitializer }, align 32
@tc_setup_cbs._entry_ptr = internal global ptr @tc_setup_cbs._entry, section ".printk_index", align 4
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg = internal constant [57 x i8] c"stmmac: Driver supports only default HW stats type \22any\22\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"stmmac: Mixing HW stats types for actions is not supported\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid traffic class\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Only full mask is supported for EthType filter\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EthType(0x%x) is not supported\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Only full mask is supported for VLAN priority\00", [50 x i8] zeroinitializer }, align 32
@tc_setup_taprio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&priv->plat->est->lock\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to configure EST\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"configured EST\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"start FPE handshake\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disabled FPE\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stop FPE handshake\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s ETF for Queue %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@switch.table.tc_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 128, i32 256], [20 x i8] zeroinitializer }, align 32
@switch.table.tc_init.27 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 128, i32 256], [20 x i8] zeroinitializer }, align 32
@switch.table.tc_setup_taprio = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 2048]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 1000, i64 2500, i64 5000, i64 10000]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 35020, i64 35063]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 7]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 35020, i64 35063]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"dwmac510_tc_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1107, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 277, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 336, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 253, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 422, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 354, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 323, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 752, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 762, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 789, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 695, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 979, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1052, i32 25 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1056, i32 25 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1060, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1079, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1082, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1102, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1103, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [51 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1103, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"switch.table.tc_init\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [24 x i8] c"switch.table.tc_init.27\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [29 x i8] c"switch.table.tc_setup_taprio\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @tc_init._entry, ptr @tc_init._entry.5, ptr @tc_init._entry_ptr, ptr @tc_init._entry_ptr.7, ptr @tc_rfs_init._entry, ptr @tc_rfs_init._entry_ptr, ptr @tc_setup_cbs._entry, ptr @tc_setup_cbs._entry_ptr, ptr @dwmac510_tc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @tc_setup_taprio.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.tc_init, ptr @switch.table.tc_init.27, ptr @switch.table.tc_setup_taprio], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac510_tc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_rfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_setup_cbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_setup_taprio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc_init.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tc_setup_taprio to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_calc_tas_basetime(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, i64 noundef %old_base_time, i64 noundef %current_time, i64 noundef %cycle_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 255, i32 16)
  call void @__sanitizer_cov_trace_cmp8(i64 %current_time, i64 %old_base_time)
  %cmp3.i.i = icmp slt i64 %current_time, %old_base_time
  br i1 %cmp3.i.i, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i64 %current_time, %old_base_time
  %call1 = tail call i64 @div64_s64(i64 noundef %sub, i64 noundef %cycle_time) #6
  %add = add i64 %call1, 1
  %mul = mul i64 %add, %cycle_time
  %add2 = add i64 %mul, %old_base_time
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %add2.sink = phi i64 [ %add2, %if.else ], [ %old_base_time, %entry.if.end_crit_edge ]
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %agg.result, i64 noundef %add2.sink) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_init(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %l3l4fnum = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 39
  %0 = ptrtoint ptr %l3l4fnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l3l4fnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %flow_entries_max = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 92
  %2 = ptrtoint ptr %flow_entries_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %flow_entries_max, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 24) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !71

devm_kcalloc.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %flow_entries101 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 93
  %5 = ptrtoint ptr %flow_entries101 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %flow_entries101, align 128
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %8 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %8, i32 noundef 3520) #6
  %flow_entries = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 93
  %9 = ptrtoint ptr %flow_entries to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %flow_entries, align 128
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %10 = ptrtoint ptr %flow_entries_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_entries_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp108.not = icmp eq i32 %11, 0
  br i1 %cmp108.not, label %for.cond.preheader.do.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %flow_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flow_entries, align 128
  %idx = getelementptr %struct.stmmac_flow_entry, ptr %13, i32 %i.0109, i32 4
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.0109, ptr %idx, align 4
  %inc = add nuw i32 %i.0109, 1
  %15 = ptrtoint ptr %flow_entries_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flow_entries_max, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %for.body.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.do.end_crit_edge ], [ %16, %for.body.do.end_crit_edge ]
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %.lcssa) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %rfs_entries_max.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 94
  %19 = ptrtoint ptr %rfs_entries_max.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %rfs_entries_max.i, align 4
  %arrayidx2.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 94, i32 1
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 94, i32 2
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx4.i, align 4
  %rfs_entries_total.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 96
  %22 = ptrtoint ptr %rfs_entries_total.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rfs_entries_total.i, align 4
  %add.2.i = add i32 %23, 10
  store i32 %add.2.i, ptr %rfs_entries_total.i, align 4
  %device.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.2.i, i32 20) #6
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !71

devm_kcalloc.exit.thread.i:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %rfs_entries24.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 97
  %26 = ptrtoint ptr %rfs_entries24.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rfs_entries24.i, align 32
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end11
  %27 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i, align 8
  %29 = extractvalue { i32, i1 } %24, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef %29, i32 noundef 3520) #6
  %rfs_entries.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 97
  %30 = ptrtoint ptr %rfs_entries.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i.i, ptr %rfs_entries.i, align 32
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end15

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %devm_kcalloc.exit.i
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i, align 8
  %33 = ptrtoint ptr %rfs_entries_total.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rfs_entries_total.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef %34) #9
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %35 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %plat, align 128
  %fpe_cfg = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %fpe_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fpe_cfg, align 4
  %tobool16.not = icmp eq ptr %38, null
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %39 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef 12, i32 noundef 3520) #6
  %41 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %plat, align 128
  %fpe_cfg21 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %fpe_cfg21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %fpe_cfg21, align 4
  %44 = load ptr, ptr %plat, align 128
  %fpe_cfg23 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %fpe_cfg23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fpe_cfg23, align 4
  %tobool24.not = icmp eq ptr %46, null
  br i1 %tobool24.not, label %if.then17.cleanup_crit_edge, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %47 = call ptr @memset(ptr %38, i32 0, i32 12)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then17.if.end29_crit_edge
  %frpsel = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 30
  %48 = ptrtoint ptr %frpsel to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frpsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool30.not = icmp eq i32 %49, 0
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %frpbs = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 31
  %50 = ptrtoint ptr %frpbs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %frpbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %switch.lookup, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tc_init, i32 0, i32 %51
  %53 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load = load i32, ptr %switch.gep, align 4
  %tc_off_max36 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 90
  %54 = ptrtoint ptr %tc_off_max36 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %switch.load, ptr %tc_off_max36, align 4
  %frpes = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 32
  %55 = ptrtoint ptr %frpes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frpes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %switch.lookup113, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup113:                                 ; preds = %switch.lookup
  %switch.gep114 = getelementptr inbounds [3 x i32], ptr @switch.table.tc_init.27, i32 0, i32 %56
  %58 = ptrtoint ptr %switch.gep114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load115 = load i32, ptr %switch.gep114, align 4
  %tc_entries_max = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 89
  %59 = ptrtoint ptr %tc_entries_max to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %switch.load115, ptr %tc_entries_max, align 16
  %60 = mul nuw nsw i32 %switch.load115, 36
  %61 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device.i, align 8
  %call5.i.i96 = tail call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef %60, i32 noundef 3520) #6
  %tc_entries = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 91
  %63 = ptrtoint ptr %tc_entries to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call5.i.i96, ptr %tc_entries, align 8
  %tobool45.not = icmp eq ptr %call5.i.i96, null
  br i1 %tobool45.not, label %switch.lookup113.cleanup_crit_edge, label %if.end47

switch.lookup113.cleanup_crit_edge:               ; preds = %switch.lookup113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %switch.lookup113
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %switch.load115, -1
  %arrayidx49 = getelementptr %struct.stmmac_tc_entry, ptr %call5.i.i96, i32 %sub
  %64 = call ptr @memset(ptr %arrayidx49, i32 0, i32 36)
  %65 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %arrayidx49, align 4
  %is_last.i = getelementptr %struct.stmmac_tc_entry, ptr %call5.i.i96, i32 %sub, i32 2
  %66 = ptrtoint ptr %is_last.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %is_last.i, align 2
  %prio.i = getelementptr %struct.stmmac_tc_entry, ptr %call5.i.i96, i32 %sub, i32 7
  %67 = ptrtoint ptr %prio.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %prio.i, align 4
  %val.i = getelementptr %struct.stmmac_tc_entry, ptr %call5.i.i96, i32 %sub, i32 8
  %68 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %val.i, align 4
  %af.i = getelementptr %struct.stmmac_tc_entry, ptr %call5.i.i96, i32 %sub, i32 8, i32 2
  %69 = ptrtoint ptr %af.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -128, ptr %af.i, align 4
  %70 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device.i, align 8
  %72 = ptrtoint ptr %tc_entries_max to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tc_entries_max, align 16
  %tc_off_max55 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 90
  %74 = ptrtoint ptr %tc_off_max55 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tc_off_max55, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.6, i32 noundef %73, i32 noundef %75) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %switch.lookup113.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.then17.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -12, %switch.lookup113.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_setup_cls_u32(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cls) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 1
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %command, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %entry.sw.bb1_crit_edge
    i32 2, label %sw.bb2
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %handle.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 3
  %3 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle.i.i, align 4
  %tc_entries_max.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 89
  %5 = ptrtoint ptr %tc_entries_max.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tc_entries_max.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp41.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp41.not.i.i, label %sw.bb.sw.bb1_crit_edge, label %for.body.lr.ph.i.i

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

for.body.lr.ph.i.i:                               ; preds = %sw.bb
  %tc_entries.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 91
  %7 = ptrtoint ptr %tc_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tc_entries.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.044.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %dup.043.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %dup.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %handle5.i.i = getelementptr %struct.stmmac_tc_entry, ptr %8, i32 %i.044.i.i, i32 6
  %9 = ptrtoint ptr %handle5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %4)
  %cmp6.i.not.i = icmp eq i32 %10, %4
  br i1 %cmp6.i.not.i, label %land.lhs.true9.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true9.i.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.stmmac_tc_entry, ptr %8, i32 %i.044.i.i
  %is_frag.i.i = getelementptr %struct.stmmac_tc_entry, ptr %8, i32 %i.044.i.i, i32 3
  %11 = ptrtoint ptr %is_frag.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_frag.i.i, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not.i.i = icmp eq i8 %12, 0
  %spec.select40.i.i = select i1 %tobool10.not.i.i, ptr %arrayidx.i.i, ptr %dup.043.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true9.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %dup.1.i.i = phi ptr [ %dup.043.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select40.i.i, %land.lhs.true9.i.i ]
  %inc.i.i = add nuw i32 %i.044.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %6
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool13.not.i.i = icmp eq ptr %dup.1.i.i, null
  br i1 %tobool13.not.i.i, label %for.end.i.i.sw.bb1_crit_edge, label %if.end.i

for.end.i.i.sw.bb1_crit_edge:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.i:                                         ; preds = %for.end.i.i
  %13 = ptrtoint ptr %dup.1.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dup.1.i.i, align 4
  %frag_ptr.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %dup.1.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %frag_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frag_ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %if.end.i.sw.bb1_crit_edge, label %if.then3.i

if.end.i.sw.bb1_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %is_frag.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %is_frag.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_frag.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %15, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %if.then3.i, %if.end.i.sw.bb1_crit_edge, %for.end.i.i.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %sel2.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %sel2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sel2.i.i, align 4
  %prio3.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 2
  %20 = ptrtoint ptr %prio3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio3.i.i, align 4
  %shl.i.i = shl i32 %21, 16
  %nkeys.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %nkeys.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nkeys.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cond.i.i = icmp eq i8 %23, 1
  br i1 %cond.i.i, label %if.end.i.i, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i.i:                                       ; preds = %sw.bb1
  %keys.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %19, i32 0, i32 8
  %off9.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %19, i32 1, i32 5
  %24 = ptrtoint ptr %off9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %off9.i.i, align 4
  %offshift.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %offshift.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %offshift.i.i, align 1
  %conv10.i.i = zext i8 %27 to i32
  %shl11.i.i = shl i32 %25, %conv10.i.i
  %val.i.i = getelementptr inbounds %struct.tc_u32_sel, ptr %19, i32 1, i32 3
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i.i, align 4
  %30 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %keys.i.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 1
  %32 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %protocol.i.i, align 4
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %33, label %if.end.i.i.return_crit_edge [
    i16 3, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i16 2048, label %sw.bb.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i = add i32 %shl11.i.i, 14
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %off.0.i.i = phi i32 [ %add.i.i, %sw.bb.i.i ], [ %shl11.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge ]
  %tc_off_max.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 90
  %35 = ptrtoint ptr %tc_off_max.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tc_off_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0.i.i, i32 %36)
  %cmp19.i.i = icmp ugt i32 %off.0.i.i, %36
  br i1 %cmp19.i.i, label %sw.epilog.i.i.return_crit_edge, label %if.end22.i.i

sw.epilog.i.i.return_crit_edge:                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end22.i.i:                                     ; preds = %sw.epilog.i.i
  %div158.i.i = lshr i32 %off.0.i.i, 2
  %rem23.i.i = and i32 %off.0.i.i, 3
  %handle.i.i.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 3
  %37 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handle.i.i.i, align 4
  %tc_entries_max.i.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 89
  %39 = ptrtoint ptr %tc_entries_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tc_entries_max.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp41.not.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp41.not.i.i.i, label %if.end22.i.i.return_crit_edge, label %for.body.lr.ph.i.i.i

if.end22.i.i.return_crit_edge:                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

for.body.lr.ph.i.i.i:                             ; preds = %if.end22.i.i
  %tc_entries.i.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 91
  %41 = ptrtoint ptr %tc_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tc_entries.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.044.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %first.042.i.i.i = phi ptr [ null, %for.body.lr.ph.i.i.i ], [ %first.1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.stmmac_tc_entry, ptr %42, i32 %i.044.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.i.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i.i = icmp eq i8 %44, 0
  %tobool2.not.i.i.i = icmp eq ptr %first.042.i.i.i, null
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 %tobool2.not.i.i.i, i1 false
  %first.1.i.i.i = select i1 %or.cond.i.i.i, ptr %arrayidx.i.i.i, ptr %first.042.i.i.i
  %inc.i.i.i = add nuw i32 %i.044.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %40
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %tobool16.not.i.i.i = icmp eq ptr %first.1.i.i.i, null
  br i1 %tobool16.not.i.i.i, label %for.end.i.i.i.return_crit_edge, label %if.end25.i.i

for.end.i.i.i.return_crit_edge:                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end25.i.i:                                     ; preds = %for.end.i.i.i
  %handle18.i.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %handle18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %38, ptr %handle18.i.i.i, align 4
  %46 = ptrtoint ptr %first.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %first.1.i.i.i, align 4
  %val.i.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 8
  %47 = call ptr @memset(ptr %val.i.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23.i.i)
  %tobool26.not.i.i = icmp eq i32 %rem23.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end25.i.i
  %48 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %handle.i.i.i, align 4
  %50 = ptrtoint ptr %tc_entries_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tc_entries_max.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp41.not.i161.i.i = icmp eq i32 %51, 0
  br i1 %cmp41.not.i161.i.i, label %if.then27.i.i.cleanup.sink.split.i_crit_edge, label %for.body.lr.ph.i163.i.i

if.then27.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

for.body.lr.ph.i163.i.i:                          ; preds = %if.then27.i.i
  %52 = ptrtoint ptr %tc_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tc_entries.i.i.i, align 8
  br label %for.body.i174.i.i

for.body.i174.i.i:                                ; preds = %for.body.i174.i.i.for.body.i174.i.i_crit_edge, %for.body.lr.ph.i163.i.i
  %i.044.i164.i.i = phi i32 [ 0, %for.body.lr.ph.i163.i.i ], [ %inc.i175.i.i, %for.body.i174.i.i.for.body.i174.i.i_crit_edge ]
  %first.042.i166.i.i = phi ptr [ null, %for.body.lr.ph.i163.i.i ], [ %first.1.i171.i.i, %for.body.i174.i.i.for.body.i174.i.i_crit_edge ]
  %arrayidx.i167.i.i = getelementptr %struct.stmmac_tc_entry, ptr %53, i32 %i.044.i164.i.i
  %54 = ptrtoint ptr %arrayidx.i167.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i167.i.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i168.i.i = icmp eq i8 %55, 0
  %tobool2.not.i169.i.i = icmp eq ptr %first.042.i166.i.i, null
  %or.cond.i170.i.i = select i1 %tobool.not.i168.i.i, i1 %tobool2.not.i169.i.i, i1 false
  %first.1.i171.i.i = select i1 %or.cond.i170.i.i, ptr %arrayidx.i167.i.i, ptr %first.042.i166.i.i
  %inc.i175.i.i = add nuw i32 %i.044.i164.i.i, 1
  %exitcond.not.i176.i.i = icmp eq i32 %inc.i175.i.i, %51
  br i1 %exitcond.not.i176.i.i, label %for.end.i177.i.i, label %for.body.i174.i.i.for.body.i174.i.i_crit_edge

for.body.i174.i.i.for.body.i174.i.i_crit_edge:    ; preds = %for.body.i174.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i174.i.i

for.end.i177.i.i:                                 ; preds = %for.body.i174.i.i
  %tobool16.not.i178.i.i = icmp eq ptr %first.1.i171.i.i, null
  br i1 %tobool16.not.i178.i.i, label %for.end.i177.i.i.cleanup.sink.split.i_crit_edge, label %if.end31.i.i

for.end.i177.i.i.cleanup.sink.split.i_crit_edge:  ; preds = %for.end.i177.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end31.i.i:                                     ; preds = %for.end.i177.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %handle18.i179.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i171.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %handle18.i179.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %49, ptr %handle18.i179.i.i, align 4
  %57 = ptrtoint ptr %first.1.i171.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %first.1.i171.i.i, align 4
  %val.i180.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i171.i.i, i32 0, i32 8
  %58 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i171.i.i, i32 0, i32 8, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 0, ptr %58, align 4
  %frag_ptr.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %frag_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %first.1.i171.i.i, ptr %frag_ptr.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %rem23.i.i, 3
  %and37.i.i = shl i32 %31, %mul.i.i
  %match_en.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %match_en.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and37.i.i, ptr %match_en.i.i, align 4
  %and47.i.i = shl i32 %29, %mul.i.i
  %62 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and47.i.i, ptr %val.i.i.i, align 4
  %conv49.i.i = trunc i32 %div158.i.i to i8
  %frame_offset.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 8, i32 3
  %63 = ptrtoint ptr %frame_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv49.i.i, ptr %frame_offset.i.i, align 1
  %prio51.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %prio51.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl.i.i, ptr %prio51.i.i, align 4
  %shr.i.i = lshr i32 %31, %mul.i.i
  %sub55.i.i = sub nuw nsw i32 32, %mul.i.i
  %shr56.i.i = lshr i32 -1, %sub55.i.i
  %and59.i.i = and i32 %shr56.i.i, %shr.i.i
  %match_en61.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i171.i.i, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %match_en61.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and59.i.i, ptr %match_en61.i.i, align 4
  %shr63.i.i = lshr i32 %29, %mul.i.i
  %and70.i.i = and i32 %shr56.i.i, %shr63.i.i
  %66 = ptrtoint ptr %val.i180.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and70.i.i, ptr %val.i180.i.i, align 4
  %conv74.i.i = add i8 %conv49.i.i, 1
  %frame_offset76.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i171.i.i, i32 0, i32 8, i32 3
  %67 = ptrtoint ptr %frame_offset76.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv74.i.i, ptr %frame_offset76.i.i, align 1
  %prio77.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i171.i.i, i32 0, i32 7
  %68 = ptrtoint ptr %prio77.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl.i.i, ptr %prio77.i.i, align 4
  %is_frag.i.i9 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i171.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %is_frag.i.i9 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %is_frag.i.i9, align 1
  br label %if.end87.i.i

if.else.i.i:                                      ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %frag_ptr78.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %frag_ptr78.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %frag_ptr78.i.i, align 4
  %match_en80.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %match_en80.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %31, ptr %match_en80.i.i, align 4
  %72 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %29, ptr %val.i.i.i, align 4
  %conv83.i.i = trunc i32 %div158.i.i to i8
  %frame_offset85.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 8, i32 3
  %73 = ptrtoint ptr %frame_offset85.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv83.i.i, ptr %frame_offset85.i.i, align 1
  %prio86.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %first.1.i.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %prio86.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shl.i.i, ptr %prio86.i.i, align 4
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %if.else.i.i, %if.end31.i.i
  %frag.0.i.i = phi ptr [ %first.1.i171.i.i, %if.end31.i.i ], [ null, %if.else.i.i ]
  %75 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %nr_actions.i.i.i.i = getelementptr inbounds %struct.tcf_exts, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %nr_actions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_actions.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i.i.i, label %if.end87.i.i.err_unuse.i.i_crit_edge, label %if.end.i.i.i

if.end87.i.i.err_unuse.i.i_crit_edge:             ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unuse.i.i

if.end.i.i.i:                                     ; preds = %if.end87.i.i
  %tobool.not.i184.i.i = icmp eq ptr %frag.0.i.i, null
  %spec.select.i.i.i = select i1 %tobool.not.i184.i.i, ptr %first.1.i.i.i, ptr %frag.0.i.i
  %actions.i.i.i = getelementptr inbounds %struct.tcf_exts, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %actions.i.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %tobool5.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.if.end.i10_crit_edge, label %for.body.i185.i.i

if.end.i.i.i.if.end.i10_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i10

for.body.i185.i.i:                                ; preds = %if.end.i.i.i
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 16
  %tobool.not.i.i.i.i.i = icmp eq ptr %85, null
  br i1 %tobool.not.i.i.i.i.i, label %is_tcf_gact_ok.exit.i.i.i, label %land.lhs.true.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i185.i.i
  %id.i.i.i.i.i = getelementptr inbounds %struct.tc_action_ops, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %id.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %87)
  %cmp.not.i.i.i.i.i = icmp eq i32 %87, 5
  br i1 %cmp.not.i.i.i.i.i, label %is_tcf_gact_ok.exit.thread33.i.i.i, label %land.lhs.true.i.i.i.i.i.err_unuse.i.i_crit_edge

land.lhs.true.i.i.i.i.i.err_unuse.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unuse.i.i

is_tcf_gact_ok.exit.i.i.i:                        ; preds = %for.body.i185.i.i
  %tcfa_action.i.i.i.i.i = getelementptr inbounds %struct.tc_action, ptr %83, i32 0, i32 6
  %88 = ptrtoint ptr %tcfa_action.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tcfa_action.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp4.i.i.i.i.i = icmp eq i32 %89, 0
  br i1 %cmp4.i.i.i.i.i, label %is_tcf_gact_ok.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %is_tcf_gact_ok.exit.i.i.i.is_tcf_gact_shot.exit.i.i.i_crit_edge

is_tcf_gact_ok.exit.i.i.i.is_tcf_gact_shot.exit.i.i.i_crit_edge: ; preds = %is_tcf_gact_ok.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_tcf_gact_shot.exit.i.i.i

is_tcf_gact_ok.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %is_tcf_gact_ok.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

is_tcf_gact_ok.exit.thread33.i.i.i:               ; preds = %land.lhs.true.i.i.i.i.i
  %tcfa_action.i.i34.i.i.i = getelementptr inbounds %struct.tc_action, ptr %83, i32 0, i32 6
  %90 = ptrtoint ptr %tcfa_action.i.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tcfa_action.i.i34.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp4.i.i35.i.i.i = icmp eq i32 %91, 0
  br i1 %cmp4.i.i35.i.i.i, label %is_tcf_gact_ok.exit.thread33.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %is_tcf_gact_ok.exit.thread33.i.i.i.is_tcf_gact_shot.exit.i.i.i_crit_edge

is_tcf_gact_ok.exit.thread33.i.i.i.is_tcf_gact_shot.exit.i.i.i_crit_edge: ; preds = %is_tcf_gact_ok.exit.thread33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_tcf_gact_shot.exit.i.i.i

is_tcf_gact_ok.exit.thread33.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %is_tcf_gact_ok.exit.thread33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

is_tcf_gact_shot.exit.i.i.i:                      ; preds = %is_tcf_gact_ok.exit.thread33.i.i.i.is_tcf_gact_shot.exit.i.i.i_crit_edge, %is_tcf_gact_ok.exit.i.i.i.is_tcf_gact_shot.exit.i.i.i_crit_edge
  %tcfa_action.i.i28.i.i.i = getelementptr inbounds %struct.tc_action, ptr %83, i32 0, i32 6
  %92 = ptrtoint ptr %tcfa_action.i.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tcfa_action.i.i28.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp4.i.i29.i.i.i = icmp eq i32 %93, 2
  br i1 %cmp4.i.i29.i.i.i, label %is_tcf_gact_shot.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %is_tcf_gact_shot.exit.i.i.i.err_unuse.i.i_crit_edge

is_tcf_gact_shot.exit.i.i.i.err_unuse.i.i_crit_edge: ; preds = %is_tcf_gact_shot.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unuse.i.i

is_tcf_gact_shot.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %is_tcf_gact_shot.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %is_tcf_gact_shot.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %is_tcf_gact_ok.exit.thread33.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %is_tcf_gact_ok.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i8 [ -128, %is_tcf_gact_ok.exit.thread33.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ -128, %is_tcf_gact_ok.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ 64, %is_tcf_gact_shot.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %rf.i.i.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %spec.select.i.i.i, i32 0, i32 8, i32 2
  %94 = ptrtoint ptr %rf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i.i.i = load i8, ptr %rf.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, %.sink.i.i.i
  store i8 %bf.set.i.i.i, ptr %rf.i.i.i, align 4
  br label %if.end.i10

err_unuse.i.i:                                    ; preds = %is_tcf_gact_shot.exit.i.i.i.err_unuse.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.err_unuse.i.i_crit_edge, %if.end87.i.i.err_unuse.i.i_crit_edge
  %tobool92.not.i.i = icmp eq ptr %frag.0.i.i, null
  br i1 %tobool92.not.i.i, label %err_unuse.i.i.cleanup.sink.split.i_crit_edge, label %if.then93.i.i

err_unuse.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %err_unuse.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then93.i.i:                                    ; preds = %err_unuse.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %frag.0.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %frag.0.i.i, align 4
  br label %cleanup.sink.split.i

if.end.i10:                                       ; preds = %cleanup.sink.split.i.i.i, %if.end.i.i.i.if.end.i10_crit_edge
  %hw.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %96 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %tobool1.not.i = icmp eq ptr %99, null
  br i1 %tobool1.not.i, label %if.end.i10.err_unfill.i_crit_edge, label %land.lhs.true.i

if.end.i10.err_unfill.i_crit_edge:                ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unfill.i

land.lhs.true.i:                                  ; preds = %if.end.i10
  %rxp_config.i = getelementptr inbounds %struct.stmmac_ops, ptr %99, i32 0, i32 32
  %100 = ptrtoint ptr %rxp_config.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rxp_config.i, align 4
  %tobool4.not.i = icmp eq ptr %101, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.err_unfill.i_crit_edge, label %if.end11.i

land.lhs.true.i.err_unfill.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unfill.i

if.end11.i:                                       ; preds = %land.lhs.true.i
  %pcsr.i = getelementptr inbounds %struct.mac_device_info, ptr %97, i32 0, i32 10
  %102 = ptrtoint ptr %pcsr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcsr.i, align 4
  %104 = ptrtoint ptr %tc_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tc_entries.i.i.i, align 8
  %106 = ptrtoint ptr %tc_entries_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tc_entries_max.i.i.i, align 16
  %call10.i = tail call i32 %101(ptr noundef %103, ptr noundef %105, i32 noundef %107) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.return_crit_edge, label %if.end11.i.err_unfill.i_crit_edge

if.end11.i.err_unfill.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unfill.i

if.end11.i.return_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

err_unfill.i:                                     ; preds = %if.end11.i.err_unfill.i_crit_edge, %land.lhs.true.i.err_unfill.i_crit_edge, %if.end.i10.err_unfill.i_crit_edge
  %__result.045.i = phi i32 [ %call10.i, %if.end11.i.err_unfill.i_crit_edge ], [ -22, %land.lhs.true.i.err_unfill.i_crit_edge ], [ -22, %if.end.i10.err_unfill.i_crit_edge ]
  %108 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %handle.i.i.i, align 4
  %110 = ptrtoint ptr %tc_entries_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tc_entries_max.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp41.not.i.i29.i = icmp eq i32 %111, 0
  br i1 %cmp41.not.i.i29.i, label %err_unfill.i.return_crit_edge, label %for.body.lr.ph.i.i31.i

err_unfill.i.return_crit_edge:                    ; preds = %err_unfill.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

for.body.lr.ph.i.i31.i:                           ; preds = %err_unfill.i
  %112 = ptrtoint ptr %tc_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tc_entries.i.i.i, align 8
  br label %for.body.i.i33.i

for.body.i.i33.i:                                 ; preds = %for.inc.i.i.i.for.body.i.i33.i_crit_edge, %for.body.lr.ph.i.i31.i
  %i.044.i.i32.i = phi i32 [ 0, %for.body.lr.ph.i.i31.i ], [ %inc.i.i35.i, %for.inc.i.i.i.for.body.i.i33.i_crit_edge ]
  %dup.043.i.i.i = phi ptr [ null, %for.body.lr.ph.i.i31.i ], [ %dup.1.i.i.i, %for.inc.i.i.i.for.body.i.i33.i_crit_edge ]
  %handle5.i.i.i = getelementptr %struct.stmmac_tc_entry, ptr %113, i32 %i.044.i.i32.i, i32 6
  %114 = ptrtoint ptr %handle5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %handle5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %109)
  %cmp6.i.not.i.i = icmp eq i32 %115, %109
  br i1 %cmp6.i.not.i.i, label %land.lhs.true9.i.i.i, label %for.body.i.i33.i.for.inc.i.i.i_crit_edge

for.body.i.i33.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body.i.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %for.body.i.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i34.i = getelementptr %struct.stmmac_tc_entry, ptr %113, i32 %i.044.i.i32.i
  %is_frag.i.i.i = getelementptr %struct.stmmac_tc_entry, ptr %113, i32 %i.044.i.i32.i, i32 3
  %116 = ptrtoint ptr %is_frag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %is_frag.i.i.i, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool10.not.i.i.i = icmp eq i8 %117, 0
  %spec.select40.i.i.i = select i1 %tobool10.not.i.i.i, ptr %arrayidx.i.i34.i, ptr %dup.043.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i, %for.body.i.i33.i.for.inc.i.i.i_crit_edge
  %dup.1.i.i.i = phi ptr [ %dup.043.i.i.i, %for.body.i.i33.i.for.inc.i.i.i_crit_edge ], [ %spec.select40.i.i.i, %land.lhs.true9.i.i.i ]
  %inc.i.i35.i = add nuw i32 %i.044.i.i32.i, 1
  %exitcond.not.i.i36.i = icmp eq i32 %inc.i.i35.i, %111
  br i1 %exitcond.not.i.i36.i, label %for.end.i.i37.i, label %for.inc.i.i.i.for.body.i.i33.i_crit_edge

for.inc.i.i.i.for.body.i.i33.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i33.i

for.end.i.i37.i:                                  ; preds = %for.inc.i.i.i
  %tobool13.not.i.i.i = icmp eq ptr %dup.1.i.i.i, null
  br i1 %tobool13.not.i.i.i, label %for.end.i.i37.i.return_crit_edge, label %if.end.i39.i

for.end.i.i37.i.return_crit_edge:                 ; preds = %for.end.i.i37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i39.i:                                     ; preds = %for.end.i.i37.i
  %118 = ptrtoint ptr %dup.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %dup.1.i.i.i, align 4
  %frag_ptr.i38.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %dup.1.i.i.i, i32 0, i32 4
  %119 = ptrtoint ptr %frag_ptr.i38.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %frag_ptr.i38.i, align 4
  %tobool2.not.i.i = icmp eq ptr %120, null
  br i1 %tobool2.not.i.i, label %if.end.i39.i.return_crit_edge, label %if.then3.i.i

if.end.i39.i.return_crit_edge:                    ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then3.i.i:                                     ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  %is_frag.i40.i = getelementptr inbounds %struct.stmmac_tc_entry, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %is_frag.i40.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %is_frag.i40.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then3.i.i, %if.then93.i.i, %err_unuse.i.i.cleanup.sink.split.i_crit_edge, %for.end.i177.i.i.cleanup.sink.split.i_crit_edge, %if.then27.i.i.cleanup.sink.split.i_crit_edge
  %first.1.i.i.lcssa.sink.i = phi ptr [ %120, %if.then3.i.i ], [ %first.1.i.i.i, %if.then93.i.i ], [ %first.1.i.i.i, %err_unuse.i.i.cleanup.sink.split.i_crit_edge ], [ %first.1.i.i.i, %for.end.i177.i.i.cleanup.sink.split.i_crit_edge ], [ %first.1.i.i.i, %if.then27.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %__result.045.i, %if.then3.i.i ], [ -22, %if.then93.i.i ], [ -22, %err_unuse.i.i.cleanup.sink.split.i_crit_edge ], [ -22, %for.end.i177.i.i.cleanup.sink.split.i_crit_edge ], [ -22, %if.then27.i.i.cleanup.sink.split.i_crit_edge ]
  %122 = ptrtoint ptr %first.1.i.i.lcssa.sink.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %first.1.i.i.lcssa.sink.i, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %handle.i.i.i11 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 3
  %123 = ptrtoint ptr %handle.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %handle.i.i.i11, align 4
  %tc_entries_max.i.i.i12 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 89
  %125 = ptrtoint ptr %tc_entries_max.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tc_entries_max.i.i.i12, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp41.not.i.i.i13 = icmp eq i32 %126, 0
  br i1 %cmp41.not.i.i.i13, label %sw.bb2.tc_unfill_entry.exit.i_crit_edge, label %for.body.lr.ph.i.i.i15

sw.bb2.tc_unfill_entry.exit.i_crit_edge:          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_unfill_entry.exit.i

for.body.lr.ph.i.i.i15:                           ; preds = %sw.bb2
  %tc_entries.i.i.i14 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 91
  %127 = ptrtoint ptr %tc_entries.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tc_entries.i.i.i14, align 8
  br label %for.body.i.i.i20

for.body.i.i.i20:                                 ; preds = %for.inc.i.i.i29.for.body.i.i.i20_crit_edge, %for.body.lr.ph.i.i.i15
  %i.044.i.i.i16 = phi i32 [ 0, %for.body.lr.ph.i.i.i15 ], [ %inc.i.i.i27, %for.inc.i.i.i29.for.body.i.i.i20_crit_edge ]
  %dup.043.i.i.i17 = phi ptr [ null, %for.body.lr.ph.i.i.i15 ], [ %dup.1.i.i.i26, %for.inc.i.i.i29.for.body.i.i.i20_crit_edge ]
  %handle5.i.i.i18 = getelementptr %struct.stmmac_tc_entry, ptr %128, i32 %i.044.i.i.i16, i32 6
  %129 = ptrtoint ptr %handle5.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %handle5.i.i.i18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %124)
  %cmp6.i.not.i.i19 = icmp eq i32 %130, %124
  br i1 %cmp6.i.not.i.i19, label %land.lhs.true9.i.i.i25, label %for.body.i.i.i20.for.inc.i.i.i29_crit_edge

for.body.i.i.i20.for.inc.i.i.i29_crit_edge:       ; preds = %for.body.i.i.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i29

land.lhs.true9.i.i.i25:                           ; preds = %for.body.i.i.i20
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i21 = getelementptr %struct.stmmac_tc_entry, ptr %128, i32 %i.044.i.i.i16
  %is_frag.i.i.i22 = getelementptr %struct.stmmac_tc_entry, ptr %128, i32 %i.044.i.i.i16, i32 3
  %131 = ptrtoint ptr %is_frag.i.i.i22 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %is_frag.i.i.i22, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool10.not.i.i.i23 = icmp eq i8 %132, 0
  %spec.select40.i.i.i24 = select i1 %tobool10.not.i.i.i23, ptr %arrayidx.i.i.i21, ptr %dup.043.i.i.i17
  br label %for.inc.i.i.i29

for.inc.i.i.i29:                                  ; preds = %land.lhs.true9.i.i.i25, %for.body.i.i.i20.for.inc.i.i.i29_crit_edge
  %dup.1.i.i.i26 = phi ptr [ %dup.043.i.i.i17, %for.body.i.i.i20.for.inc.i.i.i29_crit_edge ], [ %spec.select40.i.i.i24, %land.lhs.true9.i.i.i25 ]
  %inc.i.i.i27 = add nuw i32 %i.044.i.i.i16, 1
  %exitcond.not.i.i.i28 = icmp eq i32 %inc.i.i.i27, %126
  br i1 %exitcond.not.i.i.i28, label %for.end.i.i.i31, label %for.inc.i.i.i29.for.body.i.i.i20_crit_edge

for.inc.i.i.i29.for.body.i.i.i20_crit_edge:       ; preds = %for.inc.i.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i20

for.end.i.i.i31:                                  ; preds = %for.inc.i.i.i29
  %tobool13.not.i.i.i30 = icmp eq ptr %dup.1.i.i.i26, null
  br i1 %tobool13.not.i.i.i30, label %for.end.i.i.i31.tc_unfill_entry.exit.i_crit_edge, label %if.end.i.i34

for.end.i.i.i31.tc_unfill_entry.exit.i_crit_edge: ; preds = %for.end.i.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_unfill_entry.exit.i

if.end.i.i34:                                     ; preds = %for.end.i.i.i31
  %133 = ptrtoint ptr %dup.1.i.i.i26 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %dup.1.i.i.i26, align 4
  %frag_ptr.i.i32 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %dup.1.i.i.i26, i32 0, i32 4
  %134 = ptrtoint ptr %frag_ptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %frag_ptr.i.i32, align 4
  %tobool2.not.i.i33 = icmp eq ptr %135, null
  br i1 %tobool2.not.i.i33, label %if.end.i.i34.tc_unfill_entry.exit.i_crit_edge, label %if.then3.i.i36

if.end.i.i34.tc_unfill_entry.exit.i_crit_edge:    ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_unfill_entry.exit.i

if.then3.i.i36:                                   ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  %is_frag.i.i35 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %is_frag.i.i35 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %is_frag.i.i35, align 1
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %135, align 4
  br label %tc_unfill_entry.exit.i

tc_unfill_entry.exit.i:                           ; preds = %if.then3.i.i36, %if.end.i.i34.tc_unfill_entry.exit.i_crit_edge, %for.end.i.i.i31.tc_unfill_entry.exit.i_crit_edge, %sw.bb2.tc_unfill_entry.exit.i_crit_edge
  %hw.i37 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %138 = ptrtoint ptr %hw.i37 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw.i37, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %tobool.not.i = icmp eq ptr %141, null
  br i1 %tobool.not.i, label %tc_unfill_entry.exit.i.return_crit_edge, label %land.lhs.true.i39

tc_unfill_entry.exit.i.return_crit_edge:          ; preds = %tc_unfill_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i39:                                ; preds = %tc_unfill_entry.exit.i
  %rxp_config.i38 = getelementptr inbounds %struct.stmmac_ops, ptr %141, i32 0, i32 32
  %142 = ptrtoint ptr %rxp_config.i38 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rxp_config.i38, align 4
  %tobool3.not.i = icmp eq ptr %143, null
  br i1 %tobool3.not.i, label %land.lhs.true.i39.return_crit_edge, label %if.then.i

land.lhs.true.i39.return_crit_edge:               ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i:                                        ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #8
  %pcsr.i40 = getelementptr inbounds %struct.mac_device_info, ptr %139, i32 0, i32 10
  %144 = ptrtoint ptr %pcsr.i40 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pcsr.i40, align 4
  %tc_entries.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 91
  %146 = ptrtoint ptr %tc_entries.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tc_entries.i, align 8
  %148 = ptrtoint ptr %tc_entries_max.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tc_entries_max.i.i.i12, align 16
  %call.i = tail call i32 %143(ptr noundef %145, ptr noundef %147, i32 noundef %149) #6
  br label %return

return:                                           ; preds = %if.then.i, %land.lhs.true.i39.return_crit_edge, %tc_unfill_entry.exit.i.return_crit_edge, %cleanup.sink.split.i, %if.end.i39.i.return_crit_edge, %for.end.i.i37.i.return_crit_edge, %err_unfill.i.return_crit_edge, %if.end11.i.return_crit_edge, %for.end.i.i.i.return_crit_edge, %if.end22.i.i.return_crit_edge, %sw.epilog.i.i.return_crit_edge, %if.end.i.i.return_crit_edge, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end11.i.return_crit_edge ], [ %__result.045.i, %err_unfill.i.return_crit_edge ], [ %__result.045.i, %for.end.i.i37.i.return_crit_edge ], [ %__result.045.i, %if.end.i39.i.return_crit_edge ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %if.end.i.i.return_crit_edge ], [ -22, %sw.epilog.i.i.return_crit_edge ], [ -22, %for.end.i.i.i.return_crit_edge ], [ -22, %if.end22.i.i.return_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i, %if.then.i ], [ -22, %land.lhs.true.i39.return_crit_edge ], [ -22, %tc_unfill_entry.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_setup_cbs(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %qopt) #0 align 64 {
entry:
  %remainder.i205 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %queue1 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %qopt, i32 0, i32 1
  %0 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queues_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp2.not = icmp ult i32 %1, %5
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %av = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 13
  %6 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %av, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %speed = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 27
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 128
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %9, label %if.end4.cleanup_crit_edge [
    i32 10000, label %if.end4.sw.epilog_crit_edge
    i32 5000, label %sw.bb5
    i32 2500, label %sw.bb6
    i32 1000, label %sw.bb7
    i32 100, label %sw.bb8
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %if.end4.sw.epilog_crit_edge
  %ptr.0 = phi i32 [ 4096, %sw.bb8 ], [ 8192, %sw.bb7 ], [ 8192, %sw.bb6 ], [ 32768, %sw.bb5 ], [ 32768, %if.end4.sw.epilog_crit_edge ]
  %speed_div.0 = phi i32 [ 100000, %sw.bb8 ], [ 1000000, %sw.bb7 ], [ 2500000, %sw.bb6 ], [ 5000000, %sw.bb5 ], [ 10000000, %if.end4.sw.epilog_crit_edge ]
  %mode_to_use10 = getelementptr %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 34, i32 %1, i32 1
  %11 = ptrtoint ptr %mode_to_use10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode_to_use10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp11 = icmp eq i8 %12, 1
  %13 = ptrtoint ptr %qopt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %qopt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  br i1 %tobool14.not, label %land.lhs.true.if.then35_crit_edge, label %if.then15

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

if.then15:                                        ; preds = %land.lhs.true
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.mac_device_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %land.lhs.true17

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.then15
  %qmode = getelementptr inbounds %struct.stmmac_dma_ops, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %qmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qmode, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %land.lhs.true17.cleanup_crit_edge, label %if.end28

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 32
  tail call void %20(ptr noundef %22, i32 noundef %1, i8 noundef zeroext 0) #6
  br label %if.end60.sink.split

if.else:                                          ; preds = %sw.epilog
  br i1 %tobool14.not, label %if.else.if.then35_crit_edge, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

if.then35:                                        ; preds = %if.else.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  %hw37 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %23 = ptrtoint ptr %hw37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw37, align 4
  %dma38 = getelementptr inbounds %struct.mac_device_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dma38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma38, align 4
  %tobool39.not = icmp eq ptr %26, null
  br i1 %tobool39.not, label %if.then35.cleanup_crit_edge, label %land.lhs.true40

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.then35
  %qmode43 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %qmode43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qmode43, align 4
  %tobool44.not = icmp eq ptr %28, null
  br i1 %tobool44.not, label %land.lhs.true40.cleanup_crit_edge, label %if.end54

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr49 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %29 = ptrtoint ptr %ioaddr49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr49, align 32
  tail call void %28(ptr noundef %30, i32 noundef %1, i8 noundef zeroext 1) #6
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.end54, %if.end28
  %.sink = phi i8 [ 1, %if.end54 ], [ 0, %if.end28 ]
  %31 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %plat, align 128
  %mode_to_use58 = getelementptr %struct.plat_stmmacenet_data, ptr %32, i32 0, i32 34, i32 %1, i32 1
  %33 = ptrtoint ptr %mode_to_use58 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %mode_to_use58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else.if.end60_crit_edge
  %idleslope = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %qopt, i32 0, i32 4
  %34 = ptrtoint ptr %idleslope to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idleslope, align 4
  %conv61 = sext i32 %35 to i64
  %mul = zext i32 %ptr.0 to i64
  %mul63 = mul nsw i64 %mul, %conv61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #6
  %36 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %remainder.i, align 4, !annotation !73
  %call.i = call i64 @div_s64_rem(i64 noundef %mul63, i32 noundef %speed_div.0, ptr noundef nonnull %remainder.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #6
  %conv64 = trunc i64 %call.i to i32
  %37 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %plat, align 128
  %idle_slope = getelementptr %struct.plat_stmmacenet_data, ptr %38, i32 0, i32 34, i32 %1, i32 3
  %39 = ptrtoint ptr %idle_slope to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv64, ptr %idle_slope, align 4
  %sendslope = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %qopt, i32 0, i32 5
  %40 = ptrtoint ptr %sendslope to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sendslope, align 4
  %sub = sub i32 0, %41
  %conv68 = sext i32 %sub to i64
  %mul71 = mul nsw i64 %mul, %conv68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i205) #6
  %42 = ptrtoint ptr %remainder.i205 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %remainder.i205, align 4, !annotation !73
  %call.i206 = call i64 @div_s64_rem(i64 noundef %mul71, i32 noundef %speed_div.0, ptr noundef nonnull %remainder.i205) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i205) #6
  %conv74 = trunc i64 %call.i206 to i32
  %43 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %plat, align 128
  %send_slope = getelementptr %struct.plat_stmmacenet_data, ptr %44, i32 0, i32 34, i32 %1, i32 2
  %45 = ptrtoint ptr %send_slope to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv74, ptr %send_slope, align 4
  %hicredit = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %qopt, i32 0, i32 2
  %46 = ptrtoint ptr %hicredit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hicredit, align 4
  %mul80 = shl i32 %47, 13
  %48 = load ptr, ptr %plat, align 128
  %high_credit = getelementptr %struct.plat_stmmacenet_data, ptr %48, i32 0, i32 34, i32 %1, i32 4
  %49 = ptrtoint ptr %high_credit to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul80, ptr %high_credit, align 4
  %locredit = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %qopt, i32 0, i32 3
  %50 = ptrtoint ptr %locredit to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %locredit, align 4
  %mul88 = shl i32 %51, 13
  %52 = load ptr, ptr %plat, align 128
  %low_credit = getelementptr %struct.plat_stmmacenet_data, ptr %52, i32 0, i32 34, i32 %1, i32 5
  %53 = ptrtoint ptr %low_credit to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul88, ptr %low_credit, align 4
  %hw95 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %54 = ptrtoint ptr %hw95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw95, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool96.not = icmp eq ptr %57, null
  br i1 %tobool96.not, label %if.end60.cleanup_crit_edge, label %land.lhs.true97

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true97:                                  ; preds = %if.end60
  %config_cbs = getelementptr inbounds %struct.stmmac_ops, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %config_cbs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config_cbs, align 4
  %tobool100.not = icmp eq ptr %59, null
  br i1 %tobool100.not, label %land.lhs.true97.cleanup_crit_edge, label %do.end

land.lhs.true97.cleanup_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %plat, align 128
  %send_slope109 = getelementptr %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 34, i32 %1, i32 2
  %62 = ptrtoint ptr %send_slope109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %send_slope109, align 4
  %idle_slope113 = getelementptr %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 34, i32 %1, i32 3
  %64 = ptrtoint ptr %idle_slope113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idle_slope113, align 4
  %high_credit117 = getelementptr %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 34, i32 %1, i32 4
  %66 = ptrtoint ptr %high_credit117 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %high_credit117, align 4
  %low_credit121 = getelementptr %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 34, i32 %1, i32 5
  %68 = ptrtoint ptr %low_credit121 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %low_credit121, align 4
  call void %59(ptr noundef %55, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %1) #6
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %70 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device, align 8
  %72 = ptrtoint ptr %sendslope to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sendslope, align 4
  %74 = ptrtoint ptr %idleslope to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %idleslope, align 4
  %76 = ptrtoint ptr %hicredit to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hicredit, align 4
  %78 = ptrtoint ptr %locredit to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %locredit, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true97.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %land.lhs.true40.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ -22, %land.lhs.true17.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %land.lhs.true40.cleanup_crit_edge ], [ -22, %if.then35.cleanup_crit_edge ], [ -22, %land.lhs.true97.cleanup_crit_edge ], [ -22, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_setup_cls(ptr noundef %priv, ptr nocapture noundef readonly %cls) #0 align 64 {
entry:
  %match5.i34.i = alloca %struct.flow_match_vlan, align 4
  %match5.i.i = alloca %struct.flow_match_basic, align 4
  %match3.i.i.i = alloca %struct.flow_match_basic, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rss = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 99
  %0 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 1
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %command, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %flow_entries_max.i.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 92
  %5 = ptrtoint ptr %flow_entries_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flow_entries_max.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16.not.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp16.not.i.i.i, label %sw.bb.tc_find_flow.exit.thread.i.i_crit_edge, label %for.body.lr.ph.i.i.i

sw.bb.tc_find_flow.exit.thread.i.i_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_flow.exit.thread.i.i

for.body.lr.ph.i.i.i:                             ; preds = %sw.bb
  %flow_entries.i.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 93
  %7 = ptrtoint ptr %flow_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %flow_entries.i.i.i, align 128
  %cookie2.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %9 = ptrtoint ptr %cookie2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cookie2.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.017.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.stmmac_flow_entry, ptr %8, i32 %i.017.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp3.i.i.i = icmp eq i32 %12, %10
  br i1 %cmp3.i.i.i, label %tc_find_flow.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.017.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %6
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.tc_find_flow.exit.thread.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

if.end.i.i.i.tc_find_flow.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_flow.exit.thread.i.i

tc_find_flow.exit.thread.i.i:                     ; preds = %if.end.i.i.i.tc_find_flow.exit.thread.i.i_crit_edge, %sw.bb.tc_find_flow.exit.thread.i.i_crit_edge
  %rule.i60.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %13 = ptrtoint ptr %rule.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rule.i60.i.i, align 8
  br label %if.then.i.i

tc_find_flow.exit.i.i:                            ; preds = %for.body.i.i.i
  %rule.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %15 = ptrtoint ptr %rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rule.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %tc_find_flow.exit.i.i.if.then.i.i_crit_edge, label %tc_find_flow.exit.i.i.if.end6.i.i_crit_edge

tc_find_flow.exit.i.i.if.end6.i.i_crit_edge:      ; preds = %tc_find_flow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

tc_find_flow.exit.i.i.if.then.i.i_crit_edge:      ; preds = %tc_find_flow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %tc_find_flow.exit.i.i.if.then.i.i_crit_edge, %tc_find_flow.exit.thread.i.i
  %17 = phi ptr [ %14, %tc_find_flow.exit.thread.i.i ], [ %16, %tc_find_flow.exit.i.i.if.then.i.i_crit_edge ]
  br i1 %cmp16.not.i.i.i, label %if.then.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i45.i.i

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.lr.ph.i45.i.i:                           ; preds = %if.then.i.i
  %flow_entries.i43.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 93
  %18 = ptrtoint ptr %flow_entries.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %flow_entries.i43.i.i, align 128
  %cookie2.i44.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %20 = ptrtoint ptr %cookie2.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cookie2.i44.i.i, align 4
  br label %for.body.i49.i.i

for.body.i49.i.i:                                 ; preds = %for.inc.i.i.i.for.body.i49.i.i_crit_edge, %for.body.lr.ph.i45.i.i
  %i.017.i46.i.i = phi i32 [ 0, %for.body.lr.ph.i45.i.i ], [ %inc.i51.i.i, %for.inc.i.i.i.for.body.i49.i.i_crit_edge ]
  %arrayidx.i47.i.i = getelementptr %struct.stmmac_flow_entry, ptr %19, i32 %i.017.i46.i.i
  %22 = ptrtoint ptr %arrayidx.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i47.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp3.i48.i.i = icmp eq i32 %23, %21
  br i1 %cmp3.i48.i.i, label %for.body.i49.i.i.tc_find_flow.exit54.i.i_crit_edge, label %if.end.i50.i.i

for.body.i49.i.i.tc_find_flow.exit54.i.i_crit_edge: ; preds = %for.body.i49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_flow.exit54.i.i

if.end.i50.i.i:                                   ; preds = %for.body.i49.i.i
  %in_use.i.i.i = getelementptr %struct.stmmac_flow_entry, ptr %19, i32 %i.017.i46.i.i, i32 3
  %24 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_use.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp4.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp4.i.i.i, label %if.end.i50.i.i.tc_find_flow.exit54.i.i_crit_edge, label %for.inc.i.i.i

if.end.i50.i.i.tc_find_flow.exit54.i.i_crit_edge: ; preds = %if.end.i50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_flow.exit54.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i50.i.i
  %inc.i51.i.i = add nuw i32 %i.017.i46.i.i, 1
  %exitcond.not.i52.i.i = icmp eq i32 %inc.i51.i.i, %6
  br i1 %exitcond.not.i52.i.i, label %for.inc.i.i.i.if.end.i_crit_edge, label %for.inc.i.i.i.for.body.i49.i.i_crit_edge

for.inc.i.i.i.for.body.i49.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i49.i.i

for.inc.i.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

tc_find_flow.exit54.i.i:                          ; preds = %if.end.i50.i.i.tc_find_flow.exit54.i.i_crit_edge, %for.body.i49.i.i.tc_find_flow.exit54.i.i_crit_edge
  %tobool4.not.i.i = icmp eq ptr %arrayidx.i47.i.i, null
  br i1 %tobool4.not.i.i, label %tc_find_flow.exit54.i.i.if.end.i_crit_edge, label %tc_find_flow.exit54.i.i.if.end6.i.i_crit_edge

tc_find_flow.exit54.i.i.if.end6.i.i_crit_edge:    ; preds = %tc_find_flow.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

tc_find_flow.exit54.i.i.if.end.i_crit_edge:       ; preds = %tc_find_flow.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end6.i.i:                                      ; preds = %tc_find_flow.exit54.i.i.if.end6.i.i_crit_edge, %tc_find_flow.exit.i.i.if.end6.i.i_crit_edge
  %26 = phi ptr [ %16, %tc_find_flow.exit.i.i.if.end6.i.i_crit_edge ], [ %17, %tc_find_flow.exit54.i.i.if.end6.i.i_crit_edge ]
  %entry1.0.i.i = phi ptr [ %arrayidx.i.i.i, %tc_find_flow.exit.i.i.if.end6.i.i_crit_edge ], [ %arrayidx.i47.i.i, %tc_find_flow.exit54.i.i.if.end6.i.i_crit_edge ]
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %26, i32 0, i32 1
  %extack.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %27 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %extack.i.i, align 4
  %29 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %action.i.i, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %30, label %for.body.preheader.i.i.i.i.i.i [
    i32 0, label %if.end6.i.i.if.end.i_crit_edge
    i32 1, label %if.end6.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge
  ]

if.end6.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flow_action_first_entry_get.exit.i.i.i.i.i

if.end6.i.i.if.end.i_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.preheader.i.i.i.i.i.i:                   ; preds = %if.end6.i.i
  %entries.i.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %26, i32 1
  br label %for.body.i.i.i.i.i.i

for.body.i.i.i.i.i.i:                             ; preds = %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.i.i
  %i.024.i.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i.i, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i.i.i ]
  %last_hw_stats.023.i.i.i.i.i.i = phi i32 [ %35, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i.i.i.i ]
  %action_entry.022.i.i.i.i.i.i = phi ptr [ %arrayidx11.i.i.i.i.i.i, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ %entries.i.i.i.i.i.i, %for.body.preheader.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %i.024.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %for.body.i.i.i.i.i.i
  %hw_stats.i.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %hw_stats.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_stats.i.i.i.i.i.i, align 8
  %conv.i.i.i.i.i.i = and i32 %last_hw_stats.023.i.i.i.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i.i.i.i.i.i)
  %cmp1.not.i.i.i.i.i.i = icmp eq i32 %33, %conv.i.i.i.i.i.i
  br i1 %cmp1.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, label %do.body.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #6
  %tobool4.not.i.i.i.i.i.i = icmp eq ptr %28, null
  br i1 %tobool4.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end.i_crit_edge, label %do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end.i_crit_edge:           ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end7.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge
  %hw_stats8.i.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %hw_stats8.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_stats8.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add nuw i32 %i.024.i.i.i.i.i.i, 1
  %arrayidx11.i.i.i.i.i.i = getelementptr %struct.flow_rule, ptr %26, i32 0, i32 1, i32 1, i32 %inc.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i.i, %30
  br i1 %exitcond.not.i.i.i.i.i.i, label %if.end7.i.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge, label %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge

if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i.i.i

if.end7.i.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flow_action_first_entry_get.exit.i.i.i.i.i

flow_action_first_entry_get.exit.i.i.i.i.i:       ; preds = %if.end7.i.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge, %if.end6.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge
  %hw_stats.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %26, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, label %if.then14.i.i.i.i.i, !prof !74

land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i.i.i.i

if.then14.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 354, i32 noundef 9, ptr noundef null) #6
  br label %land.lhs.true.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then14.i.i.i.i.i, %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge
  %38 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  %neg.i.i.i.i.i = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i.i.i.i)
  %tobool46.not.i.i.i.i.i = icmp eq i32 %neg.i.i.i.i.i, 3
  br i1 %tobool46.not.i.i.i.i.i, label %if.end4.i.i.i, label %do.body48.i.i.i.i.i

do.body48.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #6
  %tobool49.not.i.i.i.i.i = icmp eq ptr %28, null
  br i1 %tobool49.not.i.i.i.i.i, label %do.body48.i.i.i.i.i.if.end.i_crit_edge, label %do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge

do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.body48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i.i.i

do.body48.i.i.i.i.i.if.end.i_crit_edge:           ; preds = %do.body48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cleanup.sink.split.i.i.i.i.i:                     ; preds = %do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge
  %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i.i.i = phi ptr [ @flow_action_mixed_hw_stats_check.__msg, %do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge ], [ @__flow_action_hw_stats_check.__msg, %do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i.i.i, ptr %28, align 4
  br label %if.end.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.i.i
  %41 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp3.not.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp3.not.i.i.i, label %if.end4.i.i.i.tc_parse_flow_actions.exit.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end4.i.i.i.tc_parse_flow_actions.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_parse_flow_actions.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end4.i.i.i
  %entries.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %26, i32 1
  br label %for.body.i55.i.i

for.body.i55.i.i:                                 ; preds = %for.inc.i58.i.i.for.body.i55.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.05.i.i.i = phi i32 [ %inc.i56.i.i, %for.inc.i58.i.i.for.body.i55.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %act.04.i.i.i = phi ptr [ %arrayidx7.i.i.i, %for.inc.i58.i.i.for.body.i55.i.i_crit_edge ], [ %entries.i.i.i, %for.body.preheader.i.i.i ]
  %43 = ptrtoint ptr %act.04.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %act.04.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cond.i.i.i = icmp eq i32 %44, 1
  br i1 %cond.i.i.i, label %sw.bb.i.i.i, label %for.inc.i58.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i55.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %action5.i.i.i = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %action5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %action5.i.i.i, align 4
  %or.i.i.i = or i32 %46, 1
  store i32 %or.i.i.i, ptr %action5.i.i.i, align 4
  br label %tc_parse_flow_actions.exit.i.i

for.inc.i58.i.i:                                  ; preds = %for.body.i55.i.i
  %inc.i56.i.i = add nuw i32 %i.05.i.i.i, 1
  %arrayidx7.i.i.i = getelementptr %struct.flow_rule, ptr %26, i32 0, i32 1, i32 1, i32 %inc.i56.i.i
  %exitcond.not.i57.i.i = icmp eq i32 %inc.i56.i.i, %42
  br i1 %exitcond.not.i57.i.i, label %for.inc.i58.i.i.tc_parse_flow_actions.exit.i.i_crit_edge, label %for.inc.i58.i.i.for.body.i55.i.i_crit_edge

for.inc.i58.i.i.for.body.i55.i.i_crit_edge:       ; preds = %for.inc.i58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i55.i.i

for.inc.i58.i.i.tc_parse_flow_actions.exit.i.i_crit_edge: ; preds = %for.inc.i58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_parse_flow_actions.exit.i.i

tc_parse_flow_actions.exit.i.i:                   ; preds = %for.inc.i58.i.i.tc_parse_flow_actions.exit.i.i_crit_edge, %sw.bb.i.i.i, %if.end4.i.i.i.tc_parse_flow_actions.exit.i.i_crit_edge
  %in_use.i.i = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1.0.i.i, i32 0, i32 3
  %rule.i.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %47 = ptrtoint ptr %rule.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rule.i.i.i.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match3.i.i.i) #6
  %51 = ptrtoint ptr %match3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %match3.i.i.i, align 4, !annotation !73
  %52 = getelementptr inbounds %struct.flow_match_basic, ptr %match3.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %52, align 4, !annotation !73
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %50, align 4
  %and.i.i.i.i = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %tc_add_basic_flow.exit.i.i, label %if.then13.i.i

tc_add_basic_flow.exit.i.i:                       ; preds = %tc_parse_flow_actions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match3.i.i.i) #6
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %tc_parse_flow_actions.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @flow_rule_match_basic(ptr noundef %48, ptr noundef nonnull %match3.i.i.i) #6
  %56 = ptrtoint ptr %match3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %match3.i.i.i, align 4
  %ip_proto.i.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ip_proto.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ip_proto.i.i.i, align 2
  %ip_proto5.i.i.i = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1.0.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %ip_proto5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %ip_proto5.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match3.i.i.i) #6
  %61 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %in_use.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then13.i.i, %tc_add_basic_flow.exit.i.i
  %call11.1.i.i = call fastcc i32 @tc_add_ip4_flow(ptr noundef %priv, ptr noundef %cls, ptr noundef %entry1.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1.i.i)
  %tobool12.not.1.i.i = icmp eq i32 %call11.1.i.i, 0
  br i1 %tobool12.not.1.i.i, label %if.then13.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

if.then13.1.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %in_use.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then13.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %call11.2.i.i = call fastcc i32 @tc_add_ports_flow(ptr noundef %priv, ptr noundef %cls, ptr noundef %entry1.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2.i.i)
  %tobool12.not.2.i.i = icmp eq i32 %call11.2.i.i, 0
  br i1 %tobool12.not.2.i.i, label %for.inc.2.thread.i.i, label %for.inc.2.i.i

for.inc.2.thread.i.i:                             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %in_use.i.i, align 4
  br label %tc_add_flow.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %64 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr.i.i = load i32, ptr %in_use.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool16.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool16.not.i.i, label %for.inc.2.i.i.if.end.i_crit_edge, label %for.inc.2.i.i.tc_add_flow.exit.i_crit_edge

for.inc.2.i.i.tc_add_flow.exit.i_crit_edge:       ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_flow.exit.i

for.inc.2.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

tc_add_flow.exit.i:                               ; preds = %for.inc.2.i.i.tc_add_flow.exit.i_crit_edge, %for.inc.2.thread.i.i
  %cookie.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %65 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cookie.i.i, align 4
  %67 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %entry1.0.i.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %for.inc.2.i.i.if.end.i_crit_edge, %cleanup.sink.split.i.i.i.i.i, %do.body48.i.i.i.i.i.if.end.i_crit_edge, %do.body.i.i.i.i.i.i.if.end.i_crit_edge, %if.end6.i.i.if.end.i_crit_edge, %tc_find_flow.exit54.i.i.if.end.i_crit_edge, %for.inc.i.i.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  %rfs_entries_total.i.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 96
  %68 = ptrtoint ptr %rfs_entries_total.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rfs_entries_total.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp16.not.i.i13.i = icmp eq i32 %69, 0
  br i1 %cmp16.not.i.i13.i, label %if.end.i.tc_find_rfs.exit.i.i_crit_edge, label %for.body.lr.ph.i.i15.i

if.end.i.tc_find_rfs.exit.i.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit.i.i

for.body.lr.ph.i.i15.i:                           ; preds = %if.end.i
  %rfs_entries.i.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 97
  %70 = ptrtoint ptr %rfs_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rfs_entries.i.i.i, align 32
  %cookie2.i.i14.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %72 = ptrtoint ptr %cookie2.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cookie2.i.i14.i, align 4
  br label %for.body.i.i19.i

for.body.i.i19.i:                                 ; preds = %if.end.i.i22.i.for.body.i.i19.i_crit_edge, %for.body.lr.ph.i.i15.i
  %i.017.i.i16.i = phi i32 [ 0, %for.body.lr.ph.i.i15.i ], [ %inc.i.i20.i, %if.end.i.i22.i.for.body.i.i19.i_crit_edge ]
  %arrayidx.i.i17.i = getelementptr %struct.stmmac_rfs_entry, ptr %71, i32 %i.017.i.i16.i
  %74 = ptrtoint ptr %arrayidx.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %73)
  %cmp3.i.i18.i = icmp eq i32 %75, %73
  br i1 %cmp3.i.i18.i, label %for.body.i.i19.i.tc_find_rfs.exit.i.i_crit_edge, label %if.end.i.i22.i

for.body.i.i19.i.tc_find_rfs.exit.i.i_crit_edge:  ; preds = %for.body.i.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit.i.i

if.end.i.i22.i:                                   ; preds = %for.body.i.i19.i
  %inc.i.i20.i = add nuw i32 %i.017.i.i16.i, 1
  %exitcond.not.i.i21.i = icmp eq i32 %inc.i.i20.i, %69
  br i1 %exitcond.not.i.i21.i, label %if.end.i.i22.i.tc_find_rfs.exit.i.i_crit_edge, label %if.end.i.i22.i.for.body.i.i19.i_crit_edge

if.end.i.i22.i.for.body.i.i19.i_crit_edge:        ; preds = %if.end.i.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i19.i

if.end.i.i22.i.tc_find_rfs.exit.i.i_crit_edge:    ; preds = %if.end.i.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit.i.i

tc_find_rfs.exit.i.i:                             ; preds = %if.end.i.i22.i.tc_find_rfs.exit.i.i_crit_edge, %for.body.i.i19.i.tc_find_rfs.exit.i.i_crit_edge, %if.end.i.tc_find_rfs.exit.i.i_crit_edge
  %retval.2.i.i.i = phi ptr [ null, %if.end.i.tc_find_rfs.exit.i.i_crit_edge ], [ null, %if.end.i.i22.i.tc_find_rfs.exit.i.i_crit_edge ], [ %arrayidx.i.i17.i, %for.body.i.i19.i.tc_find_rfs.exit.i.i_crit_edge ]
  %rule.i.i23.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %76 = ptrtoint ptr %rule.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rule.i.i23.i, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %dev.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  %classid.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 5
  %82 = ptrtoint ptr %classid.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %classid.i.i, align 8
  %and.i.i.i = and i32 %83, 65535
  %sub.i.i.i = add nsw i32 %and.i.i.i, -65504
  %num_tc.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 140
  %84 = ptrtoint ptr %num_tc.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %num_tc.i.i.i.i, align 4
  %conv.i.i.i.i = sext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv.i.i.i.i)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %conv.i.i.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %sub.i.i.i, i32 -22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match5.i.i) #6
  %86 = ptrtoint ptr %match5.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 -1 to ptr), ptr %match5.i.i, align 4, !annotation !73
  %87 = getelementptr inbounds %struct.flow_match_basic, ptr %match5.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %87, align 4, !annotation !73
  %tobool.not.i24.i = icmp eq ptr %retval.2.i.i.i, null
  br i1 %tobool.not.i24.i, label %if.then.i25.i, label %tc_find_rfs.exit.i.i.if.end9.i.i_crit_edge

tc_find_rfs.exit.i.i.if.end9.i.i_crit_edge:       ; preds = %tc_find_rfs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then.i25.i:                                    ; preds = %tc_find_rfs.exit.i.i
  br i1 %cmp16.not.i.i13.i, label %if.then.i25.i.if.end4.i_crit_edge, label %for.body.lr.ph.i128.i.i

if.then.i25.i.if.end4.i_crit_edge:                ; preds = %if.then.i25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.body.lr.ph.i128.i.i:                          ; preds = %if.then.i25.i
  %rfs_entries.i126.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 97
  %89 = ptrtoint ptr %rfs_entries.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rfs_entries.i126.i.i, align 32
  %cookie2.i127.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %91 = ptrtoint ptr %cookie2.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cookie2.i127.i.i, align 4
  br label %for.body.i132.i.i

for.body.i132.i.i:                                ; preds = %for.inc.i.i28.i.for.body.i132.i.i_crit_edge, %for.body.lr.ph.i128.i.i
  %i.017.i129.i.i = phi i32 [ 0, %for.body.lr.ph.i128.i.i ], [ %inc.i134.i.i, %for.inc.i.i28.i.for.body.i132.i.i_crit_edge ]
  %arrayidx.i130.i.i = getelementptr %struct.stmmac_rfs_entry, ptr %90, i32 %i.017.i129.i.i
  %93 = ptrtoint ptr %arrayidx.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i130.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %92)
  %cmp3.i131.i.i = icmp eq i32 %94, %92
  br i1 %cmp3.i131.i.i, label %for.body.i132.i.i.tc_find_rfs.exit137.i.i_crit_edge, label %if.end.i133.i.i

for.body.i132.i.i.tc_find_rfs.exit137.i.i_crit_edge: ; preds = %for.body.i132.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit137.i.i

if.end.i133.i.i:                                  ; preds = %for.body.i132.i.i
  %in_use.i.i26.i = getelementptr %struct.stmmac_rfs_entry, ptr %90, i32 %i.017.i129.i.i, i32 2
  %95 = ptrtoint ptr %in_use.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %in_use.i.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp4.i.i27.i = icmp eq i32 %96, 0
  br i1 %cmp4.i.i27.i, label %if.end.i133.i.i.tc_find_rfs.exit137.i.i_crit_edge, label %for.inc.i.i28.i

if.end.i133.i.i.tc_find_rfs.exit137.i.i_crit_edge: ; preds = %if.end.i133.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit137.i.i

for.inc.i.i28.i:                                  ; preds = %if.end.i133.i.i
  %inc.i134.i.i = add nuw i32 %i.017.i129.i.i, 1
  %exitcond.not.i135.i.i = icmp eq i32 %inc.i134.i.i, %69
  br i1 %exitcond.not.i135.i.i, label %for.inc.i.i28.i.if.end4.i_crit_edge, label %for.inc.i.i28.i.for.body.i132.i.i_crit_edge

for.inc.i.i28.i.for.body.i132.i.i_crit_edge:      ; preds = %for.inc.i.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i132.i.i

for.inc.i.i28.i.if.end4.i_crit_edge:              ; preds = %for.inc.i.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

tc_find_rfs.exit137.i.i:                          ; preds = %if.end.i133.i.i.tc_find_rfs.exit137.i.i_crit_edge, %for.body.i132.i.i.tc_find_rfs.exit137.i.i_crit_edge
  %tobool7.not.i.i = icmp eq ptr %arrayidx.i130.i.i, null
  br i1 %tobool7.not.i.i, label %tc_find_rfs.exit137.i.i.if.end4.i_crit_edge, label %tc_find_rfs.exit137.i.i.if.end9.i.i_crit_edge

tc_find_rfs.exit137.i.i.if.end9.i.i_crit_edge:    ; preds = %tc_find_rfs.exit137.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

tc_find_rfs.exit137.i.i.if.end4.i_crit_edge:      ; preds = %tc_find_rfs.exit137.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end9.i.i:                                      ; preds = %tc_find_rfs.exit137.i.i.if.end9.i.i_crit_edge, %tc_find_rfs.exit.i.i.if.end9.i.i_crit_edge
  %entry1.0.i29.i = phi ptr [ %retval.2.i.i.i, %tc_find_rfs.exit.i.i.if.end9.i.i_crit_edge ], [ %arrayidx.i130.i.i, %tc_find_rfs.exit137.i.i.if.end9.i.i_crit_edge ]
  %97 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %79, align 4
  %and.i138.i.i = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i138.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end9.i.i.if.end4.i_crit_edge, label %if.end12.i.i

if.end9.i.i.if.end4.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end12.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %cmp.i.i = icmp slt i32 %spec.select.i.i.i, 0
  br i1 %cmp.i.i, label %if.then13.i30.i, label %if.end15.i.i

if.then13.i30.i:                                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %81, ptr noundef nonnull @.str.14) #9
  br label %if.end4.i

if.end15.i.i:                                     ; preds = %if.end12.i.i
  call void @flow_rule_match_basic(ptr noundef %77, ptr noundef nonnull %match5.i.i) #6
  %99 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %87, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %100, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool16.not.i31.i = icmp eq i16 %102, 0
  br i1 %tobool16.not.i31.i, label %if.end15.i.i.if.end4.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end4.i_crit_edge:                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  %103 = ptrtoint ptr %match5.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %match5.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %104, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %102)
  %cmp21.not.i.i = icmp eq i16 %102, -1
  br i1 %cmp21.not.i.i, label %if.end25.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %108, ptr noundef nonnull @.str.15) #9
  br label %if.end4.i

if.end25.i.i:                                     ; preds = %if.then17.i.i
  %109 = zext i16 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %106, label %sw.default.i.i [
    i16 -30516, label %sw.bb.i.i
    i16 -30473, label %sw.bb44.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end25.i.i
  %arrayidx.i.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 95, i32 1
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 94, i32 1
  %112 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx27.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp28.not.i.i = icmp ult i32 %111, %113
  br i1 %cmp28.not.i.i, label %if.end31.i.i, label %sw.bb.i.i.if.end4.i_crit_edge

sw.bb.i.i.if.end4.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end31.i.i:                                     ; preds = %sw.bb.i.i
  %type.i.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i29.i, i32 0, i32 3
  %114 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %type.i.i, align 4
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %116, 1
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %117 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %tobool34.not.i.i = icmp eq ptr %120, null
  br i1 %tobool34.not.i.i, label %if.end31.i.i.tc_add_ethtype_flow.exit.i_crit_edge, label %land.lhs.true.i.i

if.end31.i.i.tc_add_ethtype_flow.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_ethtype_flow.exit.i

land.lhs.true.i.i:                                ; preds = %if.end31.i.i
  %rx_queue_routing.i.i = getelementptr inbounds %struct.stmmac_ops, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %rx_queue_routing.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rx_queue_routing.i.i, align 4
  %tobool37.not.i.i = icmp eq ptr %122, null
  br i1 %tobool37.not.i.i, label %land.lhs.true.i.i.tc_add_ethtype_flow.exit.i_crit_edge, label %if.then38.i.i

land.lhs.true.i.i.tc_add_ethtype_flow.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_ethtype_flow.exit.i

if.then38.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %122(ptr noundef %118, i8 noundef zeroext 3, i32 noundef %spec.select.i.i.i) #6
  br label %tc_add_ethtype_flow.exit.i

sw.bb44.i.i:                                      ; preds = %if.end25.i.i
  %arrayidx46.i.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 95, i32 2
  %123 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx46.i.i, align 8
  %arrayidx48.i.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 94, i32 2
  %125 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx48.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp49.not.i.i = icmp ult i32 %124, %126
  br i1 %cmp49.not.i.i, label %if.end52.i.i, label %sw.bb44.i.i.if.end4.i_crit_edge

sw.bb44.i.i.if.end4.i_crit_edge:                  ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end52.i.i:                                     ; preds = %sw.bb44.i.i
  %type53.i.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i29.i, i32 0, i32 3
  %127 = ptrtoint ptr %type53.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %type53.i.i, align 4
  %128 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx46.i.i, align 8
  %inc56.i.i = add i32 %129, 1
  store i32 %inc56.i.i, ptr %arrayidx46.i.i, align 8
  %hw58.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %130 = ptrtoint ptr %hw58.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw58.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %tobool60.not.i.i = icmp eq ptr %133, null
  br i1 %tobool60.not.i.i, label %if.end52.i.i.tc_add_ethtype_flow.exit.i_crit_edge, label %land.lhs.true61.i.i

if.end52.i.i.tc_add_ethtype_flow.exit.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_ethtype_flow.exit.i

land.lhs.true61.i.i:                              ; preds = %if.end52.i.i
  %rx_queue_routing64.i.i = getelementptr inbounds %struct.stmmac_ops, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %rx_queue_routing64.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_queue_routing64.i.i, align 4
  %tobool65.not.i.i = icmp eq ptr %135, null
  br i1 %tobool65.not.i.i, label %land.lhs.true61.i.i.tc_add_ethtype_flow.exit.i_crit_edge, label %if.then66.i.i

land.lhs.true61.i.i.tc_add_ethtype_flow.exit.i_crit_edge: ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_ethtype_flow.exit.i

if.then66.i.i:                                    ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %135(ptr noundef %131, i8 noundef zeroext 2, i32 noundef %spec.select.i.i.i) #6
  br label %tc_add_ethtype_flow.exit.i

sw.default.i.i:                                   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.i.i = zext i16 %106 to i32
  %136 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %137, ptr noundef nonnull @.str.16, i32 noundef %conv26.i.i) #9
  br label %if.end4.i

tc_add_ethtype_flow.exit.i:                       ; preds = %if.then66.i.i, %land.lhs.true61.i.i.tc_add_ethtype_flow.exit.i_crit_edge, %if.end52.i.i.tc_add_ethtype_flow.exit.i_crit_edge, %if.then38.i.i, %land.lhs.true.i.i.tc_add_ethtype_flow.exit.i_crit_edge, %if.end31.i.i.tc_add_ethtype_flow.exit.i_crit_edge
  %in_use.i32.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i29.i, i32 0, i32 2
  %138 = ptrtoint ptr %in_use.i32.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %in_use.i32.i, align 4
  %cookie.i33.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %139 = ptrtoint ptr %cookie.i33.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cookie.i33.i, align 4
  %141 = ptrtoint ptr %entry1.0.i29.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %entry1.0.i29.i, align 4
  %tc76.i.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i29.i, i32 0, i32 4
  %142 = ptrtoint ptr %tc76.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %spec.select.i.i.i, ptr %tc76.i.i, align 4
  %etype77.i.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i29.i, i32 0, i32 1
  %143 = ptrtoint ptr %etype77.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %106, ptr %etype77.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match5.i.i) #6
  br label %cleanup

if.end4.i:                                        ; preds = %sw.default.i.i, %sw.bb44.i.i.if.end4.i_crit_edge, %sw.bb.i.i.if.end4.i_crit_edge, %if.then23.i.i, %if.end15.i.i.if.end4.i_crit_edge, %if.then13.i30.i, %if.end9.i.i.if.end4.i_crit_edge, %tc_find_rfs.exit137.i.i.if.end4.i_crit_edge, %for.inc.i.i28.i.if.end4.i_crit_edge, %if.then.i25.i.if.end4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match5.i.i) #6
  %144 = ptrtoint ptr %rfs_entries_total.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rfs_entries_total.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp16.not.i.i36.i = icmp eq i32 %145, 0
  br i1 %cmp16.not.i.i36.i, label %if.end4.i.tc_find_rfs.exit.i58.i_crit_edge, label %for.body.lr.ph.i.i39.i

if.end4.i.tc_find_rfs.exit.i58.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit.i58.i

for.body.lr.ph.i.i39.i:                           ; preds = %if.end4.i
  %rfs_entries.i.i37.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 97
  %146 = ptrtoint ptr %rfs_entries.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rfs_entries.i.i37.i, align 32
  %cookie2.i.i38.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %148 = ptrtoint ptr %cookie2.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cookie2.i.i38.i, align 4
  br label %for.body.i.i43.i

for.body.i.i43.i:                                 ; preds = %if.end.i.i46.i.for.body.i.i43.i_crit_edge, %for.body.lr.ph.i.i39.i
  %i.017.i.i40.i = phi i32 [ 0, %for.body.lr.ph.i.i39.i ], [ %inc.i.i44.i, %if.end.i.i46.i.for.body.i.i43.i_crit_edge ]
  %arrayidx.i.i41.i = getelementptr %struct.stmmac_rfs_entry, ptr %147, i32 %i.017.i.i40.i
  %150 = ptrtoint ptr %arrayidx.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i.i41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %149)
  %cmp3.i.i42.i = icmp eq i32 %151, %149
  br i1 %cmp3.i.i42.i, label %for.body.i.i43.i.tc_find_rfs.exit.i58.i_crit_edge, label %if.end.i.i46.i

for.body.i.i43.i.tc_find_rfs.exit.i58.i_crit_edge: ; preds = %for.body.i.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit.i58.i

if.end.i.i46.i:                                   ; preds = %for.body.i.i43.i
  %inc.i.i44.i = add nuw i32 %i.017.i.i40.i, 1
  %exitcond.not.i.i45.i = icmp eq i32 %inc.i.i44.i, %145
  br i1 %exitcond.not.i.i45.i, label %if.end.i.i46.i.tc_find_rfs.exit.i58.i_crit_edge, label %if.end.i.i46.i.for.body.i.i43.i_crit_edge

if.end.i.i46.i.for.body.i.i43.i_crit_edge:        ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i43.i

if.end.i.i46.i.tc_find_rfs.exit.i58.i_crit_edge:  ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit.i58.i

tc_find_rfs.exit.i58.i:                           ; preds = %if.end.i.i46.i.tc_find_rfs.exit.i58.i_crit_edge, %for.body.i.i43.i.tc_find_rfs.exit.i58.i_crit_edge, %if.end4.i.tc_find_rfs.exit.i58.i_crit_edge
  %retval.2.i.i47.i = phi ptr [ null, %if.end4.i.tc_find_rfs.exit.i58.i_crit_edge ], [ null, %if.end.i.i46.i.tc_find_rfs.exit.i58.i_crit_edge ], [ %arrayidx.i.i41.i, %for.body.i.i43.i.tc_find_rfs.exit.i58.i_crit_edge ]
  %152 = ptrtoint ptr %rule.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rule.i.i23.i, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %156 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i.i, align 4
  %158 = ptrtoint ptr %classid.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %classid.i.i, align 8
  %and.i.i51.i = and i32 %159, 65535
  %sub.i.i52.i = add nsw i32 %and.i.i51.i, -65504
  %num_tc.i.i.i53.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 140
  %160 = ptrtoint ptr %num_tc.i.i.i53.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %num_tc.i.i.i53.i, align 4
  %conv.i.i.i54.i = sext i16 %161 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i52.i, i32 %conv.i.i.i54.i)
  %cmp.i.i55.i = icmp ult i32 %sub.i.i52.i, %conv.i.i.i54.i
  %spec.select.i.i56.i = select i1 %cmp.i.i55.i, i32 %sub.i.i52.i, i32 -22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match5.i34.i) #6
  %162 = ptrtoint ptr %match5.i34.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 -1 to ptr), ptr %match5.i34.i, align 4, !annotation !73
  %163 = getelementptr inbounds %struct.flow_match_vlan, ptr %match5.i34.i, i32 0, i32 1
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr inttoptr (i32 -1 to ptr), ptr %163, align 4, !annotation !73
  %tobool.not.i57.i = icmp eq ptr %retval.2.i.i47.i, null
  br i1 %tobool.not.i57.i, label %if.then.i59.i, label %tc_find_rfs.exit.i58.i.if.end9.i65.i_crit_edge

tc_find_rfs.exit.i58.i.if.end9.i65.i_crit_edge:   ; preds = %tc_find_rfs.exit.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i65.i

if.then.i59.i:                                    ; preds = %tc_find_rfs.exit.i58.i
  br i1 %cmp16.not.i.i36.i, label %if.then.i59.i.tc_add_vlan_flow.exit.i_crit_edge, label %for.body.lr.ph.i81.i.i

if.then.i59.i.tc_add_vlan_flow.exit.i_crit_edge:  ; preds = %if.then.i59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_vlan_flow.exit.i

for.body.lr.ph.i81.i.i:                           ; preds = %if.then.i59.i
  %rfs_entries.i79.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 97
  %165 = ptrtoint ptr %rfs_entries.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rfs_entries.i79.i.i, align 32
  %cookie2.i80.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %167 = ptrtoint ptr %cookie2.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cookie2.i80.i.i, align 4
  br label %for.body.i85.i.i

for.body.i85.i.i:                                 ; preds = %for.inc.i.i62.i.for.body.i85.i.i_crit_edge, %for.body.lr.ph.i81.i.i
  %i.017.i82.i.i = phi i32 [ 0, %for.body.lr.ph.i81.i.i ], [ %inc.i87.i.i, %for.inc.i.i62.i.for.body.i85.i.i_crit_edge ]
  %arrayidx.i83.i.i = getelementptr %struct.stmmac_rfs_entry, ptr %166, i32 %i.017.i82.i.i
  %169 = ptrtoint ptr %arrayidx.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i83.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %168)
  %cmp3.i84.i.i = icmp eq i32 %170, %168
  br i1 %cmp3.i84.i.i, label %for.body.i85.i.i.tc_find_rfs.exit90.i.i_crit_edge, label %if.end.i86.i.i

for.body.i85.i.i.tc_find_rfs.exit90.i.i_crit_edge: ; preds = %for.body.i85.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit90.i.i

if.end.i86.i.i:                                   ; preds = %for.body.i85.i.i
  %in_use.i.i60.i = getelementptr %struct.stmmac_rfs_entry, ptr %166, i32 %i.017.i82.i.i, i32 2
  %171 = ptrtoint ptr %in_use.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %in_use.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp4.i.i61.i = icmp eq i32 %172, 0
  br i1 %cmp4.i.i61.i, label %if.end.i86.i.i.tc_find_rfs.exit90.i.i_crit_edge, label %for.inc.i.i62.i

if.end.i86.i.i.tc_find_rfs.exit90.i.i_crit_edge:  ; preds = %if.end.i86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_find_rfs.exit90.i.i

for.inc.i.i62.i:                                  ; preds = %if.end.i86.i.i
  %inc.i87.i.i = add nuw i32 %i.017.i82.i.i, 1
  %exitcond.not.i88.i.i = icmp eq i32 %inc.i87.i.i, %145
  br i1 %exitcond.not.i88.i.i, label %for.inc.i.i62.i.tc_add_vlan_flow.exit.i_crit_edge, label %for.inc.i.i62.i.for.body.i85.i.i_crit_edge

for.inc.i.i62.i.for.body.i85.i.i_crit_edge:       ; preds = %for.inc.i.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i85.i.i

for.inc.i.i62.i.tc_add_vlan_flow.exit.i_crit_edge: ; preds = %for.inc.i.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_vlan_flow.exit.i

tc_find_rfs.exit90.i.i:                           ; preds = %if.end.i86.i.i.tc_find_rfs.exit90.i.i_crit_edge, %for.body.i85.i.i.tc_find_rfs.exit90.i.i_crit_edge
  %tobool7.not.i63.i = icmp eq ptr %arrayidx.i83.i.i, null
  br i1 %tobool7.not.i63.i, label %tc_find_rfs.exit90.i.i.tc_add_vlan_flow.exit.i_crit_edge, label %tc_find_rfs.exit90.i.i.if.end9.i65.i_crit_edge

tc_find_rfs.exit90.i.i.if.end9.i65.i_crit_edge:   ; preds = %tc_find_rfs.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i65.i

tc_find_rfs.exit90.i.i.tc_add_vlan_flow.exit.i_crit_edge: ; preds = %tc_find_rfs.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_vlan_flow.exit.i

if.end9.i65.i:                                    ; preds = %tc_find_rfs.exit90.i.i.if.end9.i65.i_crit_edge, %tc_find_rfs.exit.i58.i.if.end9.i65.i_crit_edge
  %entry1.0.i64.i = phi ptr [ %retval.2.i.i47.i, %tc_find_rfs.exit.i58.i.if.end9.i65.i_crit_edge ], [ %arrayidx.i83.i.i, %tc_find_rfs.exit90.i.i.if.end9.i65.i_crit_edge ]
  %rfs_entries_cnt.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 95
  %173 = ptrtoint ptr %rfs_entries_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rfs_entries_cnt.i.i, align 16
  %rfs_entries_max.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 94
  %175 = ptrtoint ptr %rfs_entries_max.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rfs_entries_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %176)
  %cmp.not.i.i = icmp ult i32 %174, %176
  br i1 %cmp.not.i.i, label %if.end12.i67.i, label %if.end9.i65.i.tc_add_vlan_flow.exit.i_crit_edge

if.end9.i65.i.tc_add_vlan_flow.exit.i_crit_edge:  ; preds = %if.end9.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_vlan_flow.exit.i

if.end12.i67.i:                                   ; preds = %if.end9.i65.i
  %177 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %155, align 4
  %and.i91.i.i = and i32 %178, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i.i)
  %tobool.i.not.i66.i = icmp eq i32 %and.i91.i.i, 0
  br i1 %tobool.i.not.i66.i, label %if.end12.i67.i.tc_add_vlan_flow.exit.i_crit_edge, label %if.end15.i68.i

if.end12.i67.i.tc_add_vlan_flow.exit.i_crit_edge: ; preds = %if.end12.i67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_vlan_flow.exit.i

if.end15.i68.i:                                   ; preds = %if.end12.i67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i56.i)
  %cmp16.i.i = icmp slt i32 %spec.select.i.i56.i, 0
  br i1 %cmp16.i.i, label %if.then17.i69.i, label %if.end19.i.i

if.then17.i69.i:                                  ; preds = %if.end15.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %157, ptr noundef nonnull @.str.14) #9
  br label %tc_add_vlan_flow.exit.i

if.end19.i.i:                                     ; preds = %if.end15.i68.i
  call void @flow_rule_match_vlan(ptr noundef %153, ptr noundef nonnull %match5.i34.i) #6
  %179 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %163, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load2_noabort(i32 %181)
  %bf.load.i.i = load i16, ptr %180, align 2
  %trunc.i.i = trunc i16 %bf.load.i.i to i3
  %182 = zext i3 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.33)
  switch i3 %trunc.i.i, label %if.then27.i.i [
    i3 0, label %if.end19.i.i.tc_add_vlan_flow.exit.i_crit_edge
    i3 -1, label %if.end29.i.i
  ]

if.end19.i.i.tc_add_vlan_flow.exit.i_crit_edge:   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_add_vlan_flow.exit.i

if.then27.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %184, ptr noundef nonnull @.str.17) #9
  br label %tc_add_vlan_flow.exit.i

if.end29.i.i:                                     ; preds = %if.end19.i.i
  %185 = ptrtoint ptr %match5.i34.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %match5.i34.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load2_noabort(i32 %187)
  %bf.load30.i.i = load i16, ptr %186, align 2
  %bf.clear31.i.i = and i16 %bf.load30.i.i, 7
  %conv32.i.i = zext i16 %bf.clear31.i.i to i32
  %shl.i.i = shl nuw nsw i32 1, %conv32.i.i
  %hw.i70.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %188 = ptrtoint ptr %hw.i70.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw.i70.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %tobool33.not.i.i = icmp eq ptr %191, null
  br i1 %tobool33.not.i.i, label %if.end29.i.i.if.end42.i.i_crit_edge, label %land.lhs.true.i71.i

if.end29.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

land.lhs.true.i71.i:                              ; preds = %if.end29.i.i
  %rx_queue_prio.i.i = getelementptr inbounds %struct.stmmac_ops, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %rx_queue_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rx_queue_prio.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %193, null
  br i1 %tobool36.not.i.i, label %land.lhs.true.i71.i.if.end42.i.i_crit_edge, label %if.then37.i.i

land.lhs.true.i71.i.if.end42.i.i_crit_edge:       ; preds = %land.lhs.true.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %193(ptr noundef %189, i32 noundef %shl.i.i, i32 noundef %spec.select.i.i56.i) #6
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then37.i.i, %land.lhs.true.i71.i.if.end42.i.i_crit_edge, %if.end29.i.i.if.end42.i.i_crit_edge
  %in_use.i72.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i64.i, i32 0, i32 2
  %194 = ptrtoint ptr %in_use.i72.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 1, ptr %in_use.i72.i, align 4
  %cookie.i73.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %195 = ptrtoint ptr %cookie.i73.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %cookie.i73.i, align 4
  %197 = ptrtoint ptr %entry1.0.i64.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %entry1.0.i64.i, align 4
  %tc44.i.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i64.i, i32 0, i32 4
  %198 = ptrtoint ptr %tc44.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %spec.select.i.i56.i, ptr %tc44.i.i, align 4
  %type.i74.i = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %entry1.0.i64.i, i32 0, i32 3
  %199 = ptrtoint ptr %type.i74.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %type.i74.i, align 4
  %200 = ptrtoint ptr %rfs_entries_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %rfs_entries_cnt.i.i, align 16
  %inc.i75.i = add i32 %201, 1
  store i32 %inc.i75.i, ptr %rfs_entries_cnt.i.i, align 16
  br label %tc_add_vlan_flow.exit.i

tc_add_vlan_flow.exit.i:                          ; preds = %if.end42.i.i, %if.then27.i.i, %if.end19.i.i.tc_add_vlan_flow.exit.i_crit_edge, %if.then17.i69.i, %if.end12.i67.i.tc_add_vlan_flow.exit.i_crit_edge, %if.end9.i65.i.tc_add_vlan_flow.exit.i_crit_edge, %tc_find_rfs.exit90.i.i.tc_add_vlan_flow.exit.i_crit_edge, %for.inc.i.i62.i.tc_add_vlan_flow.exit.i_crit_edge, %if.then.i59.i.tc_add_vlan_flow.exit.i_crit_edge
  %retval.1.i76.i = phi i32 [ -22, %if.then17.i69.i ], [ -2, %tc_find_rfs.exit90.i.i.tc_add_vlan_flow.exit.i_crit_edge ], [ -2, %if.end9.i65.i.tc_add_vlan_flow.exit.i_crit_edge ], [ -22, %if.end12.i67.i.tc_add_vlan_flow.exit.i_crit_edge ], [ -22, %if.then27.i.i ], [ 0, %if.end42.i.i ], [ 0, %if.end19.i.i.tc_add_vlan_flow.exit.i_crit_edge ], [ -2, %if.then.i59.i.tc_add_vlan_flow.exit.i_crit_edge ], [ -2, %for.inc.i.i62.i.tc_add_vlan_flow.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match5.i34.i) #6
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %flow_entries_max.i.i.i7 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 92
  %202 = ptrtoint ptr %flow_entries_max.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %flow_entries_max.i.i.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp16.not.i.i.i8 = icmp eq i32 %203, 0
  br i1 %cmp16.not.i.i.i8, label %sw.bb1.if.end.i25_crit_edge, label %for.body.lr.ph.i.i.i11

sw.bb1.if.end.i25_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

for.body.lr.ph.i.i.i11:                           ; preds = %sw.bb1
  %flow_entries.i.i.i9 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 93
  %204 = ptrtoint ptr %flow_entries.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %flow_entries.i.i.i9, align 128
  %cookie2.i.i.i10 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %206 = ptrtoint ptr %cookie2.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %cookie2.i.i.i10, align 4
  br label %for.body.i.i.i15

for.body.i.i.i15:                                 ; preds = %if.end.i.i.i18.for.body.i.i.i15_crit_edge, %for.body.lr.ph.i.i.i11
  %i.017.i.i.i12 = phi i32 [ 0, %for.body.lr.ph.i.i.i11 ], [ %inc.i.i.i16, %if.end.i.i.i18.for.body.i.i.i15_crit_edge ]
  %arrayidx.i.i.i13 = getelementptr %struct.stmmac_flow_entry, ptr %205, i32 %i.017.i.i.i12
  %208 = ptrtoint ptr %arrayidx.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx.i.i.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %207)
  %cmp3.i.i.i14 = icmp eq i32 %209, %207
  br i1 %cmp3.i.i.i14, label %tc_find_flow.exit.i.i20, label %if.end.i.i.i18

if.end.i.i.i18:                                   ; preds = %for.body.i.i.i15
  %inc.i.i.i16 = add nuw i32 %i.017.i.i.i12, 1
  %exitcond.not.i.i.i17 = icmp eq i32 %inc.i.i.i16, %203
  br i1 %exitcond.not.i.i.i17, label %if.end.i.i.i18.if.end.i25_crit_edge, label %if.end.i.i.i18.for.body.i.i.i15_crit_edge

if.end.i.i.i18.for.body.i.i.i15_crit_edge:        ; preds = %if.end.i.i.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i15

if.end.i.i.i18.if.end.i25_crit_edge:              ; preds = %if.end.i.i.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

tc_find_flow.exit.i.i20:                          ; preds = %for.body.i.i.i15
  %tobool.not.i.i19 = icmp eq ptr %arrayidx.i.i.i13, null
  br i1 %tobool.not.i.i19, label %tc_find_flow.exit.i.i20.if.end.i25_crit_edge, label %lor.lhs.false.i.i

tc_find_flow.exit.i.i20.if.end.i25_crit_edge:     ; preds = %tc_find_flow.exit.i.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

lor.lhs.false.i.i:                                ; preds = %tc_find_flow.exit.i.i20
  %in_use.i.i21 = getelementptr %struct.stmmac_flow_entry, ptr %205, i32 %i.017.i.i.i12, i32 3
  %210 = ptrtoint ptr %in_use.i.i21 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %in_use.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool2.not.i.i = icmp eq i32 %211, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end.i25_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end.i25_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %is_l4.i.i = getelementptr %struct.stmmac_flow_entry, ptr %205, i32 %i.017.i.i.i12, i32 5
  %212 = ptrtoint ptr %is_l4.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %is_l4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool3.not.i.i = icmp eq i32 %213, 0
  %hw17.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %214 = ptrtoint ptr %hw17.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hw17.i.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %tobool19.not.i.i = icmp eq ptr %217, null
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  br i1 %tobool19.not.i.i, label %if.then4.i.i.tc_del_flow.exit.thread59.i_crit_edge, label %land.lhs.true.i.i22

if.then4.i.i.tc_del_flow.exit.thread59.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_del_flow.exit.thread59.i

land.lhs.true.i.i22:                              ; preds = %if.then4.i.i
  %config_l4_filter.i.i = getelementptr inbounds %struct.stmmac_ops, ptr %217, i32 0, i32 44
  %218 = ptrtoint ptr %config_l4_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %config_l4_filter.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %219, null
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i22.tc_del_flow.exit.thread59.i_crit_edge, label %land.lhs.true.i.i22.tc_del_flow.exit.i_crit_edge

land.lhs.true.i.i22.tc_del_flow.exit.i_crit_edge: ; preds = %land.lhs.true.i.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_del_flow.exit.i

land.lhs.true.i.i22.tc_del_flow.exit.thread59.i_crit_edge: ; preds = %land.lhs.true.i.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_del_flow.exit.thread59.i

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool19.not.i.i, label %if.else.i.i.tc_del_flow.exit.thread59.i_crit_edge, label %land.lhs.true20.i.i

if.else.i.i.tc_del_flow.exit.thread59.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_del_flow.exit.thread59.i

land.lhs.true20.i.i:                              ; preds = %if.else.i.i
  %config_l3_filter.i.i = getelementptr inbounds %struct.stmmac_ops, ptr %217, i32 0, i32 43
  %220 = ptrtoint ptr %config_l3_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %config_l3_filter.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %221, null
  br i1 %tobool23.not.i.i, label %land.lhs.true20.i.i.tc_del_flow.exit.thread59.i_crit_edge, label %land.lhs.true20.i.i.tc_del_flow.exit.i_crit_edge

land.lhs.true20.i.i.tc_del_flow.exit.i_crit_edge: ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_del_flow.exit.i

land.lhs.true20.i.i.tc_del_flow.exit.thread59.i_crit_edge: ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc_del_flow.exit.thread59.i

tc_del_flow.exit.thread59.i:                      ; preds = %land.lhs.true20.i.i.tc_del_flow.exit.thread59.i_crit_edge, %if.else.i.i.tc_del_flow.exit.thread59.i_crit_edge, %land.lhs.true.i.i22.tc_del_flow.exit.thread59.i_crit_edge, %if.then4.i.i.tc_del_flow.exit.thread59.i_crit_edge
  %222 = ptrtoint ptr %in_use.i.i21 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %in_use.i.i21, align 4
  %223 = ptrtoint ptr %arrayidx.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %arrayidx.i.i.i13, align 4
  %224 = ptrtoint ptr %is_l4.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %is_l4.i.i, align 4
  br label %if.end.i25

tc_del_flow.exit.i:                               ; preds = %land.lhs.true20.i.i.tc_del_flow.exit.i_crit_edge, %land.lhs.true.i.i22.tc_del_flow.exit.i_crit_edge
  %.sink64.i.i = phi ptr [ %219, %land.lhs.true.i.i22.tc_del_flow.exit.i_crit_edge ], [ %221, %land.lhs.true20.i.i.tc_del_flow.exit.i_crit_edge ]
  %idx29.i.i = getelementptr %struct.stmmac_flow_entry, ptr %205, i32 %i.017.i.i.i12, i32 4
  %225 = ptrtoint ptr %idx29.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %idx29.i.i, align 4
  %call30.i.i = tail call i32 %.sink64.i.i(ptr noundef %215, i32 noundef %226, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0) #6
  %227 = ptrtoint ptr %in_use.i.i21 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %in_use.i.i21, align 4
  %228 = ptrtoint ptr %arrayidx.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %arrayidx.i.i.i13, align 4
  %229 = ptrtoint ptr %is_l4.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %is_l4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool.not.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool.not.i, label %tc_del_flow.exit.i.cleanup_crit_edge, label %tc_del_flow.exit.i.if.end.i25_crit_edge

tc_del_flow.exit.i.if.end.i25_crit_edge:          ; preds = %tc_del_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

tc_del_flow.exit.i.cleanup_crit_edge:             ; preds = %tc_del_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i25:                                       ; preds = %tc_del_flow.exit.i.if.end.i25_crit_edge, %tc_del_flow.exit.thread59.i, %lor.lhs.false.i.i.if.end.i25_crit_edge, %tc_find_flow.exit.i.i20.if.end.i25_crit_edge, %if.end.i.i.i18.if.end.i25_crit_edge, %sw.bb1.if.end.i25_crit_edge
  %rfs_entries_total.i.i.i23 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 96
  %230 = ptrtoint ptr %rfs_entries_total.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rfs_entries_total.i.i.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp16.not.i.i13.i24 = icmp eq i32 %231, 0
  br i1 %cmp16.not.i.i13.i24, label %if.end.i25.cleanup_crit_edge, label %for.body.lr.ph.i.i15.i28

if.end.i25.cleanup_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i.i15.i28:                         ; preds = %if.end.i25
  %rfs_entries.i.i.i26 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 97
  %232 = ptrtoint ptr %rfs_entries.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %rfs_entries.i.i.i26, align 32
  %cookie2.i.i14.i27 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %234 = ptrtoint ptr %cookie2.i.i14.i27 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %cookie2.i.i14.i27, align 4
  br label %for.body.i.i19.i32

for.body.i.i19.i32:                               ; preds = %if.end.i.i22.i35.for.body.i.i19.i32_crit_edge, %for.body.lr.ph.i.i15.i28
  %i.017.i.i16.i29 = phi i32 [ 0, %for.body.lr.ph.i.i15.i28 ], [ %inc.i.i20.i33, %if.end.i.i22.i35.for.body.i.i19.i32_crit_edge ]
  %arrayidx.i.i17.i30 = getelementptr %struct.stmmac_rfs_entry, ptr %233, i32 %i.017.i.i16.i29
  %236 = ptrtoint ptr %arrayidx.i.i17.i30 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx.i.i17.i30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %235)
  %cmp3.i.i18.i31 = icmp eq i32 %237, %235
  br i1 %cmp3.i.i18.i31, label %tc_find_rfs.exit.i.i36, label %if.end.i.i22.i35

if.end.i.i22.i35:                                 ; preds = %for.body.i.i19.i32
  %inc.i.i20.i33 = add nuw i32 %i.017.i.i16.i29, 1
  %exitcond.not.i.i21.i34 = icmp eq i32 %inc.i.i20.i33, %231
  br i1 %exitcond.not.i.i21.i34, label %if.end.i.i22.i35.if.end4.i46_crit_edge, label %if.end.i.i22.i35.for.body.i.i19.i32_crit_edge

if.end.i.i22.i35.for.body.i.i19.i32_crit_edge:    ; preds = %if.end.i.i22.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i19.i32

if.end.i.i22.i35.if.end4.i46_crit_edge:           ; preds = %if.end.i.i22.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i46

tc_find_rfs.exit.i.i36:                           ; preds = %for.body.i.i19.i32
  %tobool.not.i23.i = icmp eq ptr %arrayidx.i.i17.i30, null
  br i1 %tobool.not.i23.i, label %tc_find_rfs.exit.i.i36.if.end4.i46_crit_edge, label %lor.lhs.false.i26.i

tc_find_rfs.exit.i.i36.if.end4.i46_crit_edge:     ; preds = %tc_find_rfs.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i46

lor.lhs.false.i26.i:                              ; preds = %tc_find_rfs.exit.i.i36
  %in_use.i24.i = getelementptr %struct.stmmac_rfs_entry, ptr %233, i32 %i.017.i.i16.i29, i32 2
  %238 = ptrtoint ptr %in_use.i24.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %in_use.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool2.not.i25.i = icmp eq i32 %239, 0
  br i1 %tobool2.not.i25.i, label %lor.lhs.false.i26.i.if.end4.i46_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i26.i.if.end4.i46_crit_edge:        ; preds = %lor.lhs.false.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i46

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i26.i
  %type.i.i37 = getelementptr %struct.stmmac_rfs_entry, ptr %233, i32 %i.017.i.i16.i29, i32 3
  %240 = ptrtoint ptr %type.i.i37 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %type.i.i37, align 4
  %242 = add i32 %241, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %242)
  %243 = icmp ult i32 %242, -2
  br i1 %243, label %lor.lhs.false3.i.i.if.end4.i46_crit_edge, label %if.end.i27.i

lor.lhs.false3.i.i.if.end4.i46_crit_edge:         ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i46

if.end.i27.i:                                     ; preds = %lor.lhs.false3.i.i
  %etype.i.i = getelementptr %struct.stmmac_rfs_entry, ptr %233, i32 %i.017.i.i16.i29, i32 1
  %244 = ptrtoint ptr %etype.i.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %etype.i.i, align 4
  %246 = zext i16 %245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %245, label %sw.default.i.i45 [
    i16 -30516, label %sw.bb.i.i40
    i16 -30473, label %sw.bb17.i.i
  ]

sw.bb.i.i40:                                      ; preds = %if.end.i27.i
  %hw.i.i38 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %247 = ptrtoint ptr %hw.i.i38 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hw.i.i38, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %tobool7.not.i.i39 = icmp eq ptr %250, null
  br i1 %tobool7.not.i.i39, label %sw.bb.i.i40.if.end16.i.i_crit_edge, label %land.lhs.true.i28.i

sw.bb.i.i40.if.end16.i.i_crit_edge:               ; preds = %sw.bb.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

land.lhs.true.i28.i:                              ; preds = %sw.bb.i.i40
  %rx_queue_routing.i.i41 = getelementptr inbounds %struct.stmmac_ops, ptr %250, i32 0, i32 6
  %251 = ptrtoint ptr %rx_queue_routing.i.i41 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %rx_queue_routing.i.i41, align 4
  %tobool10.not.i.i = icmp eq ptr %252, null
  br i1 %tobool10.not.i.i, label %land.lhs.true.i28.i.if.end16.i.i_crit_edge, label %if.then11.i.i

land.lhs.true.i28.i.if.end16.i.i_crit_edge:       ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %252(ptr noundef %248, i8 noundef zeroext 3, i32 noundef 0) #6
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %land.lhs.true.i28.i.if.end16.i.i_crit_edge, %sw.bb.i.i40.if.end16.i.i_crit_edge
  %arrayidx.i.i42 = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 95, i32 1
  %253 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx.i.i42, align 4
  %dec.i.i = add i32 %254, -1
  store i32 %dec.i.i, ptr %arrayidx.i.i42, align 4
  br label %tc_del_ethtype_flow.exit.i

sw.bb17.i.i:                                      ; preds = %if.end.i27.i
  %hw19.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %255 = ptrtoint ptr %hw19.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hw19.i.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 4
  %tobool21.not.i.i = icmp eq ptr %258, null
  br i1 %tobool21.not.i.i, label %sw.bb17.i.i.if.end32.i.i_crit_edge, label %land.lhs.true22.i.i

sw.bb17.i.i.if.end32.i.i_crit_edge:               ; preds = %sw.bb17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

land.lhs.true22.i.i:                              ; preds = %sw.bb17.i.i
  %rx_queue_routing25.i.i = getelementptr inbounds %struct.stmmac_ops, ptr %258, i32 0, i32 6
  %259 = ptrtoint ptr %rx_queue_routing25.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %rx_queue_routing25.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %260, null
  br i1 %tobool26.not.i.i, label %land.lhs.true22.i.i.if.end32.i.i_crit_edge, label %if.then27.i.i43

land.lhs.true22.i.i.if.end32.i.i_crit_edge:       ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

if.then27.i.i43:                                  ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %260(ptr noundef %256, i8 noundef zeroext 2, i32 noundef 0) #6
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then27.i.i43, %land.lhs.true22.i.i.if.end32.i.i_crit_edge, %sw.bb17.i.i.if.end32.i.i_crit_edge
  %arrayidx35.i.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 95, i32 2
  %261 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx35.i.i, align 8
  %dec36.i.i = add i32 %262, -1
  store i32 %dec36.i.i, ptr %arrayidx35.i.i, align 8
  br label %tc_del_ethtype_flow.exit.i

sw.default.i.i45:                                 ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %245 to i32
  %dev.i.i44 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %263 = ptrtoint ptr %dev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev.i.i44, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %264, ptr noundef nonnull @.str.16, i32 noundef %conv.i.i) #9
  br label %if.end4.i46

tc_del_ethtype_flow.exit.i:                       ; preds = %if.end32.i.i, %if.end16.i.i
  %265 = ptrtoint ptr %in_use.i24.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %in_use.i24.i, align 4
  %266 = ptrtoint ptr %arrayidx.i.i17.i30 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %arrayidx.i.i17.i30, align 4
  %tc.i.i = getelementptr %struct.stmmac_rfs_entry, ptr %233, i32 %i.017.i.i16.i29, i32 4
  %267 = ptrtoint ptr %tc.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %tc.i.i, align 4
  %268 = ptrtoint ptr %etype.i.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %etype.i.i, align 4
  %269 = ptrtoint ptr %type.i.i37 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %type.i.i37, align 4
  br label %cleanup

if.end4.i46:                                      ; preds = %sw.default.i.i45, %lor.lhs.false3.i.i.if.end4.i46_crit_edge, %lor.lhs.false.i26.i.if.end4.i46_crit_edge, %tc_find_rfs.exit.i.i36.if.end4.i46_crit_edge, %if.end.i.i22.i35.if.end4.i46_crit_edge
  %270 = ptrtoint ptr %rfs_entries_total.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %270)
  %.pr.i = load i32, ptr %rfs_entries_total.i.i.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp16.not.i.i31.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp16.not.i.i31.i, label %if.end4.i46.cleanup_crit_edge, label %for.body.lr.ph.i.i34.i

if.end4.i46.cleanup_crit_edge:                    ; preds = %if.end4.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i.i34.i:                           ; preds = %if.end4.i46
  %271 = ptrtoint ptr %rfs_entries.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rfs_entries.i.i.i26, align 32
  %273 = ptrtoint ptr %cookie2.i.i14.i27 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %cookie2.i.i14.i27, align 4
  br label %for.body.i.i38.i

for.body.i.i38.i:                                 ; preds = %if.end.i.i41.i.for.body.i.i38.i_crit_edge, %for.body.lr.ph.i.i34.i
  %i.017.i.i35.i = phi i32 [ 0, %for.body.lr.ph.i.i34.i ], [ %inc.i.i39.i, %if.end.i.i41.i.for.body.i.i38.i_crit_edge ]
  %arrayidx.i.i36.i = getelementptr %struct.stmmac_rfs_entry, ptr %272, i32 %i.017.i.i35.i
  %275 = ptrtoint ptr %arrayidx.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i.i36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %276, i32 %274)
  %cmp3.i.i37.i = icmp eq i32 %276, %274
  br i1 %cmp3.i.i37.i, label %tc_find_rfs.exit.i43.i, label %if.end.i.i41.i

if.end.i.i41.i:                                   ; preds = %for.body.i.i38.i
  %inc.i.i39.i = add nuw i32 %i.017.i.i35.i, 1
  %exitcond.not.i.i40.i = icmp eq i32 %inc.i.i39.i, %.pr.i
  br i1 %exitcond.not.i.i40.i, label %if.end.i.i41.i.cleanup_crit_edge, label %if.end.i.i41.i.for.body.i.i38.i_crit_edge

if.end.i.i41.i.for.body.i.i38.i_crit_edge:        ; preds = %if.end.i.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i38.i

if.end.i.i41.i.cleanup_crit_edge:                 ; preds = %if.end.i.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tc_find_rfs.exit.i43.i:                           ; preds = %for.body.i.i38.i
  %tobool.not.i42.i = icmp eq ptr %arrayidx.i.i36.i, null
  br i1 %tobool.not.i42.i, label %tc_find_rfs.exit.i43.i.cleanup_crit_edge, label %lor.lhs.false.i46.i

tc_find_rfs.exit.i43.i.cleanup_crit_edge:         ; preds = %tc_find_rfs.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i46.i:                              ; preds = %tc_find_rfs.exit.i43.i
  %in_use.i44.i = getelementptr %struct.stmmac_rfs_entry, ptr %272, i32 %i.017.i.i35.i, i32 2
  %277 = ptrtoint ptr %in_use.i44.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %in_use.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool2.not.i45.i = icmp eq i32 %278, 0
  br i1 %tobool2.not.i45.i, label %lor.lhs.false.i46.i.cleanup_crit_edge, label %lor.lhs.false3.i48.i

lor.lhs.false.i46.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3.i48.i:                             ; preds = %lor.lhs.false.i46.i
  %type.i47.i = getelementptr %struct.stmmac_rfs_entry, ptr %272, i32 %i.017.i.i35.i, i32 3
  %279 = ptrtoint ptr %type.i47.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %type.i47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp.not.i.i47 = icmp eq i32 %280, 0
  br i1 %cmp.not.i.i47, label %if.end.i50.i, label %lor.lhs.false3.i48.i.cleanup_crit_edge

lor.lhs.false3.i48.i.cleanup_crit_edge:           ; preds = %lor.lhs.false3.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i50.i:                                     ; preds = %lor.lhs.false3.i48.i
  %hw.i49.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %281 = ptrtoint ptr %hw.i49.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hw.i49.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %tobool4.not.i.i48 = icmp eq ptr %284, null
  br i1 %tobool4.not.i.i48, label %if.end.i50.i.if.end13.i.i_crit_edge, label %land.lhs.true.i52.i

if.end.i50.i.if.end13.i.i_crit_edge:              ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

land.lhs.true.i52.i:                              ; preds = %if.end.i50.i
  %rx_queue_prio.i.i49 = getelementptr inbounds %struct.stmmac_ops, ptr %284, i32 0, i32 4
  %285 = ptrtoint ptr %rx_queue_prio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rx_queue_prio.i.i49, align 4
  %tobool7.not.i51.i = icmp eq ptr %286, null
  br i1 %tobool7.not.i51.i, label %land.lhs.true.i52.i.if.end13.i.i_crit_edge, label %if.then8.i.i

land.lhs.true.i52.i.if.end13.i.i_crit_edge:       ; preds = %land.lhs.true.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc.i53.i = getelementptr %struct.stmmac_rfs_entry, ptr %272, i32 %i.017.i.i35.i, i32 4
  %287 = ptrtoint ptr %tc.i53.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %tc.i53.i, align 4
  tail call void %286(ptr noundef %282, i32 noundef 0, i32 noundef %288) #6
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true.i52.i.if.end13.i.i_crit_edge, %if.end.i50.i.if.end13.i.i_crit_edge
  %289 = ptrtoint ptr %in_use.i44.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %in_use.i44.i, align 4
  %290 = ptrtoint ptr %arrayidx.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 0, ptr %arrayidx.i.i36.i, align 4
  %tc15.i.i = getelementptr %struct.stmmac_rfs_entry, ptr %272, i32 %i.017.i.i35.i, i32 4
  %291 = ptrtoint ptr %tc15.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 0, ptr %tc15.i.i, align 4
  %292 = ptrtoint ptr %type.i47.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %type.i47.i, align 4
  %rfs_entries_cnt.i.i50 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 95
  %293 = ptrtoint ptr %rfs_entries_cnt.i.i50 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %rfs_entries_cnt.i.i50, align 16
  %dec.i54.i = add i32 %294, -1
  store i32 %dec.i54.i, ptr %rfs_entries_cnt.i.i50, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end13.i.i, %lor.lhs.false3.i48.i.cleanup_crit_edge, %lor.lhs.false.i46.i.cleanup_crit_edge, %tc_find_rfs.exit.i43.i.cleanup_crit_edge, %if.end.i.i41.i.cleanup_crit_edge, %if.end4.i46.cleanup_crit_edge, %tc_del_ethtype_flow.exit.i, %if.end.i25.cleanup_crit_edge, %tc_del_flow.exit.i.cleanup_crit_edge, %tc_add_vlan_flow.exit.i, %tc_add_ethtype_flow.exit.i, %tc_add_flow.exit.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %retval.1.i76.i, %tc_add_vlan_flow.exit.i ], [ 0, %tc_add_flow.exit.i ], [ 0, %tc_add_ethtype_flow.exit.i ], [ 0, %tc_del_flow.exit.i.cleanup_crit_edge ], [ 0, %tc_del_ethtype_flow.exit.i ], [ 0, %if.end13.i.i ], [ -2, %lor.lhs.false3.i48.i.cleanup_crit_edge ], [ -2, %lor.lhs.false.i46.i.cleanup_crit_edge ], [ -2, %tc_find_rfs.exit.i43.i.cleanup_crit_edge ], [ -2, %if.end4.i46.cleanup_crit_edge ], [ -2, %if.end.i25.cleanup_crit_edge ], [ -2, %if.end.i.i41.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_setup_taprio(ptr noundef %priv, ptr nocapture noundef readonly %qopt) #0 align 64 {
entry:
  %current_time = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  %tmp98 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %estwid = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 41
  %0 = ptrtoint ptr %estwid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %estwid, align 4
  %estdep = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 42
  %2 = ptrtoint ptr %estdep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %estdep, align 4
  %plat2 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %4 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat2, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %current_time) #6
  %6 = call ptr @memset(ptr %current_time, i32 255, i32 16)
  %estsel = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 43
  %7 = ptrtoint ptr %estsel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %estsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup410_crit_edge, label %if.end

entry.cleanup410_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %if.end.cleanup410_crit_edge

if.end.cleanup410_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

switch.lookup:                                    ; preds = %if.end
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 16
  %switch.tableidx617 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx617)
  %10 = icmp ult i32 %switch.tableidx617, 5
  br i1 %10, label %switch.lookup616, label %switch.lookup.cleanup410_crit_edge

switch.lookup.cleanup410_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

switch.lookup616:                                 ; preds = %switch.lookup
  %11 = ptrtoint ptr %qopt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %qopt, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %switch.lookup616.disable_crit_edge, label %if.end15

switch.lookup616.disable_crit_edge:               ; preds = %switch.lookup616
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable

if.end15:                                         ; preds = %switch.lookup616
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tc_setup_taprio, i32 0, i32 %switch.tableidx617
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %num_entries = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %qopt, i32 0, i32 4
  %14 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %switch.load)
  %cmp.not = icmp ult i32 %15, %switch.load
  br i1 %cmp.not, label %if.end17, label %if.end15.cleanup410_crit_edge

if.end15.cleanup410_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

if.end17:                                         ; preds = %if.end15
  %cycle_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %qopt, i32 0, i32 2
  %16 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cycle_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool18.not = icmp eq i64 %17, 0
  br i1 %tobool18.not, label %if.end17.cleanup410_crit_edge, label %if.end20

if.end17.cleanup410_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

if.end20:                                         ; preds = %if.end17
  %est = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %est to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %est, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 8328, i32 noundef 3520) #6
  %22 = ptrtoint ptr %est to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %est, align 4
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.then22.cleanup410_crit_edge, label %do.body

if.then22.cleanup410_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

do.body:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %plat2, align 128
  %est29 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %est29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %est29, align 4
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.18, ptr noundef nonnull @tc_setup_taprio.__key) #6
  br label %if.end31

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call ptr @memset(ptr %19, i32 0, i32 8328)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %do.body
  %28 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_entries, align 8
  %30 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %plat2, align 128
  %est34 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %est34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %est34, align 4
  tail call void @mutex_lock_nested(ptr noundef %33, i32 noundef 0) #6
  %34 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plat2, align 128
  %est37 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %est37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %est37, align 4
  %gcl_size = getelementptr inbounds %struct.stmmac_est, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %gcl_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %29, ptr %gcl_size, align 4
  %39 = ptrtoint ptr %qopt to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %qopt, align 8
  %conv = zext i8 %40 to i32
  %41 = load ptr, ptr %plat2, align 128
  %est40 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %est40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %est40, align 4
  %enable41 = getelementptr inbounds %struct.stmmac_est, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %enable41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv, ptr %enable41, align 4
  %45 = load ptr, ptr %plat2, align 128
  %est43 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %est43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %est43, align 4
  tail call void @mutex_unlock(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp45613.not = icmp eq i32 %29, 0
  br i1 %cmp45613.not, label %if.end31.for.end_crit_edge, label %for.body.lr.ph

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end31
  %sub = xor i32 %switch.offset, 31
  %shr = lshr i32 -1, %sub
  %shr57 = lshr i32 -1, %switch.offset
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0615 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fpe.0.off0614 = phi i1 [ false, %for.body.lr.ph ], [ %fpe.1.off0, %for.inc.for.body_crit_edge ]
  %interval = getelementptr %struct.tc_taprio_qopt_offload, ptr %qopt, i32 0, i32 5, i32 %i.0615, i32 2
  %48 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %interval, align 4
  %gate_mask = getelementptr %struct.tc_taprio_qopt_offload, ptr %qopt, i32 0, i32 5, i32 %i.0615, i32 1
  %50 = ptrtoint ptr %gate_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gate_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %shr)
  %cmp51 = icmp ugt i32 %49, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %shr57)
  %cmp60 = icmp ugt i32 %51, %shr57
  %or.cond = select i1 %cmp51, i1 true, i1 %cmp60
  br i1 %or.cond, label %for.body.cleanup410_crit_edge, label %if.end63

for.body.cleanup410_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

if.end63:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.tc_taprio_qopt_offload, ptr %qopt, i32 0, i32 5, i32 %i.0615
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx, align 4
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %53, label %if.end63.cleanup410_crit_edge [
    i8 0, label %sw.bb67
    i8 1, label %sw.bb71
    i8 2, label %sw.bb72
  ]

if.end63.cleanup410_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

sw.bb67:                                          ; preds = %if.end63
  br i1 %fpe.0.off0614, label %sw.bb67.cleanup410_crit_edge, label %sw.bb67.for.inc_crit_edge

sw.bb67.for.inc_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb67.cleanup410_crit_edge:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

sw.bb71:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %51, 1
  br label %for.inc

sw.bb72:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %and73 = and i32 %51, -2
  br label %for.inc

for.inc:                                          ; preds = %sw.bb72, %sw.bb71, %sw.bb67.for.inc_crit_edge
  %fpe.1.off0 = phi i1 [ true, %sw.bb72 ], [ true, %sw.bb71 ], [ false, %sw.bb67.for.inc_crit_edge ]
  %gates.0 = phi i32 [ %and73, %sw.bb72 ], [ %or, %sw.bb71 ], [ %51, %sw.bb67.for.inc_crit_edge ]
  %shl = shl i32 %gates.0, %switch.offset
  %or77608 = or i32 %shl, %49
  %55 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %plat2, align 128
  %est80 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %est80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %est80, align 4
  %arrayidx81 = getelementptr %struct.stmmac_est, ptr %58, i32 0, i32 8, i32 %i.0615
  %59 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or77608, ptr %arrayidx81, align 4
  %inc = add nuw i32 %i.0615, 1
  %exitcond.not = icmp eq i32 %inc, %29
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end31.for.end_crit_edge
  %fpe.0.off0.lcssa = phi i1 [ false, %if.end31.for.end_crit_edge ], [ %fpe.1.off0, %for.inc.for.end_crit_edge ]
  %60 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %plat2, align 128
  %est84 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %est84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %est84, align 4
  tail call void @mutex_lock_nested(ptr noundef %63, i32 noundef 0) #6
  %ptp_clock_ops = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 58
  %gettime64 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 58, i32 13
  %64 = ptrtoint ptr %gettime64 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gettime64, align 4
  %call87 = call i32 %65(ptr noundef %ptp_clock_ops, ptr noundef nonnull %current_time) #6
  %66 = ptrtoint ptr %current_time to i32
  call void @__asan_load8_noabort(i32 %66)
  %.fca.0.load = load i64, ptr %current_time, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %current_time, i32 0, i32 1
  %67 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %67)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load)
  %cmp.i.i = icmp sgt i64 %.fca.0.load, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %mul.i.i = mul i64 %.fca.0.load, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  %base_time = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %qopt, i32 0, i32 1
  %68 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %base_time, align 8
  %70 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %cycle_time, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %72 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %69)
  %cmp3.i.i.i = icmp slt i64 %retval.0.i.i, %69
  br i1 %cmp3.i.i.i, label %for.end.stmmac_calc_tas_basetime.exit_crit_edge, label %if.else.i

for.end.stmmac_calc_tas_basetime.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmmac_calc_tas_basetime.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i64 %retval.0.i.i, %69
  %call1.i = call i64 @div64_s64(i64 noundef %sub.i, i64 noundef %71) #6, !noalias !75
  %add.i = add i64 %call1.i, 1
  %mul.i = mul i64 %add.i, %71
  %add2.i = add i64 %mul.i, %69
  br label %stmmac_calc_tas_basetime.exit

stmmac_calc_tas_basetime.exit:                    ; preds = %if.else.i, %for.end.stmmac_calc_tas_basetime.exit_crit_edge
  %.sink = phi i64 [ %add2.i, %if.else.i ], [ %69, %for.end.stmmac_calc_tas_basetime.exit_crit_edge ]
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %.sink) #6
  %73 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %73)
  %time.sroa.0.0.copyload518 = load i64, ptr %tmp, align 8
  %time.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %74 = ptrtoint ptr %time.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %74)
  %time.sroa.5.0.copyload519 = load i32, ptr %time.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %75 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %plat2, align 128
  %est91 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %est91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %est91, align 4
  %btr = getelementptr inbounds %struct.stmmac_est, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %btr to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %time.sroa.5.0.copyload519, ptr %btr, align 4
  %conv93 = trunc i64 %time.sroa.0.0.copyload518 to i32
  %80 = load ptr, ptr %plat2, align 128
  %est95 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %est95 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %est95, align 4
  %arrayidx97 = getelementptr %struct.stmmac_est, ptr %82, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv93, ptr %arrayidx97, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp98) #6
  %84 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %base_time, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp98, i64 noundef %85) #6
  %86 = ptrtoint ptr %tmp98 to i32
  call void @__asan_load8_noabort(i32 %86)
  %qopt_time.sroa.0.0.copyload515 = load i64, ptr %tmp98, align 8
  %qopt_time.sroa.5.0.tmp98.sroa_idx = getelementptr inbounds i8, ptr %tmp98, i32 8
  %87 = ptrtoint ptr %qopt_time.sroa.5.0.tmp98.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %87)
  %qopt_time.sroa.5.0.copyload516 = load i32, ptr %qopt_time.sroa.5.0.tmp98.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp98) #6
  %88 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %plat2, align 128
  %est102 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %89, i32 0, i32 9
  %90 = ptrtoint ptr %est102 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %est102, align 4
  %btr_reserve = getelementptr inbounds %struct.stmmac_est, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %btr_reserve to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %qopt_time.sroa.5.0.copyload516, ptr %btr_reserve, align 4
  %conv105 = trunc i64 %qopt_time.sroa.0.0.copyload515 to i32
  %93 = load ptr, ptr %plat2, align 128
  %est107 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %est107 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %est107, align 4
  %arrayidx109 = getelementptr %struct.stmmac_est, ptr %95, i32 0, i32 2, i32 1
  %96 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv105, ptr %arrayidx109, align 4
  %97 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %cycle_time, align 8
  %conv133 = trunc i64 %98 to i32
  %99 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %98, i32 0) #10, !srcloc !78
  %asmresult.i = extractvalue { i64, i32 } %99, 0
  %asmresult4.i = extractvalue { i64, i32 } %99, 1
  %100 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %98, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !79
  %asmresult10.i = extractvalue { i64, i32 } %100, 0
  %div283607 = lshr i64 %asmresult10.i, 29
  %conv284 = trunc i64 %div283607 to i32
  %mul285.neg = mul i32 %conv284, -1000000000
  %sub286 = add i32 %mul285.neg, %conv133
  %101 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %plat2, align 128
  %est306 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %est306 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %est306, align 4
  %ctr307 = getelementptr inbounds %struct.stmmac_est, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %ctr307 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub286, ptr %ctr307, align 4
  %106 = load ptr, ptr %plat2, align 128
  %est311 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %est311 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %est311, align 4
  %arrayidx313 = getelementptr %struct.stmmac_est, ptr %108, i32 0, i32 5, i32 1
  %109 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv284, ptr %arrayidx313, align 4
  br i1 %fpe.0.off0.lcssa, label %land.lhs.true316, label %stmmac_calc_tas_basetime.exit.if.end323_crit_edge

stmmac_calc_tas_basetime.exit.if.end323_crit_edge: ; preds = %stmmac_calc_tas_basetime.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end323

land.lhs.true316:                                 ; preds = %stmmac_calc_tas_basetime.exit
  %fpesel = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 44
  %110 = ptrtoint ptr %fpesel to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fpesel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool318.not = icmp eq i32 %111, 0
  br i1 %tobool318.not, label %if.then319, label %land.lhs.true316.if.end323_crit_edge

land.lhs.true316.if.end323_crit_edge:             ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end323

if.then319:                                       ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %plat2, align 128
  %est321 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %est321 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %est321, align 4
  call void @mutex_unlock(ptr noundef %115) #6
  br label %cleanup410

if.end323:                                        ; preds = %land.lhs.true316.if.end323_crit_edge, %stmmac_calc_tas_basetime.exit.if.end323_crit_edge
  %116 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %plat2, align 128
  %fpe_cfg = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %117, i32 0, i32 10
  %118 = ptrtoint ptr %fpe_cfg to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fpe_cfg, align 4
  %frombool = zext i1 %fpe.0.off0.lcssa to i8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %frombool, ptr %119, align 4
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %121 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %tobool327.not = icmp eq ptr %124, null
  br i1 %tobool327.not, label %if.end323.if.end340_crit_edge, label %land.lhs.true328

if.end323.if.end340_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end340

land.lhs.true328:                                 ; preds = %if.end323
  %est_configure = getelementptr inbounds %struct.stmmac_ops, ptr %124, i32 0, i32 46
  %125 = ptrtoint ptr %est_configure to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %est_configure, align 4
  %tobool331.not = icmp eq ptr %126, null
  br i1 %tobool331.not, label %land.lhs.true328.if.end340_crit_edge, label %if.then332

land.lhs.true328.if.end340_crit_edge:             ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end340

if.then332:                                       ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %127 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ioaddr, align 32
  %129 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %plat2, align 128
  %est337 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %130, i32 0, i32 9
  %131 = ptrtoint ptr %est337 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %est337, align 4
  %clk_ptp_rate = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %130, i32 0, i32 50
  %133 = ptrtoint ptr %clk_ptp_rate to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %clk_ptp_rate, align 4
  %call339 = call i32 %126(ptr noundef %128, ptr noundef %132, i32 noundef %134) #6
  br label %if.end340

if.end340:                                        ; preds = %if.then332, %land.lhs.true328.if.end340_crit_edge, %if.end323.if.end340_crit_edge
  %__result.0 = phi i32 [ %call339, %if.then332 ], [ -22, %land.lhs.true328.if.end340_crit_edge ], [ -22, %if.end323.if.end340_crit_edge ]
  %135 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %plat2, align 128
  %est343 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %136, i32 0, i32 9
  %137 = ptrtoint ptr %est343 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %est343, align 4
  call void @mutex_unlock(ptr noundef %138) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__result.0)
  %tobool345.not = icmp eq i32 %__result.0, 0
  %dev348 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %139 = ptrtoint ptr %dev348 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev348, align 4
  br i1 %tobool345.not, label %if.end347, label %if.then346

if.then346:                                       ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %140, ptr noundef nonnull @.str.19) #9
  br label %disable

if.end347:                                        ; preds = %if.end340
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %140, ptr noundef nonnull @.str.20) #9
  br i1 %fpe.0.off0.lcssa, label %if.then350, label %if.end347.cleanup410_crit_edge

if.end347.cleanup410_crit_edge:                   ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

if.then350:                                       ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  call void @stmmac_fpe_handshake(ptr noundef %priv, i1 noundef zeroext true) #6
  %141 = ptrtoint ptr %dev348 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev348, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %142, ptr noundef nonnull @.str.21) #9
  br label %cleanup410

disable:                                          ; preds = %if.then346, %switch.lookup616.disable_crit_edge
  %ret.0 = phi i32 [ %__result.0, %if.then346 ], [ 0, %switch.lookup616.disable_crit_edge ]
  %143 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %plat2, align 128
  %est354 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %144, i32 0, i32 9
  %145 = ptrtoint ptr %est354 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %est354, align 4
  %tobool355.not = icmp eq ptr %146, null
  br i1 %tobool355.not, label %disable.if.end387_crit_edge, label %if.then356

disable.if.end387_crit_edge:                      ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end387

if.then356:                                       ; preds = %disable
  call void @mutex_lock_nested(ptr noundef nonnull %146, i32 noundef 0) #6
  %147 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %plat2, align 128
  %est361 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %148, i32 0, i32 9
  %149 = ptrtoint ptr %est361 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %est361, align 4
  %enable362 = getelementptr inbounds %struct.stmmac_est, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %enable362 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %enable362, align 4
  %hw364 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %152 = ptrtoint ptr %hw364 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw364, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %tobool366.not = icmp eq ptr %155, null
  br i1 %tobool366.not, label %if.then356.if.end382_crit_edge, label %land.lhs.true367

if.then356.if.end382_crit_edge:                   ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end382

land.lhs.true367:                                 ; preds = %if.then356
  %est_configure370 = getelementptr inbounds %struct.stmmac_ops, ptr %155, i32 0, i32 46
  %156 = ptrtoint ptr %est_configure370 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %est_configure370, align 4
  %tobool371.not = icmp eq ptr %157, null
  br i1 %tobool371.not, label %land.lhs.true367.if.end382_crit_edge, label %if.then372

land.lhs.true367.if.end382_crit_edge:             ; preds = %land.lhs.true367
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end382

if.then372:                                       ; preds = %land.lhs.true367
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr376 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %158 = ptrtoint ptr %ioaddr376 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ioaddr376, align 32
  %160 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %plat2, align 128
  %est378 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %161, i32 0, i32 9
  %162 = ptrtoint ptr %est378 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %est378, align 4
  %clk_ptp_rate380 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %161, i32 0, i32 50
  %164 = ptrtoint ptr %clk_ptp_rate380 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %clk_ptp_rate380, align 4
  %call381 = call i32 %157(ptr noundef %159, ptr noundef %163, i32 noundef %165) #6
  br label %if.end382

if.end382:                                        ; preds = %if.then372, %land.lhs.true367.if.end382_crit_edge, %if.then356.if.end382_crit_edge
  %166 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %plat2, align 128
  %est385 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %167, i32 0, i32 9
  %168 = ptrtoint ptr %est385 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %est385, align 4
  call void @mutex_unlock(ptr noundef %169) #6
  br label %if.end387

if.end387:                                        ; preds = %if.end382, %disable.if.end387_crit_edge
  %170 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %plat2, align 128
  %fpe_cfg389 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %171, i32 0, i32 10
  %172 = ptrtoint ptr %fpe_cfg389 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fpe_cfg389, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %173, align 4
  %hw392 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %175 = ptrtoint ptr %hw392 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw392, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %tobool394.not = icmp eq ptr %178, null
  br i1 %tobool394.not, label %if.end387.if.end406_crit_edge, label %land.lhs.true395

if.end387.if.end406_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end406

land.lhs.true395:                                 ; preds = %if.end387
  %fpe_configure = getelementptr inbounds %struct.stmmac_ops, ptr %178, i32 0, i32 48
  %179 = ptrtoint ptr %fpe_configure to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %fpe_configure, align 4
  %tobool398.not = icmp eq ptr %180, null
  br i1 %tobool398.not, label %land.lhs.true395.if.end406_crit_edge, label %if.then399

land.lhs.true395.if.end406_crit_edge:             ; preds = %land.lhs.true395
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end406

if.then399:                                       ; preds = %land.lhs.true395
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr403 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %181 = ptrtoint ptr %ioaddr403 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ioaddr403, align 32
  %183 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %plat2, align 128
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %184, i32 0, i32 30
  %185 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tx_queues_to_use, align 4
  %rx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %184, i32 0, i32 29
  %187 = ptrtoint ptr %rx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rx_queues_to_use, align 4
  call void %180(ptr noundef %182, i32 noundef %186, i32 noundef %188, i1 noundef zeroext false) #6
  br label %if.end406

if.end406:                                        ; preds = %if.then399, %land.lhs.true395.if.end406_crit_edge, %if.end387.if.end406_crit_edge
  %dev408 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %189 = ptrtoint ptr %dev408 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev408, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %190, ptr noundef nonnull @.str.22) #9
  call void @stmmac_fpe_handshake(ptr noundef %priv, i1 noundef zeroext false) #6
  %191 = ptrtoint ptr %dev408 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev408, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %192, ptr noundef nonnull @.str.23) #9
  br label %cleanup410

cleanup410:                                       ; preds = %if.end406, %if.then350, %if.end347.cleanup410_crit_edge, %if.then319, %sw.bb67.cleanup410_crit_edge, %if.end63.cleanup410_crit_edge, %for.body.cleanup410_crit_edge, %if.then22.cleanup410_crit_edge, %if.end17.cleanup410_crit_edge, %if.end15.cleanup410_crit_edge, %switch.lookup.cleanup410_crit_edge, %if.end.cleanup410_crit_edge, %entry.cleanup410_crit_edge
  %retval.2 = phi i32 [ %ret.0, %if.end406 ], [ -95, %if.then319 ], [ -95, %entry.cleanup410_crit_edge ], [ -95, %if.end.cleanup410_crit_edge ], [ -95, %switch.lookup.cleanup410_crit_edge ], [ -22, %if.end15.cleanup410_crit_edge ], [ -34, %if.end17.cleanup410_crit_edge ], [ -12, %if.then22.cleanup410_crit_edge ], [ 0, %if.then350 ], [ 0, %if.end347.cleanup410_crit_edge ], [ -34, %for.body.cleanup410_crit_edge ], [ -22, %sw.bb67.cleanup410_crit_edge ], [ -95, %if.end63.cleanup410_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %current_time) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_setup_etf(ptr nocapture noundef %priv, ptr nocapture noundef readonly %qopt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tbssel = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 45
  %0 = ptrtoint ptr %tbssel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tbssel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.tc_etf_qopt_offload, ptr %qopt, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue, align 4
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %4 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat, align 128
  %tx_queues_to_use = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %tx_queues_to_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_queues_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %if.end
  %tbs = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 23, i32 %3, i32 1
  %8 = ptrtoint ptr %tbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbs, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end2.return_crit_edge, label %if.end6

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %qopt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %qopt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  %and17 = and i32 %9, -3
  %masksel = select i1 %tobool7.not, i32 0, i32 2
  %storemerge = or i32 %masksel, %and17
  %12 = ptrtoint ptr %tbs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %tbs, align 4
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %qopt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %qopt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  %cond = select i1 %tobool20.not, ptr @.str.26, ptr @.str.25
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond, i32 noundef %18) #9
  br label %return

return:                                           ; preds = %if.end6, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -95, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_add_ip4_flow(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cls, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %match3 = alloca %struct.flow_match_ipv4_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %action = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match3) #6
  %6 = ptrtoint ptr %match3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %match3, align 4, !annotation !73
  %7 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match3, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !73
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @flow_rule_match_ipv4_addrs(ptr noundef %1, ptr noundef nonnull %match3) #6
  %11 = ptrtoint ptr %match3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %match3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and6 = and i32 %18, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end24_crit_edge, label %if.then8

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then8:                                         ; preds = %if.end
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool9.not = icmp eq ptr %22, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %land.lhs.true

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then8
  %config_l3_filter = getelementptr inbounds %struct.stmmac_ops, ptr %22, i32 0, i32 43
  %23 = ptrtoint ptr %config_l3_filter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config_l3_filter, align 4
  %tobool12.not = icmp eq ptr %24, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.end20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true
  %idx = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 4
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx, align 4
  %call19 = call i32 %24(ptr noundef %20, i32 noundef %26, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext %tobool, i32 noundef %and6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %if.end20.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %27 = ptrtoint ptr %match3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %match3, align 4
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %dst27 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dst27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst27, align 4
  %and28 = and i32 %34, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end24.if.end53_crit_edge, label %if.then30

if.end24.if.end53_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then30:                                        ; preds = %if.end24
  %hw32 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %35 = ptrtoint ptr %hw32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw32, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool34.not = icmp eq ptr %38, null
  br i1 %tobool34.not, label %if.then30.cleanup_crit_edge, label %land.lhs.true35

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true35:                                  ; preds = %if.then30
  %config_l3_filter38 = getelementptr inbounds %struct.stmmac_ops, ptr %38, i32 0, i32 43
  %39 = ptrtoint ptr %config_l3_filter38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config_l3_filter38, align 4
  %tobool39.not = icmp eq ptr %40, null
  br i1 %tobool39.not, label %land.lhs.true35.cleanup_crit_edge, label %if.end48

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true35
  %idx45 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 4
  %41 = ptrtoint ptr %idx45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx45, align 4
  %call47 = call i32 %40(ptr noundef %36, i32 noundef %42, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %tobool, i32 noundef %and28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool50.not = icmp eq i32 %call47, 0
  br i1 %tobool50.not, label %if.end48.if.end53_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end53:                                         ; preds = %if.end48.if.end53_crit_edge, %if.end24.if.end53_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end48.cleanup_crit_edge, %land.lhs.true35.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -22, %entry.cleanup_crit_edge ], [ %call19, %if.end20.cleanup_crit_edge ], [ %call47, %if.end48.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -22, %land.lhs.true35.cleanup_crit_edge ], [ -22, %if.then30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match3) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_add_ports_flow(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cls, ptr nocapture noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %match3 = alloca %struct.flow_match_ports, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %action = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match3) #6
  %6 = ptrtoint ptr %match3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %match3, align 4, !annotation !73
  %7 = getelementptr inbounds %struct.flow_match_ports, ptr %match3, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !73
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %and.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_proto = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 2
  %11 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ip_proto, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %12, label %if.end.cleanup_crit_edge [
    i8 6, label %if.end.sw.epilog_crit_edge
    i8 17, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %if.end.sw.epilog_crit_edge
  %is_udp.0.off0 = phi i1 [ true, %sw.bb5 ], [ false, %if.end.sw.epilog_crit_edge ]
  call void @flow_rule_match_ports(ptr noundef %1, ptr noundef nonnull %match3) #6
  %14 = ptrtoint ptr %match3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %match3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %and990 = and i16 %21, %17
  %and9 = zext i16 %and990 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and990)
  %tobool10.not = icmp eq i16 %and990, 0
  br i1 %tobool10.not, label %sw.epilog.if.end28_crit_edge, label %if.then11

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then11:                                        ; preds = %sw.epilog
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %if.then11.cleanup_crit_edge, label %land.lhs.true

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then11
  %config_l4_filter = getelementptr inbounds %struct.stmmac_ops, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %config_l4_filter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config_l4_filter, align 4
  %tobool15.not = icmp eq ptr %27, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.end24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true
  %idx = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 4
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx, align 4
  %call23 = call i32 %27(ptr noundef %23, i32 noundef %29, i1 noundef zeroext true, i1 noundef zeroext %is_udp.0.off0, i1 noundef zeroext true, i1 noundef zeroext %tobool, i32 noundef %and9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %if.end24.if.end28_crit_edge, %sw.epilog.if.end28_crit_edge
  %30 = ptrtoint ptr %match3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %match3, align 4
  %dst = getelementptr inbounds %struct.anon.156, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dst, align 2
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 4
  %dst32 = getelementptr inbounds %struct.anon.156, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dst32 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dst32, align 2
  %and3491 = and i16 %37, %33
  %and34 = zext i16 %and3491 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3491)
  %tobool35.not = icmp eq i16 %and3491, 0
  br i1 %tobool35.not, label %if.end28.if.end60_crit_edge, label %if.then36

if.end28.if.end60_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then36:                                        ; preds = %if.end28
  %hw38 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %38 = ptrtoint ptr %hw38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw38, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool40.not = icmp eq ptr %41, null
  br i1 %tobool40.not, label %if.then36.cleanup_crit_edge, label %land.lhs.true41

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true41:                                  ; preds = %if.then36
  %config_l4_filter44 = getelementptr inbounds %struct.stmmac_ops, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %config_l4_filter44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config_l4_filter44, align 4
  %tobool45.not = icmp eq ptr %43, null
  br i1 %tobool45.not, label %land.lhs.true41.cleanup_crit_edge, label %if.end55

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %land.lhs.true41
  %idx51 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 4
  %44 = ptrtoint ptr %idx51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx51, align 4
  %call54 = call i32 %43(ptr noundef %39, i32 noundef %45, i1 noundef zeroext true, i1 noundef zeroext %is_udp.0.off0, i1 noundef zeroext false, i1 noundef zeroext %tobool, i32 noundef %and34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool57.not = icmp eq i32 %call54, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end60:                                         ; preds = %if.end55.if.end60_crit_edge, %if.end28.if.end60_crit_edge
  %is_l4 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %entry1, i32 0, i32 5
  %46 = ptrtoint ptr %is_l4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %is_l4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end55.cleanup_crit_edge, %land.lhs.true41.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call23, %if.end24.cleanup_crit_edge ], [ %call54, %if.end55.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %land.lhs.true41.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match3) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_fpe_handshake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @dwmac510_tc_ops, !1, !"dwmac510_tc_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1107, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 277, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tc_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tc_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 336, i32 2}
!12 = !{ptr @tc_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tc_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 253, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tc_rfs_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @tc_rfs_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 422, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tc_setup_cbs._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @tc_setup_cbs._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__flow_action_hw_stats_check.__msg, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!29 = distinct !{null, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!31 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!33 = distinct !{null, !34, !"tc_flow_parsers", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 581, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 752, i32 25}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 762, i32 26}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 789, i32 26}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 695, i32 26}
!43 = !{ptr @tc_setup_taprio.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 979, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1052, i32 25}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1056, i32 25}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1060, i32 26}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1079, i32 25}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1082, i32 25}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1102, i32 25}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1103, i32 22}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c", i32 1103, i32 34}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i8 0, i8 2}
!73 = !{!"auto-init"}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!76}
!76 = distinct !{!76, !77, !"stmmac_calc_tas_basetime: %agg.result"}
!77 = distinct !{!77, !"stmmac_calc_tas_basetime"}
!78 = !{i64 798514, i64 798541, i64 798563, i64 798591}
!79 = !{i64 798922, i64 798949, i64 798982, i64 799003, i64 799030, i64 799056}
