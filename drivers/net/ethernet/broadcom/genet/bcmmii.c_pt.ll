; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/genet/bcmmii.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/genet/bcmmii.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcmgenet_hw_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.unimac_mdio_pdata = type { i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_platform_data = type { i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bcmgenet_priv = type { ptr, i32, ptr, ptr, ptr, i32, [17 x %struct.bcmgenet_tx_ring], ptr, ptr, i32, i32, [16 x %struct.bcmgenet_rxnfc_rule], %struct.list_head, [17 x %struct.bcmgenet_rx_ring], ptr, i8, %struct.wait_queue_head, i8, ptr, ptr, ptr, i16, ptr, i8, i32, i32, i32, i8, %struct.work_struct, i32, i32, i32, i8, %struct.spinlock, i32, i8, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x i8], i8, %struct.bcmgenet_mib_counters, %struct.ethtool_eee }
%struct.bcmgenet_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bcmgenet_rxnfc_rule = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i32 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.bcmgenet_rx_ring = type { %struct.napi_struct, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.bcmgenet_net_dim, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcmgenet_mib_counters = type { %struct.bcmgenet_rx_counters, %struct.bcmgenet_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_rx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_tx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"internal PHY\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MoCA\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"external MII\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"external RvMII\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"external RGMII (no delay)\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"external RGMII (TX delay)\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"external RGMII (RX delay)\00", [38 x i8] zeroinitializer }, align 32
@bcmgenet_mii_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 259, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown phy mode: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcmgenet_mii_config\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/broadcom/genet/bcmmii.c\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcmgenet_mii_config._entry_ptr = internal global ptr @bcmgenet_mii_config._entry, section ".printk_index", align 4
@bcmgenet_mii_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 283, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"configuring instance for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcmgenet_mii_config._entry_ptr.15 = internal global ptr @bcmgenet_mii_config._entry.12, section ".printk_index", align 4
@bcmgenet_mii_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013could not attach to PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcmgenet_mii_probe\00", [45 x i8] zeroinitializer }, align 32
@bcmgenet_mii_probe._entry_ptr = internal global ptr @bcmgenet_mii_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unimac-mdio\00", [20 x i8] zeroinitializer }, align 32
@bcmgenet_mii_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.9, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Unable to find mii\0A\00", [42 x i8] zeroinitializer }, align 32
@bcmgenet_mii_probe._entry_ptr.22 = internal global ptr @bcmgenet_mii_probe._entry.20, section ".printk_index", align 4
@bcmgenet_mii_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.9, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Unable to find PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@bcmgenet_mii_probe._entry_ptr.25 = internal global ptr @bcmgenet_mii_probe._entry.23, section ".printk_index", align 4
@bcmgenet_mii_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcmgenet_mii_probe._entry_ptr.27 = internal global ptr @bcmgenet_mii_probe._entry.26, section ".printk_index", align 4
@bcmgenet_mii_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 459, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcmgenet_mii_register\00", [42 x i8] zeroinitializer }, align 32
@bcmgenet_mii_register._entry_ptr = internal global ptr @bcmgenet_mii_register._entry, section ".printk_index", align 4
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcmgenet MII bus\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm,genet-mdio-v%d\00", [44 x i8] zeroinitializer }, align 32
@bcmgenet_mii_of_find_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 412, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to find MDIO bus node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcmgenet_mii_of_find_mdio\00", [38 x i8] zeroinitializer }, align 32
@bcmgenet_mii_of_find_mdio._entry_ptr = internal global ptr @bcmgenet_mii_of_find_mdio._entry, section ".printk_index", align 4
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@bcmgenet_phy_interface_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.9, i32 519, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid PHY mode property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcmgenet_phy_interface_init\00", [36 x i8] zeroinitializer }, align 32
@bcmgenet_phy_interface_init._entry_ptr = internal global ptr @bcmgenet_phy_interface_init._entry, section ".printk_index", align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@bcmgenet_mii_pd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.9, i32 593, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register PHY device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcmgenet_mii_pd_init\00", [43 x i8] zeroinitializer }, align 32
@bcmgenet_mii_pd_init._entry_ptr = internal global ptr @bcmgenet_mii_pd_init._entry, section ".printk_index", align 4
@bcmgenet_mii_pd_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.9, i32 611, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register fixed PHY device\0A\00", [59 x i8] zeroinitializer }, align 32
@bcmgenet_mii_pd_init._entry_ptr.43 = internal global ptr @bcmgenet_mii_pd_init._entry.41, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 6, i64 9, i64 11, i64 12, i64 17]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 12]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 17]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 198, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 212, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 218, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 224, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 243, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 250, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 255, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 259, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 283, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 341, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 349, i32 43 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 350, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 354, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 360, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 371, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 459, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 467, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 477, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 405, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 412, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 543, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 519, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 585, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 593, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [48 x i8] c"../drivers/net/ethernet/broadcom/genet/bcmmii.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 611, i32 4 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @bcmgenet_mii_config._entry, ptr @bcmgenet_mii_config._entry.12, ptr @bcmgenet_mii_config._entry_ptr, ptr @bcmgenet_mii_config._entry_ptr.15, ptr @bcmgenet_mii_of_find_mdio._entry, ptr @bcmgenet_mii_of_find_mdio._entry_ptr, ptr @bcmgenet_mii_pd_init._entry, ptr @bcmgenet_mii_pd_init._entry.41, ptr @bcmgenet_mii_pd_init._entry_ptr, ptr @bcmgenet_mii_pd_init._entry_ptr.43, ptr @bcmgenet_mii_probe._entry, ptr @bcmgenet_mii_probe._entry.20, ptr @bcmgenet_mii_probe._entry.23, ptr @bcmgenet_mii_probe._entry.26, ptr @bcmgenet_mii_probe._entry_ptr, ptr @bcmgenet_mii_probe._entry_ptr.22, ptr @bcmgenet_mii_probe._entry_ptr.25, ptr @bcmgenet_mii_probe._entry_ptr.27, ptr @bcmgenet_mii_register._entry, ptr @bcmgenet_mii_register._entry_ptr, ptr @bcmgenet_phy_interface_init._entry, ptr @bcmgenet_phy_interface_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_of_find_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_phy_interface_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_pd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_mii_pd_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcmgenet_mii_setup(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @bcmgenet_mac_config(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @phy_print_status(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_mac_config(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %tx_pause = alloca i8, align 1
  %rx_pause = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 100
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %3)
  %switch.selectcmp84 = icmp eq i32 %3, 1000
  %switch.select85 = select i1 %switch.selectcmp84, i32 8, i32 %switch.select
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7.not = icmp eq i32 %5, 1
  br i1 %cmp7.not, label %if.else9, label %if.then8

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %switch.select85, 268436736
  br label %if.end44

