; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stmmac_rx_routing = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.169, %struct.anon.170 }
%struct.anon.169 = type { i32, i32, i32 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.159 = type { ptr }
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
%struct.rgmii_adv = type { i32, i32, i32, i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.163, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.163 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.164, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%union.anon.164 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@dwmac4_ops = dso_local constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @dwmac4_core_init, ptr @stmmac_set_mac, ptr @dwmac4_rx_ipc_enable, ptr @dwmac4_rx_queue_enable, ptr @dwmac4_rx_queue_priority, ptr @dwmac4_tx_queue_priority, ptr @dwmac4_rx_queue_routing, ptr @dwmac4_prog_mtl_rx_algorithms, ptr @dwmac4_prog_mtl_tx_algorithms, ptr @dwmac4_set_mtl_tx_queue_weight, ptr @dwmac4_map_mtl_dma, ptr @dwmac4_config_cbs, ptr @dwmac4_dump_regs, ptr @dwmac4_irq_status, ptr @dwmac4_irq_mtl_status, ptr @dwmac4_set_filter, ptr @dwmac4_flow_ctrl, ptr @dwmac4_pmt, ptr @dwmac4_set_umac_addr, ptr @dwmac4_get_umac_addr, ptr @dwmac4_set_eee_mode, ptr @dwmac4_reset_eee_mode, ptr @dwmac4_set_eee_lpi_entry_timer, ptr @dwmac4_set_eee_timer, ptr @dwmac4_set_eee_pls, ptr @dwmac4_debug, ptr @dwmac4_ctrl_ane, ptr @dwmac4_rane, ptr @dwmac4_get_adv_lp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac4_set_mac_loopback, ptr null, ptr @dwmac4_update_vlan_hash, ptr @dwmac4_enable_vlan, ptr @dwmac4_add_hw_vlan_rx_fltr, ptr @dwmac4_del_hw_vlan_rx_fltr, ptr @dwmac4_restore_hw_vlan_rx_fltr, ptr null, ptr @dwmac4_sarc_configure, ptr @dwmac4_config_l3_filter, ptr @dwmac4_config_l4_filter, ptr @dwmac4_set_arp_offload, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dwmac410_ops = dso_local constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @dwmac4_core_init, ptr @stmmac_dwmac4_set_mac, ptr @dwmac4_rx_ipc_enable, ptr @dwmac4_rx_queue_enable, ptr @dwmac4_rx_queue_priority, ptr @dwmac4_tx_queue_priority, ptr @dwmac4_rx_queue_routing, ptr @dwmac4_prog_mtl_rx_algorithms, ptr @dwmac4_prog_mtl_tx_algorithms, ptr @dwmac4_set_mtl_tx_queue_weight, ptr @dwmac4_map_mtl_dma, ptr @dwmac4_config_cbs, ptr @dwmac4_dump_regs, ptr @dwmac4_irq_status, ptr @dwmac4_irq_mtl_status, ptr @dwmac4_set_filter, ptr @dwmac4_flow_ctrl, ptr @dwmac4_pmt, ptr @dwmac4_set_umac_addr, ptr @dwmac4_get_umac_addr, ptr @dwmac4_set_eee_mode, ptr @dwmac4_reset_eee_mode, ptr @dwmac4_set_eee_lpi_entry_timer, ptr @dwmac4_set_eee_timer, ptr @dwmac4_set_eee_pls, ptr @dwmac4_debug, ptr @dwmac4_ctrl_ane, ptr @dwmac4_rane, ptr @dwmac4_get_adv_lp, ptr null, ptr null, ptr null, ptr null, ptr @dwmac5_flex_pps_config, ptr @dwmac4_set_mac_loopback, ptr null, ptr @dwmac4_update_vlan_hash, ptr @dwmac4_enable_vlan, ptr @dwmac4_add_hw_vlan_rx_fltr, ptr @dwmac4_del_hw_vlan_rx_fltr, ptr @dwmac4_restore_hw_vlan_rx_fltr, ptr null, ptr @dwmac4_sarc_configure, ptr @dwmac4_config_l3_filter, ptr @dwmac4_config_l4_filter, ptr @dwmac4_set_arp_offload, ptr @dwmac5_est_configure, ptr @dwmac5_est_irq_status, ptr @dwmac5_fpe_configure, ptr @dwmac5_fpe_send_mpacket, ptr @dwmac5_fpe_irq_status }, [52 x i8] zeroinitializer }, align 32
@dwmac510_ops = dso_local constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @dwmac4_core_init, ptr @stmmac_dwmac4_set_mac, ptr @dwmac4_rx_ipc_enable, ptr @dwmac4_rx_queue_enable, ptr @dwmac4_rx_queue_priority, ptr @dwmac4_tx_queue_priority, ptr @dwmac4_rx_queue_routing, ptr @dwmac4_prog_mtl_rx_algorithms, ptr @dwmac4_prog_mtl_tx_algorithms, ptr @dwmac4_set_mtl_tx_queue_weight, ptr @dwmac4_map_mtl_dma, ptr @dwmac4_config_cbs, ptr @dwmac4_dump_regs, ptr @dwmac4_irq_status, ptr @dwmac4_irq_mtl_status, ptr @dwmac4_set_filter, ptr @dwmac4_flow_ctrl, ptr @dwmac4_pmt, ptr @dwmac4_set_umac_addr, ptr @dwmac4_get_umac_addr, ptr @dwmac4_set_eee_mode, ptr @dwmac4_reset_eee_mode, ptr @dwmac4_set_eee_lpi_entry_timer, ptr @dwmac4_set_eee_timer, ptr @dwmac4_set_eee_pls, ptr @dwmac4_debug, ptr @dwmac4_ctrl_ane, ptr @dwmac4_rane, ptr @dwmac4_get_adv_lp, ptr @dwmac5_safety_feat_config, ptr @dwmac5_safety_feat_irq_status, ptr @dwmac5_safety_feat_dump, ptr @dwmac5_rxp_config, ptr @dwmac5_flex_pps_config, ptr @dwmac4_set_mac_loopback, ptr null, ptr @dwmac4_update_vlan_hash, ptr @dwmac4_enable_vlan, ptr @dwmac4_add_hw_vlan_rx_fltr, ptr @dwmac4_del_hw_vlan_rx_fltr, ptr @dwmac4_restore_hw_vlan_rx_fltr, ptr null, ptr @dwmac4_sarc_configure, ptr @dwmac4_config_l3_filter, ptr @dwmac4_config_l4_filter, ptr @dwmac4_set_arp_offload, ptr @dwmac5_est_configure, ptr @dwmac5_est_irq_status, ptr @dwmac5_fpe_configure, ptr @dwmac5_fpe_send_mpacket, ptr @dwmac5_fpe_irq_status }, [52 x i8] zeroinitializer }, align 32
@dwmac4_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09DWMAC4/5\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dwmac4_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwmac4_setup._entry_ptr = internal global ptr @dwmac4_setup._entry, section ".printk_index", align 4
@dwmac4_rx_queue_routing.route_possibilities = internal constant { [5 x %struct.stmmac_rx_routing], [56 x i8] } { [5 x %struct.stmmac_rx_routing] [%struct.stmmac_rx_routing { i32 7, i32 0 }, %struct.stmmac_rx_routing { i32 112, i32 4 }, %struct.stmmac_rx_routing { i32 1792, i32 8 }, %struct.stmmac_rx_routing { i32 28672, i32 12 }, %struct.stmmac_rx_routing { i32 458752, i32 16 }], [56 x i8] zeroinitializer }, align 32
@dwmac4_config_cbs.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmmac\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwmac4_config_cbs\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Queue %d configured as AVB. Parameters:\0A\00", [55 x i8] zeroinitializer }, align 32
@dwmac4_config_cbs.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09send_slope: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@dwmac4_config_cbs.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09idle_slope: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@dwmac4_config_cbs.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09high_credit: 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@dwmac4_config_cbs.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09low_credit: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@dwmac_pcs_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016stmmac_pcs: ANE process completed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwmac_pcs_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h\00", [47 x i8] zeroinitializer }, align 32
@dwmac_pcs_isr._entry_ptr = internal global ptr @dwmac_pcs_isr._entry, section ".printk_index", align 4
@dwmac_pcs_isr._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.14, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016stmmac_pcs: Link Up\0A\00", [41 x i8] zeroinitializer }, align 32
@dwmac_pcs_isr._entry_ptr.17 = internal global ptr @dwmac_pcs_isr._entry.15, section ".printk_index", align 4
@dwmac_pcs_isr._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.14, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016stmmac_pcs: Link Down\0A\00", [39 x i8] zeroinitializer }, align 32
@dwmac_pcs_isr._entry_ptr.20 = internal global ptr @dwmac_pcs_isr._entry.18, section ".printk_index", align 4
@dwmac4_phystatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Link is Up - %d/%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwmac4_phystatus\00", [47 x i8] zeroinitializer }, align 32
@dwmac4_phystatus._entry_ptr = internal global ptr @dwmac4_phystatus._entry, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@dwmac4_phystatus._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016Link is Down\0A\00", [16 x i8] zeroinitializer }, align 32
@dwmac4_phystatus._entry_ptr.27 = internal global ptr @dwmac4_phystatus._entry.25, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timeout accessing MAC_VLAN_Tag_Filter\0A\00", [57 x i8] zeroinitializer }, align 32
@dwmac4_flow_ctrl.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwmac4_flow_ctrl\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GMAC Flow-Control:\0A\00", [44 x i8] zeroinitializer }, align 32
@dwmac4_flow_ctrl.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09Receive Flow-Control ON\0A\00", [38 x i8] zeroinitializer }, align 32
@dwmac4_flow_ctrl.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09Transmit Flow-Control ON\0A\00", [37 x i8] zeroinitializer }, align 32
@dwmac4_flow_ctrl.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09duplex mode: PAUSE %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dwmac4_pmt.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwmac4_pmt\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GMAC: WOL Magic frame\0A\00", [41 x i8] zeroinitializer }, align 32
@dwmac4_pmt.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GMAC: WOL on global unicast\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Adding VLAN in promisc mode not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adding VLAN ID 0 is not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Only single VLAN ID supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MAC_VLAN_Tag_Filter full (size: %0u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Deleting VLAN in promisc mode not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.dwmac4_setup = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 8, i32 16, i32 24, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"dwmac4_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1171, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"dwmac410_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1213, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"dwmac510_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1261, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1348, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"route_possibilities\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 123, i32 40 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 240, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 241, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 242, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 243, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 244, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 65, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 71, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 73, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 810, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 814, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 462, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 741, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 743, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 749, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 752, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 307, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 311, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 480, i32 7 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 488, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 493, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 514, i32 19 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [53 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 535, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"switch.table.dwmac4_setup\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @dwmac4_phystatus._entry, ptr @dwmac4_phystatus._entry.25, ptr @dwmac4_phystatus._entry_ptr, ptr @dwmac4_phystatus._entry_ptr.27, ptr @dwmac4_setup._entry, ptr @dwmac4_setup._entry_ptr, ptr @dwmac_pcs_isr._entry, ptr @dwmac_pcs_isr._entry.15, ptr @dwmac_pcs_isr._entry.18, ptr @dwmac_pcs_isr._entry_ptr, ptr @dwmac_pcs_isr._entry_ptr.17, ptr @dwmac_pcs_isr._entry_ptr.20, ptr @dwmac4_ops, ptr @dwmac410_ops, ptr @dwmac510_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dwmac4_rx_queue_routing.route_possibilities, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.dwmac4_setup], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac410_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac510_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_rx_queue_routing.route_possibilities to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_pcs_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_pcs_isr._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_pcs_isr._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_phystatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_phystatus._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dwmac4_setup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_core_init(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %3 = or i32 %2, 8521472
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %ps = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 17
  %5 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %or2 = or i32 %4, 2
  %link = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link, align 4
  %and = and i32 %8, %or2
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.then.do.body_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb6
    i32 10, label %sw.bb9
  ]

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 3
  br label %do.body.sink.split

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %speed100 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 2
  br label %do.body.sink.split

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %speed10 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 1
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %sw.bb9, %sw.bb6, %sw.bb
  %speed10.sink = phi ptr [ %speed10, %sw.bb9 ], [ %speed100, %sw.bb6 ], [ %speed1000, %sw.bb ]
  %10 = ptrtoint ptr %speed10.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed10.sink, align 4
  %or11 = or i32 %11, %and
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %value.0 = phi i32 [ %and, %if.then.do.body_crit_edge ], [ %4, %entry.do.body_crit_edge ], [ %or11, %do.body.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %12) #6, !srcloc !102
  %pcs = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 15
  %13 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool13.not, i32 48, i32 55
  %add.ptr19 = getelementptr i8, ptr %1, i32 296
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %16 = shl i32 %15, 15
  %17 = and i32 %16, 131072
  %18 = or i32 %17, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %add.ptr31 = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %19) #6, !srcloc !102
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_rx_ipc_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %rx_csum = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 14
  %3 = ptrtoint ptr %rx_csum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_csum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = and i32 %2, -9
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 134217728
  %value.0 = or i32 %masksel, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %7) #6, !srcloc !102
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %9 = lshr i32 %8, 3
  %.lobit = and i32 %9, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_rx_queue_enable(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mode, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %mul = shl i32 %queue, 1
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %4 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %mode, label %entry.do.body_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then8
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl4 = shl nuw i32 1, %mul
  %or = or i32 %and, %shl4
  br label %do.body

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = or i32 %mul, 1
  %shl10 = shl nuw i32 1, %add
  %or11 = or i32 %and, %shl10
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.then, %entry.do.body_crit_edge
  %value.0 = phi i32 [ %or, %if.then ], [ %or11, %if.then8 ], [ %and, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_rx_queue_priority(ptr nocapture noundef readonly %hw, i32 noundef %prio, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %4 = shl i32 %queue, 3
  %5 = add i32 %4, -32
  %mul = select i1 %cmp1, i32 %5, i32 %4
  %shl.neg = shl nsw i32 -1, %mul
  %sub7 = sub i32 24, %mul
  %shr = lshr i32 -1, %sub7
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and9 = and i32 %3, %neg
  %shl11 = shl i32 %prio, %mul
  %and23 = and i32 %and, %shl11
  %or = or i32 %and9, %and23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_tx_queue_priority(ptr nocapture noundef readonly %hw, i32 noundef %prio, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %queue)
  %cmp1 = icmp ugt i32 %queue, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue)
  %cmp = icmp ult i32 %queue, 4
  %cond = select i1 %cmp, i32 152, i32 156
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %4 = shl i32 %queue, 3
  %5 = add i32 %4, -32
  %mul = select i1 %cmp1, i32 %5, i32 %4
  %shl.neg = shl nsw i32 -1, %mul
  %sub7 = sub i32 24, %mul
  %shr = lshr i32 -1, %sub7
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and9 = and i32 %3, %neg
  %shl11 = shl i32 %prio, %mul
  %and23 = and i32 %and, %shl11
  %or = or i32 %and9, %and23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_rx_queue_routing(ptr nocapture noundef readonly %hw, i8 noundef zeroext %packet, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %conv = zext i8 %packet to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [5 x %struct.stmmac_rx_routing], ptr @dwmac4_rx_queue_routing.route_possibilities, i32 0, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  %reg_shift = getelementptr [5 x %struct.stmmac_rx_routing], ptr @dwmac4_rx_queue_routing.route_possibilities, i32 0, i32 %sub, i32 1
  %6 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift, align 4
  %shl = shl i32 %queue, %7
  %and9 = and i32 %shl, %5
  %or = or i32 %and9, %and
  %8 = zext i8 %packet to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %packet, label %entry.do.body_crit_edge [
    i8 1, label %if.then
    i8 5, label %if.then17
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or13 = or i32 %or, 2097152
  br label %do.body

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or19 = or i32 %or, 1048576
  br label %do.body

do.body:                                          ; preds = %if.then17, %if.then, %entry.do.body_crit_edge
  %value.0 = phi i32 [ %or13, %if.then ], [ %or19, %if.then17 ], [ %or, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_prog_mtl_rx_algorithms(ptr nocapture noundef readonly %hw, i32 noundef %rx_alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %3 = and i32 %2, -67108865
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rx_alg)
  %cond = icmp eq i32 %rx_alg, 5
  %or3 = or i32 %4, 4
  %spec.select = select i1 %cond, i32 %or3, i32 %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_prog_mtl_tx_algorithms(ptr nocapture noundef readonly %hw, i32 noundef %tx_alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %3 = and i32 %2, -1610612737
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %tx_alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %tx_alg, label %entry.do.body_crit_edge [
    i32 3, label %sw.bb6
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or3 = or i32 %4, 32
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or5 = or i32 %4, 64
  br label %do.body

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or7 = or i32 %4, 96
  br label %do.body

do.body:                                          ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %entry.do.body_crit_edge
  %value.0 = phi i32 [ %or7, %sw.bb6 ], [ %or5, %sw.bb4 ], [ %or3, %sw.bb2 ], [ %4, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_mtl_tx_queue_weight(ptr nocapture noundef readonly %hw, i32 noundef %weight, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %mul = shl i32 %queue, 6
  %add = add i32 %mul, 3352
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %3 = and i32 %2, 57599
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and2 = and i32 %weight, 2097151
  %or = or i32 %4, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_map_mtl_dma(ptr nocapture noundef readonly %hw, i32 noundef %queue, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue)
  %cmp = icmp ult i32 %queue, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %1, i32 3120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr i8, ptr %1, i32 3124
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %value.0 = phi i32 [ %3, %if.then ], [ %5, %if.else ]
  %6 = zext i32 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %queue, label %if.else11 [
    i32 0, label %if.end.if.then10_crit_edge
    i32 4, label %if.end.if.then10_crit_edge48
  ]

if.end.if.then10_crit_edge48:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.if.then10_crit_edge48
  %and = and i32 %value.0, -16
  %or = or i32 %and, %chan
  br label %if.end23

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %queue, 3
  %shl12.neg = shl nsw i32 -1, %mul
  %sub13.neg = mul i32 %queue, -8
  %sub16 = add i32 %sub13.neg, 28
  %shr = lshr i32 -1, %sub16
  %and17 = and i32 %shr, %shl12.neg
  %neg = xor i32 %and17, -1
  %and19 = and i32 %value.0, %neg
  %shl21 = shl i32 %chan, %mul
  %or22 = or i32 %and19, %shl21
  br label %if.end23

if.end23:                                         ; preds = %if.else11, %if.then10
  %value.1 = phi i32 [ %or, %if.then10 ], [ %or22, %if.else11 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  br i1 %cmp, label %do.body, label %do.body28

do.body:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr26 = getelementptr i8, ptr %1, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %7) #6, !srcloc !102
  br label %if.end32

do.body28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31 = getelementptr i8, ptr %1, i32 3124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %7) #6, !srcloc !102
  br label %if.end32

if.end32:                                         ; preds = %do.body28, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_config_cbs(ptr nocapture noundef readonly %hw, i32 noundef %send_slope, i32 noundef %idle_slope, i32 noundef %high_credit, i32 noundef %low_credit, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_config_cbs, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_config_cbs.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.7, i32 noundef %queue) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_config_cbs, %if.then15)) #6
          to label %do.body19 [label %if.then15], !srcloc !124

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_config_cbs.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.8, i32 noundef %send_slope) #6
  br label %do.body19

do.body19:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_config_cbs, %if.then31)) #6
          to label %do.body35 [label %if.then31], !srcloc !124

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_config_cbs.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.9, i32 noundef %idle_slope) #6
  br label %do.body35

do.body35:                                        ; preds = %if.then31, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_config_cbs, %if.then47)) #6
          to label %do.body51 [label %if.then47], !srcloc !124

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_config_cbs.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.10, i32 noundef %high_credit) #6
  br label %do.body51

