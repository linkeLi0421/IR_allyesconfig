; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dwxgmac3_error_desc = type { i8, ptr, ptr }
%struct.dwxgmac3_error = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.126, %struct.anon.127 }
%struct.anon.126 = type { i32, i32, i32 }
%struct.anon.127 = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.stmmac_tc_entry = type { i8, i8, i8, i8, ptr, i32, i32, i32, %struct.anon.117 }
%struct.anon.117 = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.120, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.120 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.121, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%union.anon.121 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@dwxgmac210_ops = dso_local constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @dwxgmac2_core_init, ptr @dwxgmac2_set_mac, ptr @dwxgmac2_rx_ipc, ptr @dwxgmac2_rx_queue_enable, ptr @dwxgmac2_rx_queue_prio, ptr @dwxgmac2_tx_queue_prio, ptr null, ptr @dwxgmac2_prog_mtl_rx_algorithms, ptr @dwxgmac2_prog_mtl_tx_algorithms, ptr @dwxgmac2_set_mtl_tx_queue_weight, ptr @dwxgmac2_map_mtl_to_dma, ptr @dwxgmac2_config_cbs, ptr @dwxgmac2_dump_regs, ptr @dwxgmac2_host_irq_status, ptr @dwxgmac2_host_mtl_irq_status, ptr @dwxgmac2_set_filter, ptr @dwxgmac2_flow_ctrl, ptr @dwxgmac2_pmt, ptr @dwxgmac2_set_umac_addr, ptr @dwxgmac2_get_umac_addr, ptr @dwxgmac2_set_eee_mode, ptr @dwxgmac2_reset_eee_mode, ptr null, ptr @dwxgmac2_set_eee_timer, ptr @dwxgmac2_set_eee_pls, ptr null, ptr null, ptr null, ptr null, ptr @dwxgmac3_safety_feat_config, ptr @dwxgmac3_safety_feat_irq_status, ptr @dwxgmac3_safety_feat_dump, ptr @dwxgmac3_rxp_config, ptr @dwxgmac2_flex_pps_config, ptr @dwxgmac2_set_mac_loopback, ptr @dwxgmac2_rss_configure, ptr @dwxgmac2_update_vlan_hash, ptr @dwxgmac2_enable_vlan, ptr null, ptr null, ptr null, ptr @dwxgmac2_get_mac_tx_timestamp, ptr @dwxgmac2_sarc_configure, ptr @dwxgmac2_config_l3_filter, ptr @dwxgmac2_config_l4_filter, ptr @dwxgmac2_set_arp_offload, ptr @dwxgmac3_est_configure, ptr null, ptr @dwxgmac3_fpe_configure, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dwxlgmac2_ops = dso_local constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @dwxgmac2_core_init, ptr @dwxgmac2_set_mac, ptr @dwxgmac2_rx_ipc, ptr @dwxlgmac2_rx_queue_enable, ptr @dwxgmac2_rx_queue_prio, ptr @dwxgmac2_tx_queue_prio, ptr null, ptr @dwxgmac2_prog_mtl_rx_algorithms, ptr @dwxgmac2_prog_mtl_tx_algorithms, ptr @dwxgmac2_set_mtl_tx_queue_weight, ptr @dwxgmac2_map_mtl_to_dma, ptr @dwxgmac2_config_cbs, ptr @dwxgmac2_dump_regs, ptr @dwxgmac2_host_irq_status, ptr @dwxgmac2_host_mtl_irq_status, ptr @dwxgmac2_set_filter, ptr @dwxgmac2_flow_ctrl, ptr @dwxgmac2_pmt, ptr @dwxgmac2_set_umac_addr, ptr @dwxgmac2_get_umac_addr, ptr @dwxgmac2_set_eee_mode, ptr @dwxgmac2_reset_eee_mode, ptr null, ptr @dwxgmac2_set_eee_timer, ptr @dwxgmac2_set_eee_pls, ptr null, ptr null, ptr null, ptr null, ptr @dwxgmac3_safety_feat_config, ptr @dwxgmac3_safety_feat_irq_status, ptr @dwxgmac3_safety_feat_dump, ptr @dwxgmac3_rxp_config, ptr @dwxgmac2_flex_pps_config, ptr @dwxgmac2_set_mac_loopback, ptr @dwxgmac2_rss_configure, ptr @dwxgmac2_update_vlan_hash, ptr @dwxgmac2_enable_vlan, ptr null, ptr null, ptr null, ptr @dwxgmac2_get_mac_tx_timestamp, ptr @dwxgmac2_sarc_configure, ptr @dwxgmac2_config_l3_filter, ptr @dwxgmac2_config_l4_filter, ptr @dwxgmac2_set_arp_offload, ptr @dwxgmac3_est_configure, ptr null, ptr @dwxgmac3_fpe_configure, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dwxgmac2_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09XGMAC2\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwxgmac2_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwxgmac2_setup._entry_ptr = internal global ptr @dwxgmac2_setup._entry, section ".printk_index", align 4
@dwxlgmac2_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09XLGMAC\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwxlgmac2_setup\00", [16 x i8] zeroinitializer }, align 32
@dwxlgmac2_setup._entry_ptr = internal global ptr @dwxlgmac2_setup._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@dwxgmac3_mac_errors = internal constant { [32 x %struct.dwxgmac3_error_desc], [96 x i8] } { [32 x %struct.dwxgmac3_error_desc] [%struct.dwxgmac3_error_desc { i8 1, ptr @.str.11, ptr @.str.12 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.13, ptr @.str.14 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.15, ptr @.str.16 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.17, ptr @.str.18 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.19, ptr @.str.20 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.21, ptr @.str.22 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.23, ptr @.str.24 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.25, ptr @.str.26 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.27, ptr @.str.28 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.29, ptr @.str.30 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.31, ptr @.str.32 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.33, ptr @.str.34 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.35, ptr @.str.36 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.37, ptr @.str.38 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.39, ptr @.str.40 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.41, ptr @.str.42 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.43, ptr @.str.44 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.45, ptr @.str.46 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.49, ptr @.str.50 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.51, ptr @.str.52 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.53, ptr @.str.54 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.55, ptr @.str.56 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.57, ptr @.str.58 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.59, ptr @.str.60 }], [96 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Found %s error in %s: '%s: %s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"correctable\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uncorrectable\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATPES\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Application Transmit Interface Parity Check Error\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DPES\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Descriptor Cache Data Path Parity Check Error\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TPES\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TSO Data Path Parity Check Error\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TSOPES\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TSO Header Data Path Parity Check Error\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MTPES\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MTL Data Path Parity Check Error\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MTSPES\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MTL TX Status Data Path Parity Check Error\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MTBUPES\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MAC TBU Data Path Parity Check Error\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MTFCPES\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MAC TFC Data Path Parity Check Error\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ARPES\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Application Receive Interface Data Path Parity Check Error\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MRWCPES\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTL RWC Data Path Parity Check Error\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MRRCPES\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTL RCC Data Path Parity Check Error\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CWPES\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CSR Write Data Path Parity Check Error\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASRPES\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AXI Slave Read Data Path Parity Check Error\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TTES\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX FSM Timeout Error\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RTES\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX FSM Timeout Error\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CTES\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CSR FSM Timeout Error\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATES\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"APP FSM Timeout Error\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PTES\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PTP FSM Timeout Error\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown Error\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MSTTES\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Master Read/Write Timeout Error\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLVTES\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Slave Read/Write Timeout Error\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ATITES\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Application Timeout on ATI Interface Error\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ARITES\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Application Timeout on ARI Interface Error\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FSMPES\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FSM State Parity Error\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPI\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Control Register Parity Check Error\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MTL\00", [28 x i8] zeroinitializer }, align 32
@dwxgmac3_mtl_errors = internal constant { [32 x %struct.dwxgmac3_error_desc], [96 x i8] } { [32 x %struct.dwxgmac3_error_desc] [%struct.dwxgmac3_error_desc { i8 1, ptr @.str.62, ptr @.str.63 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.64, ptr @.str.65 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.66, ptr @.str.63 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.67, ptr @.str.68 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.69, ptr @.str.70 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.71, ptr @.str.68 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.72, ptr @.str.73 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.74, ptr @.str.75 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.76, ptr @.str.73 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.77, ptr @.str.78 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.79, ptr @.str.80 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.81, ptr @.str.78 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }], [96 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXCES\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MTL TX Memory Error\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXAMS\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTL TX Memory Address Mismatch Error\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXUES\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXCES\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MTL RX Memory Error\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXAMS\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTL RX Memory Address Mismatch Error\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXUES\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ECES\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MTL EST Memory Error\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EAMS\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MTL EST Memory Address Mismatch Error\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EUES\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RPCES\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MTL RX Parser Memory Error\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RPAMS\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MTL RX Parser Memory Address Mismatch Error\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RPUES\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@dwxgmac3_dma_errors = internal constant { [32 x %struct.dwxgmac3_error_desc], [96 x i8] } { [32 x %struct.dwxgmac3_error_desc] [%struct.dwxgmac3_error_desc { i8 1, ptr @.str.83, ptr @.str.84 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.85, ptr @.str.86 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.87, ptr @.str.84 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.88, ptr @.str.89 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.90, ptr @.str.91 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.92, ptr @.str.89 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.47, ptr @.str.48 }], [96 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCES\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA TSO Memory Error\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TAMS\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA TSO Memory Address Mismatch Error\00", [58 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TUES\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCES\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA DCACHE Memory Error\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAMS\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DMA DCACHE Address Mismatch Error\00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DUES\00", [27 x i8] zeroinitializer }, align 32
@dwxgmac3_all_errors = internal constant { [3 x %struct.dwxgmac3_error], [20 x i8] } { [3 x %struct.dwxgmac3_error] [%struct.dwxgmac3_error { ptr @dwxgmac3_mac_errors }, %struct.dwxgmac3_error { ptr @dwxgmac3_mtl_errors }, %struct.dwxgmac3_error { ptr @dwxgmac3_dma_errors }], [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.dwxgmac2_set_filter = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"dwxgmac210_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1456, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"dwxlgmac2_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1517, i32 25 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1568, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1605, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 705, i32 47 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"dwxgmac3_mac_errors\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 661, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 652, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 653, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 653, i32 21 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 662, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 662, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 663, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 663, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 664, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 664, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 665, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 665, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 666, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 666, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 667, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 667, i32 20 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 668, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 668, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 669, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 669, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 670, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 670, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 671, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 671, i32 21 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 672, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 672, i32 21 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 673, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 673, i32 19 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 674, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 674, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 675, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 675, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 676, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 676, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 677, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 677, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 678, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 678, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 679, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 679, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 680, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 680, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 683, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 683, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 684, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 684, i32 20 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 685, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 685, i32 20 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 686, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 686, i32 20 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 687, i32 10 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 687, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 693, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 693, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 753, i32 47 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c"dwxgmac3_mtl_errors\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 709, i32 41 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 710, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 710, i32 19 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 711, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 711, i32 19 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 712, i32 10 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 714, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 714, i32 19 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 715, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 715, i32 19 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 716, i32 10 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 718, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 718, i32 18 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 719, i32 10 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 719, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 720, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 722, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 722, i32 19 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 723, i32 10 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 723, i32 19 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 724, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 801, i32 47 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c"dwxgmac3_dma_errors\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 757, i32 41 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 758, i32 10 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 758, i32 18 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 759, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 759, i32 18 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 760, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 762, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 762, i32 18 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 763, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 763, i32 18 }
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 764, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c"dwxgmac3_all_errors\00", align 1
@___asan_gen_.397 = private constant [55 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 886, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [33 x i8] c"switch.table.dwxgmac2_set_filter\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @dwxgmac2_setup._entry, ptr @dwxgmac2_setup._entry_ptr, ptr @dwxlgmac2_setup._entry, ptr @dwxlgmac2_setup._entry_ptr, ptr @dwxgmac210_ops, ptr @dwxlgmac2_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dwxgmac3_mac_errors, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @dwxgmac3_mtl_errors, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @dwxgmac3_dma_errors, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @dwxgmac3_all_errors, ptr @switch.table.dwxgmac2_set_filter], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac210_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxlgmac2_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac2_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxlgmac2_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac3_mac_errors to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac3_mtl_errors to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac3_dma_errors to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac3_all_errors to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwxgmac2_set_filter to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_core_init(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  %add.ptr4 = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  %4 = or i32 %2, 256
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %ps = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 17
  %6 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %or9 = or i32 %5, 1
  %link = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %or9, %neg
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 10000, label %sw.bb
    i32 2500, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %speed10000 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 6, i32 2
  br label %do.body.sink.split

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %speed2500 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 4
  br label %do.body.sink.split

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 3
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %sw.default, %sw.bb13, %sw.bb
  %speed1000.sink = phi ptr [ %speed1000, %sw.default ], [ %speed2500, %sw.bb13 ], [ %speed10000, %sw.bb ]
  %11 = ptrtoint ptr %speed1000.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed1000.sink, align 4
  %or18 = or i32 %12, %and
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %entry.do.body_crit_edge
  %tx.0 = phi i32 [ %5, %entry.do.body_crit_edge ], [ %or18, %do.body.sink.split ]
  %13 = or i32 %3, -1073680321
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %tx.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %14) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  tail call void @arm_heavy_mb() #7
  %add.ptr27 = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 805306368) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_mac(ptr noundef %ioaddr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %2 = and i32 %0, -16777217
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = and i32 %1, -16777217
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = zext i1 %enable to i32
  %rx.0 = or i32 %5, %masksel
  %tx.0 = or i32 %3, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %tx.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %6) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %rx.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_rx_ipc(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %rx_csum = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 14
  %3 = ptrtoint ptr %rx_csum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_csum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = and i32 %2, -131073
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 512
  %value.0 = or i32 %masksel, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #7, !srcloc !210
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  %9 = lshr i32 %8, 17
  %.lobit = and i32 %9, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_rx_queue_enable(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mode, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  %mul = shl i32 %queue, 1
  %shl = shl nuw i32 1, %mul
  %add = sub i32 0, %shl
  %sub4 = sub i32 30, %mul
  %shr = lshr i32 -1, %sub4
  %and = and i32 %shr, %add
  %neg = xor i32 %and, -1
  %and6 = and i32 %3, %neg
  %4 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %mode, label %entry.do.body_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then13
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and6, %shl
  br label %do.body

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl15 = shl i32 2, %mul
  %or16 = or i32 %and6, %shl15
  br label %do.body

do.body:                                          ; preds = %if.then13, %if.then, %entry.do.body_crit_edge
  %value.0 = phi i32 [ %or, %if.then ], [ %or16, %if.then13 ], [ %and6, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_rx_queue_prio(ptr nocapture noundef readonly %hw, i32 noundef %prio, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %queue)
  %cmp1 = icmp ugt i32 %queue, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue)
  %cmp = icmp ult i32 %queue, 4
  %cond = select i1 %cmp, i32 168, i32 172
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  %4 = shl i32 %queue, 3
  %5 = add i32 %4, -32
  %mul = select i1 %cmp1, i32 %5, i32 %4
  %shl.neg = shl nsw i32 -1, %mul
  %sub6 = sub i32 24, %mul
  %shr = lshr i32 -1, %sub6
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and8 = and i32 %3, %neg
  %shl10 = shl i32 %prio, %mul
  %and21 = and i32 %and, %shl10
  %or = or i32 %and8, %and21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_tx_queue_prio(ptr nocapture noundef readonly %hw, i32 noundef %prio, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %queue)
  %cmp1 = icmp ugt i32 %queue, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue)
  %cmp = icmp ult i32 %queue, 4
  %cond = select i1 %cmp, i32 4160, i32 4164
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  %4 = shl i32 %queue, 3
  %5 = add i32 %4, -32
  %mul = select i1 %cmp1, i32 %5, i32 %4
  %shl.neg = shl nsw i32 -1, %mul
  %sub6 = sub i32 24, %mul
  %shr = lshr i32 -1, %sub6
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and8 = and i32 %3, %neg
  %shl10 = shl i32 %prio, %mul
  %and21 = and i32 %and, %shl10
  %or = or i32 %and8, %and21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_prog_mtl_rx_algorithms(ptr nocapture noundef readonly %hw, i32 noundef %rx_alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4096
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %3 = and i32 %2, -67108865
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rx_alg)
  %cond = icmp eq i32 %rx_alg, 5
  %or = or i32 %4, 4
  %spec.select = select i1 %cond, i32 %or, i32 %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_prog_mtl_tx_algorithms(ptr nocapture noundef readonly %hw, i32 noundef %tx_alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4096
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  %3 = and i32 %2, -1610612737
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %tx_alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %tx_alg, label %sw.default [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or3 = or i32 %4, 32
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or5 = or i32 %4, 64
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb4, %sw.bb2, %entry.do.body_crit_edge
  %value.0 = phi i32 [ %4, %sw.default ], [ %or5, %sw.bb4 ], [ %or3, %sw.bb2 ], [ %4, %entry.do.body_crit_edge ]
  %ets.0.off0 = phi i1 [ false, %sw.default ], [ true, %sw.bb4 ], [ true, %sw.bb2 ], [ true, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  %add.ptr9 = getelementptr i8, ptr %1, i32 4368
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %8 = and i32 %7, -50331649
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or14 = or i32 %9, 2
  %spec.select = select i1 %ets.0.off0, i32 %or14, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #7, !srcloc !210
  %add.ptr9.1 = getelementptr i8, ptr %1, i32 4496
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.1) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %12 = and i32 %11, -50331649
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or14.1 = or i32 %13, 2
  %14 = select i1 %ets.0.off0, i32 %or14.1, i32 %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1, i32 %15) #7, !srcloc !210
  %add.ptr9.2 = getelementptr i8, ptr %1, i32 4624
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.2) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %17 = and i32 %16, -50331649
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %or14.2 = or i32 %18, 2
  %19 = select i1 %ets.0.off0, i32 %or14.2, i32 %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2, i32 %20) #7, !srcloc !210
  %add.ptr9.3 = getelementptr i8, ptr %1, i32 4752
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.3) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %22 = and i32 %21, -50331649
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %or14.3 = or i32 %23, 2
  %24 = select i1 %ets.0.off0, i32 %or14.3, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.3, i32 %25) #7, !srcloc !210
  %add.ptr9.4 = getelementptr i8, ptr %1, i32 4880
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %27 = and i32 %26, -50331649
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %or14.4 = or i32 %28, 2
  %29 = select i1 %ets.0.off0, i32 %or14.4, i32 %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.4, i32 %30) #7, !srcloc !210
  %add.ptr9.5 = getelementptr i8, ptr %1, i32 5008
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.5) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %32 = and i32 %31, -50331649
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %or14.5 = or i32 %33, 2
  %34 = select i1 %ets.0.off0, i32 %or14.5, i32 %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.5, i32 %35) #7, !srcloc !210
  %add.ptr9.6 = getelementptr i8, ptr %1, i32 5136
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.6) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %37 = and i32 %36, -50331649
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %or14.6 = or i32 %38, 2
  %39 = select i1 %ets.0.off0, i32 %or14.6, i32 %38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.6, i32 %40) #7, !srcloc !210
  %add.ptr9.7 = getelementptr i8, ptr %1, i32 5264
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.7) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %42 = and i32 %41, -50331649
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %or14.7 = or i32 %43, 2
  %44 = select i1 %ets.0.off0, i32 %or14.7, i32 %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.7, i32 %45) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_mtl_tx_queue_weight(ptr nocapture noundef readonly %hw, i32 noundef %weight, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %weight)
  %mul = shl i32 %queue, 7
  %add = add i32 %mul, 4376
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_map_mtl_to_dma(ptr nocapture noundef readonly %hw, i32 noundef %queue, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %queue)
  %cmp1 = icmp ugt i32 %queue, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue)
  %cmp = icmp ult i32 %queue, 4
  %cond = select i1 %cmp, i32 4144, i32 4148
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %4 = shl i32 %queue, 3
  %5 = add i32 %4, -32
  %mul = select i1 %cmp1, i32 %5, i32 %4
  %shl.neg = shl nsw i32 -1, %mul
  %sub6 = sub i32 24, %mul
  %shr = lshr i32 -1, %sub6
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and8 = and i32 %3, %neg
  %shl10 = shl i32 %chan, %mul
  %and21 = and i32 %and, %shl10
  %or = or i32 %and8, %and21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_config_cbs(ptr nocapture noundef readonly %hw, i32 noundef %send_slope, i32 noundef %idle_slope, i32 noundef %high_credit, i32 noundef %low_credit, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %send_slope)
  %mul = shl i32 %queue, 7
  %add = add i32 %mul, 4380
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %idle_slope)
  %add5 = add i32 %mul, 4376
  %add.ptr6 = getelementptr i8, ptr %1, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %3) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %high_credit)
  %add11 = add i32 %mul, 4384
  %add.ptr12 = getelementptr i8, ptr %1, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %4) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %low_credit)
  %add17 = add i32 %mul, 4388
  %add.ptr18 = getelementptr i8, ptr %1, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %5) #7, !srcloc !210
  %add20 = add i32 %mul, 4368
  %add.ptr21 = getelementptr i8, ptr %1, i32 %add20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  %7 = and i32 %6, -184549377
  %8 = or i32 %7, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %8) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dump_regs(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %reg_space) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.05, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  %arrayidx = getelementptr i32, ptr %reg_space, i32 %i.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 1597
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_host_irq_status(ptr nocapture noundef readonly %hw, ptr nocapture noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 180
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  %add.ptr4 = getelementptr i8, ptr %1, i32 176
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  %4 = and i32 %3, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and8 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_receive_pmt_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 47
  %6 = ptrtoint ptr %irq_receive_pmt_irq_n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_receive_pmt_irq_n, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %irq_receive_pmt_irq_n, align 4
  %add.ptr11 = getelementptr i8, ptr %1, i32 192
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and15 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end45_crit_edge, label %if.then17

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then17:                                        ; preds = %if.end
  %add.ptr20 = getelementptr i8, ptr %1, i32 208
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !206
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %and24 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then17.if.end28_crit_edge, label %if.then26

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %irq_tx_path_in_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 51
  %11 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %inc27 = add i32 %12, 1
  store i32 %inc27, ptr %irq_tx_path_in_lpi_mode_n, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then17.if.end28_crit_edge
  %ret.0 = phi i32 [ 1, %if.then26 ], [ 0, %if.then17.if.end28_crit_edge ]
  %and29 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %or32 = or i32 %ret.0, 2
  %irq_tx_path_exit_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 52
  %13 = ptrtoint ptr %irq_tx_path_exit_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_tx_path_exit_lpi_mode_n, align 16
  %inc33 = add i32 %14, 1
  store i32 %inc33, ptr %irq_tx_path_exit_lpi_mode_n, align 16
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %ret.1 = phi i32 [ %or32, %if.then31 ], [ %ret.0, %if.end28.if.end34_crit_edge ]
  %and35 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %irq_rx_path_in_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 53
  %15 = ptrtoint ptr %irq_rx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_rx_path_in_lpi_mode_n, align 4
  %inc38 = add i32 %16, 1
  store i32 %inc38, ptr %irq_rx_path_in_lpi_mode_n, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %and40 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %irq_rx_path_exit_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 54
  %17 = ptrtoint ptr %irq_rx_path_exit_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_rx_path_exit_lpi_mode_n, align 8
  %inc43 = add i32 %18, 1
  store i32 %inc43, ptr %irq_rx_path_exit_lpi_mode_n, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge, %if.end.if.end45_crit_edge
  %ret.2 = phi i32 [ 0, %if.end.if.end45_crit_edge ], [ %ret.1, %if.then42 ], [ %ret.1, %if.end39.if.end45_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_host_mtl_irq_status(ptr nocapture noundef readonly %hw, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %shl = shl nuw i32 1, %chan
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 4468
  %add.ptr4 = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %5 = and i32 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #7, !srcloc !210
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry.if.end14_crit_edge
  %ret.1 = phi i32 [ %5, %if.then ], [ 0, %entry.if.end14_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_filter(ptr nocapture noundef readonly %hw, ptr noundef readonly %dev) #0 align 64 {
entry:
  %mc_filter = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 13
  %4 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcast_bits_log2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mc_filter) #7
  %6 = and i32 %3, -352583681
  %7 = or i32 %6, 262144
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = call ptr @memset(ptr %mc_filter, i32 0, i32 32)
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and2 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %8, 129
  br label %if.end69

if.else:                                          ; preds = %entry
  %and6 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.else.if.then8_crit_edge

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 8
  %multicast_filter_bins = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 11
  %14 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %multicast_filter_bins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ugt i32 %13, %15
  br i1 %cmp, label %lor.lhs.false.if.then8_crit_edge, label %if.else12

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.else.if.then8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11.1 = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.1, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11.2 = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.2, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11.3 = getelementptr i8, ptr %2, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.3, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11.4 = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.4, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11.5 = getelementptr i8, ptr %2, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.5, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11.6 = getelementptr i8, ptr %2, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.6, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %add.ptr11.7 = getelementptr i8, ptr %2, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.7, i32 -1) #7, !srcloc !210
  %or9 = or i32 %8, 16
  br label %if.end69

if.else12:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15 = icmp eq i32 %13, 0
  %and17 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond = select i1 %cmp15, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.else12.if.end69_crit_edge, label %if.then19

if.else12.if.end69_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then19:                                        ; preds = %if.else12
  %or20 = or i32 %8, 4
  %16 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0180 = load ptr, ptr %mc, align 4
  %cmp28.not181 = icmp eq ptr %ha.0180, %mc
  br i1 %cmp28.not181, label %if.then19.if.end69_crit_edge, label %for.body29.lr.ph

if.then19.if.end69_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

for.body29.lr.ph:                                 ; preds = %if.then19
  %sub = sub i32 32, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.body29.lr.ph
  %ha.0182 = phi ptr [ %ha.0180, %for.body29.lr.ph ], [ %ha.0, %cond.end.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0182, i32 0, i32 2
  %call31 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #10
  %neg = xor i32 %call31, -1
  %17 = lshr i32 %neg, 8
  %conv4.i.i = and i32 %17, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %18 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %19 to i32
  %20 = shl nuw nsw i32 %conv6.i.i, 16
  %21 = and i32 %neg, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %23 to i32
  %24 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %20, %24
  %sum.shift.i = lshr i32 %neg, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %25 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %26 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %neg, 16
  %27 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %29 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %shr56 = lshr i32 %or.i, %sub
  %and57 = and i32 %shr56, 31
  %shl58 = shl nuw i32 1, %and57
  %shr59 = lshr i32 %shr56, 5
  %arrayidx = getelementptr [8 x i32], ptr %mc_filter, i32 0, i32 %shr59
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %or60 = or i32 %shl58, %31
  store i32 %or60, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %ha.0182 to i32
  call void @__asan_load4_noabort(i32 %32)
  %ha.0 = load ptr, ptr %ha.0182, align 4
  %cmp28.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp28.not, label %cond.end.if.end69_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.end.if.end69_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end69:                                         ; preds = %cond.end.if.end69_crit_edge, %if.then19.if.end69_crit_edge, %if.else12.if.end69_crit_edge, %if.then8, %if.then
  %value.0 = phi i32 [ %or4, %if.then ], [ %8, %if.else12.if.end69_crit_edge ], [ %or20, %if.then19.if.end69_crit_edge ], [ %or9, %if.then8 ], [ %or20, %cond.end.if.end69_crit_edge ]
  %switch.tableidx = add i32 %5, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %33 = icmp ult i32 %switch.tableidx, 3
  br i1 %33, label %switch.lookup, label %if.end69.dwxgmac2_set_mchash.exit_crit_edge

if.end69.dwxgmac2_set_mchash.exit_crit_edge:      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac2_set_mchash.exit

switch.lookup:                                    ; preds = %if.end69
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dwxgmac2_set_filter, i32 0, i32 %switch.tableidx
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %switch.lookup
  %regs.07.i = phi i32 [ 0, %switch.lookup ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %mc_filter, i32 %regs.07.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %mul.i = shl i32 %regs.07.i, 2
  %add.i = add nuw nsw i32 %mul.i, 16
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #7, !srcloc !210
  %inc.i = add nuw nsw i32 %regs.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %switch.load
  br i1 %exitcond.not.i, label %do.body.i.dwxgmac2_set_mchash.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i.dwxgmac2_set_mchash.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac2_set_mchash.exit

dwxgmac2_set_mchash.exit:                         ; preds = %do.body.i.dwxgmac2_set_mchash.exit_crit_edge, %if.end69.dwxgmac2_set_mchash.exit_crit_edge
  %uc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %count71 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %38 = ptrtoint ptr %count71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count71, align 8
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 12
  %40 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %unicast_filter_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp72 = icmp ugt i32 %39, %41
  br i1 %cmp72, label %if.then73, label %for.cond83.preheader

for.cond83.preheader:                             ; preds = %dwxgmac2_set_mchash.exit
  %42 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %42)
  %ha76.0184 = load ptr, ptr %uc, align 4
  %cmp87.not185 = icmp eq ptr %ha76.0184, %uc
  br i1 %cmp87.not185, label %for.cond83.preheader.do.body103.preheader_crit_edge, label %for.body89.lr.ph

for.cond83.preheader.do.body103.preheader_crit_edge: ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103.preheader

for.body89.lr.ph:                                 ; preds = %for.cond83.preheader
  %pcsr.i = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  br label %for.body89

if.then73:                                        ; preds = %dwxgmac2_set_mchash.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or74 = or i32 %value.0, 1
  br label %do.body119

for.cond100.preheader:                            ; preds = %for.body89
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc92)
  %cmp101188 = icmp slt i32 %inc92, 32
  br i1 %cmp101188, label %for.cond100.preheader.do.body103.preheader_crit_edge, label %for.cond100.preheader.do.body119_crit_edge

for.cond100.preheader.do.body119_crit_edge:       ; preds = %for.cond100.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

for.cond100.preheader.do.body103.preheader_crit_edge: ; preds = %for.cond100.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103.preheader

do.body103.preheader:                             ; preds = %for.cond100.preheader.do.body103.preheader_crit_edge, %for.cond83.preheader.do.body103.preheader_crit_edge
  %reg.1189.ph = phi i32 [ 1, %for.cond83.preheader.do.body103.preheader_crit_edge ], [ %inc92, %for.cond100.preheader.do.body103.preheader_crit_edge ]
  br label %do.body103

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %for.body89.lr.ph
  %ha76.0187 = phi ptr [ %ha76.0184, %for.body89.lr.ph ], [ %ha76.0, %for.body89.for.body89_crit_edge ]
  %reg.0186 = phi i32 [ 1, %for.body89.lr.ph ], [ %inc92, %for.body89.for.body89_crit_edge ]
  %addr90 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha76.0187, i32 0, i32 2
  %43 = ptrtoint ptr %pcsr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcsr.i, align 4
  %arrayidx.i173 = getelementptr %struct.netdev_hw_addr, ptr %ha76.0187, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i173, align 1
  %conv.i = zext i8 %46 to i32
  %shl.i174 = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr %struct.netdev_hw_addr, ptr %ha76.0187, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %48 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %or.i175 = or i32 %shl.i174, %conv2.i
  %or3.i = or i32 %or.i175, -2147483648
  %49 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %mul.i176 = shl i32 %reg.0186, 3
  %add.i177 = add i32 %mul.i176, 768
  %add.ptr.i178 = getelementptr i8, ptr %44, i32 %add.i177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %49) #7, !srcloc !210
  %arrayidx4.i = getelementptr %struct.netdev_hw_addr, ptr %ha76.0187, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %51 to i32
  %shl6.i = shl nuw i32 %conv5.i, 24
  %arrayidx7.i = getelementptr %struct.netdev_hw_addr, ptr %ha76.0187, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %53 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %shl9.i, %shl6.i
  %arrayidx11.i = getelementptr %struct.netdev_hw_addr, ptr %ha76.0187, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %55 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %or14.i = or i32 %or10.i, %shl13.i
  %56 = ptrtoint ptr %addr90 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %addr90, align 1
  %conv16.i = zext i8 %57 to i32
  %or17.i = or i32 %or14.i, %conv16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #7
  %add22.i = add i32 %mul.i176, 772
  %add.ptr23.i = getelementptr i8, ptr %44, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %58) #7, !srcloc !210
  %inc92 = add i32 %reg.0186, 1
  %59 = ptrtoint ptr %ha76.0187 to i32
  call void @__asan_load4_noabort(i32 %59)
  %ha76.0 = load ptr, ptr %ha76.0187, align 4
  %cmp87.not = icmp eq ptr %ha76.0, %uc
  br i1 %cmp87.not, label %for.cond100.preheader, label %for.body89.for.body89_crit_edge

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body89