if.else9:                                         ; preds = %entry
  %autoneg_pause = getelementptr i8, ptr %dev, i32 18492
  %6 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %autoneg_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else9.if.end25_crit_edge, label %if.then10

if.else9.if.end25_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then10:                                        ; preds = %if.else9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_pause) #6
  %7 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tx_pause, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_pause) #6
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rx_pause, align 1
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load11 = load i16, ptr %autoneg, align 8
  %10 = and i16 %bf.load11, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool14.not = icmp eq i16 %10, 0
  br i1 %tobool14.not, label %if.then10.if.end16_crit_edge, label %if.then15

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  call void @phy_get_pause(ptr noundef %1, ptr noundef nonnull %tx_pause, ptr noundef nonnull %rx_pause) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then10.if.end16_crit_edge
  %11 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_pause, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  %or19 = or i32 %switch.select85, 268435456
  %spec.select = select i1 %tobool17.not, i32 %or19, i32 %switch.select85
  %13 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx_pause, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  %or23 = or i32 %spec.select, 256
  %cmd_bits.2 = select i1 %tobool21.not, i32 %or23, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_pause) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_pause) #6
  br label %if.end25

if.end25:                                         ; preds = %if.end16, %if.else9.if.end25_crit_edge
  %cmd_bits.3 = phi i32 [ %cmd_bits.2, %if.end16 ], [ %switch.select85, %if.else9.if.end25_crit_edge ]
  %15 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load27 = load i8, ptr %autoneg_pause, align 4
  %16 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  %or33 = or i32 %cmd_bits.3, 256
  %spec.select83 = select i1 %tobool31.not, i32 %or33, i32 %cmd_bits.3
  %17 = and i8 %bf.load27, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  %or42 = or i32 %spec.select83, 268435456
  %spec.select86 = select i1 %tobool40.not, i32 %or42, i32 %spec.select83
  br label %if.end44

if.end44:                                         ; preds = %if.end25, %if.then8
  %cmd_bits.5 = phi i32 [ %or, %if.then8 ], [ %spec.select86, %if.end25 ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %19, i32 140
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !91
  %21 = and i32 %20, -805306369
  %22 = or i32 %21, 268435456
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i89 = getelementptr i8, ptr %24, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i89, i32 %22) #6, !srcloc !92
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i91 = getelementptr i8, ptr %26, i32 2056
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i91) #6, !srcloc !91
  %28 = and i32 %27, -201654289
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %or49 = or i32 %29, %cmd_bits.5
  %and50 = and i32 %or49, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end44.if.end55_crit_edge, label %if.then52

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %and53 = and i32 %or49, -8193
  %30 = call i32 @llvm.bswap.i32(i32 %and53) #6
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i92 = getelementptr i8, ptr %32, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i92, i32 %30) #6, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 429496) #6
  %or54 = or i32 %and53, 3
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end44.if.end55_crit_edge
  %reg.0 = phi i32 [ %or54, %if.then52 ], [ %or49, %if.end44.if.end55_crit_edge ]
  %34 = call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i93 = getelementptr i8, ptr %36, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i93, i32 %34) #6, !srcloc !92
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcmgenet_phy_pause_set(ptr nocapture noundef readonly %dev, i1 noundef zeroext %rx, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev2, align 16
  %advertising = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %advertising, align 4
  %and.i.i.i = and i32 %3, -24577
  %masksel26 = select i1 %rx, i32 8192, i32 0
  %storemerge.i = or i32 %and.i.i.i, %masksel26
  %or18 = or i1 %rx, %tx
  %masksel = select i1 %or18, i32 16384, i32 0
  %storemerge.i24 = or i32 %storemerge.i, %masksel
  store i32 %storemerge.i24, ptr %advertising, align 4
  %call = tail call i32 @phy_start_aneg(ptr noundef %1) #6
  %lock = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  br i1 %tobool9.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @bcmgenet_mac_config(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcmgenet_phy_power_set(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %version = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ephy_16nm = getelementptr i8, ptr %dev, i32 18588
  %2 = ptrtoint ptr %ephy_16nm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ephy_16nm, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 156
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !91
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  br i1 %enable, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %7, -17
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i27 = getelementptr i8, ptr %10, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i27, i32 %8) #6, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  %and4 = and i32 %7, -60
  %or = or i32 %and4, 32
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i29 = getelementptr i8, ptr %14, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29, i32 %12) #6, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or6 = or i32 %7, 43
  %16 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i31 = getelementptr i8, ptr %18, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31, i32 %16) #6, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  %or7 = or i32 %7, 59
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %reg.0 = phi i32 [ %and4, %if.then3 ], [ %or7, %if.else ]
  %20 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i33 = getelementptr i8, ptr %22, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i33, i32 %20) #6, !srcloc !92
  br label %if.end9