do.body51:                                        ; preds = %if.then47, %do.body35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_config_cbs, %if.then63)) #6
          to label %do.end66 [label %if.then63], !srcloc !124

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_config_cbs.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.11, i32 noundef %low_credit) #6
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.body51
  %mul = shl i32 %queue, 6
  %add = add i32 %mul, 3344
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %3 = or i32 %2, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !102
  %add80 = add i32 %mul, 3356
  %add.ptr81 = getelementptr i8, ptr %1, i32 %add80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %5 = and i32 %4, 12648447
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and85 = and i32 %send_slope, 16383
  %or86 = or i32 %6, %and85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or86)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %7) #6, !srcloc !102
  %8 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcsr, align 4
  %add.i = add i32 %mul, 3352
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %11 = and i32 %10, 57599
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %and2.i = and i32 %idle_slope, 2097151
  %or.i = or i32 %12, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !102
  %add96 = add i32 %mul, 3360
  %add.ptr97 = getelementptr i8, ptr %1, i32 %add96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #6, !srcloc !99
  %15 = shl i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %and101 = and i32 %15, -536870912
  %and102 = and i32 %high_credit, 536870911
  %or103 = or i32 %and101, %and102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or103)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %16) #6, !srcloc !102
  %add113 = add i32 %mul, 3364
  %add.ptr114 = getelementptr i8, ptr %1, i32 %add113
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #6, !srcloc !99
  %18 = shl i32 %17, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %and118 = and i32 %18, -536870912
  %and119 = and i32 %low_credit, 536870911
  %or120 = or i32 %and118, %and119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or120)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %19) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_dump_regs(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %reg_space) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %arrayidx = getelementptr i32, ptr %reg_space, i32 %i.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 132
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_irq_status(ptr nocapture noundef readonly %hw, ptr nocapture noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 176
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %add.ptr4 = getelementptr i8, ptr %1, i32 180
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  %4 = and i32 %3, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and8 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc_tx_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 48
  %6 = ptrtoint ptr %mmc_tx_irq_n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmc_tx_irq_n, align 64
  %inc = add i32 %7, 1
  store i32 %inc, ptr %mmc_tx_irq_n, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then13, !prof !136

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mmc_rx_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 49
  %8 = ptrtoint ptr %mmc_rx_irq_n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmc_rx_irq_n, align 4
  %inc14 = add i32 %9, 1
  store i32 %inc14, ptr %mmc_rx_irq_n, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %and16 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end26_crit_edge, label %if.then24, !prof !136

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %mmc_rx_csum_offload_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 50
  %10 = ptrtoint ptr %mmc_rx_csum_offload_irq_n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmc_rx_csum_offload_irq_n, align 8
  %inc25 = add i32 %11, 1
  store i32 %inc25, ptr %mmc_rx_csum_offload_irq_n, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end15.if.end26_crit_edge
  %and27 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end43_crit_edge, label %if.then35, !prof !136

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr38 = getelementptr i8, ptr %1, i32 192
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %irq_receive_pmt_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 47
  %13 = ptrtoint ptr %irq_receive_pmt_irq_n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_receive_pmt_irq_n, align 4
  %inc42 = add i32 %14, 1
  store i32 %inc42, ptr %irq_receive_pmt_irq_n, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end26.if.end43_crit_edge
  %and44 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end74_crit_edge, label %if.then46

if.end43.if.end74_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then46:                                        ; preds = %if.end43
  %add.ptr49 = getelementptr i8, ptr %1, i32 208
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #6, !srcloc !99
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %and53 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then46.if.end57_crit_edge, label %if.then55

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %irq_tx_path_in_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 51
  %17 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %inc56 = add i32 %18, 1
  store i32 %inc56, ptr %irq_tx_path_in_lpi_mode_n, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then46.if.end57_crit_edge
  %ret.0 = phi i32 [ 1, %if.then55 ], [ 0, %if.then46.if.end57_crit_edge ]
  %and58 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end63_crit_edge, label %if.then60

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %or61 = or i32 %ret.0, 2
  %irq_tx_path_exit_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 52
  %19 = ptrtoint ptr %irq_tx_path_exit_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_tx_path_exit_lpi_mode_n, align 16
  %inc62 = add i32 %20, 1
  store i32 %inc62, ptr %irq_tx_path_exit_lpi_mode_n, align 16
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end57.if.end63_crit_edge
  %ret.1 = phi i32 [ %or61, %if.then60 ], [ %ret.0, %if.end57.if.end63_crit_edge ]
  %and64 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.then66

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %irq_rx_path_in_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 53
  %21 = ptrtoint ptr %irq_rx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_rx_path_in_lpi_mode_n, align 4
  %inc67 = add i32 %22, 1
  store i32 %inc67, ptr %irq_rx_path_in_lpi_mode_n, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63.if.end68_crit_edge
  %and69 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end74_crit_edge, label %if.then71

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %irq_rx_path_exit_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 54
  %23 = ptrtoint ptr %irq_rx_path_exit_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_rx_path_exit_lpi_mode_n, align 8
  %inc72 = add i32 %24, 1
  store i32 %inc72, ptr %irq_rx_path_exit_lpi_mode_n, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68.if.end74_crit_edge, %if.end43.if.end74_crit_edge
  %ret.2 = phi i32 [ 0, %if.end43.if.end74_crit_edge ], [ %ret.1, %if.then71 ], [ %ret.1, %if.end68.if.end74_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 228
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end74.if.end7.i_crit_edge, label %if.then.i

if.end74.if.end7.i_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end74
  %irq_pcs_ane_n.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 81
  %27 = ptrtoint ptr %irq_pcs_ane_n.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_pcs_ane_n.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %irq_pcs_ane_n.i, align 4
  %and2.i = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end7.i_crit_edge, label %do.end.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.then.i.if.end7.i_crit_edge, %if.end74.if.end7.i_crit_edge
  %and8.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.dwmac_pcs_isr.exit_crit_edge, label %if.then10.i

if.end7.i.dwmac_pcs_isr.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac_pcs_isr.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_pcs_link_n.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 82
  %29 = ptrtoint ptr %irq_pcs_link_n.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_pcs_link_n.i, align 8
  %inc11.i = add i32 %30, 1
  store i32 %inc11.i, ptr %irq_pcs_link_n.i, align 8
  %and12.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %.str.19..str.16.i = select i1 %tobool13.not.i, ptr @.str.19, ptr @.str.16
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19..str.16.i) #9
  br label %dwmac_pcs_isr.exit

dwmac_pcs_isr.exit:                               ; preds = %if.then10.i, %if.end7.i.dwmac_pcs_isr.exit_crit_edge
  %and75 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %dwmac_pcs_isr.exit.if.end78_crit_edge, label %if.then77

dwmac_pcs_isr.exit.if.end78_crit_edge:            ; preds = %dwmac_pcs_isr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then77:                                        ; preds = %dwmac_pcs_isr.exit
  %add.ptr.i105 = getelementptr i8, ptr %1, i32 248
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #6, !srcloc !99
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %irq_rgmii_n.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 83
  %33 = ptrtoint ptr %irq_rgmii_n.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_rgmii_n.i, align 4
  %inc.i106 = add i32 %34, 1
  store i32 %inc.i106, ptr %irq_rgmii_n.i, align 4
  %and.i107 = and i32 %32, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  %pcs_link17.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 84
  br i1 %tobool.not.i108, label %if.else16.i, label %if.then.i110

if.then.i110:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %pcs_link17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %pcs_link17.i, align 16
  %and2.i109 = lshr i32 %32, 17
  %shr.i = and i32 %and2.i109, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %switch.selectcmp.i = icmp eq i32 %shr.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 100, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %switch.selectcmp35.i = icmp eq i32 %shr.i, 2
  %switch.select36.i = select i1 %switch.selectcmp35.i, i32 1000, i32 %switch.select.i
  %pcs_speed6.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 86
  %36 = ptrtoint ptr %pcs_speed6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %switch.select36.i, ptr %pcs_speed6.i, align 8
  %and10.i = and i32 %32, 1
  %pcs_duplex.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 85
  %37 = ptrtoint ptr %pcs_duplex.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and10.i, ptr %pcs_duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool14.not.i = icmp eq i32 %and10.i, 0
  %cond.i = select i1 %tobool14.not.i, ptr @.str.24, ptr @.str.23
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %switch.select36.i, ptr noundef nonnull %cond.i) #9
  br label %if.end78