do.body103:                                       ; preds = %do.body103.do.body103_crit_edge, %do.body103.preheader
  %reg.1189 = phi i32 [ %inc116, %do.body103.do.body103_crit_edge ], [ %reg.1189.ph, %do.body103.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  tail call void @arm_heavy_mb() #7
  %mul106 = shl i32 %reg.1189, 3
  %add107 = add i32 %mul106, 768
  %add.ptr108 = getelementptr i8, ptr %2, i32 %add107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 0) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  tail call void @arm_heavy_mb() #7
  %add113 = add i32 %mul106, 772
  %add.ptr114 = getelementptr i8, ptr %2, i32 %add113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 0) #7, !srcloc !210
  %inc116 = add i32 %reg.1189, 1
  %exitcond.not = icmp eq i32 %inc116, 32
  br i1 %exitcond.not, label %do.body103.do.body119_crit_edge, label %do.body103.do.body103_crit_edge

do.body103.do.body103_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

do.body103.do.body119_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

do.body119:                                       ; preds = %do.body103.do.body119_crit_edge, %for.cond100.preheader.do.body119_crit_edge, %if.then73
  %value.1 = phi i32 [ %or74, %if.then73 ], [ %value.0, %for.cond100.preheader.do.body119_crit_edge ], [ %value.0, %do.body103.do.body119_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %60) #7, !srcloc !210
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mc_filter) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_flow_ctrl(ptr nocapture noundef readonly %hw, i32 noundef %duplex, i32 noundef %fc, i32 noundef %pause_time, i32 noundef %tx_cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %and = and i32 %fc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !210
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and1 = and i32 %fc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp ne i32 %and1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_cnt)
  %cmp17 = icmp ne i32 %tx_cnt, 0
  %or.cond = and i1 %tobool2.not, %cmp17
  br i1 %or.cond, label %for.body.lr.ph, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %tobool4.not = icmp eq i32 %duplex, 0
  %shl = shl i32 %pause_time, 16
  %or = or i32 %shl, 2
  %value.0 = select i1 %tobool4.not, i32 2, i32 %or
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !258
  tail call void @arm_heavy_mb() #7
  %mul = shl i32 %i.018, 2
  %add = add i32 %mul, 112
  %add.ptr10 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %2) #7, !srcloc !210
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %tx_cnt
  br i1 %exitcond.not, label %for.body.if.end11_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_pmt(ptr nocapture noundef readonly %hw, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = and i32 %mode, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.do.body12_crit_edge, label %if.then7

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !259
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !210
  br label %do.body12

do.body12:                                        ; preds = %if.then7, %entry.do.body12_crit_edge
  %and = and i32 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 3
  %or4 = or i32 %spec.select, 517
  %val.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %add.ptr15 = getelementptr i8, ptr %1, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %6) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_umac_addr(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %arrayidx = getelementptr i8, ptr %addr, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %addr, i32 4
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, -2147483648
  %6 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %mul = shl i32 %reg_n, 3
  %add = add i32 %mul, 768
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  %arrayidx4 = getelementptr i8, ptr %addr, i32 3
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %shl6 = shl nuw i32 %conv5, 24
  %arrayidx7 = getelementptr i8, ptr %addr, i32 2
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %shl9, %shl6
  %arrayidx11 = getelementptr i8, ptr %addr, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or10, %shl13
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr, align 1
  %conv16 = zext i8 %14 to i32
  %or17 = or i32 %or14, %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %add22 = add i32 %mul, 772
  %add.ptr23 = getelementptr i8, ptr %1, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %15) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_get_umac_addr(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %mul = shl i32 %reg_n, 3
  %add = add i32 %mul, 768
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %add5 = add i32 %mul, 772
  %add.ptr6 = getelementptr i8, ptr %1, i32 %add5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !206
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %addr, align 1
  %shr = lshr i32 %5, 8
  %conv11 = trunc i32 %shr to i8
  %arrayidx12 = getelementptr i8, ptr %addr, i32 1
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11, ptr %arrayidx12, align 1
  %shr13 = lshr i32 %5, 16
  %conv15 = trunc i32 %shr13 to i8
  %arrayidx16 = getelementptr i8, ptr %addr, i32 2
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %arrayidx16, align 1
  %shr17 = lshr i32 %5, 24
  %conv19 = trunc i32 %shr17 to i8
  %arrayidx20 = getelementptr i8, ptr %addr, i32 3
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv19, ptr %arrayidx20, align 1
  %conv22 = trunc i32 %3 to i8
  %arrayidx23 = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv22, ptr %arrayidx23, align 1
  %shr24 = lshr i32 %3, 8
  %conv26 = trunc i32 %shr24 to i8
  %arrayidx27 = getelementptr i8, ptr %addr, i32 5
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv26, ptr %arrayidx27, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_eee_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %en_tx_lpi_clockgating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %3 = or i32 %2, 2304
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or2 = or i32 %4, 2097152
  %spec.select = select i1 %en_tx_lpi_clockgating, i32 %or2, i32 %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !265
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_reset_eee_mode(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !266
  %3 = and i32 %2, -10497
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !267
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_eee_timer(ptr nocapture noundef readonly %hw, i32 noundef %ls, i32 noundef %tw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %and = and i32 %tw, 65535
  %and1 = shl i32 %ls, 16
  %shl = and i32 %and1, 67043328
  %or = or i32 %and, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !268
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr = getelementptr i8, ptr %1, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_eee_pls(ptr nocapture noundef readonly %hw, i32 noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %tobool.not = icmp eq i32 %link, 0
  %3 = and i32 %2, -513
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 131072
  %value.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !270
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac3_safety_feat_config(ptr noundef %ioaddr, i32 noundef %asp, ptr nocapture noundef readnone %safety_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asp)
  %tobool.not = icmp eq i32 %asp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !271
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !210
  %add.ptr1 = getelementptr i8, ptr %ioaddr, i32 4296
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !272
  %1 = or i32 %0, 286326784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !273
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %1) #7, !srcloc !210
  %add.ptr12 = getelementptr i8, ptr %ioaddr, i32 12392
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !274
  %3 = or i32 %2, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !275
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #7, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asp)
  %cmp = icmp eq i32 %asp, 1
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end23

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26 = getelementptr i8, ptr %ioaddr, i32 344
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !276
  %5 = or i32 %4, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !277
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %5) #7, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac3_safety_feat_irq_status(ptr noundef %ndev, ptr noundef %ioaddr, i32 noundef %asp, ptr nocapture noundef %stats) #0 align 64 {
entry:
  %mask.i.i93 = alloca i32, align 4
  %mask.i.i80 = alloca i32, align 4
  %mask.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asp)
  %tobool.not = icmp eq i32 %asp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4292
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !278
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 12388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp slt i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10 = icmp slt i32 %3, 0
  %spec.select = select i1 %tobool8.not, i1 true, i1 %tobool10
  br i1 %spec.select, label %if.then12, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 336
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !206
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !281
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #7
  %6 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mask.i.i, align 4
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i)
  %cmp10.i.i = icmp ult i32 %call.i.i, 32
  br i1 %cmp10.i.i, label %if.then12.for.body.i.i_crit_edge, label %if.then12.dwxgmac3_handle_mac_err.exit_crit_edge