if.end9:                                          ; preds = %if.end, %lor.lhs.false.if.end9_crit_edge
  %.sink = phi i32 [ 12884880, %if.end ], [ 214748000, %lor.lhs.false.if.end9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef %.sink) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_mii_config(ptr nocapture noundef %dev, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %pdev = getelementptr i8, ptr %dev, i32 18716
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %phy_interface = getelementptr i8, ptr %dev, i32 18576
  %4 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_interface, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 1, label %sw.bb3
    i32 17, label %if.then4
    i32 2, label %sw.bb6
    i32 6, label %sw.bb8
    i32 9, label %entry.sw.epilog_crit_edge
    i32 12, label %sw.bb16
    i32 11, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %version = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  %. = zext i1 %cmp to i32
  br label %sw.epilog

if.then4:                                         ; preds = %entry
  %version80 = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %version80 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp81 = icmp eq i32 %10, 4
  %.82 = zext i1 %cmp81 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp.i = icmp eq i32 %10, 5
  br i1 %cmp.i, label %if.then4.if.end.i_crit_edge, label %if.then.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #6, !srcloc !91
  %14 = or i32 %13, 131072
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i9.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i9.i, i32 %14) #6, !srcloc !92
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then4.if.end.i_crit_edge
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %17 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_params.i, align 8
  %flags.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then1.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 145
  %23 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phydev.i, align 16
  %call2.i = tail call i32 @fixed_phy_set_link_update(ptr noundef %24, ptr noundef nonnull @bcmgenet_fixed_phy_link_update) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @phy_set_max_speed(ptr noundef %1, i32 noundef 100) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %supported = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %supported, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool11.not = icmp eq i32 %27, 0
  %.73 = select i1 %tobool11.not, i32 20, i32 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %5) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb16, %sw.bb8, %sw.bb6, %if.then1.i, %if.end.i.sw.epilog_crit_edge, %sw.bb3, %entry.sw.epilog_crit_edge
  %phy_name.1 = phi ptr [ @.str.6, %sw.bb17 ], [ @.str.5, %sw.bb16 ], [ @.str.2, %sw.bb6 ], [ @.str, %sw.bb3 ], [ @.str.3, %sw.bb8 ], [ @.str.4, %entry.sw.epilog_crit_edge ], [ @.str.1, %if.end.i.sw.epilog_crit_edge ], [ @.str.1, %if.then1.i ]
  %id_mode_dis.0 = phi i32 [ 0, %sw.bb17 ], [ 0, %sw.bb16 ], [ 0, %sw.bb6 ], [ 0, %sw.bb3 ], [ 0, %sw.bb8 ], [ 65536, %entry.sw.epilog_crit_edge ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ 0, %if.then1.i ]
  %port_ctrl.1 = phi i32 [ 3, %sw.bb17 ], [ 3, %sw.bb16 ], [ 2, %sw.bb6 ], [ %., %sw.bb3 ], [ %.73, %sw.bb8 ], [ 3, %entry.sw.epilog_crit_edge ], [ %.82, %if.end.i.sw.epilog_crit_edge ], [ %.82, %if.then1.i ]
  %28 = shl nuw nsw i32 %port_ctrl.1, 24
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %28) #6, !srcloc !92
  %internal_phy = getelementptr i8, ptr %dev, i32 18548
  %31 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %internal_phy, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool19.not = icmp eq i8 %32, 0
  br i1 %tobool19.not, label %land.rhs, label %if.end38.critedge

land.rhs:                                         ; preds = %sw.epilog
  %33 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phy_interface, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %34)
  %cmp21 = icmp ne i32 %34, 17
  %land.ext = zext i1 %cmp21 to i32
  %ext_phy = getelementptr i8, ptr %dev, i32 18584
  %35 = ptrtoint ptr %ext_phy to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %land.ext, ptr %ext_phy, align 8
  br i1 %cmp21, label %if.then24, label %land.rhs.if.end38_crit_edge

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i75 = getelementptr i8, ptr %37, i32 140
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i75) #6, !srcloc !91
  %39 = and i32 %38, -257
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %or = or i32 %40, %id_mode_dis.0
  %version26 = getelementptr i8, ptr %dev, i32 2308
  %41 = ptrtoint ptr %version26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %version26, align 4
  %.off = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %reg.0.v = select i1 %switch, i32 1, i32 64
  %reg.0 = or i32 %or, %reg.0.v
  %43 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i77 = getelementptr i8, ptr %45, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i77, i32 %43) #6, !srcloc !92
  br label %if.end38