if.else16.i:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %pcs_link17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pcs_link17.i, align 16
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %if.end78

if.end78:                                         ; preds = %if.else16.i, %if.then.i110, %dwmac_pcs_isr.exit.if.end78_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_irq_mtl_status(ptr nocapture noundef readonly %hw, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %shl = shl nuw i32 1, %chan
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %entry
  %mul = shl i32 %chan, 6
  %add4 = add i32 %mul, 3372
  %add.ptr5 = getelementptr i8, ptr %1, i32 %add4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %and9 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then.if.end16_crit_edge, label %do.body

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %or = or i32 %5, 65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #6, !srcloc !102
  br label %if.end16

if.end16:                                         ; preds = %do.body, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %ret.1 = phi i32 [ 0, %entry.if.end16_crit_edge ], [ 256, %do.body ], [ 0, %if.then.if.end16_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_filter(ptr nocapture noundef %hw, ptr noundef %dev) #0 align 64 {
entry:
  %mc_filter = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = inttoptr i32 %1 to ptr
  %multicast_filter_bins = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %multicast_filter_bins, align 4
  %shr = lshr i32 %4, 5
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 13
  %5 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcast_bits_log2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mc_filter) #6
  %7 = call ptr @memset(ptr %mc_filter, i32 0, i32 32)
  %add.ptr = getelementptr i8, ptr %2, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %9 = and i32 %8, 1794899839
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and7 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else19, label %if.then

if.then:                                          ; preds = %entry
  %vlan_fail_q_en = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 22
  %13 = ptrtoint ptr %vlan_fail_q_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vlan_fail_q_en, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.then.if.end86_crit_edge, label %if.then9

if.then.if.end86_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr12 = getelementptr i8, ptr %2, i32 148
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %16 = and i32 %15, -3585
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %vlan_fail_q = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 23
  %18 = ptrtoint ptr %vlan_fail_q to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vlan_fail_q, align 1
  %conv = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv, 17
  %or = or i32 %shl, %17
  %or17 = or i32 %or, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or17)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %20) #6, !srcloc !102
  br label %if.end86

if.else19:                                        ; preds = %entry
  %and21 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.else19.if.then25_crit_edge

if.else19.if.then25_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.else19
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count, align 8
  %23 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %multicast_filter_bins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp ugt i32 %22, %24
  br i1 %cmp, label %lor.lhs.false.if.then25_crit_edge, label %if.else28

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.else19.if.then25_crit_edge
  %or26 = or i32 %10, 16
  %25 = call ptr @memset(ptr %mc_filter, i32 255, i32 32)
  br label %if.end86

if.else28:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp31 = icmp eq i32 %22, 0
  %and34 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond = select i1 %cmp31, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %if.else28.if.end86_crit_edge, label %if.then36

if.else28.if.end86_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then36:                                        ; preds = %if.else28
  %or37 = or i32 %10, 4
  %26 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0246 = load ptr, ptr %mc, align 4
  %cmp44.not247 = icmp eq ptr %ha.0246, %mc
  br i1 %cmp44.not247, label %if.then36.if.end86_crit_edge, label %for.body.lr.ph

if.then36.if.end86_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