if.then12.dwxgmac3_handle_mac_err.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_handle_mac_err.exit

if.then12.for.body.i.i_crit_edge:                 ; preds = %if.then12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then12.for.body.i.i_crit_edge
  %loc.011.i.i = phi i32 [ %call4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then12.for.body.i.i_crit_edge ]
  %desc1.i.i = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mac_errors, i32 %loc.011.i.i, i32 1
  %7 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc1.i.i, align 4
  %detailed_desc.i.i = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mac_errors, i32 %loc.011.i.i, i32 2
  %9 = ptrtoint ptr %detailed_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %detailed_desc.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef %10) #11
  %arrayidx3.i.i = getelementptr i32, ptr %stats, i32 %loc.011.i.i
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %arrayidx3.i.i, align 4
  %add.i.i = add nuw nsw i32 %loc.011.i.i, 1
  %call4.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i, i32 noundef 32, i32 noundef %add.i.i) #7
  %cmp.i.i = icmp ult i32 %call4.i.i, 32
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.dwxgmac3_handle_mac_err.exit_crit_edge

for.body.i.i.dwxgmac3_handle_mac_err.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_handle_mac_err.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

dwxgmac3_handle_mac_err.exit:                     ; preds = %for.body.i.i.dwxgmac3_handle_mac_err.exit_crit_edge, %if.then12.dwxgmac3_handle_mac_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #7
  br label %if.end15