if.end38.critedge:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %ext_phy.c = getelementptr i8, ptr %dev, i32 18584
  %46 = ptrtoint ptr %ext_phy.c to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ext_phy.c, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.critedge, %if.then24, %land.rhs.if.end38_crit_edge
  br i1 %init, label %do.end43, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.13, ptr noundef nonnull %phy_name.1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end38.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end43 ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_mii_probe(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 18716
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %phy_interface = getelementptr i8, ptr %dev, i32 18576
  %4 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_interface, align 8
  %internal_phy = getelementptr i8, ptr %dev, i32 18548
  %6 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %internal_phy, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gphy_rev = getelementptr i8, ptr %dev, i32 18564
  %8 = ptrtoint ptr %gphy_rev to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gphy_rev, align 4
  %conv = zext i16 %9 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_flags.0 = phi i32 [ %conv, %if.then ], [ 41, %entry.if.end_crit_edge ]
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 12, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %phy_iface.0 = phi i32 [ %5, %if.end.sw.epilog_crit_edge ], [ 11, %sw.bb3 ], [ 10, %sw.bb ]
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.epilog
  %phy_dn = getelementptr i8, ptr %dev, i32 18552
  %11 = ptrtoint ptr %phy_dn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_dn, align 8
  %call6 = tail call ptr @of_phy_connect(ptr noundef %dev, ptr noundef %12, ptr noundef nonnull @bcmgenet_mii_setup, i32 noundef %phy_flags.0, i32 noundef %phy_iface.0) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.then5.if.end48_crit_edge

if.then5.if.end48_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %cleanup61

if.else:                                          ; preds = %sw.epilog
  %phydev37 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %13 = ptrtoint ptr %phydev37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev37, align 16
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %dev_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %phy_flags.0, ptr %dev_flags, align 8
  %call39 = tail call i32 @phy_connect_direct(ptr noundef %dev, ptr noundef %14, ptr noundef nonnull @bcmgenet_mii_setup, i32 noundef %phy_iface.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else.if.end48_crit_edge, label %do.end44

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end44:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %cleanup61

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then5.if.end48_crit_edge
  %call49 = tail call i32 @bcmgenet_mii_config(ptr noundef %dev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %phydev52 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %16 = ptrtoint ptr %phydev52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phydev52, align 16
  tail call void @phy_disconnect(ptr noundef %17) #6
  br label %cleanup61

if.end53:                                         ; preds = %if.end48
  %18 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %internal_phy, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool55.not = icmp eq i8 %19, 0
  br i1 %tobool55.not, label %if.end53.cleanup61_crit_edge, label %land.lhs.true

if.end53.cleanup61_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

land.lhs.true:                                    ; preds = %if.end53
  %version = getelementptr i8, ptr %dev, i32 2308
  %20 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp = icmp eq i32 %21, 5
  br i1 %cmp, label %land.lhs.true.cleanup61_crit_edge, label %if.then58

land.lhs.true.cleanup61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.then58:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %phydev59 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %22 = ptrtoint ptr %phydev59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev59, align 16
  %irq = getelementptr inbounds %struct.phy_device, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2, ptr %irq, align 4
  br label %cleanup61

cleanup61:                                        ; preds = %if.then58, %land.lhs.true.cleanup61_crit_edge, %if.end53.cleanup61_crit_edge, %if.then51, %do.end44, %do.end
  %retval.1 = phi i32 [ %call49, %if.then51 ], [ -19, %do.end ], [ -19, %do.end44 ], [ 0, %if.then58 ], [ 0, %land.lhs.true.cleanup61_crit_edge ], [ 0, %if.end53.cleanup61_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcmgenet_mii_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %phy_name.i.i = alloca [64 x i8], align 1
  %mdio_bus_id.i.i = alloca [61 x i8], align 1
  %fphy_status.i.i = alloca %struct.fixed_phy_status, align 4
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  %ppd.i = alloca %struct.unimac_mdio_pdata, align 4
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1.i = getelementptr i8, ptr %dev, i32 18716
  %0 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ppd.i) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #6
  %call.i = tail call ptr @platform_get_resource(ptr noundef %1, i32 noundef 512, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #9
  br label %bcmgenet_mii_register.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %6 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %ppd.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %ppd.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %ppd.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %res.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %13 = ptrtoint ptr %ppd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ppd.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bcmgenet_mii_wait, ptr %10, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %9, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.30, ptr %8, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  %add4.i = add i32 %18, 3604
  %19 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add4.i, ptr %res.i, align 4
  %add7.i = add i32 %18, 3612
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add7.i, ptr %7, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %6, align 4
  %tobool8.not.i = icmp eq ptr %5, null
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %5, ptr noundef nonnull @.str.31) #6
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %id11.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %id11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id11.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then9.i
  %id.0.i = phi i32 [ %call10.i, %if.then9.i ], [ %23, %if.else.i ]
  %call13.i = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.19, i32 noundef %id.0.i) #6
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end12.i.bcmgenet_mii_register.exit.thread_crit_edge, label %if.end16.i

if.end12.i.bcmgenet_mii_register.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcmgenet_mii_register.exit.thread

if.end16.i:                                       ; preds = %if.end12.i
  %mii_pdev.i = getelementptr i8, ptr %dev, i32 18720
  %24 = ptrtoint ptr %mii_pdev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call13.i, ptr %mii_pdev.i, align 8
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %call13.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev.i, ptr %parent.i, align 8
  br i1 %tobool8.not.i, label %if.else24.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end16.i
  %26 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev1.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3, i32 27
  %28 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i.i, align 8
  %version.i.i = getelementptr i8, ptr %dev, i32 2308
  %30 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version.i.i, align 4
  %call.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, i32 noundef %31) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then20.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge, label %if.end.i.i

if.then20.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcmgenet_mii_of_find_mdio.exit.i

if.end.i.i:                                       ; preds = %if.then20.i
  %call3.i.i = tail call ptr @of_get_compatible_child(ptr noundef %29, ptr noundef nonnull %call.i.i) #6
  %mdio_dn.i.i = getelementptr i8, ptr %dev, i32 18556
  %32 = ptrtoint ptr %mdio_dn.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3.i.i, ptr %mdio_dn.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call.i.i) #6
  %33 = ptrtoint ptr %mdio_dn.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdio_dn.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %34, null
  br i1 %tobool5.not.i.i, label %do.end.i.i, label %if.end.i.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge

if.end.i.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcmgenet_mii_of_find_mdio.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.33) #9
  br label %bcmgenet_mii_of_find_mdio.exit.i

bcmgenet_mii_of_find_mdio.exit.i:                 ; preds = %do.end.i.i, %if.end.i.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge, %if.then20.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ null, %if.then20.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge ], [ %34, %if.end.i.i.bcmgenet_mii_of_find_mdio.exit.i_crit_edge ]
  %of_node23.i = getelementptr inbounds %struct.platform_device, ptr %call13.i, i32 0, i32 3, i32 27
  %35 = ptrtoint ptr %of_node23.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i.i, ptr %of_node23.i, align 8
  br label %if.end29.i

if.else24.i:                                      ; preds = %if.end16.i
  %tobool25.not.i = icmp eq ptr %3, null
  br i1 %tobool25.not.i, label %if.else27.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.else24.i
  %36 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev1.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_data.i.i, align 8
  %phy_interface.i.i = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %phy_interface.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phy_interface.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %41)
  %cmp.not.i.i = icmp eq i32 %41, 17
  br i1 %cmp.not.i.i, label %if.then26.i.if.end29.i_crit_edge, label %land.lhs.true.i.i

if.then26.i.if.end29.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

land.lhs.true.i.i:                                ; preds = %if.then26.i
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %39, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i73.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i73.i, label %land.lhs.true.i.i.if.end29.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %phy_address.i.i = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %phy_address.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_address.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %45)
  %46 = icmp ult i32 %45, 32
  %shl.i.i = shl nuw i32 1, %45
  %shl.sink.i.i = select i1 %46, i32 %shl.i.i, i32 0
  %47 = ptrtoint ptr %ppd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.sink.i.i, ptr %ppd.i, align 4
  br label %if.end29.i

if.else27.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %ppd.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %ppd.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else27.i, %if.then.i.i, %land.lhs.true.i.i.if.end29.i_crit_edge, %if.then26.i.if.end29.i_crit_edge, %bcmgenet_mii_of_find_mdio.exit.i
  %call30.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call13.i, ptr noundef nonnull %res.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.out.i_crit_edge

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end33.i:                                       ; preds = %if.end29.i
  %call34.i = call i32 @platform_device_add_data(ptr noundef nonnull %call13.i, ptr noundef nonnull %ppd.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.out.i_crit_edge

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = call i32 @platform_device_add(ptr noundef nonnull %call13.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end, label %if.end37.i.out.i_crit_edge

if.end37.i.out.i_crit_edge:                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

out.i:                                            ; preds = %if.end37.i.out.i_crit_edge, %if.end33.i.out.i_crit_edge, %if.end29.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call30.i, %if.end29.i.out.i_crit_edge ], [ %call34.i, %if.end33.i.out.i_crit_edge ], [ %call38.i, %if.end37.i.out.i_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call13.i) #6
  br label %bcmgenet_mii_register.exit.thread

bcmgenet_mii_register.exit.thread:                ; preds = %out.i, %if.end12.i.bcmgenet_mii_register.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end12.i.bcmgenet_mii_register.exit.thread_crit_edge ], [ -22, %do.end.i ], [ %ret.0.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ppd.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end37.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ppd.i) #6
  %49 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev1.i, align 4
  %of_node.i12 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3, i32 27
  %51 = ptrtoint ptr %of_node.i12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node.i12, align 8
  %tobool.not.i13 = icmp eq ptr %52, null
  br i1 %tobool.not.i13, label %if.else.i24, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %53 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %52, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %of_parse_phandle.exit.i.i, label %of_parse_phandle.exit.thread.i.i

of_parse_phandle.exit.thread.i.i:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %phy_dn40.i.i = getelementptr i8, ptr %dev, i32 18552
  %54 = ptrtoint ptr %phy_dn40.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %phy_dn40.i.i, align 8
  br label %land.lhs.true.i.i15