for.body.lr.ph:                                   ; preds = %if.then36
  %sub = sub i32 32, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.body.lr.ph
  %ha.0248 = phi ptr [ %ha.0246, %for.body.lr.ph ], [ %ha.0, %cond.end.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0248, i32 0, i32 2
  %call47 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #10
  %neg = xor i32 %call47, -1
  %27 = lshr i32 %neg, 8
  %conv4.i.i = and i32 %27, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %28 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %29 to i32
  %30 = shl nuw nsw i32 %conv6.i.i, 16
  %31 = and i32 %neg, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %33 to i32
  %34 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %30, %34
  %sum.shift.i = lshr i32 %neg, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %35 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %36 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %neg, 16
  %37 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %39 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %shr74 = lshr i32 %or.i, %sub
  %and75 = and i32 %shr74, 31
  %shl76 = shl nuw i32 1, %and75
  %shr77 = lshr i32 %shr74, 5
  %arrayidx = getelementptr [8 x i32], ptr %mc_filter, i32 0, i32 %shr77
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %or78 = or i32 %shl76, %41
  store i32 %or78, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %ha.0248 to i32
  call void @__asan_load4_noabort(i32 %42)
  %ha.0 = load ptr, ptr %ha.0248, align 4
  %cmp44.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp44.not, label %cond.end.if.end86_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.end.if.end86_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.end86:                                         ; preds = %cond.end.if.end86_crit_edge, %if.then36.if.end86_crit_edge, %if.else28.if.end86_crit_edge, %if.then25, %if.then9, %if.then.if.end86_crit_edge
  %value.0 = phi i32 [ -2147483647, %if.then9 ], [ %or26, %if.then25 ], [ %10, %if.else28.if.end86_crit_edge ], [ 129, %if.then.if.end86_crit_edge ], [ %or37, %if.then36.if.end86_crit_edge ], [ %or37, %cond.end.if.end86_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp88249.not = icmp ult i32 %4, 32
  br i1 %cmp88249.not, label %if.end86.for.end97_crit_edge, label %do.body91.preheader

if.end86.for.end97_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end97

do.body91.preheader:                              ; preds = %if.end86
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %do.body91

do.body91:                                        ; preds = %do.body91.do.body91_crit_edge, %do.body91.preheader
  %i.0250 = phi i32 [ %inc, %do.body91.do.body91_crit_edge ], [ 0, %do.body91.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %arrayidx94 = getelementptr [8 x i32], ptr %mc_filter, i32 0, i32 %i.0250
  %43 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx94, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %mul = shl i32 %i.0250, 2
  %add = add nuw nsw i32 %mul, 16
  %add.ptr95 = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %45) #6, !srcloc !102
  %inc = add nuw nsw i32 %i.0250, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body91.for.end97_crit_edge, label %do.body91.do.body91_crit_edge

do.body91.do.body91_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body91

do.body91.for.end97_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end97

for.end97:                                        ; preds = %do.body91.for.end97_crit_edge, %if.end86.for.end97_crit_edge
  %or98 = or i32 %value.0, 1024
  %uc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %count99 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %46 = ptrtoint ptr %count99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count99, align 8
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 12
  %48 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %unicast_filter_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp100 = icmp ugt i32 %47, %49
  br i1 %cmp100, label %if.then102, label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %for.end97
  %50 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %50)
  %ha105.0251 = load ptr, ptr %uc, align 4
  %cmp116.not252 = icmp eq ptr %ha105.0251, %uc
  br i1 %cmp116.not252, label %for.cond112.preheader.do.body132.preheader_crit_edge, label %for.body119.lr.ph

for.cond112.preheader.do.body132.preheader_crit_edge: ; preds = %for.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body132.preheader

for.body119.lr.ph:                                ; preds = %for.cond112.preheader
  %pcsr.i = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  br label %for.body119

if.then102:                                       ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #8
  %or103 = or i32 %value.0, 1025
  br label %if.end145

while.cond.preheader:                             ; preds = %for.body119
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc122)
  %cmp130255 = icmp slt i32 %inc122, 128
  br i1 %cmp130255, label %while.cond.preheader.do.body132.preheader_crit_edge, label %while.cond.preheader.if.end145_crit_edge

while.cond.preheader.if.end145_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

while.cond.preheader.do.body132.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body132.preheader

do.body132.preheader:                             ; preds = %while.cond.preheader.do.body132.preheader_crit_edge, %for.cond112.preheader.do.body132.preheader_crit_edge
  %reg.1256.ph = phi i32 [ 1, %for.cond112.preheader.do.body132.preheader_crit_edge ], [ %inc122, %while.cond.preheader.do.body132.preheader_crit_edge ]
  br label %do.body132

for.body119:                                      ; preds = %for.body119.for.body119_crit_edge, %for.body119.lr.ph
  %ha105.0254 = phi ptr [ %ha105.0251, %for.body119.lr.ph ], [ %ha105.0, %for.body119.for.body119_crit_edge ]
  %reg.0253 = phi i32 [ 1, %for.body119.lr.ph ], [ %inc122, %for.body119.for.body119_crit_edge ]
  %addr120 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha105.0254, i32 0, i32 2
  %51 = ptrtoint ptr %pcsr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcsr.i, align 4
  %mul.i = shl i32 %reg.0253, 3
  %add.i = add i32 %mul.i, 768
  %add2.i = add i32 %mul.i, 772
  tail call void @stmmac_dwmac4_set_mac_addr(ptr noundef %52, ptr noundef %addr120, i32 noundef %add.i, i32 noundef %add2.i) #6
  %inc122 = add i32 %reg.0253, 1
  %53 = ptrtoint ptr %ha105.0254 to i32
  call void @__asan_load4_noabort(i32 %53)
  %ha105.0 = load ptr, ptr %ha105.0254, align 4
  %cmp116.not = icmp eq ptr %ha105.0, %uc
  br i1 %cmp116.not, label %while.cond.preheader, label %for.body119.for.body119_crit_edge

for.body119.for.body119_crit_edge:                ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body119

do.body132:                                       ; preds = %do.body132.do.body132_crit_edge, %do.body132.preheader
  %reg.1256 = phi i32 [ %inc144, %do.body132.do.body132_crit_edge ], [ %reg.1256.ph, %do.body132.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %mul135 = shl i32 %reg.1256, 3
  %add136 = add i32 %mul135, 768
  %add.ptr137 = getelementptr i8, ptr %2, i32 %add136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 0) #6, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %add142 = add i32 %mul135, 772
  %add.ptr143 = getelementptr i8, ptr %2, i32 %add142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 0) #6, !srcloc !102
  %inc144 = add i32 %reg.1256, 1
  %exitcond257.not = icmp eq i32 %inc144, 128
  br i1 %exitcond257.not, label %do.body132.if.end145_crit_edge, label %do.body132.do.body132_crit_edge

do.body132.do.body132_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body132

do.body132.if.end145_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.end145:                                        ; preds = %do.body132.if.end145_crit_edge, %while.cond.preheader.if.end145_crit_edge, %if.then102
  %value.1 = phi i32 [ %or103, %if.then102 ], [ %or98, %while.cond.preheader.if.end145_crit_edge ], [ %or98, %do.body132.if.end145_crit_edge ]
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %54 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %features, align 16
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 7
  %58 = and i32 %57, 65536
  %59 = or i32 %58, %value.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %60) #6, !srcloc !102
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 8
  %and156 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end145.if.else166_crit_edge, label %land.lhs.true158

if.end145.if.else166_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else166

land.lhs.true158:                                 ; preds = %if.end145
  %vlan_fail_q_en159 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 22
  %63 = ptrtoint ptr %vlan_fail_q_en159 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %vlan_fail_q_en159, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool160.not = icmp eq i8 %64, 0
  br i1 %tobool160.not, label %if.then161, label %land.lhs.true158.if.else166_crit_edge

land.lhs.true158.if.else166_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else166

if.then161:                                       ; preds = %land.lhs.true158
  %promisc = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 21
  %65 = ptrtoint ptr %promisc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool162.not = icmp eq i32 %66, 0
  br i1 %tobool162.not, label %if.then163, label %if.then161.if.end172_crit_edge

if.then161.if.end172_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then163:                                       ; preds = %if.then161
  %67 = ptrtoint ptr %promisc to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %promisc, align 4
  %pcsr.i245 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %68 = ptrtoint ptr %pcsr.i245 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcsr.i245, align 4
  %num_vlan.i = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 19
  %70 = ptrtoint ptr %num_vlan.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_vlan.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %71, label %if.then163.for.body.i_crit_edge [
    i32 1, label %if.then.i
    i32 0, label %if.then163.for.end.i_crit_edge
  ]

if.then163.for.end.i_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then163.for.body.i_crit_edge:                  ; preds = %if.then163
  br label %for.body.i

if.then.i:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base_addr, align 32
  %75 = inttoptr i32 %74 to ptr
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 80
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  %77 = and i32 %76, 65279
  %78 = or i32 %77, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %78) #6, !srcloc !102
  br label %if.end172

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then163.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then163.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mac_device_info, ptr %hw, i32 0, i32 20, i32 %i.045.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %80, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i = and i32 %80, -65537
  %conv.i = trunc i32 %i.045.i to i8
  %call.i = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %dev, ptr noundef %hw, i8 noundef zeroext %conv.i, i32 noundef %and6.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.045.i, 1
  %81 = ptrtoint ptr %num_vlan.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_vlan.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %82
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then163.for.end.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %69, i32 88
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %83)
  %tobool11.not.i = icmp ult i32 %83, 65536
  br i1 %tobool11.not.i, label %for.end.i.if.end172_crit_edge, label %if.then12.i

for.end.i.if.end172_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then12.i:                                      ; preds = %for.end.i
  %add.ptr15.i = getelementptr i8, ptr %69, i32 80
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #6, !srcloc !99
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %and19.i = and i32 %85, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then12.i.if.end172_crit_edge, label %if.then21.i

if.then12.i.if.end172_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then21.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %and22.i = and i32 %85, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %86 = tail call i32 @llvm.bswap.i32(i32 %and22.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %86) #6, !srcloc !102
  br label %if.end172

if.else166:                                       ; preds = %land.lhs.true158.if.else166_crit_edge, %if.end145.if.else166_crit_edge
  %promisc167 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 21
  %87 = ptrtoint ptr %promisc167 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %promisc167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool168.not = icmp eq i32 %88, 0
  br i1 %tobool168.not, label %if.else166.if.end172_crit_edge, label %if.then169