if.end15:                                         ; preds = %dwxgmac3_handle_mac_err.exit, %if.end.if.end15_crit_edge
  %ret.0 = phi i32 [ 1, %dwxgmac3_handle_mac_err.exit ], [ 0, %if.end.if.end15_crit_edge ]
  %and16 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp ne i32 %and16, 0
  %and19 = and i32 %3, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20 = icmp ne i32 %and19, 0
  %13 = select i1 %tobool17.not, i1 true, i1 %tobool20
  %and23 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp ne i32 %and23, 0
  %and26 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27 = icmp ne i32 %and26, 0
  %14 = select i1 %tobool24.not, i1 true, i1 %tobool27
  br i1 %13, label %if.then31, label %if.end15.if.end37_crit_edge

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31:                                        ; preds = %if.end15
  %add.ptr.i81 = getelementptr i8, ptr %ioaddr, i32 4300
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #7, !srcloc !206
  %16 = call i32 @llvm.bswap.i32(i32 %15) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %15) #7, !srcloc !210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i80) #7
  %add.ptr.i.i = getelementptr i8, ptr %stats, i32 128
  %17 = ptrtoint ptr %mask.i.i80 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mask.i.i80, align 4
  %call.i.i82 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i80, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i82)
  %cmp10.i.i83 = icmp ult i32 %call.i.i82, 32
  br i1 %cmp10.i.i83, label %for.body.lr.ph.i.i, label %if.then31.dwxgmac3_handle_mtl_err.exit_crit_edge

if.then31.dwxgmac3_handle_mtl_err.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_handle_mtl_err.exit

for.body.lr.ph.i.i:                               ; preds = %if.then31
  %cond.i.i = select i1 %14, ptr @.str.9, ptr @.str.10
  br label %for.body.i.i92

for.body.i.i92:                                   ; preds = %for.body.i.i92.for.body.i.i92_crit_edge, %for.body.lr.ph.i.i
  %loc.011.i.i84 = phi i32 [ %call.i.i82, %for.body.lr.ph.i.i ], [ %call4.i.i90, %for.body.i.i92.for.body.i.i92_crit_edge ]
  %desc1.i.i85 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mtl_errors, i32 %loc.011.i.i84, i32 1
  %18 = ptrtoint ptr %desc1.i.i85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc1.i.i85, align 4
  %detailed_desc.i.i86 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mtl_errors, i32 %loc.011.i.i84, i32 2
  %20 = ptrtoint ptr %detailed_desc.i.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %detailed_desc.i.i86, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond.i.i, ptr noundef nonnull @.str.61, ptr noundef %19, ptr noundef %21) #11
  %arrayidx3.i.i87 = getelementptr i32, ptr %add.ptr.i.i, i32 %loc.011.i.i84
  %22 = ptrtoint ptr %arrayidx3.i.i87 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.i.i87, align 4
  %inc.i.i88 = add i32 %23, 1
  store i32 %inc.i.i88, ptr %arrayidx3.i.i87, align 4
  %add.i.i89 = add nuw nsw i32 %loc.011.i.i84, 1
  %call4.i.i90 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i80, i32 noundef 32, i32 noundef %add.i.i89) #7
  %cmp.i.i91 = icmp ult i32 %call4.i.i90, 32
  br i1 %cmp.i.i91, label %for.body.i.i92.for.body.i.i92_crit_edge, label %for.body.i.i92.dwxgmac3_handle_mtl_err.exit_crit_edge

for.body.i.i92.dwxgmac3_handle_mtl_err.exit_crit_edge: ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_handle_mtl_err.exit

for.body.i.i92.for.body.i.i92_crit_edge:          ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i92

dwxgmac3_handle_mtl_err.exit:                     ; preds = %for.body.i.i92.dwxgmac3_handle_mtl_err.exit_crit_edge, %if.then31.dwxgmac3_handle_mtl_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i80) #7
  %lnot34 = xor i1 %14, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %or36 = or i32 %ret.0, %lnot.ext35
  br label %if.end37

if.end37:                                         ; preds = %dwxgmac3_handle_mtl_err.exit, %if.end15.if.end37_crit_edge
  %ret.1 = phi i32 [ %or36, %dwxgmac3_handle_mtl_err.exit ], [ %ret.0, %if.end15.if.end37_crit_edge ]
  %and38 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then45

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then45:                                        ; preds = %if.end37
  %and41 = and i32 %3, 1
  %add.ptr.i94 = getelementptr i8, ptr %ioaddr, i32 12396
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #7, !srcloc !206
  %25 = call i32 @llvm.bswap.i32(i32 %24) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !285
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %24) #7, !srcloc !210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i93) #7
  %add.ptr.i.i95 = getelementptr i8, ptr %stats, i32 256
  %26 = ptrtoint ptr %mask.i.i93 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mask.i.i93, align 4
  %call.i.i96 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i93, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i96)
  %cmp10.i.i97 = icmp ult i32 %call.i.i96, 32
  br i1 %cmp10.i.i97, label %for.body.lr.ph.i.i99, label %if.then45.dwxgmac3_handle_dma_err.exit_crit_edge

if.then45.dwxgmac3_handle_dma_err.exit_crit_edge: ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_handle_dma_err.exit

for.body.lr.ph.i.i99:                             ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond.i.i98 = select i1 %tobool42.not, ptr @.str.10, ptr @.str.9
  br label %for.body.i.i108

for.body.i.i108:                                  ; preds = %for.body.i.i108.for.body.i.i108_crit_edge, %for.body.lr.ph.i.i99
  %loc.011.i.i100 = phi i32 [ %call.i.i96, %for.body.lr.ph.i.i99 ], [ %call4.i.i106, %for.body.i.i108.for.body.i.i108_crit_edge ]
  %desc1.i.i101 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_dma_errors, i32 %loc.011.i.i100, i32 1
  %27 = ptrtoint ptr %desc1.i.i101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc1.i.i101, align 4
  %detailed_desc.i.i102 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_dma_errors, i32 %loc.011.i.i100, i32 2
  %29 = ptrtoint ptr %detailed_desc.i.i102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %detailed_desc.i.i102, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond.i.i98, ptr noundef nonnull @.str.82, ptr noundef %28, ptr noundef %30) #11
  %arrayidx3.i.i103 = getelementptr i32, ptr %add.ptr.i.i95, i32 %loc.011.i.i100
  %31 = ptrtoint ptr %arrayidx3.i.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i.i103, align 4
  %inc.i.i104 = add i32 %32, 1
  store i32 %inc.i.i104, ptr %arrayidx3.i.i103, align 4
  %add.i.i105 = add nuw nsw i32 %loc.011.i.i100, 1
  %call4.i.i106 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i.i93, i32 noundef 32, i32 noundef %add.i.i105) #7
  %cmp.i.i107 = icmp ult i32 %call4.i.i106, 32
  br i1 %cmp.i.i107, label %for.body.i.i108.for.body.i.i108_crit_edge, label %for.body.i.i108.dwxgmac3_handle_dma_err.exit_crit_edge

for.body.i.i108.dwxgmac3_handle_dma_err.exit_crit_edge: ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_handle_dma_err.exit

for.body.i.i108.for.body.i.i108_crit_edge:        ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i108

dwxgmac3_handle_dma_err.exit:                     ; preds = %for.body.i.i108.dwxgmac3_handle_dma_err.exit_crit_edge, %if.then45.dwxgmac3_handle_dma_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i93) #7
  %33 = xor i32 %and41, 1
  %or50 = or i32 %ret.1, %33
  br label %cleanup

cleanup:                                          ; preds = %dwxgmac3_handle_dma_err.exit, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %or50, %dwxgmac3_handle_dma_err.exit ], [ %ret.1, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac3_safety_feat_dump(ptr nocapture noundef readonly %stats, i32 noundef %index, ptr noundef writeonly %count, ptr noundef writeonly %desc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %index, 32
  %0 = mul i32 %div, 32
  %rem.decomposed = sub i32 %index, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp = icmp ugt i32 %div, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.dwxgmac3_error], ptr @dwxgmac3_all_errors, i32 0, i32 %div
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.dwxgmac3_error_desc, ptr %2, i32 %rem.decomposed
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 4, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %count, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i32, ptr %stats, i32 %index
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %desc, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %desc13 = getelementptr %struct.dwxgmac3_error_desc, ptr %2, i32 %rem.decomposed, i32 1
  %8 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc13, align 4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac3_rxp_config(ptr noundef %ioaddr, ptr noundef %entries, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !287
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !288
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !210
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 4096
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !289
  %3 = and i32 %2, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !290
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp140.not = icmp eq i32 %count, 0
  br i1 %cmp140.not, label %entry.do.body66_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

while.cond.preheader:                             ; preds = %for.body
  %i.043.i = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.043.i)
  %cmp44.i = icmp sgt i32 %i.043.i, -1
  br i1 %cmp44.i, label %while.cond.preheader.for.body.i.preheader_crit_edge, label %while.cond.preheader.do.body66_crit_edge

while.cond.preheader.do.body66_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

while.cond.preheader.for.body.i.preheader_crit_edge: ; preds = %while.cond.preheader
  br label %for.body.i.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0141 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %in_hw = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.0141, i32 1
  %4 = ptrtoint ptr %in_hw to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %in_hw, align 1
  %inc = add nuw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.i.preheader:                             ; preds = %for.body.i.preheader.backedge, %while.cond.preheader.for.body.i.preheader_crit_edge
  %curr_prio.0144 = phi i32 [ %16, %for.body.i.preheader.backedge ], [ 0, %while.cond.preheader.for.body.i.preheader_crit_edge ]
  %nve.0142 = phi i32 [ %nve.0142.be, %for.body.i.preheader.backedge ], [ 0, %while.cond.preheader.for.body.i.preheader_crit_edge ]
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.i.preheader
  %i.048.i.ph = phi i32 [ %i.043.i, %for.body.i.preheader ], [ %i.0.i126, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  %found.0.off047.i.ph = phi i1 [ false, %for.body.i.preheader ], [ true, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  %min_prio_idx.046.i.ph = phi i32 [ -1, %for.body.i.preheader ], [ %i.048.i, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  %min_prio.045.i.ph = phi i32 [ -1, %for.body.i.preheader ], [ %14, %for.inc.i.thread.for.body.i.outer_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %i.048.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i_crit_edge ], [ %i.048.i.ph, %for.body.i.outer ]
  %arrayidx.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 4, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %in_hw.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 1
  %7 = ptrtoint ptr %in_hw.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_hw.i, align 1, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end4.i:                                        ; preds = %if.end.i
  %is_last.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 2
  %9 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_last.i, align 2, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end4.i
  %is_frag.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 3
  %11 = ptrtoint ptr %is_frag.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_frag.i, align 1, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not.i = icmp eq i8 %12, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end7.i
  %prio.i = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i, i32 7
  %13 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %curr_prio.0144)
  %cmp11.i = icmp uge i32 %14, %curr_prio.0144
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %min_prio.045.i.ph)
  %cmp15.i = icmp ult i32 %14, %min_prio.045.i.ph
  %or.cond.i = and i1 %cmp11.i, %cmp15.i
  br i1 %or.cond.i, label %for.inc.i.thread, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.048.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %if.end10.i
  %i.0.i126 = add nsw i32 %i.048.i, -1
  %cmp.i127 = icmp sgt i32 %i.048.i, 0
  br i1 %cmp.i127, label %for.inc.i.thread.for.body.i.outer_crit_edge, label %for.inc.i.thread.dwxgmac3_rxp_get_next_entry.exit_crit_edge

for.inc.i.thread.dwxgmac3_rxp_get_next_entry.exit_crit_edge: ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_rxp_get_next_entry.exit

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.outer

for.end.i:                                        ; preds = %for.inc.i
  br i1 %found.0.off047.i.ph, label %for.end.i.dwxgmac3_rxp_get_next_entry.exit_crit_edge, label %for.end.i.while.end_crit_edge

for.end.i.while.end_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.end.i.dwxgmac3_rxp_get_next_entry.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwxgmac3_rxp_get_next_entry.exit

dwxgmac3_rxp_get_next_entry.exit:                 ; preds = %for.end.i.dwxgmac3_rxp_get_next_entry.exit_crit_edge, %for.inc.i.thread.dwxgmac3_rxp_get_next_entry.exit_crit_edge
  %i.048.i.pn = phi i32 [ %min_prio_idx.046.i.ph, %for.end.i.dwxgmac3_rxp_get_next_entry.exit_crit_edge ], [ %i.048.i, %for.inc.i.thread.dwxgmac3_rxp_get_next_entry.exit_crit_edge ]
  %arrayidx21.i133 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn
  %tobool6.not = icmp eq ptr %arrayidx21.i133, null
  br i1 %tobool6.not, label %dwxgmac3_rxp_get_next_entry.exit.while.end_crit_edge, label %if.end8

dwxgmac3_rxp_get_next_entry.exit.while.end_crit_edge: ; preds = %dwxgmac3_rxp_get_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end8:                                          ; preds = %dwxgmac3_rxp_get_next_entry.exit
  %prio = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 7
  %15 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prio, align 4
  %frag_ptr = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 4
  %17 = ptrtoint ptr %frag_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frag_ptr, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.end8.if.end21_crit_edge, label %if.then10

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %af = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 8, i32 2
  %19 = ptrtoint ptr %af to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %af, align 4
  %bf.clear18 = and i8 %bf.load, 47
  %bf.set19 = or i8 %bf.clear18, 16
  store i8 %bf.set19, ptr %af, align 4
  %20 = trunc i32 %nve.0142 to i8
  %conv = add i8 %20, 2
  %ok_index = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 8, i32 4
  %21 = ptrtoint ptr %ok_index to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %ok_index, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %if.end8.if.end21_crit_edge
  %call22 = tail call fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %ioaddr, ptr noundef nonnull %arrayidx21.i133, i32 noundef %nve.0142)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.do.body66_crit_edge

if.end21.do.body66_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

if.end25:                                         ; preds = %if.end21
  %inc26 = add i32 %nve.0142, 1
  %table_pos = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 5
  %22 = ptrtoint ptr %table_pos to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %nve.0142, ptr %table_pos, align 4
  %in_hw27 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.048.i.pn, i32 1
  %23 = ptrtoint ptr %in_hw27 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %in_hw27, align 1
  br i1 %tobool9.not, label %if.end25.for.body.i.preheader.backedge_crit_edge, label %land.lhs.true

if.end25.for.body.i.preheader.backedge_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader.backedge

land.lhs.true:                                    ; preds = %if.end25
  %in_hw29 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %in_hw29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %in_hw29, align 1, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool30.not = icmp eq i8 %25, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true.for.body.i.preheader.backedge_crit_edge

land.lhs.true.for.body.i.preheader.backedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader.backedge

if.then31:                                        ; preds = %land.lhs.true
  %call32 = tail call fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %ioaddr, ptr noundef nonnull %18, i32 noundef %inc26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then31.do.body66_crit_edge

if.then31.do.body66_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

if.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %inc36 = add i32 %nve.0142, 2
  %table_pos37 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %18, i32 0, i32 5
  %26 = ptrtoint ptr %table_pos37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc26, ptr %table_pos37, align 4
  %27 = ptrtoint ptr %in_hw29 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %in_hw29, align 1
  br label %for.body.i.preheader.backedge

for.body.i.preheader.backedge:                    ; preds = %if.end35, %land.lhs.true.for.body.i.preheader.backedge_crit_edge, %if.end25.for.body.i.preheader.backedge_crit_edge
  %nve.0142.be = phi i32 [ %inc36, %if.end35 ], [ %inc26, %land.lhs.true.for.body.i.preheader.backedge_crit_edge ], [ %inc26, %if.end25.for.body.i.preheader.backedge_crit_edge ]
  br label %for.body.i.preheader

while.end:                                        ; preds = %dwxgmac3_rxp_get_next_entry.exit.while.end_crit_edge, %for.end.i.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nve.0142)
  %tobool40.not = icmp eq i32 %nve.0142, 0
  br i1 %tobool40.not, label %while.end.do.body66_crit_edge, label %for.cond43.preheader