of_parse_phandle.exit.i.i:                        ; preds = %if.then.i
  %55 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %args.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %phy_dn.i.i = getelementptr i8, ptr %dev, i32 18552
  %57 = ptrtoint ptr %phy_dn.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %phy_dn.i.i, align 8
  %tobool.not.i.i14 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i14, label %of_parse_phandle.exit.i.i.land.lhs.true.i.i15_crit_edge, label %of_parse_phandle.exit.i.i.if.end8.i.i_crit_edge

of_parse_phandle.exit.i.i.if.end8.i.i_crit_edge:  ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

of_parse_phandle.exit.i.i.land.lhs.true.i.i15_crit_edge: ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i15

land.lhs.true.i.i15:                              ; preds = %of_parse_phandle.exit.i.i.land.lhs.true.i.i15_crit_edge, %of_parse_phandle.exit.thread.i.i
  %phy_dn42.i.i = phi ptr [ %phy_dn40.i.i, %of_parse_phandle.exit.thread.i.i ], [ %phy_dn.i.i, %of_parse_phandle.exit.i.i.land.lhs.true.i.i15_crit_edge ]
  %call2.i.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %52) #6
  br i1 %call2.i.i, label %if.then.i.i17, label %land.lhs.true.i.i15.if.end8.i.i_crit_edge

land.lhs.true.i.i15.if.end8.i.i_crit_edge:        ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

if.then.i.i17:                                    ; preds = %land.lhs.true.i.i15
  %call3.i.i16 = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i16)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i16, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i18, label %if.then.i.i17.out_crit_edge

if.then.i.i17.out_crit_edge:                      ; preds = %if.then.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i18:                                     ; preds = %if.then.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = call ptr @of_node_get(ptr noundef nonnull %52) #6
  %58 = ptrtoint ptr %phy_dn42.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call6.i.i, ptr %phy_dn42.i.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i18, %land.lhs.true.i.i15.if.end8.i.i_crit_edge, %of_parse_phandle.exit.i.i.if.end8.i.i_crit_edge
  %59 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev1.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %call.i36.i.i = call i32 @device_get_phy_mode(ptr noundef %dev.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i36.i.i, 0
  br i1 %cmp.i.i.i, label %bcmgenet_phy_interface_init.exit.i.i, label %if.end.i37.i.i

if.end.i37.i.i:                                   ; preds = %if.end8.i.i
  %phy_interface.i.i.i = getelementptr i8, ptr %dev, i32 18576
  %61 = ptrtoint ptr %phy_interface.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i36.i.i, ptr %phy_interface.i.i.i, align 8
  %62 = zext i32 %call.i36.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i36.i.i, label %if.end.i37.i.i.cleanup_crit_edge [
    i32 1, label %if.end12.thread.i.i
    i32 17, label %if.then13.i.i
  ]

if.end.i37.i.i.cleanup_crit_edge:                 ; preds = %if.end.i37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.thread.i.i:                              ; preds = %if.end.i37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %internal_phy.i.i.i = getelementptr i8, ptr %dev, i32 18548
  %63 = ptrtoint ptr %internal_phy.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %internal_phy.i.i.i, align 4
  br label %cleanup

bcmgenet_phy_interface_init.exit.i.i:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.36) #9
  br label %out

if.then13.i.i:                                    ; preds = %if.end.i37.i.i
  %call14.i.i = call ptr @of_phy_find_device(ptr noundef nonnull %52) #6
  %tobool15.not.i.i = icmp eq ptr %call14.i.i, null
  br i1 %tobool15.not.i.i, label %if.then13.i.i.cleanup_crit_edge, label %if.then16.i.i

if.then13.i.i.cleanup_crit_edge:                  ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16.i.i:                                    ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %link.i.i = getelementptr inbounds %struct.phy_device, ptr %call14.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i.i = load i16, ptr %link.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -5
  store i16 %bf.clear.i.i, ptr %link.i.i, align 8
  call void @put_device(ptr noundef nonnull %call14.i.i) #6
  br label %cleanup

if.else.i24:                                      ; preds = %if.end
  %dev.i.i19 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %platform_data.i.i20 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3, i32 7
  %65 = ptrtoint ptr %platform_data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %platform_data.i.i20, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %phy_name.i.i) #6
  %67 = call ptr @memset(ptr %phy_name.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %mdio_bus_id.i.i) #6
  %68 = call ptr @memset(ptr %mdio_bus_id.i.i, i32 255, i32 61)
  %id.i.i = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 1
  %69 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id.i.i, align 4
  %call.i.i21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mdio_bus_id.i.i, i32 noundef 61, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %70) #6
  %phy_interface.i.i22 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %phy_interface.i.i22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phy_interface.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %72)
  %cmp.not.i.i23 = icmp eq i32 %72, 17
  br i1 %cmp.not.i.i23, label %if.else.i24.if.else.i.i_crit_edge, label %land.lhs.true.i13.i

if.else.i24.if.else.i.i_crit_edge:                ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i13.i:                              ; preds = %if.else.i24
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %66, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i12.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.if.else.i.i_crit_edge, label %if.then.i15.i