if.else166.if.end172_crit_edge:                   ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then169:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %promisc167 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %promisc167, align 4
  tail call void @dwmac4_restore_hw_vlan_rx_fltr(ptr noundef %dev, ptr noundef %hw)
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.else166.if.end172_crit_edge, %if.then21.i, %if.then12.i.if.end172_crit_edge, %for.end.i.if.end172_crit_edge, %if.then.i, %if.then161.if.end172_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mc_filter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_flow_ctrl(ptr nocapture noundef readonly %hw, i32 noundef %duplex, i32 noundef %fc, i32 noundef %pause_time, i32 noundef %tx_cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_flow_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.30) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end.do.body22_crit_edge, label %do.body5

do.end.do.body22_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_flow_ctrl, %if.then17)) #6
          to label %do.body22 [label %if.then17], !srcloc !124

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.31) #6
  br label %do.body22

do.body22:                                        ; preds = %if.then17, %do.body5, %do.end.do.body22_crit_edge
  %flow.0 = phi i32 [ 0, %do.end.do.body22_crit_edge ], [ 16777216, %if.then17 ], [ 16777216, %do.body5 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %flow.0) #6, !srcloc !102
  %and25 = and i32 %fc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.cond71.preheader, label %do.body28

for.cond71.preheader:                             ; preds = %do.body22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_cnt)
  %cmp72114.not = icmp eq i32 %tx_cnt, 0
  br i1 %cmp72114.not, label %for.cond71.preheader.if.end83_crit_edge, label %for.cond71.preheader.do.body74_crit_edge

for.cond71.preheader.do.body74_crit_edge:         ; preds = %for.cond71.preheader
  br label %do.body74

for.cond71.preheader.if.end83_crit_edge:          ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.body28:                                        ; preds = %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_flow_ctrl, %if.then40)) #6
          to label %do.end43 [label %if.then40], !srcloc !124

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.32) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %tobool44.not = icmp eq i32 %duplex, 0
  br i1 %tobool44.not, label %do.end43.if.end62_crit_edge, label %do.body46

do.end43.if.end62_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.body46:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_flow_ctrl, %if.then58)) #6
          to label %if.end62 [label %if.then58], !srcloc !124

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.33, i32 noundef %pause_time) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %do.body46, %do.end43.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_cnt)
  %cmp112.not = icmp eq i32 %tx_cnt, 0
  br i1 %cmp112.not, label %if.end62.if.end83_crit_edge, label %for.body.lr.ph

if.end62.if.end83_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

for.body.lr.ph:                                   ; preds = %if.end62
  %shl = shl i32 %pause_time, 16
  %or65 = or i32 %shl, 2
  %flow.1 = select i1 %tobool44.not, i32 2, i32 %or65
  %2 = tail call i32 @llvm.bswap.i32(i32 %flow.1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %queue.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %mul = shl i32 %queue.0113, 2
  %add = add i32 %mul, 112
  %add.ptr70 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %2) #6, !srcloc !102
  %inc = add nuw i32 %queue.0113, 1
  %exitcond.not = icmp eq i32 %inc, %tx_cnt
  br i1 %exitcond.not, label %for.body.if.end83_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end83_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.body74:                                        ; preds = %do.body74.do.body74_crit_edge, %for.cond71.preheader.do.body74_crit_edge
  %queue.1115 = phi i32 [ %inc81, %do.body74.do.body74_crit_edge ], [ 0, %for.cond71.preheader.do.body74_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %mul77 = shl i32 %queue.1115, 2
  %add78 = add i32 %mul77, 112
  %add.ptr79 = getelementptr i8, ptr %1, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 0) #6, !srcloc !102
  %inc81 = add nuw i32 %queue.1115, 1
  %exitcond117.not = icmp eq i32 %inc81, %tx_cnt
  br i1 %exitcond117.not, label %do.body74.if.end83_crit_edge, label %do.body74.do.body74_crit_edge

do.body74.do.body74_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body74

do.body74.if.end83_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.end83:                                         ; preds = %do.body74.if.end83_crit_edge, %for.body.if.end83_crit_edge, %if.end62.if.end83_crit_edge, %for.cond71.preheader.if.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_pmt(ptr nocapture noundef readonly %hw, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %and = and i32 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.thread, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_pmt.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_pmt, %if.then4)) #6
          to label %if.end5 [label %if.then4], !srcloc !124

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_pmt.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.35) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body
  %and6 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.then28_crit_edge, label %if.end5.do.body9_crit_edge

if.end5.do.body9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

if.end5.if.then28_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end5.thread:                                   ; preds = %entry
  %and659 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and659)
  %tobool7.not60 = icmp eq i32 %and659, 0
  br i1 %tobool7.not60, label %if.end5.thread.do.body38_crit_edge, label %if.end5.thread.do.body9_crit_edge

if.end5.thread.do.body9_crit_edge:                ; preds = %if.end5.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

if.end5.thread.do.body38_crit_edge:               ; preds = %if.end5.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

do.body9:                                         ; preds = %if.end5.thread.do.body9_crit_edge, %if.end5.do.body9_crit_edge
  %pmt.061 = phi i32 [ 517, %if.end5.thread.do.body9_crit_edge ], [ 519, %if.end5.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac4_pmt.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac4_pmt, %if.then21)) #6
          to label %if.then28 [label %if.then21], !srcloc !124

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac4_pmt.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.36) #6
  br label %if.then28

if.then28:                                        ; preds = %if.then21, %do.body9, %if.end5.if.then28_crit_edge
  %pmt.156 = phi i32 [ 3, %if.end5.if.then28_crit_edge ], [ %pmt.061, %if.then21 ], [ %pmt.061, %do.body9 ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #6, !srcloc !102
  br label %do.body38

do.body38:                                        ; preds = %if.then28, %if.end5.thread.do.body38_crit_edge
  %pmt.157 = phi i32 [ %pmt.156, %if.then28 ], [ 0, %if.end5.thread.do.body38_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %pmt.157)
  %add.ptr41 = getelementptr i8, ptr %1, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %4) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %mul = shl i32 %reg_n, 3
  %add = add i32 %mul, 768
  %add2 = add i32 %mul, 772
  tail call void @stmmac_dwmac4_set_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef %add, i32 noundef %add2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_get_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %mul = shl i32 %reg_n, 3
  %add = add i32 %mul, 768
  %add2 = add i32 %mul, 772
  tail call void @stmmac_dwmac4_get_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef %add, i32 noundef %add2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %en_tx_lpi_clockgating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %3 = or i32 %2, 2304
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or2 = or i32 %4, 2097152
  %spec.select = select i1 %en_tx_lpi_clockgating, i32 %or2, i32 %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_reset_eee_mode(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  %3 = and i32 %2, -2305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_lpi_entry_timer(ptr nocapture noundef readonly %hw, i32 noundef %et) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %and = and i32 %et, 1048575
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr = getelementptr i8, ptr %1, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !102
  %add.ptr1 = getelementptr i8, ptr %1, i32 208
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %et)
  %tobool.not = icmp eq i32 %et, 0
  %4 = and i32 %3, -6401
  %5 = or i32 %4, 2304
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 1048576
  %regval.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %regval.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %7) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_timer(ptr nocapture noundef readonly %hw, i32 noundef %ls, i32 noundef %tw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %and = and i32 %tw, 65535
  %and1 = shl i32 %ls, 16
  %shl = and i32 %and1, 67043328
  %or = or i32 %and, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr = getelementptr i8, ptr %1, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_pls(ptr nocapture noundef readonly %hw, i32 noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %tobool.not = icmp eq i32 %link, 0
  %3 = and i32 %2, -513
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 131072
  %value.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_debug(ptr noundef %ioaddr, ptr nocapture noundef %x, i32 noundef %rx_queues, i32 noundef %tx_queues) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_queues)
  %cmp201.not = icmp eq i32 %tx_queues, 0
  br i1 %cmp201.not, label %entry.for.cond39.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond39.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond39.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mtl_tx_status_fifo_full = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 87
  %mtl_tx_fifo_not_empty = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 88
  %mmtl_fifo_ctrl = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 89
  %mtl_tx_fifo_read_ctrl_read = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 92
  %mtl_tx_fifo_read_ctrl_wait = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 91
  %mtl_tx_fifo_read_ctrl_write = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 90
  %mac_tx_in_pause = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 94
  br label %for.body

for.cond39.preheader:                             ; preds = %for.inc.for.cond39.preheader_crit_edge, %entry.for.cond39.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_queues)
  %cmp40203.not = icmp eq i32 %rx_queues, 0
  br i1 %cmp40203.not, label %for.cond39.preheader.for.end102_crit_edge, label %for.body41.lr.ph

for.cond39.preheader.for.end102_crit_edge:        ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end102

for.body41.lr.ph:                                 ; preds = %for.cond39.preheader
  %mtl_rx_fifo_fill_level_empty = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 103
  %mtl_rx_fifo_read_ctrl_status = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 106
  %mtl_rx_fifo_read_ctrl_read_data = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 105
  %mtl_rx_fifo_read_ctrl_flush = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 104
  %mtl_rx_fifo_ctrl_active = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 108
  br label %for.body41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %queue.0202, 6
  %add1 = add i32 %mul, 3336
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %mtl_tx_status_fifo_full to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtl_tx_status_fifo_full, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %mtl_tx_status_fifo_full, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %and3 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %mtl_tx_fifo_not_empty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtl_tx_fifo_not_empty, align 32
  %inc6 = add i32 %5, 1
  store i32 %inc6, ptr %mtl_tx_fifo_not_empty, align 32
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %and8 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mmtl_fifo_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmtl_fifo_ctrl, align 4
  %inc11 = add i32 %7, 1
  store i32 %inc11, ptr %mmtl_fifo_ctrl, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %and13 = and i32 %1, 6
  %8 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %and13, label %if.end12.unreachabledefault [
    i32 0, label %if.end12.if.end32_crit_edge
    i32 6, label %if.then18
    i32 4, label %if.then21
    i32 2, label %if.then25
  ]

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mtl_tx_fifo_read_ctrl_write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtl_tx_fifo_read_ctrl_write, align 8
  %inc19 = add i32 %10, 1
  store i32 %inc19, ptr %mtl_tx_fifo_read_ctrl_write, align 8
  br label %if.end32

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %mtl_tx_fifo_read_ctrl_wait to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtl_tx_fifo_read_ctrl_wait, align 4
  %inc22 = add i32 %12, 1
  store i32 %inc22, ptr %mtl_tx_fifo_read_ctrl_wait, align 4
  br label %if.end32

if.then25:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %mtl_tx_fifo_read_ctrl_read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtl_tx_fifo_read_ctrl_read, align 16
  %inc26 = add i32 %14, 1
  store i32 %inc26, ptr %mtl_tx_fifo_read_ctrl_read, align 16
  br label %if.end32