while.end.do.body66_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

for.cond43.preheader:                             ; preds = %while.end
  br i1 %cmp140.not, label %for.cond43.preheader.for.end59_crit_edge, label %for.cond43.preheader.for.body46_crit_edge

for.cond43.preheader.for.body46_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body46

for.cond43.preheader.for.end59_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.body46:                                       ; preds = %for.inc57.for.body46_crit_edge, %for.cond43.preheader.for.body46_crit_edge
  %i.1149 = phi i32 [ %inc58, %for.inc57.for.body46_crit_edge ], [ 0, %for.cond43.preheader.for.body46_crit_edge ]
  %nve.2148 = phi i32 [ %nve.3, %for.inc57.for.body46_crit_edge ], [ %nve.0142, %for.cond43.preheader.for.body46_crit_edge ]
  %is_last = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.1149, i32 2
  %28 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_last, align 2, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.not = icmp eq i8 %29, 0
  br i1 %tobool48.not, label %for.body46.for.inc57_crit_edge, label %if.end50

for.body46.for.inc57_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

if.end50:                                         ; preds = %for.body46
  %arrayidx47 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.1149
  %call51 = tail call fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %ioaddr, ptr noundef %arrayidx47, i32 noundef %nve.2148)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.do.body66_crit_edge

if.end50.do.body66_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %inc55 = add i32 %nve.2148, 1
  %table_pos56 = getelementptr %struct.stmmac_tc_entry, ptr %entries, i32 %i.1149, i32 5
  %30 = ptrtoint ptr %table_pos56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %nve.2148, ptr %table_pos56, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %if.end54, %for.body46.for.inc57_crit_edge
  %nve.3 = phi i32 [ %inc55, %if.end54 ], [ %nve.2148, %for.body46.for.inc57_crit_edge ]
  %inc58 = add nuw i32 %i.1149, 1
  %exitcond156.not = icmp eq i32 %inc58, %count
  br i1 %exitcond156.not, label %for.inc57.for.end59_crit_edge, label %for.inc57.for.body46_crit_edge

for.inc57.for.body46_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %for.cond43.preheader.for.end59_crit_edge
  %nve.2.lcssa = phi i32 [ %nve.0142, %for.cond43.preheader.for.end59_crit_edge ], [ %nve.3, %for.inc57.for.end59_crit_edge ]
  %shl = shl i32 %nve.2.lcssa, 16
  %and60 = and i32 %shl, 16711680
  %and61 = and i32 %nve.2.lcssa, 255
  %or = or i32 %and60, %and61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !291
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr65 = getelementptr i8, ptr %ioaddr, i32 4256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %31) #7, !srcloc !210
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !292
  %33 = or i32 %32, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !293
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #7, !srcloc !210
  br label %do.body66

do.body66:                                        ; preds = %for.end59, %if.end50.do.body66_crit_edge, %while.end.do.body66_crit_edge, %if.then31.do.body66_crit_edge, %if.end21.do.body66_crit_edge, %while.cond.preheader.do.body66_crit_edge, %entry.do.body66_crit_edge
  %ret.4 = phi i32 [ 0, %for.end59 ], [ 0, %while.end.do.body66_crit_edge ], [ 0, %while.cond.preheader.do.body66_crit_edge ], [ 0, %entry.do.body66_crit_edge ], [ %call51, %if.end50.do.body66_crit_edge ], [ %call32, %if.then31.do.body66_crit_edge ], [ %call22, %if.end21.do.body66_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !210
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_flex_pps_config(ptr noundef %ioaddr, i32 noundef %index, ptr nocapture noundef %cfg, i1 noundef zeroext %enable, i32 noundef %sub_second_inc, i32 noundef %systime_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 4
  %add = add i32 %mul, 3460
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !295
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 3440
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !296
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfg, align 8, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %.mask = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool8.not = icmp eq i32 %.mask, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub_second_inc)
  %tobool11.not = icmp eq i32 %sub_second_inc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %systime_flags)
  %tobool12.not = icmp eq i32 %systime_flags, 0
  %or.cond = or i1 %tobool11.not, %tobool12.not
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %mul15 = shl i32 %index, 3
  %shl.neg = shl nsw i32 -1, %mul15
  %sub20 = sub i32 24, %mul15
  %shr = lshr i32 -1, %sub20
  %and21 = and i32 %shr, %shl.neg
  %neg = xor i32 %and21, -1
  %and23 = and i32 %2, %neg
  %sub47 = sub i32 28, %mul15
  %shr48 = lshr i32 -1, %sub47
  br i1 %enable, label %if.end40, label %if.then25

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %and34 = shl i32 5, %mul15
  %and38 = and i32 %and34, %shr48
  %or = or i32 %and23, %and38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !297
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #7, !srcloc !210
  br label %cleanup

if.end40:                                         ; preds = %if.end14
  %and49 = shl i32 2, %mul15
  %and53 = and i32 %and49, %shr48
  %sub58 = or i32 %mul15, 5
  %shl59.neg = shl nsw i32 -1, %sub58
  %sub66 = sub i32 25, %mul15
  %shr67 = lshr i32 -1, %sub66
  %and68 = and i32 %shl59.neg, %shr67
  %shl74 = shl i32 2, %sub58
  %and75 = and i32 %and68, %shl74
  %or54 = or i32 %and53, %and75
  %or76 = or i32 %or54, %and23
  %or77 = or i32 %or76, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !298
  tail call void @arm_heavy_mb() #7
  %start = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %conv = trunc i64 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add82 = add i32 %mul, 3456
  %add.ptr83 = getelementptr i8, ptr %ioaddr, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %8) #7, !srcloc !210
  %and84 = and i32 %systime_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end40.do.body92_crit_edge

if.end40.do.body92_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92

if.then86:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %tv_nsec = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %mul88 = mul i32 %10, 1000
  %div = sdiv i32 %mul88, 465
  store i32 %div, ptr %tv_nsec, align 8
  br label %do.body92

do.body92:                                        ; preds = %if.then86, %if.end40.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !299
  tail call void @arm_heavy_mb() #7
  %tv_nsec96 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %tv_nsec96 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec96, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !210
  %period100 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 2
  %14 = ptrtoint ptr %period100 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %period100, align 8
  %mul102 = mul i64 %15, 1000000000
  %tv_nsec104 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %cfg, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tv_nsec104 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec104, align 8
  %conv105 = sext i32 %17 to i64
  %add106 = add i64 %mul102, %conv105
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add106)
  %cmp286 = icmp ult i64 %add106, 4294967296
  br i1 %cmp286, label %if.then290, label %if.else296, !prof !300

if.then290:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %conv291 = trunc i64 %add106 to i32
  %div294 = udiv i32 %conv291, %sub_second_inc
  %conv295 = zext i32 %div294 to i64
  br label %if.end300

if.else296:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub_second_inc, i64 %add106) #12, !srcloc !301
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  br label %if.end300

if.end300:                                        ; preds = %if.else296, %if.then290
  %period.0 = phi i64 [ %conv295, %if.then290 ], [ %asmresult1.i, %if.else296 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %period.0)
  %cmp302 = icmp ult i64 %period.0, 2
  br i1 %cmp302, label %if.end300.cleanup_crit_edge, label %do.body306

if.end300.cleanup_crit_edge:                      ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body306:                                       ; preds = %if.end300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !302
  tail call void @arm_heavy_mb() #7
  %19 = trunc i64 %period.0 to i32
  %conv310 = add i32 %19, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv310)
  %add312 = add i32 %mul, 3464
  %add.ptr313 = getelementptr i8, ptr %ioaddr, i32 %add312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr313, i32 %20) #7, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %period.0)
  %cmp315 = icmp ult i64 %period.0, 4
  br i1 %cmp315, label %do.body306.cleanup_crit_edge, label %do.body319

do.body306.cleanup_crit_edge:                     ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body319:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  %shr314 = lshr i64 %period.0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !303
  tail call void @arm_heavy_mb() #7
  %21 = trunc i64 %shr314 to i32
  %conv323 = add i32 %21, -1
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv323)
  %add325 = add i32 %mul, 3468
  %add.ptr326 = getelementptr i8, ptr %ioaddr, i32 %add325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr326, i32 %22) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !304
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or77)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %23) #7, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %do.body319, %do.body306.cleanup_crit_edge, %if.end300.cleanup_crit_edge, %if.then25, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body319 ], [ 0, %if.then25 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end300.cleanup_crit_edge ], [ -22, %do.body306.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_mac_loopback(ptr noundef %ioaddr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !305
  %1 = and i32 %0, -262145
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %enable, i32 1024, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !306
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_rss_configure(ptr nocapture noundef readonly %hw, ptr noundef readonly %cfg, i32 noundef %num_rxq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3200
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !307
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %and = and i32 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !308
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %key4 = getelementptr inbounds %struct.stmmac_rss, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %key4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key4, align 4
  %call5 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 0, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %call5.1 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 4
  %call5.2 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 2, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 12
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  %call5.3 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 3, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 16
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.4, align 4
  %call5.4 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 4, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 20
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.5, align 4
  %call5.5 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 5, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool6.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool6.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 24
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.6, align 4
  %call5.6 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 6, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool6.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool6.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 28
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %call5.7 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 7, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %tobool6.not.7 = icmp eq i32 %call5.7, 0
  br i1 %tobool6.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 32
  %23 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.8, align 4
  %call5.8 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 8, i32 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %tobool6.not.8 = icmp eq i32 %call5.8, 0
  br i1 %tobool6.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 1, i32 36
  %25 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.9, align 4
  %call5.9 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext true, i32 noundef 9, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.9)
  %tobool6.not.9 = icmp eq i32 %call5.9, 0
  br i1 %tobool6.not.9, label %for.cond.8.for.body11_crit_edge, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.8.for.body11_crit_edge:                  ; preds = %for.cond.8
  br label %for.body11

for.cond9:                                        ; preds = %for.body11
  %inc18 = add nuw nsw i32 %i.160, 1
  %exitcond.not = icmp eq i32 %inc18, 256
  br i1 %exitcond.not, label %for.cond20.preheader, label %for.cond9.for.body11_crit_edge

for.cond9.for.body11_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.cond20.preheader:                             ; preds = %for.cond9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rxq)
  %cmp2161.not = icmp eq i32 %num_rxq, 0
  br i1 %cmp2161.not, label %for.cond20.preheader.for.end25_crit_edge, label %for.cond20.preheader.for.body22_crit_edge