land.lhs.true.i13.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then.i15.i:                                    ; preds = %land.lhs.true.i13.i
  %phy_address.i.i25 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %66, i32 0, i32 2
  %75 = ptrtoint ptr %phy_address.i.i25 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %phy_address.i.i25, align 4
  %call4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_name.i.i, i32 noundef 61, ptr noundef nonnull @.str.38, ptr noundef nonnull %mdio_bus_id.i.i, i32 noundef %76) #6
  %dev5.i.i = getelementptr i8, ptr %dev, i32 2312
  %77 = ptrtoint ptr %dev5.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev5.i.i, align 8
  %79 = ptrtoint ptr %phy_interface.i.i22 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %phy_interface.i.i22, align 4
  %call8.i.i = call ptr @phy_attach(ptr noundef %78, ptr noundef nonnull %phy_name.i.i, i32 noundef %80) #6
  %cmp.i.i14.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i14.i, label %bcmgenet_mii_bus_init.exit, label %if.then.i15.i.bcmgenet_mii_bus_init.exit.thread42_crit_edge

if.then.i15.i.bcmgenet_mii_bus_init.exit.thread42_crit_edge: ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcmgenet_mii_bus_init.exit.thread42

if.else.i.i:                                      ; preds = %land.lhs.true.i13.i.if.else.i.i_crit_edge, %if.else.i24.if.else.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fphy_status.i.i) #6
  %81 = getelementptr inbounds %struct.fixed_phy_status, ptr %fphy_status.i.i, i32 0, i32 1
  %82 = getelementptr inbounds %struct.fixed_phy_status, ptr %fphy_status.i.i, i32 0, i32 2
  %83 = getelementptr inbounds %struct.fixed_phy_status, ptr %fphy_status.i.i, i32 0, i32 3
  %84 = getelementptr inbounds %struct.fixed_phy_status, ptr %fphy_status.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %fphy_status.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %fphy_status.i.i, align 4
  %phy_speed.i.i = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %66, i32 0, i32 3
  %86 = ptrtoint ptr %phy_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %phy_speed.i.i, align 4
  %88 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %81, align 4
  %phy_duplex.i.i = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %66, i32 0, i32 4
  %89 = ptrtoint ptr %phy_duplex.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %phy_duplex.i.i, align 4
  %91 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %82, align 4
  %92 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %83, align 4
  %93 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %84, align 4
  %call12.i.i = call ptr @fixed_phy_register(i32 noundef -1, ptr noundef nonnull %fphy_status.i.i, ptr noundef null) #6
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  %cmp.i44.i.i = icmp ugt ptr %call12.i.i, inttoptr (i32 -4096 to ptr)
  %or.cond.i.i = or i1 %tobool13.not.i.i, %cmp.i44.i.i
  br i1 %or.cond.i.i, label %bcmgenet_mii_bus_init.exit.thread45, label %if.end19.i.i

bcmgenet_mii_bus_init.exit.thread45:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i19, ptr noundef nonnull @.str.42) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fphy_status.i.i) #6
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %mdio_bus_id.i.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_name.i.i) #6
  br label %out

if.end19.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %link20.i.i = getelementptr inbounds %struct.phy_device, ptr %call12.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %link20.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i16.i = load i16, ptr %link20.i.i, align 8
  %bf.clear.i17.i = and i16 %bf.load.i16.i, -5
  store i16 %bf.clear.i17.i, ptr %link20.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fphy_status.i.i) #6
  br label %bcmgenet_mii_bus_init.exit.thread42

bcmgenet_mii_bus_init.exit.thread42:              ; preds = %if.end19.i.i, %if.then.i15.i.bcmgenet_mii_bus_init.exit.thread42_crit_edge
  %95 = ptrtoint ptr %phy_interface.i.i22 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %phy_interface.i.i22, align 4
  %phy_interface23.i.i = getelementptr i8, ptr %dev, i32 18576
  %97 = ptrtoint ptr %phy_interface23.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %phy_interface23.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %mdio_bus_id.i.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_name.i.i) #6
  br label %cleanup

bcmgenet_mii_bus_init.exit:                       ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i19, ptr noundef nonnull @.str.39) #9
  %98 = ptrtoint ptr %call8.i.i to i32
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %mdio_bus_id.i.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_name.i.i) #6
  br label %out

out:                                              ; preds = %bcmgenet_mii_bus_init.exit, %bcmgenet_mii_bus_init.exit.thread45, %bcmgenet_phy_interface_init.exit.i.i, %if.then.i.i17.out_crit_edge
  %retval.0.i2741 = phi i32 [ %98, %bcmgenet_mii_bus_init.exit ], [ -19, %bcmgenet_mii_bus_init.exit.thread45 ], [ %call.i36.i.i, %bcmgenet_phy_interface_init.exit.i.i ], [ %call3.i.i16, %if.then.i.i17.out_crit_edge ]
  %99 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev1.i, align 4
  %of_node.i29 = getelementptr inbounds %struct.platform_device, ptr %100, i32 0, i32 3, i32 27
  %101 = ptrtoint ptr %of_node.i29 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node.i29, align 8
  %call2.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %102) #6
  br i1 %call2.i, label %if.then.i30, label %out.bcmgenet_mii_exit.exit_crit_edge

out.bcmgenet_mii_exit.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcmgenet_mii_exit.exit