if.end12.unreachabledefault:                      ; preds = %if.end12
  unreachable

if.end32:                                         ; preds = %if.then25, %if.then21, %if.then18, %if.end12.if.end32_crit_edge
  %and33 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.for.inc_crit_edge, label %if.then35

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %mac_tx_in_pause to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac_tx_in_pause, align 8
  %inc36 = add i32 %16, 1
  store i32 %inc36, ptr %mac_tx_in_pause, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %if.end32.for.inc_crit_edge
  %inc38 = add nuw i32 %queue.0202, 1
  %exitcond.not = icmp eq i32 %inc38, %tx_queues
  br i1 %exitcond.not, label %for.inc.for.cond39.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.cond39.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond39.preheader

for.body41:                                       ; preds = %for.inc100.for.body41_crit_edge, %for.body41.lr.ph
  %queue.1204 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc101, %for.inc100.for.body41_crit_edge ]
  %mul44 = shl i32 %queue.1204, 6
  %add46 = add i32 %mul44, 3384
  %add.ptr47 = getelementptr i8, ptr %ioaddr, i32 %add46
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !99
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %and51 = and i32 %18, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.body41.if.end72_crit_edge, label %if.else67

for.body41.if.end72_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.else67:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %mtl_rx_fifo_fill_level_empty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtl_rx_fifo_fill_level_empty, align 4
  %inc68 = add i32 %20, 1
  store i32 %inc68, ptr %mtl_rx_fifo_fill_level_empty, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %for.body41.if.end72_crit_edge
  %and73 = and i32 %18, 6
  %21 = zext i32 %and73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and73, label %if.end72.unreachabledefault [
    i32 0, label %if.end72.if.end94_crit_edge
    i32 6, label %if.then79
    i32 4, label %if.then83
    i32 2, label %if.then87
  ]

if.end72.if.end94_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %mtl_rx_fifo_read_ctrl_flush to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtl_rx_fifo_read_ctrl_flush, align 32
  %inc80 = add i32 %23, 1
  store i32 %inc80, ptr %mtl_rx_fifo_read_ctrl_flush, align 32
  br label %if.end94

if.then83:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %mtl_rx_fifo_read_ctrl_read_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtl_rx_fifo_read_ctrl_read_data, align 4
  %inc84 = add i32 %25, 1
  store i32 %inc84, ptr %mtl_rx_fifo_read_ctrl_read_data, align 4
  br label %if.end94

if.then87:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %mtl_rx_fifo_read_ctrl_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mtl_rx_fifo_read_ctrl_status, align 8
  %inc88 = add i32 %27, 1
  store i32 %inc88, ptr %mtl_rx_fifo_read_ctrl_status, align 8
  br label %if.end94

if.end72.unreachabledefault:                      ; preds = %if.end72
  unreachable

if.end94:                                         ; preds = %if.then87, %if.then83, %if.then79, %if.end72.if.end94_crit_edge
  %and95 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.for.inc100_crit_edge, label %if.then97

if.end94.for.inc100_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc100

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %mtl_rx_fifo_ctrl_active to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtl_rx_fifo_ctrl_active, align 16
  %inc98 = add i32 %29, 1
  store i32 %inc98, ptr %mtl_rx_fifo_ctrl_active, align 16
  br label %for.inc100

for.inc100:                                       ; preds = %if.then97, %if.end94.for.inc100_crit_edge
  %inc101 = add nuw i32 %queue.1204, 1
  %exitcond205.not = icmp eq i32 %inc101, %rx_queues
  br i1 %exitcond205.not, label %for.inc100.for.end102_crit_edge, label %for.inc100.for.body41_crit_edge

for.inc100.for.body41_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41

for.inc100.for.end102_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end102

for.end102:                                       ; preds = %for.inc100.for.end102_crit_edge, %for.cond39.preheader.for.end102_crit_edge
  %add.ptr105 = getelementptr i8, ptr %ioaddr, i32 276
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #6, !srcloc !99
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  %and109 = lshr i32 %31, 17
  %32 = and i32 %and109, 3
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %32, label %for.end102.unreachabledefault [
    i32 0, label %for.end102.if.end130_crit_edge
    i32 3, label %if.then115
    i32 2, label %if.then119
    i32 1, label %if.then123
  ]

for.end102.if.end130_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.then115:                                       ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #8
  %mac_tx_frame_ctrl_xfer = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 95
  %34 = ptrtoint ptr %mac_tx_frame_ctrl_xfer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mac_tx_frame_ctrl_xfer, align 4
  %inc116 = add i32 %35, 1
  store i32 %inc116, ptr %mac_tx_frame_ctrl_xfer, align 4
  br label %if.end130

if.then119:                                       ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #8
  %mac_tx_frame_ctrl_pause = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 98
  %36 = ptrtoint ptr %mac_tx_frame_ctrl_pause to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mac_tx_frame_ctrl_pause, align 8
  %inc120 = add i32 %37, 1
  store i32 %inc120, ptr %mac_tx_frame_ctrl_pause, align 8
  br label %if.end130

if.then123:                                       ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #8
  %mac_tx_frame_ctrl_wait = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 97
  %38 = ptrtoint ptr %mac_tx_frame_ctrl_wait to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mac_tx_frame_ctrl_wait, align 4
  %inc124 = add i32 %39, 1
  store i32 %inc124, ptr %mac_tx_frame_ctrl_wait, align 4
  br label %if.end130

for.end102.unreachabledefault:                    ; preds = %for.end102
  unreachable

if.end130:                                        ; preds = %if.then123, %if.then119, %if.then115, %for.end102.if.end130_crit_edge
  %and131 = and i32 %31, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end135_crit_edge, label %if.then133

if.end130.if.end135_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %mac_gmii_tx_proto_engine = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 99
  %40 = ptrtoint ptr %mac_gmii_tx_proto_engine to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mac_gmii_tx_proto_engine, align 4
  %inc134 = add i32 %41, 1
  store i32 %inc134, ptr %mac_gmii_tx_proto_engine, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end130.if.end135_crit_edge
  %and136 = and i32 %31, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end141_crit_edge, label %if.then138

if.end135.if.end141_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %shr140 = lshr exact i32 %and136, 1
  %mac_rx_frame_ctrl_fifo = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 109
  %42 = ptrtoint ptr %mac_rx_frame_ctrl_fifo to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr140, ptr %mac_rx_frame_ctrl_fifo, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end135.if.end141_crit_edge
  %and142 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end146_crit_edge, label %if.then144

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  %mac_gmii_rx_proto_engine = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 110
  %43 = ptrtoint ptr %mac_gmii_rx_proto_engine to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mac_gmii_rx_proto_engine, align 8
  %inc145 = add i32 %44, 1
  store i32 %inc145, ptr %mac_gmii_rx_proto_engine, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end141.if.end146_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_ctrl_ane(ptr noundef %ioaddr, i1 noundef zeroext %ane, i1 noundef zeroext %srgmi_ral, i1 noundef zeroext %loopback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 224
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %or.i = or i32 %1, 4608
  %spec.select.i = select i1 %ane, i32 %or.i, i32 %1
  %or6.i = or i32 %spec.select.i, 262144
  %value.1.i = select i1 %srgmi_ral, i32 %or6.i, i32 %spec.select.i
  %or10.i = or i32 %value.1.i, 16384
  %value.2.i = select i1 %loopback, i32 %or10.i, i32 %value.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_rane(ptr noundef %ioaddr, i1 noundef zeroext %restart) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 224
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  %or.i = or i32 %1, 512
  %spec.select.i = select i1 %restart, i32 %or.i, i32 %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_get_adv_lp(ptr noundef %ioaddr, ptr nocapture noundef writeonly %adv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 232
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %duplex.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 1
  %2 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %duplex.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and7.i = lshr i32 %1, 7
  %shr.i = and i32 %and7.i, 3
  %3 = ptrtoint ptr %adv to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i, ptr %adv, align 4
  %add.ptr11.i = getelementptr i8, ptr %ioaddr, i32 236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %and15.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then17.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %lp_duplex.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 3
  %6 = ptrtoint ptr %lp_duplex.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %lp_duplex.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end.i.if.end18.i_crit_edge
  %and19.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.dwmac_get_adv_lp.exit_crit_edge, label %if.then21.i

if.end18.i.dwmac_get_adv_lp.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac_get_adv_lp.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %lp_duplex22.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 3
  %7 = ptrtoint ptr %lp_duplex22.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %lp_duplex22.i, align 4
  br label %dwmac_get_adv_lp.exit

dwmac_get_adv_lp.exit:                            ; preds = %if.then21.i, %if.end18.i.dwmac_get_adv_lp.exit_crit_edge
  %and24.i = lshr i32 %5, 7
  %shr25.i = and i32 %and24.i, 3
  %lp_pause.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 2
  %8 = ptrtoint ptr %lp_pause.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr25.i, ptr %lp_pause.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_mac_loopback(ptr noundef %ioaddr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  %1 = and i32 %0, -1048577
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %enable, i32 4096, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_update_vlan_hash(ptr nocapture noundef readonly %hw, i32 noundef %hash, i16 noundef zeroext %perfect_match, i1 noundef zeroext %is_double) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %hash)
  %add.ptr = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !102
  %add.ptr1 = getelementptr i8, ptr %1, i32 80
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !99
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash)
  %tobool.not = icmp eq i32 %hash, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.v = select i1 %is_double, i32 102039552, i32 33619968
  %spec.select = or i32 %4, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %5) #6, !srcloc !102
  br label %if.end35

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %perfect_match)
  %tobool12.not = icmp eq i16 %perfect_match, 0
  br i1 %tobool12.not, label %if.else26, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select55 = select i1 %is_double, i32 68485120, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %conv = zext i16 %perfect_match to i32
  %or24 = or i32 %spec.select55, %conv
  %6 = tail call i32 @llvm.bswap.i32(i32 %or24)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #6, !srcloc !102
  br label %if.end35

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and29 = and i32 %4, -102105088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %and29)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %7) #6, !srcloc !102
  br label %if.end35