for.cond20.preheader.for.body22_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body22

for.cond20.preheader.for.end25_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body11:                                       ; preds = %for.cond9.for.body11_crit_edge, %for.cond.8.for.body11_crit_edge
  %i.160 = phi i32 [ %inc18, %for.cond9.for.body11_crit_edge ], [ 0, %for.cond.8.for.body11_crit_edge ]
  %arrayidx12 = getelementptr %struct.stmmac_rss, ptr %cfg, i32 0, i32 2, i32 %i.160
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx12, align 4
  %call13 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %1, i1 noundef zeroext false, i32 noundef %i.160, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond9, label %for.body11.cleanup_crit_edge

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond20.preheader.for.body22_crit_edge
  %i.262 = phi i32 [ %inc24, %for.body22.for.body22_crit_edge ], [ 0, %for.cond20.preheader.for.body22_crit_edge ]
  %29 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.262)
  %cmp1.i = icmp ugt i32 %i.262, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.262)
  %cmp.i = icmp ult i32 %i.262, 4
  %cond.i = select i1 %cmp.i, i32 4144, i32 4148
  %add.ptr.i = getelementptr i8, ptr %30, i32 %cond.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !206
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %33 = shl i32 %i.262, 3
  %34 = add i32 %33, -32
  %mul.i = select i1 %cmp1.i, i32 %34, i32 %33
  %shl.neg.i = shl nsw i32 -1, %mul.i
  %sub6.i = sub i32 24, %mul.i
  %shr.i = lshr i32 -1, %sub6.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %neg.i = xor i32 %and.i, -1
  %and8.i = and i32 %32, %neg.i
  %shl10.i = shl i32 128, %mul.i
  %and21.i = and i32 %and.i, %shl10.i
  %or.i = or i32 %and8.i, %and21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #7, !srcloc !210
  %inc24 = add nuw i32 %i.262, 1
  %exitcond66.not = icmp eq i32 %inc24, %num_rxq
  br i1 %exitcond66.not, label %for.body22.for.end25_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

for.body22.for.end25_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.end25:                                        ; preds = %for.body22.for.end25_crit_edge, %for.cond20.preheader.for.end25_crit_edge
  %or = or i32 %3, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !309
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #7, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %for.body11.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %for.end25 ], [ 0, %if.then ], [ %call5, %if.end.cleanup_crit_edge ], [ %call5.1, %for.cond.cleanup_crit_edge ], [ %call5.2, %for.cond.1.cleanup_crit_edge ], [ %call5.3, %for.cond.2.cleanup_crit_edge ], [ %call5.4, %for.cond.3.cleanup_crit_edge ], [ %call5.5, %for.cond.4.cleanup_crit_edge ], [ %call5.6, %for.cond.5.cleanup_crit_edge ], [ %call5.7, %for.cond.6.cleanup_crit_edge ], [ %call5.8, %for.cond.7.cleanup_crit_edge ], [ %call5.9, %for.cond.8.cleanup_crit_edge ], [ %call13, %for.body11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_update_vlan_hash(ptr nocapture noundef readonly %hw, i32 noundef %hash, i16 noundef zeroext %perfect_match, i1 noundef zeroext %is_double) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !310
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %hash)
  %add.ptr = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash)
  %tobool.not = icmp eq i32 %hash, 0
  br i1 %tobool.not, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %4 = or i32 %3, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #7, !srcloc !210
  %add.ptr9 = getelementptr i8, ptr %1, i32 80
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !313
  %masksel = select i1 %is_double, i32 68419584, i32 0
  %6 = and i32 %5, 60153
  %7 = or i32 %6, 258
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and21 = or i32 %8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !314
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %and21)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #7, !srcloc !210
  br label %if.end93

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %perfect_match)
  %tobool27.not = icmp eq i16 %perfect_match, 0
  %add.ptr69 = getelementptr i8, ptr %1, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool27.not, label %if.else65, label %if.then28

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i32 %10, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !315
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %11) #7, !srcloc !210
  %add.ptr43 = getelementptr i8, ptr %1, i32 80
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !316
  %13 = and i32 %12, -259
  %14 = or i32 %13, 256
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %or53 = or i32 %15, 68419584
  %and57 = and i32 %15, -102039552
  %value29.0 = select i1 %is_double, i32 %or53, i32 %and57
  %and59 = and i32 %value29.0, -33619968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !317
  tail call void @arm_heavy_mb() #7
  %conv = zext i16 %perfect_match to i32
  %or63 = or i32 %and59, %conv
  %16 = tail call i32 @llvm.bswap.i32(i32 %or63)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %16) #7, !srcloc !210
  br label %if.end93

if.else65:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %17 = and i32 %10, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !318
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %17) #7, !srcloc !210
  %add.ptr80 = getelementptr i8, ptr %1, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !319
  %19 = and i32 %18, 60153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !320
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %19) #7, !srcloc !210
  br label %if.end93

if.end93:                                         ; preds = %if.else65, %if.then28, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_vlan(ptr nocapture noundef readonly %hw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !321
  %3 = and i32 %2, -6913
  %4 = or i32 %3, 6144
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %shl = shl i32 %type, 16
  %and3 = and i32 %shl, 196608
  %or4 = or i32 %5, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !322
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_get_mac_tx_timestamp(ptr nocapture noundef readonly %hw, ptr nocapture noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 10000000
  %add.ptr = getelementptr i8, ptr %1, i32 3360
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !323
  %3 = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not57 = icmp eq i32 %3, 0
  br i1 %tobool.not57, label %entry.land.lhs.true_crit_edge, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call5 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !323
  %6 = and i32 %5, 8388608
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.if.end27_crit_edge

cond.false.if.end27_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !324
  %8 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool24.not = icmp eq i32 %8, 0
  br i1 %tobool24.not, label %for.end.cleanup_crit_edge, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %cond.false.if.end27_crit_edge, %entry.if.end27_crit_edge
  %add.ptr30 = getelementptr i8, ptr %1, i32 3376
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !325
  %10 = and i32 %9, -129
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %conv = zext i32 %11 to i64
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %ts, align 8
  %add.ptr37 = getelementptr i8, ptr %1, i32 3380
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #7, !srcloc !206
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !326
  %conv41 = zext i32 %14 to i64
  %mul42 = mul nuw nsw i64 %conv41, 1000000000
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ts, align 8
  %add = add i64 %mul42, %16
  store i64 %add, ptr %ts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -16, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_sarc_configure(ptr noundef %ioaddr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !327
  %1 = and i32 %0, -28673
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl i32 %val, 20
  %or = or i32 %2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !328
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_config_l3_filter(ptr nocapture noundef readonly %hw, i32 noundef %filter_no, i1 noundef zeroext %en, i1 noundef zeroext %ipv6, i1 noundef zeroext %sa, i1 noundef zeroext %inv, i32 noundef %match) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %3 = or i32 %2, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !210
  %4 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcsr, align 4
  %call.i = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %shl.i = shl i32 %filter_no, 12
  %or2.i = or i32 %shl.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !331
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !210
  %call3.i = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %add.ptr7.i = getelementptr i8, ptr %5, i32 3076
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !206
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !332
  br i1 %ipv6, label %if.then8, label %if.else24

if.then8:                                         ; preds = %if.end
  %or9 = and i32 %8, -62
  br i1 %sa, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select.v = select i1 %inv, i32 13, i32 5
  %spec.select = or i32 %or9, %spec.select.v
  br label %if.end40

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select142.v = select i1 %inv, i32 49, i32 17
  %spec.select142 = or i32 %or9, %spec.select142.v
  br label %if.end40

if.else24:                                        ; preds = %if.end
  %and25 = and i32 %8, -2
  br i1 %sa, label %if.then27, label %if.else33

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select143.v = select i1 %inv, i32 12, i32 4
  %spec.select143 = or i32 %and25, %spec.select143.v
  br label %if.end40

if.else33:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select144.v = select i1 %inv, i32 48, i32 16
  %spec.select144 = or i32 %and25, %spec.select144.v
  br label %if.end40

if.end40:                                         ; preds = %if.else33, %if.then27, %if.else, %if.then12
  %value.1 = phi i32 [ %spec.select, %if.then12 ], [ %spec.select142, %if.else ], [ %spec.select143, %if.then27 ], [ %spec.select144, %if.else33 ]
  %9 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcsr, align 4
  %call.i88 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %dwxgmac2_filter_write.exit, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwxgmac2_filter_write.exit:                       ; preds = %if.end40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %value.1) #7
  %add.ptr.i90 = getelementptr i8, ptr %10, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %11) #7, !srcloc !210
  %or2.i91 = or i32 %shl.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or2.i91) #7
  %add.ptr6.i = getelementptr i8, ptr %10, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %12) #7, !srcloc !210
  %call7.i = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool42.not = icmp eq i32 %call7.i, 0
  br i1 %tobool42.not, label %if.end44, label %dwxgmac2_filter_write.exit.cleanup_crit_edge

dwxgmac2_filter_write.exit.cleanup_crit_edge:     ; preds = %dwxgmac2_filter_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %dwxgmac2_filter_write.exit
  %13 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcsr, align 4
  %call.i94 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %sa, label %if.then46, label %if.else51

if.then46:                                        ; preds = %if.end44
  br i1 %tobool.not.i95, label %dwxgmac2_filter_write.exit102, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwxgmac2_filter_write.exit102:                    ; preds = %if.then46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %match) #7
  %add.ptr.i96 = getelementptr i8, ptr %14, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %15) #7, !srcloc !210
  %or2.i97 = or i32 %shl.i, 1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or2.i97) #7
  %add.ptr6.i98 = getelementptr i8, ptr %14, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i98, i32 %16) #7, !srcloc !210
  %call7.i99 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i99)
  %tobool48.not = icmp ne i32 %call7.i99, 0
  %brmerge86 = or i1 %tobool48.not, %en
  br i1 %brmerge86, label %dwxgmac2_filter_write.exit102.cleanup_crit_edge, label %dwxgmac2_filter_write.exit102.if.then58_crit_edge

dwxgmac2_filter_write.exit102.if.then58_crit_edge: ; preds = %dwxgmac2_filter_write.exit102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

dwxgmac2_filter_write.exit102.cleanup_crit_edge:  ; preds = %dwxgmac2_filter_write.exit102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else51:                                        ; preds = %if.end44
  br i1 %tobool.not.i95, label %dwxgmac2_filter_write.exit113, label %if.else51.cleanup_crit_edge

if.else51.cleanup_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwxgmac2_filter_write.exit113:                    ; preds = %if.else51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %match) #7
  %add.ptr.i106 = getelementptr i8, ptr %14, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %17) #7, !srcloc !210
  %or2.i108 = or i32 %shl.i, 1281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or2.i108) #7
  %add.ptr6.i109 = getelementptr i8, ptr %14, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i109, i32 %18) #7, !srcloc !210
  %call7.i110 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i110)
  %tobool53.not = icmp ne i32 %call7.i110, 0
  %brmerge = or i1 %tobool53.not, %en
  br i1 %brmerge, label %dwxgmac2_filter_write.exit113.cleanup_crit_edge, label %dwxgmac2_filter_write.exit113.if.then58_crit_edge

dwxgmac2_filter_write.exit113.if.then58_crit_edge: ; preds = %dwxgmac2_filter_write.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

dwxgmac2_filter_write.exit113.cleanup_crit_edge:  ; preds = %dwxgmac2_filter_write.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %dwxgmac2_filter_write.exit113.if.then58_crit_edge, %dwxgmac2_filter_write.exit102.if.then58_crit_edge
  %19 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcsr, align 4
  %call.i115 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %do.body.i121, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i121:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %add.ptr.i117 = getelementptr i8, ptr %20, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 0) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %add.ptr6.i119 = getelementptr i8, ptr %20, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i119, i32 %12) #7, !srcloc !210
  %call7.i120 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body.i121, %if.then58.cleanup_crit_edge, %dwxgmac2_filter_write.exit113.cleanup_crit_edge, %if.else51.cleanup_crit_edge, %dwxgmac2_filter_write.exit102.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %dwxgmac2_filter_write.exit.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %dwxgmac2_filter_write.exit.cleanup_crit_edge ], [ %call7.i99, %dwxgmac2_filter_write.exit102.cleanup_crit_edge ], [ %call7.i110, %dwxgmac2_filter_write.exit113.cleanup_crit_edge ], [ %call7.i120, %do.body.i121 ], [ %call.i115, %if.then58.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i88, %if.end40.cleanup_crit_edge ], [ %call.i94, %if.then46.cleanup_crit_edge ], [ %call.i94, %if.else51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_config_l4_filter(ptr nocapture noundef readonly %hw, i32 noundef %filter_no, i1 noundef zeroext %en, i1 noundef zeroext %udp, i1 noundef zeroext %sa, i1 noundef zeroext %inv, i32 noundef %match) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !335
  %3 = or i32 %2, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !336
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !210
  %4 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcsr, align 4
  %call.i = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %shl.i = shl i32 %filter_no, 12
  %or2.i = or i32 %shl.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !331
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !210
  %call3.i = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %add.ptr7.i = getelementptr i8, ptr %5, i32 3076
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !332
  %8 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcsr, align 4
  %call.i73 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %dwxgmac2_filter_write.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwxgmac2_filter_write.exit:                       ; preds = %if.end
  %spec.select.v = select i1 %inv, i32 786432, i32 262144
  %spec.select127.v = select i1 %inv, i32 3145728, i32 1048576
  %spec.select.v.pn = select i1 %sa, i32 %spec.select.v, i32 %spec.select127.v
  %10 = and i32 %7, -15617
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %masksel = select i1 %udp, i32 65536, i32 0
  %and12 = or i32 %spec.select.v.pn, %masksel
  %value.1 = or i32 %and12, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %value.1) #7
  %add.ptr.i75 = getelementptr i8, ptr %9, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %12) #7, !srcloc !210
  %or2.i76 = or i32 %shl.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or2.i76) #7
  %add.ptr6.i = getelementptr i8, ptr %9, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %13) #7, !srcloc !210
  %call7.i = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool28.not = icmp eq i32 %call7.i, 0
  br i1 %tobool28.not, label %if.end30, label %dwxgmac2_filter_write.exit.cleanup_crit_edge