if.then.i30:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_phy_deregister_fixed_link(ptr noundef %102) #6
  br label %bcmgenet_mii_exit.exit

bcmgenet_mii_exit.exit:                           ; preds = %if.then.i30, %out.bcmgenet_mii_exit.exit_crit_edge
  %phy_dn.i = getelementptr i8, ptr %dev, i32 18552
  %103 = ptrtoint ptr %phy_dn.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %phy_dn.i, align 8
  call void @of_node_put(ptr noundef %104) #6
  %105 = ptrtoint ptr %mii_pdev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mii_pdev.i, align 8
  call void @platform_device_unregister(ptr noundef %106) #6
  br label %cleanup

cleanup:                                          ; preds = %bcmgenet_mii_exit.exit, %bcmgenet_mii_bus_init.exit.thread42, %if.then16.i.i, %if.then13.i.i.cleanup_crit_edge, %if.end12.thread.i.i, %if.end.i37.i.i.cleanup_crit_edge, %bcmgenet_mii_register.exit.thread
  %retval.0 = phi i32 [ %retval.0.i2741, %bcmgenet_mii_exit.exit ], [ %retval.0.i.ph, %bcmgenet_mii_register.exit.thread ], [ 0, %bcmgenet_mii_bus_init.exit.thread42 ], [ 0, %if.then13.i.i.cleanup_crit_edge ], [ 0, %if.then16.i.i ], [ 0, %if.end12.thread.i.i ], [ 0, %if.end.i37.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcmgenet_mii_exit(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 18716
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #6
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_phy_deregister_fixed_link(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_dn = getelementptr i8, ptr %dev, i32 18552
  %4 = ptrtoint ptr %phy_dn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_dn, align 8
  tail call void @of_node_put(ptr noundef %5) #6
  %mii_pdev = getelementptr i8, ptr %dev, i32 18720
  %6 = ptrtoint ptr %mii_pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_pdev, align 8
  tail call void @platform_device_unregister(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_get_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixed_phy_set_link_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_fixed_phy_link_update(ptr noundef readonly %dev, ptr noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool1.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %status, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 2116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !91
  %5 = lshr i32 %4, 29
  %and.lobit = and i32 %5, 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.lobit, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_mii_wait(ptr noundef %wait_func_data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 443) #6
  %0 = ptrtoint ptr %wait_func_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait_func_data, align 8
  %add.ptr1.i = getelementptr i8, ptr %1, i32 3604
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !91
  %3 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then10

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wq = getelementptr inbounds %struct.bcmgenet_priv, ptr %wait_func_data, i32 0, i32 16
  %call1256 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %5 = ptrtoint ptr %wait_func_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait_func_data, align 8
  %add.ptr1.i5257 = getelementptr i8, ptr %6, i32 3604
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i5257) #6, !srcloc !91
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not58 = icmp eq i32 %8, 0
  br i1 %tobool16.not58, label %if.then10.for.end_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  br label %cleanup

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %__ret11.159 = phi i32 [ %__ret11.1, %cleanup.cleanup_crit_edge ], [ 1, %if.then10.cleanup_crit_edge ]
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret11.159) #6
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %9 = ptrtoint ptr %wait_func_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wait_func_data, align 8
  %add.ptr1.i52 = getelementptr i8, ptr %10, i32 3604
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i52) #6, !srcloc !91
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool21.not = icmp eq i32 %call34, 0
  %13 = select i1 %tobool16.not, i1 %tobool21.not, i1 false
  %__ret11.1 = select i1 %13, i32 1, i32 %call34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool27.not = icmp eq i32 %__ret11.1, 0
  %14 = select i1 %tobool16.not, i1 true, i1 %tobool27.not
  br i1 %14, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end37

if.end37:                                         ; preds = %for.end, %entry.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixed_phy_register(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 198, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 212, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 218, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 224, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 243, i32 14}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 250, i32 14}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 255, i32 14}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 259, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcmgenet_mii_config._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcmgenet_mii_config._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 283, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcmgenet_mii_config._entry.12, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcmgenet_mii_config._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 341, i32 4}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bcmgenet_mii_probe._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcmgenet_mii_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 349, i32 43}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 350, i32 6}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 354, i32 5}
!38 = !{ptr @bcmgenet_mii_probe._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bcmgenet_mii_probe._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 360, i32 5}
!42 = !{ptr @bcmgenet_mii_probe._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bcmgenet_mii_probe._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @bcmgenet_mii_probe._entry.26, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 371, i32 4}
!46 = !{ptr @bcmgenet_mii_probe._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 459, i32 3}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bcmgenet_mii_register._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcmgenet_mii_register._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 467, i32 17}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 477, i32 28}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 405, i32 33}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 412, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bcmgenet_mii_of_find_mdio._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bcmgenet_mii_of_find_mdio._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 543, i32 38}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 519, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @bcmgenet_phy_interface_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @bcmgenet_phy_interface_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 585, i32 39}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 593, i32 4}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @bcmgenet_mii_pd_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @bcmgenet_mii_pd_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/broadcom/genet/bcmmii.c", i32 611, i32 4}
!79 = !{ptr @bcmgenet_mii_pd_init._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @bcmgenet_mii_pd_init._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{i64 7280274}
!92 = !{i64 7279856}