if.end35:                                         ; preds = %if.else26, %if.then13, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_enable_vlan(ptr nocapture noundef readonly %hw, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  %3 = and i32 %2, -6913
  %4 = or i32 %3, 6144
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %shl = shl i32 %type, 16
  %and3 = and i32 %shl, 196608
  %or4 = or i32 %5, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_add_hw_vlan_rx_fltr(ptr noundef %dev, ptr nocapture noundef %hw, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vid)
  %cmp = icmp ugt i16 %vid, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %promisc = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 21
  %0 = ptrtoint ptr %promisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_vlan = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 19
  %2 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then6, label %if.end18

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp8 = icmp eq i16 %vid, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %vlan_filter = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 20
  %4 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vlan_filter, align 4
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %vlan_filter, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr.i, align 32
  %9 = inttoptr i32 %8 to ptr
  %add.ptr.i = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  %11 = and i32 %10, 65535
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %or.i = or i32 %12, %conv
  %or2.i = or i32 %or.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !102
  br label %cleanup

if.end18:                                         ; preds = %if.end3
  %or = or i32 %conv, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2280.not = icmp eq i32 %3, 0
  br i1 %cmp2280.not, label %if.end18.if.then38_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.if.then38_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

for.body:                                         ; preds = %if.else.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %if.else.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %index.081 = phi i32 [ %spec.select, %if.else.for.body_crit_edge ], [ -1, %if.end18.for.body_crit_edge ]
  %arrayidx25 = getelementptr %struct.mac_device_info, ptr %hw, i32 0, i32 20, i32 %i.082
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or)
  %cmp26 = icmp eq i32 %15, %or
  br i1 %cmp26, label %for.body.cleanup_crit_edge, label %if.else

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %for.body
  %and31 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %spec.select = select i1 %tobool32.not, i32 %i.082, i32 %index.081
  %inc = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp36 = icmp eq i32 %spec.select, -1
  br i1 %cmp36, label %for.end.if.then38_crit_edge, label %if.end40

for.end.if.then38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.then38:                                        ; preds = %for.end.if.then38_crit_edge, %if.end18.if.then38_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %3) #9
  br label %cleanup

if.end40:                                         ; preds = %for.end
  %conv41 = trunc i32 %spec.select to i8
  %call = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %dev, ptr noundef %hw, i8 noundef zeroext %conv41, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool42.not = icmp eq i32 %call, 0
  br i1 %tobool42.not, label %if.then43, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx45 = getelementptr %struct.mac_device_info, ptr %hw, i32 0, i32 20, i32 %spec.select
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %arrayidx45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end40.cleanup_crit_edge, %if.then38, %for.body.cleanup_crit_edge, %if.end14, %if.then13, %if.then10, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -1, %if.then10 ], [ -1, %if.then13 ], [ 0, %if.end14 ], [ -1, %if.then38 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then43 ], [ %call, %if.end40.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_del_hw_vlan_rx_fltr(ptr noundef %dev, ptr nocapture noundef %hw, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %promisc = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 21
  %0 = ptrtoint ptr %promisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vlan = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 19
  %2 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then1, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1043.not = icmp eq i32 %5, 0
  br i1 %cmp1043.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %vlan_filter = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 20
  %6 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vlan_filter, align 4
  %8 = trunc i32 %7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %vid)
  %cmp2 = icmp eq i16 %8, %vid
  br i1 %cmp2, label %if.then4, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %vlan_filter, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr.i, align 32
  %12 = inttoptr i32 %11 to ptr
  %add.ptr.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  %14 = and i32 %13, 65279
  %15 = or i32 %14, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #6, !srcloc !102
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.mac_device_info, ptr %hw, i32 0, i32 20, i32 %i.044
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %18 = trunc i32 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %vid)
  %cmp16 = icmp eq i16 %18, %vid
  br i1 %cmp16, label %if.then18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then18:                                        ; preds = %for.body
  %conv19 = trunc i32 %i.044 to i8
  %call = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %dev, ptr noundef %hw, i8 noundef zeroext %conv19, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.then21, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.044, 1
  %20 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_vlan, align 4
  %cmp10 = icmp ult i32 %inc, %21
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then4, %if.then1.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then4 ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call, %if.then18.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_restore_hw_vlan_rx_fltr(ptr noundef %dev, ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %num_vlan = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 19
  %2 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp242.not = icmp eq i32 %5, 0
  br i1 %cmp242.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_filter = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 20
  %6 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vlan_filter, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr.i, align 32
  %10 = inttoptr i32 %9 to ptr
  %add.ptr.i = getelementptr i8, ptr %10, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  %12 = and i32 %11, 65535
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %conv.i = and i32 %7, 65535
  %or.i = or i32 %conv.i, %13
  %or2.i = or i32 %or.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !102
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.mac_device_info, ptr %hw, i32 0, i32 20, i32 %i.043
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  %and = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv9 = trunc i32 %i.043 to i8
  %call = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %dev, ptr noundef %hw, i8 noundef zeroext %conv9, i32 noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.043, 1
  %17 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_vlan, align 4
  %cmp2 = icmp ult i32 %inc, %18
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 88
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %19)
  %tobool14.not = icmp ult i32 %19, 65536
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.then15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr18 = getelementptr i8, ptr %1, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  %21 = or i32 %20, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %21) #6, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_sarc_configure(ptr noundef %ioaddr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  %1 = and i32 %0, -113
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl i32 %val, 28
  %or = or i32 %2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #6, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_config_l3_filter(ptr nocapture noundef readonly %hw, i32 noundef %filter_no, i1 noundef zeroext %en, i1 noundef zeroext %ipv6, i1 noundef zeroext %sa, i1 noundef zeroext %inv, i32 noundef %match) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  %3 = or i32 %2, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !102
  %mul = mul i32 %filter_no, 48
  %add = add i32 %mul, 2304
  %add.ptr8 = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  br i1 %ipv6, label %if.then, label %if.else26

if.then:                                          ; preds = %entry
  %or12 = and i32 %5, -62
  br i1 %sa, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.v = select i1 %inv, i32 13, i32 5
  %spec.select = or i32 %or12, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #6, !srcloc !102
  br label %do.body51

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select104.v = select i1 %inv, i32 49, i32 17
  %spec.select104 = or i32 %or12, %spec.select104.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.select104)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #6, !srcloc !102
  br label %do.body58

if.else26:                                        ; preds = %entry
  %and27 = and i32 %5, -2
  br i1 %sa, label %if.then29, label %if.else35

if.then29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select105.v = select i1 %inv, i32 12, i32 4
  %spec.select105 = or i32 %and27, %spec.select105.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select105)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #6, !srcloc !102
  br label %do.body51

if.else35:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select106.v = select i1 %inv, i32 48, i32 16
  %spec.select106 = or i32 %and27, %spec.select106.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select106)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #6, !srcloc !102
  br label %do.body58

do.body51:                                        ; preds = %if.then29, %if.then15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %match)
  %add55 = add i32 %mul, 2320
  %add.ptr56 = getelementptr i8, ptr %1, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %10) #6, !srcloc !102
  br label %if.end64

do.body58:                                        ; preds = %if.else35, %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %match)
  %add62 = add i32 %mul, 2324
  %add.ptr63 = getelementptr i8, ptr %1, i32 %add62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %11) #6, !srcloc !102
  br label %if.end64

if.end64:                                         ; preds = %do.body58, %do.body51
  br i1 %en, label %if.end64.if.end73_crit_edge, label %do.body67

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.body67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !102
  br label %if.end73

if.end73:                                         ; preds = %do.body67, %if.end64.if.end73_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_config_l4_filter(ptr nocapture noundef readonly %hw, i32 noundef %filter_no, i1 noundef zeroext %en, i1 noundef zeroext %udp, i1 noundef zeroext %sa, i1 noundef zeroext %inv, i32 noundef %match) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  %3 = or i32 %2, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !102
  %mul = mul i32 %filter_no, 48
  %add = add i32 %mul, 2304
  %add.ptr8 = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %masksel = select i1 %udp, i32 65536, i32 0
  %5 = and i32 %4, -15617
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and14 = or i32 %6, %masksel
  br i1 %sa, label %if.then16, label %if.else22

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.v = select i1 %inv, i32 786432, i32 262144
  %spec.select = or i32 %and14, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #6, !srcloc !102
  %and37 = and i32 %match, 65535
  br label %do.body41

if.else22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select78.v = select i1 %inv, i32 3145728, i32 1048576
  %spec.select78 = or i32 %and14, %spec.select78.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select78)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #6, !srcloc !102
  %shl = shl i32 %match, 16
  br label %do.body41

do.body41:                                        ; preds = %if.else22, %if.then16
  %value.2 = phi i32 [ %and37, %if.then16 ], [ %shl, %if.else22 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %value.2)
  %add45 = add i32 %mul, 2308
  %add.ptr46 = getelementptr i8, ptr %1, i32 %add45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %9) #6, !srcloc !102
  br i1 %en, label %do.body41.if.end55_crit_edge, label %do.body49

do.body41.if.end55_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.body49:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !102
  br label %if.end55