dwxgmac2_filter_write.exit.cleanup_crit_edge:     ; preds = %dwxgmac2_filter_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %dwxgmac2_filter_write.exit
  %14 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcsr, align 4
  %call.i79 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %sa, label %if.then32, label %if.else38

if.then32:                                        ; preds = %if.end30
  br i1 %tobool.not.i80, label %dwxgmac2_filter_write.exit87, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwxgmac2_filter_write.exit87:                     ; preds = %if.then32
  %and33 = and i32 %match, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %and33) #7
  %add.ptr.i81 = getelementptr i8, ptr %15, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %16) #7, !srcloc !210
  %or2.i82 = or i32 %shl.i, 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or2.i82) #7
  %add.ptr6.i83 = getelementptr i8, ptr %15, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i83, i32 %17) #7, !srcloc !210
  %call7.i84 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i84)
  %tobool35.not = icmp ne i32 %call7.i84, 0
  %brmerge71 = or i1 %tobool35.not, %en
  br i1 %brmerge71, label %dwxgmac2_filter_write.exit87.cleanup_crit_edge, label %dwxgmac2_filter_write.exit87.if.then46_crit_edge

dwxgmac2_filter_write.exit87.if.then46_crit_edge: ; preds = %dwxgmac2_filter_write.exit87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

dwxgmac2_filter_write.exit87.cleanup_crit_edge:   ; preds = %dwxgmac2_filter_write.exit87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else38:                                        ; preds = %if.end30
  br i1 %tobool.not.i80, label %dwxgmac2_filter_write.exit98, label %if.else38.cleanup_crit_edge

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwxgmac2_filter_write.exit98:                     ; preds = %if.else38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %match)
  %19 = lshr i32 %18, 16
  %add.ptr.i91 = getelementptr i8, ptr %15, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %19) #7, !srcloc !210
  %or2.i93 = or i32 %shl.i, 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or2.i93) #7
  %add.ptr6.i94 = getelementptr i8, ptr %15, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i94, i32 %20) #7, !srcloc !210
  %call7.i95 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i95)
  %tobool41.not = icmp ne i32 %call7.i95, 0
  %brmerge = or i1 %tobool41.not, %en
  br i1 %brmerge, label %dwxgmac2_filter_write.exit98.cleanup_crit_edge, label %dwxgmac2_filter_write.exit98.if.then46_crit_edge

dwxgmac2_filter_write.exit98.if.then46_crit_edge: ; preds = %dwxgmac2_filter_write.exit98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

dwxgmac2_filter_write.exit98.cleanup_crit_edge:   ; preds = %dwxgmac2_filter_write.exit98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %dwxgmac2_filter_write.exit98.if.then46_crit_edge, %dwxgmac2_filter_write.exit87.if.then46_crit_edge
  %21 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcsr, align 4
  %call.i100 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i101, label %do.body.i106, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i106:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %add.ptr.i102 = getelementptr i8, ptr %22, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 0) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %add.ptr6.i104 = getelementptr i8, ptr %22, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i104, i32 %13) #7, !srcloc !210
  %call7.i105 = tail call fastcc i32 @dwxgmac2_filter_wait(ptr noundef %hw) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body.i106, %if.then46.cleanup_crit_edge, %dwxgmac2_filter_write.exit98.cleanup_crit_edge, %if.else38.cleanup_crit_edge, %dwxgmac2_filter_write.exit87.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %dwxgmac2_filter_write.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %dwxgmac2_filter_write.exit.cleanup_crit_edge ], [ %call7.i84, %dwxgmac2_filter_write.exit87.cleanup_crit_edge ], [ %call7.i95, %dwxgmac2_filter_write.exit98.cleanup_crit_edge ], [ %call7.i105, %do.body.i106 ], [ %call.i100, %if.then46.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i73, %if.end.cleanup_crit_edge ], [ %call.i79, %if.then32.cleanup_crit_edge ], [ %call.i79, %if.else38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_arp_offload(ptr nocapture noundef readonly %hw, i1 noundef zeroext %en, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !337
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %add.ptr = getelementptr i8, ptr %1, i32 3088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !210
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %4 = and i32 %3, -129
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %en, i32 -2147483648, i32 0
  %value.0 = or i32 %5, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac3_est_configure(ptr noundef %ioaddr, ptr nocapture noundef readonly %cfg, i32 noundef %ptp_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %btr = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 4
  %0 = ptrtoint ptr %btr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %btr, align 4
  %call = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef 0, i32 noundef %1, i1 noundef zeroext false)
  %arrayidx2 = getelementptr %struct.stmmac_est, ptr %cfg, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef 1, i32 noundef %3, i1 noundef zeroext false)
  %or4 = or i32 %call3, %call
  %ter = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 6
  %4 = ptrtoint ptr %ter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ter, align 4
  %call5 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef 4, i32 noundef %5, i1 noundef zeroext false)
  %or6 = or i32 %or4, %call5
  %gcl_size = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 9
  %6 = ptrtoint ptr %gcl_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gcl_size, align 4
  %call7 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef 5, i32 noundef %7, i1 noundef zeroext false)
  %or8 = or i32 %or6, %call7
  %ctr = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctr, align 4
  %call10 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef 2, i32 noundef %9, i1 noundef zeroext false)
  %or11 = or i32 %or8, %call10
  %arrayidx13 = getelementptr %struct.stmmac_est, ptr %cfg, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %call14 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef 3, i32 noundef %11, i1 noundef zeroext false)
  %or15 = or i32 %or11, %call14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or15)
  %tobool.not = icmp eq i32 %or15, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %12 = ptrtoint ptr %gcl_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gcl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp65.not = icmp eq i32 %13, 0
  br i1 %cmp65.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.066, 1
  %14 = ptrtoint ptr %gcl_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gcl_size, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.stmmac_est, ptr %cfg, i32 0, i32 8, i32 %i.066
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %call18 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef %i.066, i32 noundef %17, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4176
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !340
  %19 = and i32 %18, -33024
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %div = udiv i32 1000000000, %ptp_rate
  %shl = mul i32 %div, 75497472
  %or24 = or i32 %shl, %20
  %enable = getelementptr inbounds %struct.stmmac_est, ptr %cfg, i32 0, i32 1
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not = icmp eq i32 %22, 0
  %or27 = or i32 %or24, 3
  %and28 = and i32 %or24, -2
  %ctrl.0 = select i1 %tobool25.not, i32 %and28, i32 %or27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !341
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #7, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %or15, %entry.cleanup_crit_edge ], [ %call18, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac3_fpe_configure(ptr noundef %ioaddr, i32 noundef %num_txq, i32 noundef %num_rxq, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 640
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !342
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !343
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !210
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5 = getelementptr i8, ptr %ioaddr, i32 164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !344
  %3 = and i32 %2, 268435455
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %sub = shl i32 %num_rxq, 4
  %shl = add i32 %sub, -16
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !345
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #7, !srcloc !210
  %add.ptr16 = getelementptr i8, ptr %ioaddr, i32 640
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !346
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !347
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %7) #7, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxlgmac2_rx_queue_enable(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mode, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !348
  %mul = shl i32 %queue, 1
  %shl = shl nuw i32 1, %mul
  %add = sub i32 0, %shl
  %sub4 = sub i32 30, %mul
  %shr = lshr i32 -1, %sub4
  %and = and i32 %shr, %add
  %neg = xor i32 %and, -1
  %and6 = and i32 %3, %neg
  %4 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %mode, label %entry.do.body_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then13
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and6, %shl
  br label %do.body

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl15 = shl i32 2, %mul
  %or16 = or i32 %and6, %shl15
  br label %do.body

do.body:                                          ; preds = %if.then13, %if.then, %entry.do.body_crit_edge
  %value.0 = phi i32 [ %or, %if.then ], [ %or16, %if.then13 ], [ %and6, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !349
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwxgmac2_setup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str) #11
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags, align 16
  %or = or i64 %7, 4096
  store i64 %or, ptr %priv_flags, align 16
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 32
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %pcsr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pcsr, align 4
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %11 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat, align 128
  %multicast_filter_bins = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %multicast_filter_bins, align 4
  %multicast_filter_bins1 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %multicast_filter_bins1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %multicast_filter_bins1, align 4
  %16 = load ptr, ptr %plat, align 128
  %unicast_filter_entries = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unicast_filter_entries, align 4
  %unicast_filter_entries3 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %unicast_filter_entries3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %unicast_filter_entries3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #7
  %sub.i = xor i32 %20, 31
  %storemerge = select i1 %tobool.not, i32 0, i32 %sub.i
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %mcast_bits_log2, align 4
  %link = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9
  %duplex = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 5
  %22 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %duplex, align 4
  %speed10 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -536870912, ptr %speed10, align 4
  %speed100 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %speed100 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2147483648, ptr %speed100, align 4
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %speed1000 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1610612736, ptr %speed1000, align 4
  %speed2500 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %speed2500 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1073741824, ptr %speed2500, align 4
  %xgmii = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 6
  %27 = ptrtoint ptr %xgmii to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1073741824, ptr %xgmii, align 4
  %speed5000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 6, i32 1
  %28 = ptrtoint ptr %speed5000 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1610612736, ptr %speed5000, align 4
  %speed10000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 6, i32 2
  %29 = ptrtoint ptr %speed10000 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %speed10000, align 4
  %30 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -536870912, ptr %link, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 516, ptr %data, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %addr_shift to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %addr_shift, align 4
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 4
  %34 = ptrtoint ptr %addr_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2031616, ptr %addr_mask, align 4
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 3
  %35 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %reg_shift, align 4
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 5
  %36 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 65535, ptr %reg_mask, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 6
  %37 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 19, ptr %clk_csr_shift, align 4
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 7
  %38 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3670016, ptr %clk_csr_mask, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwxlgmac2_setup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5) #11
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags, align 16
  %or = or i64 %7, 4096
  store i64 %or, ptr %priv_flags, align 16
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 32
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %pcsr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pcsr, align 4
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %11 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat, align 128
  %multicast_filter_bins = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %multicast_filter_bins, align 4
  %multicast_filter_bins1 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %multicast_filter_bins1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %multicast_filter_bins1, align 4
  %16 = load ptr, ptr %plat, align 128
  %unicast_filter_entries = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unicast_filter_entries, align 4
  %unicast_filter_entries3 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %unicast_filter_entries3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %unicast_filter_entries3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #7
  %sub.i = xor i32 %20, 31
  %storemerge = select i1 %tobool.not, i32 0, i32 %sub.i
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %mcast_bits_log2, align 4
  %link = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9
  %duplex = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 5
  %22 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %duplex, align 4
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %speed1000 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1879048192, ptr %speed1000, align 4
  %speed2500 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 4
  %24 = ptrtoint ptr %speed2500 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1610612736, ptr %speed2500, align 4
  %speed10000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 6, i32 2
  %25 = ptrtoint ptr %speed10000 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1073741824, ptr %speed10000, align 4
  %xlgmii = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 7
  %26 = ptrtoint ptr %xlgmii to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 268435456, ptr %xlgmii, align 4
  %speed40000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 7, i32 1
  %27 = ptrtoint ptr %speed40000 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %speed40000, align 4
  %speed50000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 7, i32 2
  %28 = ptrtoint ptr %speed50000 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 536870912, ptr %speed50000, align 4
  %speed100000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 7, i32 3
  %29 = ptrtoint ptr %speed100000 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 805306368, ptr %speed100000, align 4
  %30 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1879048192, ptr %link, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 516, ptr %data, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %addr_shift to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %addr_shift, align 4
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 4
  %34 = ptrtoint ptr %addr_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2031616, ptr %addr_mask, align 4
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 3
  %35 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %reg_shift, align 4
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 5
  %36 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 65535, ptr %reg_mask, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 6
  %37 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 19, ptr %clk_csr_shift, align 4
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 7
  %38 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3670016, ptr %clk_csr_mask, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %ioaddr, ptr nocapture noundef readonly %entry1, i32 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %pos, 2
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4272
  %val37 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %entry1, i32 0, i32 8
  %add.ptr42 = getelementptr i8, ptr %ioaddr, i32 4276
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0170 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0170, %mul
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 941) #7
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !350
  %.mask166 = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask166)
  %tobool.not167 = icmp eq i32 %.mask166, 0
  br i1 %tobool.not167, label %for.body.if.end36_crit_edge, label %for.body.land.lhs.true_crit_edge

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  br label %land.lhs.true

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !350
  %.mask = and i32 %1, 128
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.then28.if.end36_crit_edge, label %if.then28.land.lhs.true_crit_edge

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.end:                                          ; preds = %land.lhs.true
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !351
  %.mask161 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask161)
  %tobool33.not = icmp eq i32 %.mask161, 0
  br i1 %tobool33.not, label %for.end.if.end36_crit_edge, label %for.end.cleanup114_crit_edge

for.end.cleanup114_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup114

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %if.then28.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %add.ptr38 = getelementptr i32, ptr %val37, i32 %i.0170
  %3 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !352
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %5) #7, !srcloc !210
  %and43 = and i32 %add, 1023
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !353
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and43)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !210
  %or = or i32 %and43, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !354
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #7, !srcloc !210
  %or52 = or i32 %and43, -2147418112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !355
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or52)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !210
  %call60 = tail call i64 @ktime_get() #7
  %add.i147 = add i64 %call60, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 963) #7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !356
  %.mask162168 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask162168)
  %tobool82.not169 = icmp eq i32 %.mask162168, 0
  br i1 %tobool82.not169, label %if.end36.for.inc_crit_edge, label %if.end36.land.lhs.true86_crit_edge

if.end36.land.lhs.true86_crit_edge:               ; preds = %if.end36
  br label %land.lhs.true86

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true86:                                  ; preds = %if.then99.land.lhs.true86_crit_edge, %if.end36.land.lhs.true86_crit_edge
  %call87 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call87, i64 %add.i147)
  %cmp3.i149 = icmp sgt i64 %call87, %add.i147
  br i1 %cmp3.i149, label %cleanup, label %if.then99

if.then99:                                        ; preds = %land.lhs.true86
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !356
  %.mask162 = and i32 %10, 128
  %tobool82.not = icmp eq i32 %.mask162, 0
  br i1 %tobool82.not, label %if.then99.for.inc_crit_edge, label %if.then99.land.lhs.true86_crit_edge

if.then99.land.lhs.true86_crit_edge:              ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true86

if.then99.for.inc_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true86
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !357
  %.mask163 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask163)
  %tobool106.not = icmp eq i32 %.mask163, 0
  br i1 %tobool106.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup114_crit_edge

cleanup.cleanup114_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup114

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %if.then99.for.inc_crit_edge, %if.end36.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup114_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup114_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup114

cleanup114:                                       ; preds = %for.inc.cleanup114_crit_edge, %cleanup.cleanup114_crit_edge, %for.end.cleanup114_crit_edge
  %retval.2 = phi i32 [ -110, %cleanup.cleanup114_crit_edge ], [ 0, %for.inc.cleanup114_crit_edge ], [ -110, %for.end.cleanup114_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %ioaddr, i1 noundef zeroext %is_key, i32 noundef %idx, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !358
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 3212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !210
  %shl = shl i32 %idx, 8
  %cond = select i1 %is_key, i32 4, i32 0
  %or1 = or i32 %shl, %cond
  %or2 = or i32 %or1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !359
  tail call void @arm_heavy_mb() #7
  %1 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %add.ptr6 = getelementptr i8, ptr %ioaddr, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %1) #7, !srcloc !210
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 522) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !360
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool20.not56 = icmp eq i32 %3, 0
  br i1 %tobool20.not56, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then36.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !360
  %5 = and i32 %4, 16777216
  %tobool20.not = icmp eq i32 %5, 0
  br i1 %tobool20.not, label %if.then36.for.end.thread_crit_edge, label %if.then36.land.lhs.true_crit_edge

if.then36.land.lhs.true_crit_edge:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then36.for.end.thread_crit_edge:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !361
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool40.not = icmp eq i32 %7, 0
  br i1 %tobool40.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %8

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then36.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %8

8:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %9 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac2_filter_wait(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1196) #7
  %add.ptr = getelementptr i8, ptr %1, i32 3072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !362
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not43 = icmp eq i32 %3, 0
  br i1 %tobool.not43, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !362
  %5 = and i32 %4, 16777216
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then25.for.end.thread_crit_edge, label %if.then25.land.lhs.true_crit_edge

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then25.for.end.thread_crit_edge:               ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !363
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool29.not = icmp eq i32 %7, 0
  br i1 %tobool29.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %8

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then25.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %8

8:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %9 = phi i32 [ 0, %for.end.thread ], [ -16, %for.end._crit_edge ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac3_est_write(ptr noundef %ioaddr, i32 noundef %reg, i32 noundef %val, i1 noundef zeroext %gcl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !364
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !210
  %shl = shl i32 %reg, 8
  %cond = select i1 %gcl, i32 0, i32 4
  %or = or i32 %cond, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !365
  tail call void @arm_heavy_mb() #7
  %1 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 4224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %1) #7, !srcloc !210
  %or5 = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !366
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %2) #7, !srcloc !210
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 5000000
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !367
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool14.not53 = icmp eq i32 %4, 0
  br i1 %tobool14.not53, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #7
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !367
  %7 = and i32 %6, 16777216
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %cond.false.for.end.thread_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cond.false.for.end.thread_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !368
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool35.not = icmp eq i32 %9, 0
  br i1 %tobool35.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %10

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %cond.false.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %10

10:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %11 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @dwxgmac210_ops, !1, !"dwxgmac210_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 1456, i32 25}
!2 = !{ptr @dwxlgmac2_ops, !3, !"dwxlgmac2_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 1517, i32 25}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 1568, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @dwxgmac2_setup._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @dwxgmac2_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 1605, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dwxlgmac2_setup._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @dwxlgmac2_setup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 705, i32 47}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 652, i32 20}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 653, i32 5}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 653, i32 21}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 662, i32 10}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 662, i32 19}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 663, i32 10}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 663, i32 18}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 664, i32 10}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 664, i32 18}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 665, i32 10}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 665, i32 20}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 666, i32 10}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 666, i32 19}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 667, i32 10}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 667, i32 20}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 668, i32 10}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 668, i32 21}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 669, i32 10}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 669, i32 21}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 670, i32 10}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 670, i32 19}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 671, i32 10}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 671, i32 21}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 672, i32 10}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 672, i32 21}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 673, i32 10}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 673, i32 19}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 674, i32 10}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 674, i32 20}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 675, i32 10}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 675, i32 18}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 676, i32 10}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 676, i32 18}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 677, i32 10}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 677, i32 18}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 678, i32 10}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 678, i32 18}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 679, i32 10}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 679, i32 18}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 680, i32 11}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 680, i32 22}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 683, i32 10}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 683, i32 20}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 684, i32 10}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 684, i32 20}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 685, i32 10}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 685, i32 20}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 686, i32 10}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 686, i32 20}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 687, i32 10}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 687, i32 20}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 693, i32 10}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 693, i32 17}
!125 = !{ptr @dwxgmac3_mac_errors, !126, !"dwxgmac3_mac_errors", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 661, i32 41}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 753, i32 47}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 710, i32 10}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 710, i32 19}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 711, i32 10}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 711, i32 19}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 712, i32 10}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 714, i32 10}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 714, i32 19}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 715, i32 10}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 715, i32 19}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 716, i32 10}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 718, i32 10}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 718, i32 18}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 719, i32 10}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 719, i32 18}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 720, i32 10}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 722, i32 10}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 722, i32 19}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 723, i32 10}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 723, i32 19}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 724, i32 10}
!169 = !{ptr @dwxgmac3_mtl_errors, !170, !"dwxgmac3_mtl_errors", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 709, i32 41}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 801, i32 47}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 758, i32 10}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 758, i32 18}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 759, i32 10}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 759, i32 18}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 760, i32 10}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 762, i32 10}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 762, i32 18}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 763, i32 10}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 763, i32 18}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 764, i32 10}
!193 = !{ptr @dwxgmac3_dma_errors, !194, !"dwxgmac3_dma_errors", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 757, i32 41}
!195 = !{ptr @dwxgmac3_all_errors, !196, !"dwxgmac3_all_errors", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c", i32 886, i32 3}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{i64 3032353}
!207 = !{i64 2157371795}
!208 = !{i64 2157372300}
!209 = !{i64 2157372994}
!210 = !{i64 3031935}
!211 = !{i64 2157373394}
!212 = !{i64 2157374045}
!213 = !{i64 2157374901}
!214 = !{i64 2157375406}
!215 = !{i64 2157375960}
!216 = !{i64 2157376360}
!217 = !{i64 2157377039}
!218 = !{i64 2157377432}
!219 = !{i64 2157378120}
!220 = !{i64 2157378707}
!221 = !{i64 2157379902}
!222 = !{i64 2157380573}
!223 = !{i64 2157382652}
!224 = !{i64 2157383316}
!225 = !{i64 2157385395}
!226 = !{i64 2157386076}
!227 = !{i64 2157386477}
!228 = !{i64 2157387165}
!229 = !{i64 2157388113}
!230 = !{i64 2157388898}
!231 = !{i64 2157389850}
!232 = !{i64 2157390328}
!233 = !{i64 2157391025}
!234 = !{i64 2157393104}
!235 = !{i64 2157393560}
!236 = !{i64 2157394061}
!237 = !{i64 2157394563}
!238 = !{i64 2157395067}
!239 = !{i64 2157395908}
!240 = !{i64 2157396950}
!241 = !{i64 2157397693}
!242 = !{i64 2157398198}
!243 = !{i64 2157398703}
!244 = !{i64 2157399290}
!245 = !{i64 2157399877}
!246 = !{i64 2157400728}
!247 = !{i64 2157401421}
!248 = !{i64 2157401859}
!249 = !{i64 2157412226}
!250 = !{i64 2157413153}
!251 = !{i64 2157411482}
!252 = !{i64 2157405393}
!253 = !{i64 2157405958}
!254 = !{i64 2157425444}
!255 = !{i64 2157425894}
!256 = !{i64 2157426312}
!257 = !{i64 2157402396}
!258 = !{i64 2157402989}
!259 = !{i64 2157404119}
!260 = !{i64 2157404428}
!261 = !{i64 2157404832}
!262 = !{i64 2157406766}
!263 = !{i64 2157407371}
!264 = !{i64 2157407876}
!265 = !{i64 2157408357}
!266 = !{i64 2157409045}
!267 = !{i64 2157409526}
!268 = !{i64 2157411023}
!269 = !{i64 2157410214}
!270 = !{i64 2157410611}
!271 = !{i64 2157447264}
!272 = !{i64 2157447946}
!273 = !{i64 2157448505}
!274 = !{i64 2157449193}
!275 = !{i64 2157449586}
!276 = !{i64 2157450274}
!277 = !{i64 2157450667}
!278 = !{i64 2157451358}
!279 = !{i64 2157451863}
!280 = !{i64 2157444218}
!281 = !{i64 2157444447}
!282 = !{i64 2157445325}
!283 = !{i64 2157445554}
!284 = !{i64 2157446432}
!285 = !{i64 2157446661}
!286 = !{i8 0, i8 2}
!287 = !{i64 2157462779}
!288 = !{i64 2157463088}
!289 = !{i64 2157453735}
!290 = !{i64 2157454046}
!291 = !{i64 2157464858}
!292 = !{i64 2157454728}
!293 = !{i64 2157455039}
!294 = !{i64 2157465266}
!295 = !{i64 2157470955}
!296 = !{i64 2157471460}
!297 = !{i64 2157473946}
!298 = !{i64 2157476918}
!299 = !{i64 2157477524}
!300 = !{!"branch_weights", i32 2000, i32 1}
!301 = !{i64 2148656264, i64 2148656544, i64 2148656878, i64 2148657212}
!302 = !{i64 2157483156}
!303 = !{i64 2157483654}
!304 = !{i64 2157484100}
!305 = !{i64 2157427000}
!306 = !{i64 2157427397}
!307 = !{i64 2157431365}
!308 = !{i64 2157431676}
!309 = !{i64 2157433216}
!310 = !{i64 2157433627}
!311 = !{i64 2157434312}
!312 = !{i64 2157434625}
!313 = !{i64 2157435313}
!314 = !{i64 2157436897}
!315 = !{i64 2157437898}
!316 = !{i64 2157438586}
!317 = !{i64 2157440186}
!318 = !{i64 2157441235}
!319 = !{i64 2157441923}
!320 = !{i64 2157443255}
!321 = !{i64 2157486394}
!322 = !{i64 2157488178}
!323 = !{i64 2157467561}
!324 = !{i64 2157468055}
!325 = !{i64 2157469157}
!326 = !{i64 2157470345}
!327 = !{i64 2157484782}
!328 = !{i64 2157485706}
!329 = !{i64 2157493171}
!330 = !{i64 2157493484}
!331 = !{i64 2157491072}
!332 = !{i64 2157491760}
!333 = !{i64 2157491988}
!334 = !{i64 2157492483}
!335 = !{i64 2157495340}
!336 = !{i64 2157495653}
!337 = !{i64 2157498302}
!338 = !{i64 2157498987}
!339 = !{i64 2157499384}
!340 = !{i64 2157504675}
!341 = !{i64 2157505844}
!342 = !{i64 2157506529}
!343 = !{i64 2157506840}
!344 = !{i64 2157507528}
!345 = !{i64 2157508433}
!346 = !{i64 2157509121}
!347 = !{i64 2157509432}
!348 = !{i64 2157510180}
!349 = !{i64 2157511375}
!350 = !{i64 2157457012}
!351 = !{i64 2157457506}
!352 = !{i64 2157457737}
!353 = !{i64 2157458815}
!354 = !{i64 2157459303}
!355 = !{i64 2157459791}
!356 = !{i64 2157461764}
!357 = !{i64 2157462258}
!358 = !{i64 2157427807}
!359 = !{i64 2157428378}
!360 = !{i64 2157430362}
!361 = !{i64 2157430856}
!362 = !{i64 2157490174}
!363 = !{i64 2157490668}
!364 = !{i64 2157499794}
!365 = !{i64 2157500283}
!366 = !{i64 2157500773}
!367 = !{i64 2157503058}
!368 = !{i64 2157503552}