if.end55:                                         ; preds = %do.body49, %do.body41.if.end55_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_set_arp_offload(ptr nocapture noundef readonly %hw, i1 noundef zeroext %en, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %add.ptr = getelementptr i8, ptr %1, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !102
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  %4 = and i32 %3, -129
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %en, i32 -2147483648, i32 0
  %value.0 = or i32 %5, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #6, !srcloc !102
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_dwmac4_set_mac(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_flex_pps_config(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_est_configure(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac5_est_irq_status(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac5_fpe_configure(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac5_fpe_send_mpacket(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_fpe_irq_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_safety_feat_config(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_safety_feat_irq_status(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_safety_feat_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_rxp_config(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac4_setup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str) #9
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
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #6
  %sub.i = xor i32 %20, 31
  %storemerge = select i1 %tobool.not, i32 0, i32 %sub.i
  %21 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %mcast_bits_log2, align 4
  %link = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9
  %duplex = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 5
  %22 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8192, ptr %duplex, align 4
  %speed10 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32768, ptr %speed10, align 4
  %speed100 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %speed100 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 49152, ptr %speed100, align 4
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %speed1000 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %speed1000, align 4
  %speed2500 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %speed2500 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16384, ptr %speed2500, align 4
  %27 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 49152, ptr %link, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 512, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 516, ptr %data, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %addr_shift to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 21, ptr %addr_shift, align 4
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 4
  %31 = ptrtoint ptr %addr_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65011712, ptr %addr_mask, align 4
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %reg_shift, align 4
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 5
  %33 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2031616, ptr %reg_mask, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 6
  %34 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %clk_csr_shift, align 4
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 7
  %35 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3840, ptr %clk_csr_mask, align 4
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 32
  %add.ptr.i = getelementptr i8, ptr %37, i32 296
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  %39 = lshr i32 %38, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %and.i = and i32 %39, 7
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %40 = icmp ult i32 %switch.tableidx, 5
  br i1 %40, label %switch.lookup, label %entry.dwmac4_get_num_vlan.exit_crit_edge

entry.dwmac4_get_num_vlan.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac4_get_num_vlan.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dwmac4_setup, i32 0, i32 %switch.tableidx
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dwmac4_get_num_vlan.exit

dwmac4_get_num_vlan.exit:                         ; preds = %switch.lookup, %entry.dwmac4_get_num_vlan.exit_crit_edge
  %num_vlan.0.i = phi i32 [ 1, %entry.dwmac4_get_num_vlan.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %num_vlan = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %num_vlan to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %num_vlan.0.i, ptr %num_vlan, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %dev, ptr nocapture noundef readonly %hw, i8 noundef zeroext %index, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %index to i32
  %num_vlan = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 19
  %0 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vlan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ugt i32 %1, %conv
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %4 = inttoptr i32 %3 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %data)
  %add.ptr = getelementptr i8, ptr %4, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !102
  %add.ptr2 = getelementptr i8, ptr %4, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  %7 = and i32 %6, -2130706433
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl = shl nuw nsw i32 %conv, 2
  %or = or i32 %shl, 1
  %or5 = or i32 %8, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #6, !srcloc !102
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end20

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1 = icmp eq i32 %14, 0
  br i1 %tobool.not.1, label %if.end20.cleanup_crit_edge, label %if.end20.1

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.1:                                       ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2 = icmp eq i32 %17, 0
  br i1 %tobool.not.2, label %if.end20.1.cleanup_crit_edge, label %if.end20.2

if.end20.1.cleanup_crit_edge:                     ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.2:                                       ; preds = %if.end20.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.3 = icmp eq i32 %20, 0
  br i1 %tobool.not.3, label %if.end20.2.cleanup_crit_edge, label %if.end20.3

if.end20.2.cleanup_crit_edge:                     ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.3:                                       ; preds = %if.end20.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.4 = icmp eq i32 %23, 0
  br i1 %tobool.not.4, label %if.end20.3.cleanup_crit_edge, label %if.end20.4

if.end20.3.cleanup_crit_edge:                     ; preds = %if.end20.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.4:                                       ; preds = %if.end20.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #6
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.5 = icmp eq i32 %26, 0
  br i1 %tobool.not.5, label %if.end20.4.cleanup_crit_edge, label %if.end20.5

if.end20.4.cleanup_crit_edge:                     ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.5:                                       ; preds = %if.end20.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #6
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.6 = icmp eq i32 %29, 0
  br i1 %tobool.not.6, label %if.end20.5.cleanup_crit_edge, label %if.end20.6

if.end20.5.cleanup_crit_edge:                     ; preds = %if.end20.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.6:                                       ; preds = %if.end20.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.7 = icmp eq i32 %32, 0
  br i1 %tobool.not.7, label %if.end20.6.cleanup_crit_edge, label %if.end20.7

if.end20.6.cleanup_crit_edge:                     ; preds = %if.end20.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.7:                                       ; preds = %if.end20.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #6
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.8 = icmp eq i32 %35, 0
  br i1 %tobool.not.8, label %if.end20.7.cleanup_crit_edge, label %if.end20.8

if.end20.7.cleanup_crit_edge:                     ; preds = %if.end20.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.8:                                       ; preds = %if.end20.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #6
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.9 = icmp eq i32 %38, 0
  br i1 %tobool.not.9, label %if.end20.8.cleanup_crit_edge, label %if.end20.9

if.end20.8.cleanup_crit_edge:                     ; preds = %if.end20.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.9:                                       ; preds = %if.end20.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20.9, %if.end20.8.cleanup_crit_edge, %if.end20.7.cleanup_crit_edge, %if.end20.6.cleanup_crit_edge, %if.end20.5.cleanup_crit_edge, %if.end20.4.cleanup_crit_edge, %if.end20.3.cleanup_crit_edge, %if.end20.2.cleanup_crit_edge, %if.end20.1.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end20.9 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end20.8.cleanup_crit_edge ], [ 0, %if.end20.7.cleanup_crit_edge ], [ 0, %if.end20.6.cleanup_crit_edge ], [ 0, %if.end20.5.cleanup_crit_edge ], [ 0, %if.end20.4.cleanup_crit_edge ], [ 0, %if.end20.3.cleanup_crit_edge ], [ 0, %if.end20.2.cleanup_crit_edge ], [ 0, %if.end20.1.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_dwmac4_set_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_dwmac4_get_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @dwmac4_ops, !1, !"dwmac4_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 1171, i32 25}
!2 = !{ptr @dwmac410_ops, !3, !"dwmac410_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 1213, i32 25}
!4 = !{ptr @dwmac510_ops, !5, !"dwmac510_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 1261, i32 25}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 1348, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dwmac4_setup._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @dwmac4_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @dwmac4_rx_queue_routing.route_possibilities, !15, !"route_possibilities", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 123, i32 40}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 240, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug499, !17, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 241, i32 2}
!23 = !{ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug500, !22, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 242, i32 2}
!26 = !{ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug501, !25, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 243, i32 2}
!29 = !{ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug502, !28, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 244, i32 2}
!32 = !{ptr @dwmac4_config_cbs.__UNIQUE_ID_ddebug503, !31, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h", i32 65, i32 4}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dwmac_pcs_isr._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @dwmac_pcs_isr._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h", i32 71, i32 4}
!41 = !{ptr @dwmac_pcs_isr._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dwmac_pcs_isr._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h", i32 73, i32 4}
!45 = !{ptr @dwmac_pcs_isr._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @dwmac_pcs_isr._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 810, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dwmac4_phystatus._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dwmac4_phystatus._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 814, i32 3}
!56 = !{ptr @dwmac4_phystatus._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dwmac4_phystatus._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 462, i32 18}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 741, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug506, !61, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 743, i32 3}
!66 = !{ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug507, !65, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 749, i32 3}
!69 = !{ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug508, !68, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 752, i32 4}
!72 = !{ptr @dwmac4_flow_ctrl.__UNIQUE_ID_ddebug509, !71, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 307, i32 3}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @dwmac4_pmt.__UNIQUE_ID_ddebug504, !74, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 311, i32 3}
!79 = !{ptr @dwmac4_pmt.__UNIQUE_ID_ddebug505, !78, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 480, i32 7}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 488, i32 21}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 493, i32 20}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 514, i32 19}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c", i32 535, i32 7}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 6258889}
!100 = !{i64 2158841890}
!101 = !{i64 2158842728}
!102 = !{i64 6258471}
!103 = !{i64 2158844011}
!104 = !{i64 2158844324}
!105 = !{i64 2158887450}
!106 = !{i64 2158887847}
!107 = !{i64 2158888535}
!108 = !{i64 2158845012}
!109 = !{i64 2158846181}
!110 = !{i64 2158846892}
!111 = !{i64 2158849125}
!112 = !{i64 2158849827}
!113 = !{i64 2158852060}
!114 = !{i64 2158856178}
!115 = !{i64 2158856581}
!116 = !{i64 2158857269}
!117 = !{i64 2158857610}
!118 = !{i64 2158858298}
!119 = !{i64 2158859261}
!120 = !{i64 2158860159}
!121 = !{i64 2158861868}
!122 = !{i64 2158862588}
!123 = !{i64 2158863093}
!124 = !{i64 2148242460, i64 2148242465, i64 2148242478, i64 2148242522, i64 2148242556, i64 2148242577}
!125 = !{i64 2158877862}
!126 = !{i64 2158878365}
!127 = !{i64 2158879296}
!128 = !{i64 2158881006}
!129 = !{i64 2158881929}
!130 = !{i64 2158883631}
!131 = !{i64 2158884552}
!132 = !{i64 2158886252}
!133 = !{i64 2158886945}
!134 = !{i64 2158942763}
!135 = !{i64 2158943268}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2158943939}
!138 = !{i64 2158944414}
!139 = !{i64 2158804341}
!140 = !{i64 2158936005}
!141 = !{i64 2158940437}
!142 = !{i64 2158941288}
!143 = !{i64 2158941859}
!144 = !{i64 2158912433}
!145 = !{i8 0, i8 2}
!146 = !{i64 2158913446}
!147 = !{i64 2158914454}
!148 = !{i64 2158919581}
!149 = !{i64 2158923700}
!150 = !{i64 2158924121}
!151 = !{i64 2158924795}
!152 = !{i64 2158900361}
!153 = !{i64 2158901355}
!154 = !{i64 2158907887}
!155 = !{i64 2158909075}
!156 = !{i64 2158909472}
!157 = !{i64 2158929773}
!158 = !{i64 2158934857}
!159 = !{i64 2158935288}
!160 = !{i64 2158893658}
!161 = !{i64 2158893970}
!162 = !{i64 2158894383}
!163 = !{i64 2158895131}
!164 = !{i64 2158895600}
!165 = !{i64 2158896252}
!166 = !{i64 2158896637}
!167 = !{i64 2158898076}
!168 = !{i64 2158898728}
!169 = !{i64 2158899282}
!170 = !{i64 2158899679}
!171 = !{i64 2158897289}
!172 = !{i64 2158897674}
!173 = !{i64 2158945615}
!174 = !{i64 2158948066}
!175 = !{i64 2158951365}
!176 = !{i64 2158815194}
!177 = !{i64 2158815751}
!178 = !{i64 2158814050}
!179 = !{i64 2158814355}
!180 = !{i64 2158816616}
!181 = !{i64 2158817982}
!182 = !{i64 2158954779}
!183 = !{i64 2158955176}
!184 = !{i64 2158955587}
!185 = !{i64 2158956272}
!186 = !{i64 2158956921}
!187 = !{i64 2158957685}
!188 = !{i64 2158959248}
!189 = !{i64 2158961548}
!190 = !{i64 2158963332}
!191 = !{i64 2158910244}
!192 = !{i64 2158911432}
!193 = !{i64 2158911745}
!194 = !{i64 2158959936}
!195 = !{i64 2158960860}
!196 = !{i64 2158965513}
!197 = !{i64 2158965826}
!198 = !{i64 2158966616}
!199 = !{i64 2158968035}
!200 = !{i64 2158968509}
!201 = !{i64 2158968983}
!202 = !{i64 2158969453}
!203 = !{i64 2158970149}
!204 = !{i64 2158970462}
!205 = !{i64 2158971252}
!206 = !{i64 2158972363}
!207 = !{i64 2158974215}
!208 = !{i64 2158974685}
!209 = !{i64 2158963743}
!210 = !{i64 2158964428}
!211 = !{i64 2158964825}
!212 = !{i64 2158975381}
!213 = !{i64 2158901763}
!214 = !{i64 2158902448}
!215 = !{i64 2158903597}
!216 = !{i64 2158904279}
