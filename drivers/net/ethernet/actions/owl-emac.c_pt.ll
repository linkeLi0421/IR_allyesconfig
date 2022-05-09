; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/actions/owl-emac.c_pt.bc'
source_filename = "../drivers/net/ethernet/actions/owl-emac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.owl_emac_priv = type { ptr, ptr, [2 x %struct.clk_bulk_data], ptr, %struct.owl_emac_ring, %struct.owl_emac_ring, ptr, %struct.napi_struct, i32, i32, i32, i32, i32, %struct.owl_emac_addr_list, %struct.work_struct, i32, %struct.spinlock }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.owl_emac_ring = type { ptr, i32, ptr, ptr, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.owl_emac_addr_list = type { [14 x [6 x i8]], i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.owl_emac_ring_desc = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_owl_emac__369_1620_owl_emac_driver_init6 = internal global ptr @owl_emac_driver_init, section ".initcall6.init", align 4
@owl_emac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @owl_emac_probe, ptr @owl_emac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @owl_emac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_emac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_owl_emac_driver_exit = internal global ptr @owl_emac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description370 = internal constant [63 x i8] c"owl_emac.description=Actions Semi Owl SoCs Ethernet MAC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author371 = internal constant [34 x i8] c"owl_emac.author=Actions Semi Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_author372 = internal constant [66 x i8] c"owl_emac.author=Cristian Ciocaltea <cristian.ciocaltea@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [52 x i8] c"owl_emac.file=drivers/net/ethernet/actions/owl-emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [21 x i8] c"owl_emac.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"owl-emac\00", [23 x i8] zeroinitializer }, align 32
@owl_emac_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,owl-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@owl_emac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @owl_emac_suspend, ptr @owl_emac_resume, ptr @owl_emac_suspend, ptr @owl_emac_resume, ptr @owl_emac_suspend, ptr @owl_emac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get phy mode: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"owl_emac_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/actions/owl-emac.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry_ptr = internal global ptr @owl_emac_probe._entry, section ".printk_index", align 4
@owl_emac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported DMA mask\0A\00", [42 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry_ptr.9 = internal global ptr @owl_emac_probe._entry.7, section ".printk_index", align 4
@owl_emac_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry_ptr.12 = internal global ptr @owl_emac_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get reset control\00", [36 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize MDIO bus\0A\00", [33 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry_ptr.16 = internal global ptr @owl_emac_probe._entry.14, section ".printk_index", align 4
@owl_emac_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize PHY\0A\00", [38 x i8] zeroinitializer }, align 32
@owl_emac_probe._entry_ptr.19 = internal global ptr @owl_emac_probe._entry.17, section ".printk_index", align 4
@owl_emac_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&priv->mac_reset_task)\00", [55 x i8] zeroinitializer }, align 32
@owl_emac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @owl_emac_ndo_open, ptr @owl_emac_ndo_stop, ptr @owl_emac_ndo_start_xmit, ptr null, ptr null, ptr null, ptr @owl_emac_ndo_set_rx_mode, ptr @owl_emac_ndo_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @owl_emac_ndo_eth_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_emac_ndo_tx_timeout, ptr null, ptr null, ptr null, ptr @owl_emac_ndo_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@owl_emac_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @owl_emac_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @owl_emac_ethtool_get_msglevel, ptr @owl_emac_ethtool_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@owl_emac_clk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported phy interface mode %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"owl_emac_clk_set_rate\00", [42 x i8] zeroinitializer }, align 32
@owl_emac_clk_set_rate._entry_ptr = internal global ptr @owl_emac_clk_set_rate._entry, section ".printk_index", align 4
@owl_emac_clk_set_rate._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 1471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set RMII clock rate: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@owl_emac_clk_set_rate._entry_ptr.28 = internal global ptr @owl_emac_clk_set_rate._entry.26, section ".printk_index", align 4
@owl_emac_get_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1393, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using random MAC address %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"owl_emac_get_mac_addr\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@owl_emac_get_mac_addr._entry_ptr = internal global ptr @owl_emac_get_mac_addr._entry, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owl-emac-mdio\00", [18 x i8] zeroinitializer }, align 32
@owl_emac_reset_task.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"owl_emac\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"owl_emac_reset_task\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resetting MAC\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to soft reset MAC core: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@owl_emac_ndo_start_xmit._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.owl_emac_ndo_start_xmit = private unnamed_addr constant [24 x i8] c"owl_emac_ndo_start_xmit\00", align 1
@owl_emac_ndo_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.owl_emac_ndo_start_xmit, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX DMA mapping failed\0A\00", [41 x i8] zeroinitializer }, align 32
@owl_emac_ndo_start_xmit._entry_ptr = internal global ptr @owl_emac_ndo_start_xmit._entry, section ".printk_index", align 4
@owl_emac_ndo_start_xmit._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@owl_emac_ndo_start_xmit.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @__func__.owl_emac_ndo_start_xmit, ptr @.str.3, ptr @.str.44, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX buffer full, status=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@owl_emac_poll.tx_err_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@owl_emac_poll.rx_err_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@owl_emac_poll.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owl_emac_poll\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s error status: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@owl_emac_tx_complete.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"owl_emac_tx_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Found uncleared TX desc OWN bit\0A\00", [63 x i8] zeroinitializer }, align 32
@owl_emac_tx_complete_tail._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@owl_emac_tx_complete_tail.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"owl_emac_tx_complete_tail\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TX complete error status: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@owl_emac_rx_process._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@owl_emac_rx_process.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"owl_emac_rx_process\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX desc error status: 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid RX frame len: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX DMA mapping failed\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"owl_emac_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1611, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1613, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"owl_emac_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1602, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"owl_emac_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1608, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1496, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1500, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1504, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1527, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1553, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1562, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1568, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1572, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"owl_emac_netdev_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1220, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant [21 x i8] c"owl_emac_ethtool_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1252, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 223, i32 51 }
@___asan_gen_.138 = private unnamed_addr constant [43 x i8] c"../drivers/net/ethernet/actions/owl-emac.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 223, i32 58 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1464, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1471, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1393, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1334, i32 49 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1349, i32 43 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1350, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1205, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1048, i32 22 }
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 326, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 578, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 598, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [11 x i8] c"tx_err_cnt\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 868, i32 13 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"rx_err_cnt\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 868, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 930, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 731, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 651, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 782, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 810, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [43 x i8] c"../drivers/net/ethernet/actions/owl-emac.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 822, i32 23 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_author372, ptr @__UNIQUE_ID_description370, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__exitcall_owl_emac_driver_exit, ptr @__initcall__kmod_owl_emac__369_1620_owl_emac_driver_init6, ptr @owl_emac_clk_set_rate._entry, ptr @owl_emac_clk_set_rate._entry.26, ptr @owl_emac_clk_set_rate._entry_ptr, ptr @owl_emac_clk_set_rate._entry_ptr.28, ptr @owl_emac_driver_exit, ptr @owl_emac_get_mac_addr._entry, ptr @owl_emac_get_mac_addr._entry_ptr, ptr @owl_emac_ndo_start_xmit._entry, ptr @owl_emac_ndo_start_xmit._entry_ptr, ptr @owl_emac_probe._entry, ptr @owl_emac_probe._entry.10, ptr @owl_emac_probe._entry.14, ptr @owl_emac_probe._entry.17, ptr @owl_emac_probe._entry.7, ptr @owl_emac_probe._entry_ptr, ptr @owl_emac_probe._entry_ptr.12, ptr @owl_emac_probe._entry_ptr.16, ptr @owl_emac_probe._entry_ptr.19, ptr @owl_emac_probe._entry_ptr.9, ptr @owl_emac_driver, ptr @.str, ptr @owl_emac_of_match, ptr @owl_emac_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @owl_emac_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @owl_emac_probe.__key.20, ptr @.str.21, ptr @owl_emac_netdev_ops, ptr @owl_emac_ethtool_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @owl_emac_ndo_start_xmit._rs, ptr @.str.41, ptr @.str.42, ptr @owl_emac_ndo_start_xmit._rs.43, ptr @.str.44, ptr @owl_emac_poll.tx_err_cnt, ptr @owl_emac_poll.rx_err_cnt, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @owl_emac_tx_complete_tail._rs, ptr @.str.51, ptr @.str.52, ptr @owl_emac_rx_process._rs, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_clk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_clk_set_rate._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_get_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_ndo_start_xmit._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_ndo_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_ndo_start_xmit._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_poll.tx_err_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_poll.rx_err_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_tx_complete_tail._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_emac_rx_process._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_emac_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @owl_emac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_emac_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev1, i32 noundef 512, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %call, i32 2768
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %msg_enable, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %phy_mode = getelementptr i8, ptr %call, i32 2616
  %call6 = tail call i32 @of_get_phy_mode(ptr noundef %5, ptr noundef %phy_mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call6) #14
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %lock = getelementptr i8, ptr %call, i32 2772
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @owl_emac_probe.__key, i16 noundef signext 3) #11
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end20, label %do.end19

do.end19:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end20:                                         ; preds = %do.body10
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #11
  %rx_ring = getelementptr i8, ptr %call, i32 2332
  %descs_dma.i = getelementptr i8, ptr %call, i32 2336
  %call.i.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 1024, ptr noundef %descs_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %rx_ring, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end20.cleanup_crit_edge, label %if.end.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #11
  %skbs.i = getelementptr i8, ptr %call, i32 2340
  %7 = ptrtoint ptr %skbs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i.i, ptr %skbs.i, align 4
  %tobool4.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %devm_kcalloc.exit28.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit28.i:                            ; preds = %if.end.i
  %call5.i.i25.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #11
  %skbs_dma.i = getelementptr i8, ptr %call, i32 2344
  %8 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i25.i, ptr %skbs_dma.i, align 4
  %tobool9.not.i = icmp eq ptr %call5.i.i25.i, null
  br i1 %tobool9.not.i, label %devm_kcalloc.exit28.i.cleanup_crit_edge, label %if.end24

devm_kcalloc.exit28.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %devm_kcalloc.exit28.i
  %size12.i = getelementptr i8, ptr %call, i32 2348
  %9 = ptrtoint ptr %size12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %size12.i, align 4
  %tx_ring = getelementptr i8, ptr %call, i32 2360
  %descs_dma.i204 = getelementptr i8, ptr %call, i32 2364
  %call.i.i205 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 512, ptr noundef %descs_dma.i204, i32 noundef 3264, i32 noundef 0) #11
  %10 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i205, ptr %tx_ring, align 4
  %tobool.not.i206 = icmp eq ptr %call.i.i205, null
  br i1 %tobool.not.i206, label %if.end24.cleanup_crit_edge, label %if.end.i207

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i207:                                      ; preds = %if.end24
  %call5.i.i.i208 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #11
  %skbs.i209 = getelementptr i8, ptr %call, i32 2368
  %11 = ptrtoint ptr %skbs.i209 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i.i208, ptr %skbs.i209, align 4
  %tobool4.not.i210 = icmp eq ptr %call5.i.i.i208, null
  br i1 %tobool4.not.i210, label %if.end.i207.cleanup_crit_edge, label %devm_kcalloc.exit28.i214

if.end.i207.cleanup_crit_edge:                    ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit28.i214:                         ; preds = %if.end.i207
  %call5.i.i25.i211 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #11
  %skbs_dma.i212 = getelementptr i8, ptr %call, i32 2372
  %12 = ptrtoint ptr %skbs_dma.i212 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i25.i211, ptr %skbs_dma.i212, align 4
  %tobool9.not.i213 = icmp eq ptr %call5.i.i25.i211, null
  br i1 %tobool9.not.i213, label %devm_kcalloc.exit28.i214.cleanup_crit_edge, label %if.end28

devm_kcalloc.exit28.i214.cleanup_crit_edge:       ; preds = %devm_kcalloc.exit28.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %devm_kcalloc.exit28.i214
  %size12.i215 = getelementptr i8, ptr %call, i32 2376
  %13 = ptrtoint ptr %size12.i215 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %size12.i215, align 4
  %call29 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %base = getelementptr i8, ptr %call, i32 2308
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %base, align 4
  %cmp.i219 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call36, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %call.i220 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call36, ptr noundef nonnull @owl_emac_handle_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool43.not = icmp eq i32 %call.i220, 0
  br i1 %tobool43.not, label %for.body.preheader, label %do.end47

for.body.preheader:                               ; preds = %if.end40
  %arrayidx51 = getelementptr i8, ptr %call, i32 2312
  %17 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.22, ptr %arrayidx51, align 8
  %arrayidx51.1 = getelementptr i8, ptr %call, i32 2320
  %18 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.23, ptr %arrayidx51.1, align 8
  %clks52 = getelementptr i8, ptr %call, i32 2312
  %call54 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %clks52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %20) #14
  br label %cleanup

if.end57:                                         ; preds = %for.body.preheader
  %call60 = tail call fastcc i32 @clk_bulk_prepare_enable(ptr noundef %clks52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %call64 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %call68 = tail call fastcc i32 @owl_emac_clk_set_rate(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %call.i221 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %reset = getelementptr i8, ptr %call, i32 2328
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i221, ptr %reset, align 8
  %cmp.i222 = icmp ugt ptr %call.i221, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call.i221 to i32
  %call78 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end79:                                         ; preds = %if.end71
  tail call fastcc void @owl_emac_get_mac_addr(ptr noundef nonnull %call)
  tail call fastcc void @owl_emac_core_hw_reset(ptr noundef %add.ptr.i)
  tail call fastcc void @owl_emac_mdio_clock_enable(ptr noundef %add.ptr.i)
  %call80 = tail call fastcc i32 @owl_emac_mdio_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end86, label %do.end85

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end86:                                         ; preds = %if.end79
  %call87 = tail call fastcc i32 @owl_emac_phy_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.body94, label %do.end92

do.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #14
  br label %cleanup

do.body94:                                        ; preds = %if.end86
  %mac_reset_task = getelementptr i8, ptr %call, i32 2724
  tail call void @__init_work(ptr noundef %mac_reset_task, i32 noundef 0) #11
  %23 = ptrtoint ptr %mac_reset_task to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %mac_reset_task, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2740
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @owl_emac_probe.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry98 = getelementptr i8, ptr %call, i32 2728
  %24 = ptrtoint ptr %entry98 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry98, ptr %entry98, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2732
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry98, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2736
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @owl_emac_reset_task, ptr %func, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %27 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %28 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1500, ptr %max_mtu, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %29 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 200, ptr %watchdog_timeo, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %30 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @owl_emac_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %31 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @owl_emac_ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call, i32 2392
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @owl_emac_poll, i32 noundef 64) #11
  %call102 = tail call i32 @devm_register_netdev(ptr noundef %dev1, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %do.body94.cleanup_crit_edge, label %if.then104

do.body94.cleanup_crit_edge:                      ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then104:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__netif_napi_del(ptr noundef %napi) #11
  tail call void @synchronize_net() #11
  %phydev = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 145
  %32 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %33) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %do.body94.cleanup_crit_edge, %do.end92, %do.end85, %if.then75, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end47, %for.body.preheader.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then32, %devm_kcalloc.exit28.i214.cleanup_crit_edge, %if.end.i207.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %devm_kcalloc.exit28.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %call.i, %do.end19 ], [ %15, %if.then32 ], [ %call.i220, %do.end47 ], [ %call78, %if.then75 ], [ %call80, %do.end85 ], [ %call87, %do.end92 ], [ %call102, %if.then104 ], [ -12, %entry.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ %call54, %for.body.preheader.cleanup_crit_edge ], [ %call60, %if.end57.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call68, %if.end67.cleanup_crit_edge ], [ 0, %do.body94.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit28.i.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ -12, %if.end.i207.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit28.i214.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %napi = getelementptr inbounds %struct.owl_emac_priv, ptr %1, i32 0, i32 7
  tail call void @__netif_napi_del(ptr noundef %napi) #11
  tail call void @synchronize_net() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %5) #11
  %mac_reset_task = getelementptr inbounds %struct.owl_emac_priv, ptr %1, i32 0, i32 14
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %mac_reset_task) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_handle_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %base.i.i = getelementptr i8, ptr %data, i32 2308
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -481492992) #11, !srcloc !143
  %napi = getelementptr i8, ptr %data, i32 2392
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable(ptr noundef %clks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @owl_emac_clk_disable_unprepare, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clks.i = getelementptr inbounds %struct.owl_emac_priv, ptr %data, i32 0, i32 2
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks.i) #11
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_emac_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clks = getelementptr inbounds %struct.owl_emac_priv, ptr %data, i32 0, i32 2
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #11
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_clk_set_rate(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %phy_mode = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 8
  %4 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_mode, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 7, label %entry.sw.epilog_crit_edge
    i32 14, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %5) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %rate.0 = phi i32 [ 125000000, %sw.bb1 ], [ 50000000, %entry.sw.epilog_crit_edge ]
  %clk = getelementptr %struct.owl_emac_priv, ptr %priv, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %rate.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end6:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %call3, %do.end6 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_emac_get_mac_addr(ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call i32 @platform_get_ethdev_address(ptr noundef %1, ptr noundef %netdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end_crit_edge, label %is_valid_ether_addr.exit.cleanup_crit_edge

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_valid_ether_addr.exit.if.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %is_valid_ether_addr.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #11
  %9 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr.i, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 55
  %14 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #11
  %dev_addr3 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr3, align 64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %16) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_emac_core_hw_reset(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 8
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #11
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 8
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %3) #11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_emac_mdio_clock_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %and = and i32 %2, 48
  %or2 = or i32 %and, 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %or2) #11, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_mdio_init(ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.32) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call2) #11
  br i1 %call3, label %if.end5, label %if.end.err_put_node_crit_edge

if.end.err_put_node_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_node

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %3, i32 noundef 0) #11
  %mii = getelementptr i8, ptr %netdev, i32 2388
  %6 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %mii, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.err_put_node_crit_edge, label %if.end10

if.end5.err_put_node_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_node

if.end10:                                         ; preds = %if.end5
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end10.dev_name.exit_crit_edge ]
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i)
  %11 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mii, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.34, ptr %name, align 4
  %14 = load ptr, ptr %mii, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %parent, align 4
  %16 = load ptr, ptr %mii, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @owl_emac_mdio_read, ptr %read, align 4
  %18 = load ptr, ptr %mii, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @owl_emac_mdio_write, ptr %write, align 8
  %20 = load ptr, ptr %mii, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %phy_mask, align 8
  %22 = load ptr, ptr %mii, align 4
  %priv20 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %priv20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %priv20, align 8
  %24 = load ptr, ptr %mii, align 4
  %call22 = tail call i32 @devm_of_mdiobus_register(ptr noundef %3, ptr noundef %24, ptr noundef nonnull %call2) #11
  br label %err_put_node

err_put_node:                                     ; preds = %dev_name.exit, %if.end5.err_put_node_crit_edge, %if.end.err_put_node_crit_edge
  %ret.0 = phi i32 [ %call22, %dev_name.exit ], [ -19, %if.end.err_put_node_crit_edge ], [ -12, %if.end5.err_put_node_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %err_put_node, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put_node ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_phy_init(ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_phy_get_and_connect(ptr noundef %netdev, ptr noundef %5, ptr noundef nonnull @owl_emac_adjust_link) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @phy_set_sym_pause(ptr noundef nonnull %call2, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %msg_enable = getelementptr i8, ptr %netdev, i32 2768
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_attached_info(ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_emac_reset_task(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -420
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_emac_reset_task.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_emac_reset_task, %if.then)) #11
          to label %do.end6 [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @owl_emac_reset_task.__UNIQUE_ID_ddebug368, ptr noundef %1, ptr noundef nonnull @.str.37) #11
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @owl_emac_disable(ptr noundef %3, i1 noundef zeroext false)
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %call9 = tail call fastcc i32 @owl_emac_enable(ptr noundef %5, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -88
  %base.i.i.i = getelementptr i8, ptr %napi, i32 -84
  br label %while.cond

while.cond:                                       ; preds = %if.end34.while.cond_crit_edge, %entry
  %ru_cnt.0 = phi i32 [ 0, %entry ], [ %ru_cnt.1, %if.end34.while.cond_crit_edge ]
  %work_done.0 = phi i32 [ 0, %entry ], [ %add, %if.end34.while.cond_crit_edge ]
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !144
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #11, !srcloc !143
  %and = and i32 %3, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %and1 = and i32 %3, 1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %while.body.if.end8_crit_edge, label %if.then

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %while.body
  tail call fastcc void @owl_emac_tx_complete(ptr noundef %add.ptr)
  store i32 0, ptr @owl_emac_poll.tx_err_cnt, align 4
  %and3 = lshr i32 %3, 17
  %shr = and i32 %and3, 7
  %6 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %shr, label %if.then.if.end8_crit_edge [
    i32 7, label %if.then.if.then7_crit_edge
    i32 5, label %if.then.if.then7_crit_edge95
    i32 1, label %if.then.if.then7_crit_edge96
  ]

if.then.if.then7_crit_edge96:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then.if.then7_crit_edge95:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.then.if.then7_crit_edge, %if.then.if.then7_crit_edge95, %if.then.if.then7_crit_edge96
  %7 = load i32, ptr @owl_emac_poll.rx_err_cnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @owl_emac_poll.rx_err_cnt, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then.if.end8_crit_edge, %while.body.if.end8_crit_edge
  %and9 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  %sub = sub i32 %budget, %work_done.0
  %call12 = tail call fastcc i32 @owl_emac_rx_process(ptr noundef %add.ptr, i32 noundef %sub)
  store i32 0, ptr @owl_emac_poll.rx_err_cnt, align 4
  %and13 = lshr i32 %3, 20
  %shr14 = and i32 %and13, 7
  %8 = zext i32 %shr14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %shr14, label %if.then11.if.end34_crit_edge [
    i32 3, label %if.then11.if.then18_crit_edge
    i32 7, label %if.then11.if.then18_crit_edge97
  ]

if.then11.if.then18_crit_edge97:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then11.if.then18_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then11.if.end34_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then18:                                        ; preds = %if.then11.if.then18_crit_edge, %if.then11.if.then18_crit_edge97
  %9 = load i32, ptr @owl_emac_poll.tx_err_cnt, align 4
  %inc19 = add i32 %9, 1
  store i32 %inc19, ptr @owl_emac_poll.tx_err_cnt, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end8
  %and21 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else.if.end34_crit_edge, label %if.then23

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then23:                                        ; preds = %if.else
  %inc24 = add i32 %ru_cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc24)
  %cmp25 = icmp eq i32 %inc24, 2
  br i1 %cmp25, label %if.end27.thread, label %if.end27

if.end27.thread:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 16777216) #11, !srcloc !143
  %sub2891 = sub i32 %budget, %work_done.0
  %call2992 = tail call fastcc i32 @owl_emac_rx_process(ptr noundef %add.ptr, i32 noundef %sub2891)
  br label %if.end34

if.end27:                                         ; preds = %if.then23
  %sub28 = sub i32 %budget, %work_done.0
  %call29 = tail call fastcc i32 @owl_emac_rx_process(ptr noundef %add.ptr, i32 noundef %sub28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc24)
  %cmp30 = icmp sgt i32 %inc24, 3
  br i1 %cmp30, label %if.end27.while.end_crit_edge, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end34:                                         ; preds = %if.end27.if.end34_crit_edge, %if.end27.thread, %if.else.if.end34_crit_edge, %if.then18, %if.then11.if.end34_crit_edge
  %recv.0 = phi i32 [ %call12, %if.then18 ], [ %call29, %if.end27.if.end34_crit_edge ], [ 0, %if.else.if.end34_crit_edge ], [ %call12, %if.then11.if.end34_crit_edge ], [ %call2992, %if.end27.thread ]
  %ru_cnt.1 = phi i32 [ %ru_cnt.0, %if.then18 ], [ %inc24, %if.end27.if.end34_crit_edge ], [ %ru_cnt.0, %if.else.if.end34_crit_edge ], [ %ru_cnt.0, %if.then11.if.end34_crit_edge ], [ 2, %if.end27.thread ]
  %add = add i32 %recv.0, %work_done.0
  %cmp35.not = icmp slt i32 %add, %budget
  br i1 %cmp35.not, label %if.end34.while.cond_crit_edge, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end34.while.cond_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %if.end34.while.end_crit_edge, %if.end27.while.end_crit_edge, %while.cond.while.end_crit_edge
  %work_done.1 = phi i32 [ %add, %if.end34.while.end_crit_edge ], [ %work_done.0, %if.end27.while.end_crit_edge ], [ %work_done.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.1, i32 %budget)
  %cmp38 = icmp slt i32 %work_done.1, %budget
  br i1 %cmp38, label %if.then39, label %while.end.if.end41_crit_edge

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90, i32 -473104128) #11, !srcloc !143
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %while.end.if.end41_crit_edge
  %14 = load i32, ptr @owl_emac_poll.tx_err_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cmp42 = icmp sgt i32 %14, 10
  br i1 %cmp42, label %if.end41.do.body46_crit_edge, label %lor.lhs.false43

if.end41.do.body46_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

lor.lhs.false43:                                  ; preds = %if.end41
  %15 = load i32, ptr @owl_emac_poll.rx_err_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp44 = icmp sgt i32 %15, 10
  br i1 %cmp44, label %lor.lhs.false43.do.body46_crit_edge, label %lor.lhs.false43.if.end58_crit_edge

lor.lhs.false43.if.end58_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

lor.lhs.false43.do.body46_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

do.body46:                                        ; preds = %lor.lhs.false43.do.body46_crit_edge, %if.end41.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_emac_poll.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_emac_poll, %if.then52)) #11
          to label %do.end56 [label %if.then52], !srcloc !146

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %18 = load i32, ptr @owl_emac_poll.tx_err_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %18)
  %cmp53 = icmp sgt i32 %18, 10
  %cond = select i1 %cmp53, ptr @.str.47, ptr @.str.48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @owl_emac_poll.__UNIQUE_ID_ddebug367, ptr noundef %17, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond, i32 noundef %3) #11
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body46
  store i32 0, ptr @owl_emac_poll.rx_err_cnt, align 4
  store i32 0, ptr @owl_emac_poll.tx_err_cnt, align 4
  %mac_reset_task = getelementptr i8, ptr %napi, i32 332
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %mac_reset_task) #11
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %lor.lhs.false43.if.end58_crit_edge
  ret i32 %work_done.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_register_netdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %shl = shl i32 %addr, 21
  %and2 = and i32 %shl, 65011712
  %shl4 = shl i32 %regnum, 16
  %and5 = and i32 %shl4, 2031616
  %or3 = or i32 %and2, %and5
  %or6 = or i32 %or3, -2013265920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or6) #11
  %base.i = getelementptr inbounds %struct.owl_emac_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !143
  %call = tail call fastcc i32 @owl_emac_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %6, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end9 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %shl = shl i32 %addr, 21
  %and2 = and i32 %shl, 65011712
  %shl4 = shl i32 %regnum, 16
  %and5 = and i32 %shl4, 2031616
  %conv = zext i16 %val to i32
  %or3 = or i32 %and2, %and5
  %or6 = or i32 %or3, %conv
  %or8 = or i32 %or6, -2080374784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or8) #11
  %base.i = getelementptr inbounds %struct.owl_emac_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !143
  %call = tail call fastcc i32 @owl_emac_mdio_wait(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_mdio_wait(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1269) #11
  %base = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #11, !srcloc !144
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not40 = icmp sgt i32 %3, -1
  br i1 %tobool.not40, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !144
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #11
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !144
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  %tobool.not = icmp sgt i32 %11, -1
  br i1 %tobool.not, label %if.then26.for.end_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %7, %if.then16 ], [ %3, %entry.for.end_crit_edge ], [ %11, %if.then26.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool30.not.inv = icmp slt i32 %val.0, 0
  %cond = select i1 %tobool30.not.inv, i32 -110, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_emac_adjust_link(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
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
  %link28 = getelementptr i8, ptr %netdev, i32 2620
  %4 = ptrtoint ptr %link28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool29.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool29.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %link28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %link28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %speed = getelementptr i8, ptr %netdev, i32 2624
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  %speed11 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %speed11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %speed, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %state_changed.1 = phi i1 [ true, %if.then12 ], [ %tobool29.not, %if.end.if.end15_crit_edge ]
  %duplex = getelementptr i8, ptr %netdev, i32 2628
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duplex, align 4
  %duplex16 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %duplex16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp17.not = icmp eq i32 %13, %15
  br i1 %cmp17.not, label %if.end21, label %if.end21.thread

if.end21:                                         ; preds = %if.end15
  %pause = getelementptr i8, ptr %netdev, i32 2632
  %16 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pause, align 8
  %pause22 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %pause22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pause22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp23.not = icmp eq i32 %17, %19
  br i1 %cmp23.not, label %if.end38, label %if.end21.if.then24_crit_edge

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.end21.thread:                                  ; preds = %if.end15
  %20 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %duplex, align 4
  %pause79 = getelementptr i8, ptr %netdev, i32 2632
  %21 = ptrtoint ptr %pause79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pause79, align 8
  %pause2280 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %pause2280 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pause2280, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp23.not81 = icmp eq i32 %22, %24
  br i1 %cmp23.not81, label %if.end21.thread.if.then40_crit_edge, label %if.end21.thread.if.then24_crit_edge

if.end21.thread.if.then24_crit_edge:              ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.end21.thread.if.then40_crit_edge:              ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.then24:                                        ; preds = %if.end21.thread.if.then24_crit_edge, %if.end21.if.then24_crit_edge
  %25 = phi i32 [ %24, %if.end21.thread.if.then24_crit_edge ], [ %19, %if.end21.if.then24_crit_edge ]
  %pause83 = phi ptr [ %pause79, %if.end21.thread.if.then24_crit_edge ], [ %pause, %if.end21.if.then24_crit_edge ]
  %26 = ptrtoint ptr %pause83 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pause83, align 8
  br label %if.then40

if.else:                                          ; preds = %entry
  br i1 %tobool29.not, label %if.else.if.end52_crit_edge, label %if.then30

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %link28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %link28, align 4
  br label %if.then40

if.end38:                                         ; preds = %if.end21
  br i1 %state_changed.1, label %if.end38.if.then40_crit_edge, label %if.end38.if.end52_crit_edge

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end38.if.then40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.then40:                                        ; preds = %if.end38.if.then40_crit_edge, %if.then30, %if.then24, %if.end21.thread.if.then40_crit_edge
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load42 = load i16, ptr %link, align 8
  %29 = and i16 %bf.load42, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool46.not = icmp eq i16 %29, 0
  br i1 %tobool46.not, label %if.then40.if.end48_crit_edge, label %if.then47

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %pause.i = getelementptr i8, ptr %netdev, i32 2632
  %30 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pause.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %base.i.i = getelementptr i8, ptr %netdev, i32 2308
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %..i) #11, !srcloc !143
  %speed.i = getelementptr i8, ptr %netdev, i32 2624
  %34 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %35)
  %cmp.i = icmp eq i32 %35, 100
  %cond.i = select i1 %cmp.i, i32 0, i32 131072
  %duplex.i = getelementptr i8, ptr %netdev, i32 2628
  %36 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp2.i = icmp eq i32 %37, 1
  %or4.i = or i32 %cond.i, 512
  %val.1.i = select i1 %cmp2.i, i32 %or4.i, i32 %cond.i
  %lock.i = getelementptr i8, ptr %netdev, i32 2772
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %39, i32 48
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #11, !srcloc !144
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %and.i.i.i.i = and i32 %41, 8194
  %and1.i.i.i.i = and i32 %41, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %42 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i.i.i) #11
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i.i.i.i = getelementptr i8, ptr %44, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i.i, i32 %42) #11, !srcloc !143
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 48
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %48 = and i32 %47, -131841
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #11
  %or.i.i = or i32 %49, %val.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %52, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %50) #11, !srcloc !143
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %54, i32 48
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %56 = and i32 %55, -35651585
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  %or.i.i.i = or i32 %57, %and.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i, i32 %58) #11, !srcloc !143
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then40.if.end48_crit_edge
  %msg_enable = getelementptr i8, ptr %netdev, i32 2768
  %61 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable, align 8
  %and = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_print_status(ptr noundef %1) #11
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge, %if.end38.if.end52_crit_edge, %if.else.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_sym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_emac_disable(ptr noundef %netdev, i1 noundef zeroext %stop_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %base.i.i.i.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %3 = and i32 %2, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i, i32 %3) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -481492992) #11, !srcloc !143
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %napi = getelementptr i8, ptr %netdev, i32 2392
  tail call void @napi_disable(ptr noundef %napi) #11
  br i1 %stop_phy, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_ring.i = getelementptr i8, ptr %netdev, i32 2332
  %size.i = getelementptr i8, ptr %netdev, i32 2348
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27.not.i = icmp eq i32 %13, 0
  br i1 %cmp27.not.i, label %if.end.owl_emac_ring_unprepare_rx.exit_crit_edge, label %for.body.lr.ph.i

if.end.owl_emac_ring_unprepare_rx.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_unprepare_rx.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %skbs_dma.i = getelementptr i8, ptr %netdev, i32 2344
  %skbs.i = getelementptr i8, ptr %netdev, i32 2340
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.owl_emac_ring_desc, ptr %15, i32 %i.028.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skbs_dma.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %18, i32 %i.028.i
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %21 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skbs.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %22, i32 %i.028.i
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 133, i32 1
  %27 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end.i.owl_emac_dma_unmap_rx.exit.i_crit_edge

if.end.i.owl_emac_dma_unmap_rx.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_dma_unmap_rx.exit.i

cond.false.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 17
  %31 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %owl_emac_dma_unmap_rx.exit.i

owl_emac_dma_unmap_rx.exit.i:                     ; preds = %cond.false.i.i.i, %if.end.i.owl_emac_dma_unmap_rx.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end.i.owl_emac_dma_unmap_rx.exit.i_crit_edge ]
  tail call void @dma_unmap_page_attrs(ptr noundef %28, i32 noundef %20, i32 noundef %cond.i.i.i, i32 noundef 2, i32 noundef 0) #11
  %35 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skbs_dma.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %36, i32 %i.028.i
  %37 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx6.i, align 4
  %38 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skbs.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %39, i32 %i.028.i
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @consume_skb(ptr noundef %41) #11
  %42 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skbs.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %43, i32 %i.028.i
  %44 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx10.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %owl_emac_dma_unmap_rx.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.028.i, 1
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %46
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.owl_emac_ring_unprepare_rx.exit_crit_edge

for.inc.i.owl_emac_ring_unprepare_rx.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_unprepare_rx.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

owl_emac_ring_unprepare_rx.exit:                  ; preds = %for.inc.i.owl_emac_ring_unprepare_rx.exit_crit_edge, %if.end.owl_emac_ring_unprepare_rx.exit_crit_edge
  %tx_ring.i = getelementptr i8, ptr %netdev, i32 2360
  %size.i8 = getelementptr i8, ptr %netdev, i32 2376
  %47 = ptrtoint ptr %size.i8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp27.not.i9 = icmp eq i32 %48, 0
  br i1 %cmp27.not.i9, label %owl_emac_ring_unprepare_rx.exit.owl_emac_ring_unprepare_tx.exit_crit_edge, label %for.body.lr.ph.i12

owl_emac_ring_unprepare_rx.exit.owl_emac_ring_unprepare_tx.exit_crit_edge: ; preds = %owl_emac_ring_unprepare_rx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_unprepare_tx.exit

for.body.lr.ph.i12:                               ; preds = %owl_emac_ring_unprepare_rx.exit
  %skbs_dma.i10 = getelementptr i8, ptr %netdev, i32 2372
  %skbs.i11 = getelementptr i8, ptr %netdev, i32 2368
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.inc.i26.for.body.i17_crit_edge, %for.body.lr.ph.i12
  %i.028.i13 = phi i32 [ 0, %for.body.lr.ph.i12 ], [ %inc.i24, %for.inc.i26.for.body.i17_crit_edge ]
  %49 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i14 = getelementptr %struct.owl_emac_ring_desc, ptr %50, i32 %i.028.i13
  %51 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx.i14, align 4
  %52 = ptrtoint ptr %skbs_dma.i10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skbs_dma.i10, align 4
  %arrayidx1.i15 = getelementptr i32, ptr %53, i32 %i.028.i13
  %54 = ptrtoint ptr %arrayidx1.i15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx1.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i16 = icmp eq i32 %55, 0
  br i1 %tobool.not.i16, label %for.body.i17.for.inc.i26_crit_edge, label %if.end.i23

for.body.i17.for.inc.i26_crit_edge:               ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i26

if.end.i23:                                       ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %skbs.i11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skbs.i11, align 4
  %arrayidx2.i18 = getelementptr ptr, ptr %57, i32 %i.028.i13
  %58 = ptrtoint ptr %arrayidx2.i18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx2.i18, align 4
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i.i19 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 133, i32 1
  %62 = ptrtoint ptr %parent.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i.i.i19, align 8
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 6
  %64 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 7
  %66 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %65, %67
  tail call void @dma_unmap_page_attrs(ptr noundef %63, i32 noundef %55, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #11
  %68 = ptrtoint ptr %skbs_dma.i10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skbs_dma.i10, align 4
  %arrayidx6.i20 = getelementptr i32, ptr %69, i32 %i.028.i13
  %70 = ptrtoint ptr %arrayidx6.i20 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx6.i20, align 4
  %71 = ptrtoint ptr %skbs.i11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %skbs.i11, align 4
  %arrayidx8.i21 = getelementptr ptr, ptr %72, i32 %i.028.i13
  %73 = ptrtoint ptr %arrayidx8.i21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx8.i21, align 4
  tail call void @consume_skb(ptr noundef %74) #11
  %75 = ptrtoint ptr %skbs.i11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skbs.i11, align 4
  %arrayidx10.i22 = getelementptr ptr, ptr %76, i32 %i.028.i13
  %77 = ptrtoint ptr %arrayidx10.i22 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx10.i22, align 4
  br label %for.inc.i26

for.inc.i26:                                      ; preds = %if.end.i23, %for.body.i17.for.inc.i26_crit_edge
  %inc.i24 = add nuw i32 %i.028.i13, 1
  %78 = ptrtoint ptr %size.i8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size.i8, align 4
  %cmp.i25 = icmp ult i32 %inc.i24, %79
  br i1 %cmp.i25, label %for.inc.i26.for.body.i17_crit_edge, label %for.inc.i26.owl_emac_ring_unprepare_tx.exit_crit_edge

for.inc.i26.owl_emac_ring_unprepare_tx.exit_crit_edge: ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_unprepare_tx.exit

for.inc.i26.for.body.i17_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i17

owl_emac_ring_unprepare_tx.exit:                  ; preds = %for.inc.i26.owl_emac_ring_unprepare_tx.exit_crit_edge, %owl_emac_ring_unprepare_rx.exit.owl_emac_ring_unprepare_tx.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_enable(ptr noundef %netdev, i1 noundef zeroext %start_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %base.i.i.i.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %3 = and i32 %2, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i, i32 %3) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -481492992) #11, !srcloc !143
  %8 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i33, i32 %10) #11, !srcloc !143
  %tx_ring.i = getelementptr i8, ptr %netdev, i32 2360
  %size.i = getelementptr i8, ptr %netdev, i32 2376
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14.not.i = icmp eq i32 %14, 0
  br i1 %cmp14.not.i, label %entry.owl_emac_ring_prepare_tx.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.owl_emac_ring_prepare_tx.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_prepare_tx.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.owl_emac_ring_desc, ptr %16, i32 %i.015.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.i, align 4
  %control.i = getelementptr %struct.owl_emac_ring_desc, ptr %16, i32 %i.015.i, i32 1
  %18 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2147483648, ptr %control.i, align 4
  %buf_addr.i = getelementptr %struct.owl_emac_ring_desc, ptr %16, i32 %i.015.i, i32 2
  %19 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %buf_addr.i, align 4
  %reserved.i = getelementptr %struct.owl_emac_ring_desc, ptr %16, i32 %i.015.i, i32 3
  %20 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reserved.i, align 4
  %inc.i = add nuw i32 %i.015.i, 1
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.owl_emac_ring_prepare_tx.exit_crit_edge

for.body.i.owl_emac_ring_prepare_tx.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_prepare_tx.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

owl_emac_ring_prepare_tx.exit:                    ; preds = %for.body.i.owl_emac_ring_prepare_tx.exit_crit_edge, %entry.owl_emac_ring_prepare_tx.exit_crit_edge
  %desc.0.lcssa.i = phi ptr [ inttoptr (i32 -1 to ptr), %entry.owl_emac_ring_prepare_tx.exit_crit_edge ], [ %arrayidx.i, %for.body.i.owl_emac_ring_prepare_tx.exit_crit_edge ]
  %control1.i = getelementptr inbounds %struct.owl_emac_ring_desc, ptr %desc.0.lcssa.i, i32 0, i32 1
  %23 = ptrtoint ptr %control1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control1.i, align 4
  %or.i = or i32 %24, 33554432
  store i32 %or.i, ptr %control1.i, align 4
  %skbs_dma.i = getelementptr i8, ptr %netdev, i32 2372
  %25 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skbs_dma.i, align 4
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %mul.i = shl i32 %28, 2
  %29 = call ptr @memset(ptr %26, i32 0, i32 %mul.i)
  %head.i = getelementptr i8, ptr %netdev, i32 2380
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %head.i, align 4
  %tail.i = getelementptr i8, ptr %netdev, i32 2384
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tail.i, align 4
  %rx_ring.i = getelementptr i8, ptr %netdev, i32 2332
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 133, i32 1
  %34 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i, align 8
  %size.i34 = getelementptr i8, ptr %netdev, i32 2348
  %36 = ptrtoint ptr %size.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp43.not.i = icmp eq i32 %37, 0
  br i1 %cmp43.not.i, label %owl_emac_ring_prepare_tx.exit.if.end_crit_edge, label %for.body.lr.ph.i

owl_emac_ring_prepare_tx.exit.if.end_crit_edge:   ; preds = %owl_emac_ring_prepare_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %owl_emac_ring_prepare_tx.exit
  %skbs.i = getelementptr i8, ptr %netdev, i32 2340
  %skbs_dma.i35 = getelementptr i8, ptr %netdev, i32 2344
  br label %for.body.i36

for.body.i36:                                     ; preds = %skb_tailroom.exit.i.for.body.i36_crit_edge, %for.body.lr.ph.i
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i42, %skb_tailroom.exit.i.for.body.i36_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %33, i32 noundef 1536, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i36.err_unprep_crit_edge, label %if.end.i.i, !prof !149

for.body.i36.err_unprep_crit_edge:                ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unprep

if.end.i.i:                                       ; preds = %for.body.i36
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then11.i.i, !prof !150

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub nuw nsw i32 4, %and.i.i
  %add.ptr.i.i.i37 = getelementptr i8, ptr %39, i32 %sub.i.i
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i.i37, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %43, i32 %sub.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i.i, %if.end.i.i.if.end.i_crit_edge
  %call3.i = tail call fastcc i32 @owl_emac_dma_map_rx(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i.i) #11
  tail call void @debug_dma_mapping_error(ptr noundef %35, i32 noundef %call3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i.not.i = icmp eq i32 %call3.i, -1
  br i1 %cmp.i.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #11
  br label %err_unprep

if.end7.i:                                        ; preds = %if.end.i
  %44 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i38 = getelementptr %struct.owl_emac_ring_desc, ptr %45, i32 %i.044.i
  %46 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -2147483648, ptr %arrayidx.i38, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end7.i.skb_tailroom.exit.i_crit_edge

if.end7.i.skb_tailroom.exit.i_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %49 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end7.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end7.i.skb_tailroom.exit.i_crit_edge ]
  %and.i = and i32 %cond.i.i, 2047
  %control.i39 = getelementptr %struct.owl_emac_ring_desc, ptr %45, i32 %i.044.i, i32 1
  %53 = ptrtoint ptr %control.i39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.i, ptr %control.i39, align 4
  %buf_addr.i40 = getelementptr %struct.owl_emac_ring_desc, ptr %45, i32 %i.044.i, i32 2
  %54 = ptrtoint ptr %buf_addr.i40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call3.i, ptr %buf_addr.i40, align 4
  %reserved.i41 = getelementptr %struct.owl_emac_ring_desc, ptr %45, i32 %i.044.i, i32 3
  %55 = ptrtoint ptr %reserved.i41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %reserved.i41, align 4
  %56 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skbs.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %57, i32 %i.044.i
  %58 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i.i, ptr %arrayidx9.i, align 4
  %59 = ptrtoint ptr %skbs_dma.i35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skbs_dma.i35, align 4
  %arrayidx10.i = getelementptr i32, ptr %60, i32 %i.044.i
  %61 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call3.i, ptr %arrayidx10.i, align 4
  %inc.i42 = add nuw i32 %i.044.i, 1
  %62 = ptrtoint ptr %size.i34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i34, align 4
  %cmp.i43 = icmp ult i32 %inc.i42, %63
  br i1 %cmp.i43, label %skb_tailroom.exit.i.for.body.i36_crit_edge, label %skb_tailroom.exit.i.if.end_crit_edge

skb_tailroom.exit.i.if.end_crit_edge:             ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_tailroom.exit.i.for.body.i36_crit_edge:       ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i36

if.end:                                           ; preds = %skb_tailroom.exit.i.if.end_crit_edge, %owl_emac_ring_prepare_tx.exit.if.end_crit_edge
  %desc.0.lcssa.i44 = phi ptr [ inttoptr (i32 -1 to ptr), %owl_emac_ring_prepare_tx.exit.if.end_crit_edge ], [ %arrayidx.i38, %skb_tailroom.exit.i.if.end_crit_edge ]
  %control11.i = getelementptr inbounds %struct.owl_emac_ring_desc, ptr %desc.0.lcssa.i44, i32 0, i32 1
  %64 = ptrtoint ptr %control11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %control11.i, align 4
  %or.i45 = or i32 %65, 33554432
  store i32 %or.i45, ptr %control11.i, align 4
  %head.i46 = getelementptr i8, ptr %netdev, i32 2352
  %66 = ptrtoint ptr %head.i46 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %head.i46, align 4
  %tail.i47 = getelementptr i8, ptr %netdev, i32 2356
  %67 = ptrtoint ptr %tail.i47 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tail.i47, align 4
  %call4 = tail call fastcc i32 @owl_emac_core_sw_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.38, i32 noundef %call4) #14
  br label %err_unprep

if.end7:                                          ; preds = %if.end
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %68 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_addr.i, align 64
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i = zext i8 %71 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %69, i32 1
  %72 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %73 to i32
  %or.i48 = or i32 %shl.i, %conv2.i
  %arrayidx3.i = getelementptr i8, ptr %69, i32 2
  %74 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %75 to i32
  %shl5.i = shl nuw i32 %conv4.i, 24
  %arrayidx6.i = getelementptr i8, ptr %69, i32 3
  %76 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %77 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %shl8.i, %shl5.i
  %arrayidx10.i49 = getelementptr i8, ptr %69, i32 4
  %78 = ptrtoint ptr %arrayidx10.i49 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx10.i49, align 1
  %conv11.i = zext i8 %79 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 8
  %or13.i = or i32 %or9.i, %shl12.i
  %arrayidx14.i = getelementptr i8, ptr %69, i32 5
  %80 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %81 to i32
  %or16.i = or i32 %or13.i, %conv15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %82 = tail call i32 @llvm.bswap.i32(i32 %or.i48) #11
  %83 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %84, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %82) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %85 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #11
  %86 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %87, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %85) #11, !srcloc !143
  %call8 = tail call fastcc i32 @owl_emac_setup_frame_xmit(ptr noundef %add.ptr.i)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %88 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %89, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %89, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #11
  %napi = getelementptr i8, ptr %netdev, i32 2392
  tail call void @napi_enable(ptr noundef %napi) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %91, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 -473104128) #11, !srcloc !143
  %92 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i54 = getelementptr i8, ptr %93, i32 48
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i54) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %95 = or i32 %94, 35651584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %96 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i.i.i55 = getelementptr i8, ptr %97, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i55, i32 %95) #11, !srcloc !143
  br i1 %start_phy, label %if.then11, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %98 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %99) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7.if.end12_crit_edge
  %100 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i57 = getelementptr inbounds %struct.netdev_queue, ptr %101, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i57) #11
  br label %cleanup

err_unprep:                                       ; preds = %if.then6, %if.then6.i, %for.body.i36.err_unprep_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then6 ], [ -12, %if.then6.i ], [ -12, %for.body.i36.err_unprep_crit_edge ]
  %102 = ptrtoint ptr %size.i34 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %size.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp27.not.i = icmp eq i32 %103, 0
  br i1 %cmp27.not.i, label %err_unprep.owl_emac_ring_unprepare_rx.exit_crit_edge, label %for.body.lr.ph.i62

err_unprep.owl_emac_ring_unprepare_rx.exit_crit_edge: ; preds = %err_unprep
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_unprepare_rx.exit

for.body.lr.ph.i62:                               ; preds = %err_unprep
  %skbs_dma.i60 = getelementptr i8, ptr %netdev, i32 2344
  %skbs.i61 = getelementptr i8, ptr %netdev, i32 2340
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.inc.i.for.body.i65_crit_edge, %for.body.lr.ph.i62
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i62 ], [ %inc.i70, %for.inc.i.for.body.i65_crit_edge ]
  %104 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i63 = getelementptr %struct.owl_emac_ring_desc, ptr %105, i32 %i.028.i
  %106 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %arrayidx.i63, align 4
  %107 = ptrtoint ptr %skbs_dma.i60 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %skbs_dma.i60, align 4
  %arrayidx1.i64 = getelementptr i32, ptr %108, i32 %i.028.i
  %109 = ptrtoint ptr %arrayidx1.i64 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx1.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i, label %for.body.i65.for.inc.i_crit_edge, label %if.end.i66

for.body.i65.for.inc.i_crit_edge:                 ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i66:                                       ; preds = %for.body.i65
  %111 = ptrtoint ptr %skbs.i61 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skbs.i61, align 4
  %arrayidx2.i = getelementptr ptr, ptr %112, i32 %i.028.i
  %113 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx2.i, align 4
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 133, i32 1
  %117 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %parent.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %114, i32 0, i32 7
  %119 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i.not.i.i.i = icmp eq i32 %120, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end.i66.owl_emac_dma_unmap_rx.exit.i_crit_edge

if.end.i66.owl_emac_dma_unmap_rx.exit.i_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_dma_unmap_rx.exit.i

cond.false.i.i.i:                                 ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %114, i32 0, i32 17
  %121 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %114, i32 0, i32 16
  %123 = ptrtoint ptr %tail.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tail.i.i.i67, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %owl_emac_dma_unmap_rx.exit.i

owl_emac_dma_unmap_rx.exit.i:                     ; preds = %cond.false.i.i.i, %if.end.i66.owl_emac_dma_unmap_rx.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end.i66.owl_emac_dma_unmap_rx.exit.i_crit_edge ]
  tail call void @dma_unmap_page_attrs(ptr noundef %118, i32 noundef %110, i32 noundef %cond.i.i.i, i32 noundef 2, i32 noundef 0) #11
  %125 = ptrtoint ptr %skbs_dma.i60 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %skbs_dma.i60, align 4
  %arrayidx6.i68 = getelementptr i32, ptr %126, i32 %i.028.i
  %127 = ptrtoint ptr %arrayidx6.i68 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %arrayidx6.i68, align 4
  %128 = ptrtoint ptr %skbs.i61 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %skbs.i61, align 4
  %arrayidx8.i = getelementptr ptr, ptr %129, i32 %i.028.i
  %130 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @consume_skb(ptr noundef %131) #11
  %132 = ptrtoint ptr %skbs.i61 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %skbs.i61, align 4
  %arrayidx10.i69 = getelementptr ptr, ptr %133, i32 %i.028.i
  %134 = ptrtoint ptr %arrayidx10.i69 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %arrayidx10.i69, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %owl_emac_dma_unmap_rx.exit.i, %for.body.i65.for.inc.i_crit_edge
  %inc.i70 = add nuw i32 %i.028.i, 1
  %135 = ptrtoint ptr %size.i34 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %size.i34, align 4
  %cmp.i71 = icmp ult i32 %inc.i70, %136
  br i1 %cmp.i71, label %for.inc.i.for.body.i65_crit_edge, label %for.inc.i.owl_emac_ring_unprepare_rx.exit_crit_edge

for.inc.i.owl_emac_ring_unprepare_rx.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_ring_unprepare_rx.exit

for.inc.i.for.body.i65_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i65

owl_emac_ring_unprepare_rx.exit:                  ; preds = %for.inc.i.owl_emac_ring_unprepare_rx.exit_crit_edge, %err_unprep.owl_emac_ring_unprepare_rx.exit_crit_edge
  %137 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp27.not.i75 = icmp eq i32 %138, 0
  br i1 %cmp27.not.i75, label %owl_emac_ring_unprepare_rx.exit.cleanup_crit_edge, label %for.body.lr.ph.i78

owl_emac_ring_unprepare_rx.exit.cleanup_crit_edge: ; preds = %owl_emac_ring_unprepare_rx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i78:                               ; preds = %owl_emac_ring_unprepare_rx.exit
  %skbs.i77 = getelementptr i8, ptr %netdev, i32 2368
  br label %for.body.i83

for.body.i83:                                     ; preds = %for.inc.i93.for.body.i83_crit_edge, %for.body.lr.ph.i78
  %i.028.i79 = phi i32 [ 0, %for.body.lr.ph.i78 ], [ %inc.i91, %for.inc.i93.for.body.i83_crit_edge ]
  %139 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i80 = getelementptr %struct.owl_emac_ring_desc, ptr %140, i32 %i.028.i79
  %141 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %arrayidx.i80, align 4
  %142 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %skbs_dma.i, align 4
  %arrayidx1.i81 = getelementptr i32, ptr %143, i32 %i.028.i79
  %144 = ptrtoint ptr %arrayidx1.i81 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx1.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i82 = icmp eq i32 %145, 0
  br i1 %tobool.not.i82, label %for.body.i83.for.inc.i93_crit_edge, label %if.end.i90

for.body.i83.for.inc.i93_crit_edge:               ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i93

if.end.i90:                                       ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %skbs.i77 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %skbs.i77, align 4
  %arrayidx2.i84 = getelementptr ptr, ptr %147, i32 %i.028.i79
  %148 = ptrtoint ptr %arrayidx2.i84 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx2.i84, align 4
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i.i85 = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 133, i32 1
  %152 = ptrtoint ptr %parent.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %parent.i.i.i85, align 8
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %149, i32 0, i32 6
  %154 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %149, i32 0, i32 7
  %156 = ptrtoint ptr %data_len.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %data_len.i.i.i86, align 8
  %sub.i.i.i = sub i32 %155, %157
  tail call void @dma_unmap_page_attrs(ptr noundef %153, i32 noundef %145, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #11
  %158 = ptrtoint ptr %skbs_dma.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %skbs_dma.i, align 4
  %arrayidx6.i87 = getelementptr i32, ptr %159, i32 %i.028.i79
  %160 = ptrtoint ptr %arrayidx6.i87 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %arrayidx6.i87, align 4
  %161 = ptrtoint ptr %skbs.i77 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %skbs.i77, align 4
  %arrayidx8.i88 = getelementptr ptr, ptr %162, i32 %i.028.i79
  %163 = ptrtoint ptr %arrayidx8.i88 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx8.i88, align 4
  tail call void @consume_skb(ptr noundef %164) #11
  %165 = ptrtoint ptr %skbs.i77 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %skbs.i77, align 4
  %arrayidx10.i89 = getelementptr ptr, ptr %166, i32 %i.028.i79
  %167 = ptrtoint ptr %arrayidx10.i89 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %arrayidx10.i89, align 4
  br label %for.inc.i93

for.inc.i93:                                      ; preds = %if.end.i90, %for.body.i83.for.inc.i93_crit_edge
  %inc.i91 = add nuw i32 %i.028.i79, 1
  %168 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %size.i, align 4
  %cmp.i92 = icmp ult i32 %inc.i91, %169
  br i1 %cmp.i92, label %for.inc.i93.for.body.i83_crit_edge, label %for.inc.i93.cleanup_crit_edge

for.inc.i93.cleanup_crit_edge:                    ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i93.for.body.i83_crit_edge:               ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i83

cleanup:                                          ; preds = %for.inc.i93.cleanup_crit_edge, %owl_emac_ring_unprepare_rx.exit.cleanup_crit_edge, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %ret.0, %owl_emac_ring_unprepare_rx.exit.cleanup_crit_edge ], [ %ret.0, %for.inc.i93.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_core_sw_reset(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #11, !srcloc !143
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 975) #11
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !144
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %and92 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool.not93 = icmp eq i32 %and92, 0
  br i1 %tobool.not93, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !144
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !152
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #11
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !144
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %and = and i32 %17, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.for.end_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %13, %if.then16 ], [ %9, %entry.for.end_crit_edge ], [ %17, %if.then26.for.end_crit_edge ]
  %and29 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end33, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %phy_mode = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 8
  %18 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp34 = icmp eq i32 %19, 7
  %. = select i1 %cmp34, i32 0, i32 1090519040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %.) #11, !srcloc !143
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 80
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %and.i = and i32 %24, 48
  %or2.i = or i32 %and.i, 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %or2.i) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %28, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 268451840) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %30, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 -11599872) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %32, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 19968) #11, !srcloc !143
  %descs_dma = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %descs_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %descs_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  %36 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %35) #11, !srcloc !143
  %descs_dma39 = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %descs_dma39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %descs_dma39, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %41 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %40) #11, !srcloc !143
  %43 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %44, i32 48
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %46 = and i32 %45, -131841
  %47 = or i32 %46, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %48 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %49, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %47) #11, !srcloc !143
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 48
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %53 = and i32 %52, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %54 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %55, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %53) #11, !srcloc !143
  %link = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 9
  %56 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %link, align 4
  %speed = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 10
  %57 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 11
  %58 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 255, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 12
  %59 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pause, align 8
  %count = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 13, i32 1
  %60 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_setup_frame_xmit(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1536, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !149

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !150

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub nuw nsw i32 4, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %sub.i
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 %sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr.i, align 64
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 192) #11
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = call ptr @memset(ptr %13, i32 0, i32 %15)
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i.i, ptr %13, align 4
  %arrayidx2.i.i = getelementptr i16, ptr %11, i32 1
  %20 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx2.i.i, align 2
  %conv3.i.i = zext i16 %21 to i32
  %arrayidx4.i.i = getelementptr i32, ptr %13, i32 1
  %22 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv3.i.i, ptr %arrayidx4.i.i, align 4
  %arrayidx5.i.i = getelementptr i16, ptr %11, i32 2
  %23 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %24 to i32
  %arrayidx7.i.i = getelementptr i32, ptr %13, i32 2
  %25 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv6.i.i, ptr %arrayidx7.i.i, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %13, i32 12
  %26 = ptrtoint ptr %add.ptr.i.i104 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65535, ptr %add.ptr.i.i104, align 4
  %arrayidx4.i36.i = getelementptr i8, ptr %13, i32 16
  %27 = ptrtoint ptr %arrayidx4.i36.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65535, ptr %arrayidx4.i36.i, align 4
  %arrayidx7.i39.i = getelementptr i8, ptr %13, i32 20
  %28 = ptrtoint ptr %arrayidx7.i39.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65535, ptr %arrayidx7.i39.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %13, i32 24
  %mcaddr_list.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 13
  %count.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %30)
  %cmp.i = icmp sgt i32 %30, 13
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i105_crit_edge, !prof !149

if.end.if.end.i105_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i105

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 478, i32 noundef 9, ptr noundef null) #11
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr.i = load i32, ptr %count.i, align 4
  br label %if.end.i105

if.end.i105:                                      ; preds = %do.end.i, %if.end.if.end.i105_crit_edge
  %32 = phi i32 [ %.pr.i, %do.end.i ], [ %30, %if.end.if.end.i105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2154.i = icmp sgt i32 %32, 0
  br i1 %cmp2154.i, label %if.end.i105.for.body.i_crit_edge, label %if.end.i105.owl_emac_setup_frame_prepare.exit_crit_edge

if.end.i105.owl_emac_setup_frame_prepare.exit_crit_edge: ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_setup_frame_prepare.exit

if.end.i105.for.body.i_crit_edge:                 ; preds = %if.end.i105
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i105.for.body.i_crit_edge
  %i.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i105.for.body.i_crit_edge ]
  %frame.055.i = phi ptr [ %add.ptr.i48.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i40.i, %if.end.i105.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [14 x [6 x i8]], ptr %mcaddr_list.i, i32 0, i32 %i.056.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i, align 2
  %conv.i41.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %frame.055.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i41.i, ptr %frame.055.i, align 4
  %arrayidx2.i42.i = getelementptr i16, ptr %arrayidx.i, i32 1
  %36 = ptrtoint ptr %arrayidx2.i42.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx2.i42.i, align 2
  %conv3.i43.i = zext i16 %37 to i32
  %arrayidx4.i44.i = getelementptr i32, ptr %frame.055.i, i32 1
  %38 = ptrtoint ptr %arrayidx4.i44.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv3.i43.i, ptr %arrayidx4.i44.i, align 4
  %arrayidx5.i45.i = getelementptr i16, ptr %arrayidx.i, i32 2
  %39 = ptrtoint ptr %arrayidx5.i45.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx5.i45.i, align 2
  %conv6.i46.i = zext i16 %40 to i32
  %arrayidx7.i47.i = getelementptr i32, ptr %frame.055.i, i32 2
  %41 = ptrtoint ptr %arrayidx7.i47.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv6.i46.i, ptr %arrayidx7.i47.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %frame.055.i, i32 12
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count.i, align 4
  %cmp21.i = icmp slt i32 %inc.i, %43
  br i1 %cmp21.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.owl_emac_setup_frame_prepare.exit_crit_edge

for.body.i.owl_emac_setup_frame_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_setup_frame_prepare.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

owl_emac_setup_frame_prepare.exit:                ; preds = %for.body.i.owl_emac_setup_frame_prepare.exit_crit_edge, %if.end.i105.owl_emac_setup_frame_prepare.exit_crit_edge
  %call2 = tail call fastcc i32 @owl_emac_dma_map_tx(ptr noundef %priv, ptr noundef nonnull %call.i.i)
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 133, i32 1
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %47, i32 noundef %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp.i106.not = icmp eq i32 %call2, -1
  br i1 %cmp.i106.not, label %owl_emac_setup_frame_prepare.exit.err_free_skb_crit_edge, label %if.end7

owl_emac_setup_frame_prepare.exit.err_free_skb_crit_edge: ; preds = %owl_emac_setup_frame_prepare.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_skb

if.end7:                                          ; preds = %owl_emac_setup_frame_prepare.exit
  %lock = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %head = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 5
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %head, align 4
  %50 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.owl_emac_ring_desc, ptr %51, i32 %49
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx, align 4
  %control13 = getelementptr %struct.owl_emac_ring_desc, ptr %51, i32 %49, i32 1
  %54 = ptrtoint ptr %control13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %control13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %tobool14.not = icmp sgt i32 %53, -1
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end7.if.then19_crit_edge, !prof !150

if.end7.if.then19_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end7
  %tail.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 6
  %56 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tail.i, align 4
  %58 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %head, align 4
  %add.neg.i = xor i32 %59, -1
  %sub.i107 = add i32 %57, %add.neg.i
  %size.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 4
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i, align 4
  %sub1.i = add i32 %61, -1
  %and.i108 = and i32 %sub1.i, %sub.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool18.not = icmp eq i32 %and.i108, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.then19_crit_edge, label %if.end21

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end7.if.then19_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 133, i32 1
  %64 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent.i.i, align 8
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %68 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %67, %69
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %call2, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #11
  br label %err_free_skb

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %skbs = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skbs, align 4
  %arrayidx22 = getelementptr ptr, ptr %71, i32 %49
  %72 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i, ptr %arrayidx22, align 4
  %skbs_dma = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 3
  %73 = ptrtoint ptr %skbs_dma to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skbs_dma, align 4
  %arrayidx23 = getelementptr i32, ptr %74, i32 %49
  %75 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call2, ptr %arrayidx23, align 4
  %and24 = and i32 %55, -2113929216
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i, align 4
  %and25 = and i32 %77, 2047
  %or = or i32 %and24, %and25
  %or26 = or i32 %or, 134217728
  %78 = ptrtoint ptr %control13 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 %or26, ptr %control13, align 4
  %buf_addr = getelementptr %struct.owl_emac_ring_desc, ptr %51, i32 %49, i32 2
  %79 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 %call2, ptr %buf_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 -2147483648, ptr %arrayidx, align 4
  %81 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %head, align 4
  %add.i.i = add i32 %82, 1
  %83 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i, align 4
  %sub.i.i110 = add i32 %84, -1
  %and.i.i = and i32 %sub.i.i110, %add.i.i
  store i32 %and.i.i, ptr %head, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 1
  %85 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %86, i32 48
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !144
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %and.i.i.i = and i32 %88, 8192
  %or.i.i.i = or i32 %88, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %89 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  %90 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %91, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i, i32 %89) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %93, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111, i32 16777216) #11, !srcloc !143
  %94 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %95, i32 48
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %97 = and i32 %96, -2097153
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %or.i.i = or i32 %98, %and.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %100 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %101, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %99) #11, !srcloc !143
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %102 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %103, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %cleanup

err_free_skb:                                     ; preds = %if.then19, %owl_emac_setup_frame_prepare.exit.err_free_skb_crit_edge
  %ret.0 = phi i32 [ -16, %if.then19 ], [ -12, %owl_emac_setup_frame_prepare.exit.err_free_skb_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_skb, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_skb ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_dma_map_rx(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %entry.skb_tailroom.exit_crit_edge

entry.skb_tailroom.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %entry.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %entry.skb_tailroom.exit_crit_edge ]
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %skb_tailroom.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !150

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %5, i32 noundef %cond.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %cond.i, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_dma_map_tx(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !150

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %7, %9
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %5, i32 noundef %sub.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %5 to i32
  %sub.i4 = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i4, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_ndo_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @owl_emac_enable(ptr noundef %netdev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_ndo_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @owl_emac_disable(ptr noundef %netdev, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_ndo_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %call2 = tail call fastcc i32 @owl_emac_dma_map_tx(ptr noundef %add.ptr.i, ptr noundef %skb)
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp.i.not = icmp eq i32 %call2, -1
  br i1 %cmp.i.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @owl_emac_ndo_start_xmit._rs, ptr noundef nonnull @__func__.owl_emac_ndo_start_xmit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev8 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.42) #14
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #11
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %4 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end11:                                         ; preds = %entry
  %tx_ring = getelementptr i8, ptr %netdev, i32 2360
  %lock = getelementptr i8, ptr %netdev, i32 2772
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %head = getelementptr i8, ptr %netdev, i32 2380
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.owl_emac_ring_desc, ptr %9, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx, align 4
  %control20 = getelementptr %struct.owl_emac_ring_desc, ptr %9, i32 %7, i32 1
  %12 = ptrtoint ptr %control20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %control20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  %tail.i = getelementptr i8, ptr %netdev, i32 2384
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail.i, align 4
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %add.neg.i = xor i32 %17, -1
  %sub.i = add i32 %15, %add.neg.i
  %size.i = getelementptr i8, ptr %netdev, i32 2376
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %sub1.i = add i32 %19, -1
  %and.i = and i32 %sub1.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool23.not = icmp sgt i32 %11, -1
  %or.cond = select i1 %tobool22.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %if.end49, label %if.then26, !prof !156

if.then26:                                        ; preds = %if.end11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_emac_ndo_start_xmit.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_emac_ndo_start_xmit, %land.lhs.true)) #11
          to label %do.end45 [label %land.lhs.true], !srcloc !146

land.lhs.true:                                    ; preds = %if.then26
  %call38 = tail call i32 @___ratelimit(ptr noundef nonnull @owl_emac_ndo_start_xmit._rs.43, ptr noundef nonnull @__func__.owl_emac_ndo_start_xmit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end45_crit_edge, label %if.then40

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev41 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  %base.i.i = getelementptr i8, ptr %netdev, i32 2308
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 40
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !144
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_emac_ndo_start_xmit.descriptor, ptr noundef %dev41, ptr noundef nonnull @.str.44, i32 noundef %25) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %land.lhs.true.do.end45_crit_edge, %if.then26
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 133, i32 1
  %28 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %31, %33
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %call2, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #11
  %tx_dropped47 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped47, align 4
  %inc48 = add i32 %35, 1
  store i32 %inc48, ptr %tx_dropped47, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %skbs = getelementptr i8, ptr %netdev, i32 2368
  %36 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skbs, align 4
  %arrayidx50 = getelementptr ptr, ptr %37, i32 %7
  %38 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %skb, ptr %arrayidx50, align 4
  %skbs_dma = getelementptr i8, ptr %netdev, i32 2372
  %39 = ptrtoint ptr %skbs_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skbs_dma, align 4
  %arrayidx51 = getelementptr i32, ptr %40, i32 %7
  %41 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call2, ptr %arrayidx51, align 4
  %and52 = and i32 %13, -2113929216
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %and53 = and i32 %43, 2047
  %or = or i32 %and52, %and53
  %or54 = or i32 %or, 1610612736
  %44 = ptrtoint ptr %control20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %or54, ptr %control20, align 4
  %buf_addr = getelementptr %struct.owl_emac_ring_desc, ptr %9, i32 %7, i32 2
  %45 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %call2, ptr %buf_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 -2147483648, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %base.i.i127 = getelementptr i8, ptr %netdev, i32 2308
  %47 = ptrtoint ptr %base.i.i127 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i127, align 4
  %add.ptr.i.i128 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i128, i32 16777216) #11, !srcloc !143
  %49 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %head, align 4
  %add.i.i = add i32 %50, 1
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i, align 4
  %sub.i.i130 = add i32 %52, -1
  %and.i.i = and i32 %sub.i.i130, %add.i.i
  store i32 %and.i.i, ptr %head, align 4
  %_tx.i.i131 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %53 = ptrtoint ptr %_tx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i131, align 128
  %state.i.i132 = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i132) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end45, %do.end10
  %retval.0 = phi i32 [ 0, %do.end10 ], [ 16, %do.end45 ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_emac_ndo_set_rx_mode(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else5:                                         ; preds = %if.else
  %and7 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else5.if.end13_crit_edge, label %if.then9

if.else5.if.end13_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp = icmp sgt i32 %3, 14
  %spec.select30 = select i1 %cmp, i32 128, i32 0
  %4 = add i32 %3, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %4)
  %5 = icmp ult i32 %4, -14
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else5.if.end13_crit_edge, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  %val.0 = phi i32 [ 0, %if.else5.if.end13_crit_edge ], [ 64, %entry.if.end13_crit_edge ], [ 128, %if.else.if.end13_crit_edge ], [ %spec.select30, %if.then9 ]
  %mcast_count.0 = phi i1 [ true, %if.else5.if.end13_crit_edge ], [ true, %entry.if.end13_crit_edge ], [ true, %if.else.if.end13_crit_edge ], [ %5, %if.then9 ]
  %lock = getelementptr i8, ptr %netdev, i32 2772
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %base.i.i.i.i = getelementptr i8, ptr %netdev, i32 2308
  %6 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !144
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %and.i.i.i = and i32 %9, 8194
  %and1.i.i.i = and i32 %9, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i.i) #11
  %11 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.i, i32 %10) #11, !srcloc !143
  %13 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %16 = and i32 %15, 1073741823
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %or.i = or i32 %17, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %19 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %18) #11, !srcloc !143
  %21 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %24 = and i32 %23, -35651585
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %or.i.i = or i32 %25, %and.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %27 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %26) #11, !srcloc !143
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br i1 %mcast_count.0, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %count1.i = getelementptr i8, ptr %netdev, i32 2720
  %29 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %count1.i, align 4
  br label %owl_emac_set_multicast.exit

if.end.i:                                         ; preds = %if.end13
  %mc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %30 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %ha.058.i = load ptr, ptr %mc.i, align 4
  %cmp5.not59.i = icmp eq ptr %ha.058.i, %mc.i
  br i1 %cmp5.not59.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %mcaddr_list32.i = getelementptr i8, ptr %netdev, i32 2636
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ha.061.i = phi ptr [ %ha.058.i, %for.body.lr.ph.i ], [ %ha.0.i, %for.inc.i.for.body.i_crit_edge ]
  %index.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %index.1.i, %for.inc.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.061.i, i32 0, i32 2
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i, align 4
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end8.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %index.060.i)
  %cmp9.i = icmp sgt i32 %index.060.i, 13
  br i1 %cmp9.i, label %do.end.i, label %if.end8.i.if.end24.i_crit_edge, !prof !149

if.end8.i.if.end24.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1119, i32 noundef 9, ptr noundef null) #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %if.end8.i.if.end24.i_crit_edge
  %inc.i = add i32 %index.060.i, 1
  %arrayidx.i = getelementptr [14 x [6 x i8]], ptr %mcaddr_list32.i, i32 0, i32 %index.060.i
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.i, align 4
  %add.ptr.i57.i = getelementptr %struct.netdev_hw_addr, ptr %ha.061.i, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %add.ptr.i57.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i57.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %39 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %add.ptr1.i.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end24.i, %for.body.i.for.inc.i_crit_edge
  %index.1.i = phi i32 [ %inc.i, %if.end24.i ], [ %index.060.i, %for.body.i.for.inc.i_crit_edge ]
  %40 = ptrtoint ptr %ha.061.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %ha.0.i = load ptr, ptr %ha.061.i, align 4
  %cmp5.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp5.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %index.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %index.1.i, %for.inc.i.for.end.i_crit_edge ]
  %count42.i = getelementptr i8, ptr %netdev, i32 2720
  %41 = ptrtoint ptr %count42.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %index.0.lcssa.i, ptr %count42.i, align 4
  %call43.i = tail call fastcc i32 @owl_emac_setup_frame_xmit(ptr noundef %add.ptr.i) #11
  br label %owl_emac_set_multicast.exit

owl_emac_set_multicast.exit:                      ; preds = %for.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_ndo_set_mac_addr(ptr noundef %netdev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #11
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr.i, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %12 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %arrayidx3.i = getelementptr i8, ptr %8, i32 2
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %14 to i32
  %shl5.i = shl nuw i32 %conv4.i, 24
  %arrayidx6.i = getelementptr i8, ptr %8, i32 3
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %16 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %shl8.i, %shl5.i
  %arrayidx10.i = getelementptr i8, ptr %8, i32 4
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %18 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 8
  %or13.i = or i32 %or9.i, %shl12.i
  %arrayidx14.i = getelementptr i8, ptr %8, i32 5
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %20 to i32
  %or16.i = or i32 %or13.i, %conv15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %base.i.i = getelementptr i8, ptr %netdev, i32 2308
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %23, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %21) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #11
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %26, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %24) #11, !srcloc !143
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call7 = tail call fastcc i32 @owl_emac_setup_frame_xmit(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_ndo_eth_ioctl(ptr noundef %netdev, ptr noundef %req, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %call1 = tail call i32 @phy_mii_ioctl(ptr noundef %3, ptr noundef %req, i32 noundef %cmd) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_emac_ndo_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_reset_task = getelementptr i8, ptr %netdev, i32 2724
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %mac_reset_task) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @owl_emac_ndo_get_stats(ptr noundef readnone %netdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_emac_ethtool_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @owl_emac_ethtool_get_msglevel(ptr nocapture noundef readonly %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2768
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @owl_emac_ethtool_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %val) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2768
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_emac_tx_complete(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %tail = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 6
  %head = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call = tail call fastcc zeroext i1 @owl_emac_tx_complete_tail(ptr noundef %priv)
  br i1 %call, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %add.neg.i = xor i32 %9, -1
  %sub.i = add i32 %7, %add.neg.i
  %size.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %sub1.i = add i32 %11, -1
  %and.i = and i32 %sub1.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then6, label %while.end.if.end58_crit_edge, !prof !149

while.end.if.end58_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then6:                                         ; preds = %while.end
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail, align 4
  br label %while.cond8

while.cond8:                                      ; preds = %do.end.while.cond8_crit_edge, %if.then6
  %tx_next.0 = phi i32 [ %13, %if.then6 ], [ %and.i80, %do.end.while.cond8_crit_edge ]
  %add.i = add i32 %tx_next.0, 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %sub.i79 = add i32 %15, -1
  %and.i80 = and i32 %sub.i79, %add.i
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i80, i32 %17)
  %cmp11.not = icmp eq i32 %and.i80, %17
  br i1 %cmp11.not, label %while.cond8.if.end58_crit_edge, label %do.end

while.cond8.if.end58_crit_edge:                   ; preds = %while.cond8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end:                                           ; preds = %while.cond8
  %18 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.owl_emac_ring_desc, ptr %19, i32 %and.i80
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  %tobool14.not = icmp sgt i32 %21, -1
  br i1 %tobool14.not, label %do.body18, label %do.end.while.cond8_crit_edge

do.end.while.cond8_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond8

do.body18:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_emac_tx_complete.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_emac_tx_complete, %if.then28)) #11
          to label %do.end36 [label %if.then28], !srcloc !146

if.then28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @owl_emac_tx_complete.__UNIQUE_ID_ddebug361, ptr noundef %1, ptr noundef nonnull @.str.50) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then28, %do.body18
  %22 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_ring, align 4
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail, align 4
  %arrayidx40 = getelementptr %struct.owl_emac_ring_desc, ptr %23, i32 %25
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx40, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %and42 = and i32 %27, 2147483647
  %28 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring, align 4
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail, align 4
  %arrayidx50 = getelementptr %struct.owl_emac_ring_desc, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %and42, ptr %arrayidx50, align 4
  %call56 = tail call fastcc zeroext i1 @owl_emac_tx_complete_tail(ptr noundef %priv)
  br label %if.end58

if.end58:                                         ; preds = %do.end36, %while.cond8.if.end58_crit_edge, %while.end.if.end58_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_emac_rx_process(ptr noundef %priv, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp198 = icmp sgt i32 %budget, 0
  br i1 %cmp198, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lock = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 16
  %tail = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 4, i32 6
  %skbs = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 4, i32 2
  %skbs_dma = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 4, i32 3
  %size.i.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 4, i32 4
  %dev19 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %collisions = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %stats91 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %head = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 4, i32 5
  br label %while.body

while.body:                                       ; preds = %push_skb.while.body_crit_edge, %while.body.lr.ph
  %recv.0199 = phi i32 [ 0, %while.body.lr.ph ], [ %recv.1, %push_skb.while.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring, align 4
  %arrayidx = getelementptr %struct.owl_emac_ring_desc, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skbs, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 %5
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %skbs_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skbs_dma, align 4
  %arrayidx5 = getelementptr i32, ptr %15, i32 %5
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail, align 4
  %add.i.i = add i32 %19, 1
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %21, -1
  %and.i.i = and i32 %sub.i.i, %add.i.i
  store i32 %and.i.i, ptr %tail, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %and7 = and i32 %9, 18631
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end57, label %do.body10

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_emac_rx_process.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_emac_rx_process, %land.lhs.true)) #11
          to label %do.end22 [label %land.lhs.true], !srcloc !146

land.lhs.true:                                    ; preds = %do.body10
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @owl_emac_rx_process._rs, ptr noundef nonnull @.str.53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end22_crit_edge, label %if.then18

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_emac_rx_process.descriptor, ptr noundef %dev19, ptr noundef nonnull @.str.54, i32 noundef %9) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %land.lhs.true.do.end22_crit_edge, %do.body10
  %and23 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end22.if.end26_crit_edge, label %if.then25

do.end22.if.end26_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.end22.if.end26_crit_edge
  %and27 = and i32 %9, 2052
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_frame_errors, align 4
  %inc31 = add i32 %25, 1
  store i32 %inc31, ptr %rx_frame_errors, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %and33 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_length_errors, align 8
  %inc37 = add i32 %27, 1
  store i32 %inc37, ptr %rx_length_errors, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %and39 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %collisions, align 4
  %inc43 = add i32 %29, 1
  store i32 %inc43, ptr %collisions, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %and45 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end50_crit_edge, label %if.then47

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_crc_errors, align 8
  %inc49 = add i32 %31, 1
  store i32 %inc49, ptr %rx_crc_errors, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44.if.end50_crit_edge
  %and51 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.drop_skb_crit_edge, label %if.then53

if.end50.drop_skb_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop_skb

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_fifo_errors, align 8
  %inc55 = add i32 %33, 1
  store i32 %inc55, ptr %rx_fifo_errors, align 8
  br label %drop_skb

if.end57:                                         ; preds = %if.end
  %and58 = lshr i32 %9, 16
  %shr = and i32 %and58, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %shr)
  %cmp59 = icmp ugt i32 %shr, 1518
  br i1 %cmp59, label %if.then66, label %if.end70, !prof !149

if.then66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_length_errors, align 8
  %inc69 = add i32 %35, 1
  store i32 %inc69, ptr %rx_length_errors, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %shr) #14
  br label %drop_skb

if.end70:                                         ; preds = %if.end57
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1536, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end70.drop_skb_crit_edge, label %if.end.i, !prof !149

if.end70.drop_skb_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop_skb

if.end.i:                                         ; preds = %if.end70
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end82_crit_edge, label %if.then11.i, !prof !150

if.end.i.if.end82_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub nuw nsw i32 4, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %sub.i
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %41, i32 %sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then11.i, %if.end.i.if.end82_crit_edge
  %call83 = tail call fastcc i32 @owl_emac_dma_map_rx(ptr noundef %priv, ptr noundef nonnull %call.i.i)
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call83)
  %cmp.i.not = icmp eq i32 %call83, -1
  br i1 %cmp.i.not, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.56) #14
  br label %drop_skb

if.end87:                                         ; preds = %if.end82
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 133, i32 1
  %44 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end87.owl_emac_dma_unmap_rx.exit_crit_edge

if.end87.owl_emac_dma_unmap_rx.exit_crit_edge:    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %owl_emac_dma_unmap_rx.exit

cond.false.i.i:                                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %48 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i.i, align 4
  %tail.i.i190 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i190 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i190, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %owl_emac_dma_unmap_rx.exit

owl_emac_dma_unmap_rx.exit:                       ; preds = %cond.false.i.i, %if.end87.owl_emac_dma_unmap_rx.exit_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end87.owl_emac_dma_unmap_rx.exit_crit_edge ]
  tail call void @dma_unmap_page_attrs(ptr noundef %45, i32 noundef %17, i32 noundef %cond.i.i, i32 noundef 2, i32 noundef 0) #11
  %sub = add nsw i32 %shr, -4
  %call88 = tail call ptr @skb_put(ptr noundef %13, i32 noundef %sub) #11
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 15
  %52 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call89 = tail call zeroext i16 @eth_type_trans(ptr noundef %13, ptr noundef %1) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 15, i32 0, i32 18
  %53 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %call89, ptr %protocol, align 8
  %54 = getelementptr inbounds %struct.anon.44, ptr %13, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %1, ptr %54, align 8
  %call90 = tail call i32 @netif_receive_skb(ptr noundef %13) #11
  %56 = ptrtoint ptr %stats91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stats91, align 8
  %inc92 = add i32 %57, 1
  store i32 %inc92, ptr %stats91, align 8
  %58 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %59, %shr
  store i32 %add, ptr %rx_bytes, align 8
  %inc94 = add nsw i32 %recv.0199, 1
  br label %push_skb

drop_skb:                                         ; preds = %if.then86, %if.end70.drop_skb_crit_edge, %if.then66, %if.then53, %if.end50.drop_skb_crit_edge
  %60 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_dropped, align 8
  %inc96 = add i32 %61, 1
  store i32 %inc96, ptr %rx_dropped, align 8
  %62 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_errors, align 8
  %inc98 = add i32 %63, 1
  store i32 %inc98, ptr %rx_errors, align 8
  br label %push_skb

push_skb:                                         ; preds = %drop_skb, %owl_emac_dma_unmap_rx.exit
  %new_skb.0 = phi ptr [ %13, %drop_skb ], [ %call.i.i, %owl_emac_dma_unmap_rx.exit ]
  %new_dma.0 = phi i32 [ %17, %drop_skb ], [ %call83, %owl_emac_dma_unmap_rx.exit ]
  %recv.1 = phi i32 [ %recv.0199, %drop_skb ], [ %inc94, %owl_emac_dma_unmap_rx.exit ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %64 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skbs, align 4
  %66 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %head, align 4
  %arrayidx101 = getelementptr ptr, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %new_skb.0, ptr %arrayidx101, align 4
  %69 = ptrtoint ptr %skbs_dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skbs_dma, align 4
  %71 = load i32, ptr %head, align 4
  %arrayidx104 = getelementptr i32, ptr %70, i32 %71
  %72 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %new_dma.0, ptr %arrayidx104, align 4
  %buf_addr = getelementptr %struct.owl_emac_ring_desc, ptr %7, i32 %5, i32 2
  %73 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %new_dma.0, ptr %buf_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !161
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 -2147483648, ptr %arrayidx, align 4
  %75 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %head, align 4
  %add.i.i191 = add i32 %76, 1
  %77 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.i.i, align 4
  %sub.i.i193 = add i32 %78, -1
  %and.i.i194 = and i32 %sub.i.i193, %add.i.i191
  store i32 %and.i.i194, ptr %head, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %cmp = icmp slt i32 %recv.1, %budget
  br i1 %cmp, label %push_skb.while.body_crit_edge, label %push_skb.while.end_crit_edge

push_skb.while.end_crit_edge:                     ; preds = %push_skb
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

push_skb.while.body_crit_edge:                    ; preds = %push_skb
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %push_skb.while.end_crit_edge, %if.then, %entry.while.end_crit_edge
  %recv.0197 = phi i32 [ %recv.0199, %if.then ], [ 0, %entry.while.end_crit_edge ], [ %recv.1, %push_skb.while.end_crit_edge ]
  ret i32 %recv.0197
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @owl_emac_tx_complete_tail(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tail = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.owl_emac_ring_desc, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %do.body6

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_emac_tx_complete_tail.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_emac_tx_complete_tail, %land.lhs.true)) #11
          to label %do.end16 [label %land.lhs.true], !srcloc !146

land.lhs.true:                                    ; preds = %do.body6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @owl_emac_tx_complete_tail._rs, ptr noundef nonnull @.str.51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end16_crit_edge, label %if.then13

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_emac_tx_complete_tail.descriptor, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %7) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true.do.end16_crit_edge, %do.body6
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %8 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and17 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end16.if.end22_crit_edge, label %if.then19

do.end16.if.end22_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %10 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifo_errors, align 8
  %inc21 = add i32 %11, 1
  store i32 %inc21, ptr %tx_fifo_errors, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %do.end16.if.end22_crit_edge
  %and23 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %12 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_aborted_errors, align 8
  %inc27 = add i32 %13, 1
  store i32 %inc27, ptr %tx_aborted_errors, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %and29 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 20
  %14 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_window_errors, align 8
  %inc33 = add i32 %15, 1
  store i32 %inc33, ptr %tx_window_errors, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %and35 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 19
  %16 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_heartbeat_errors, align 4
  %inc39 = add i32 %17, 1
  store i32 %inc39, ptr %tx_heartbeat_errors, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %and41 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end51_crit_edge, label %if.then43

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  br label %if.end51.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %18 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_packets, align 4
  %inc48 = add i32 %19, 1
  store i32 %inc48, ptr %tx_packets, align 4
  %skbs = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skbs, align 4
  %arrayidx49 = getelementptr ptr, ptr %21, i32 %3
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx49, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.else, %if.then43
  %tx_carrier_errors.sink117 = phi ptr [ %tx_carrier_errors, %if.then43 ], [ %tx_bytes, %if.else ]
  %.sink116 = phi i32 [ 1, %if.then43 ], [ %25, %if.else ]
  %26 = ptrtoint ptr %tx_carrier_errors.sink117 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_carrier_errors.sink117, align 4
  %inc45 = add i32 %27, %.sink116
  store i32 %inc45, ptr %tx_carrier_errors.sink117, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.end40.if.end51_crit_edge
  %and52 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end57_crit_edge, label %if.then54

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %collisions = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %28 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %collisions, align 4
  %inc56 = add i32 %29, 1
  store i32 %inc56, ptr %collisions, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end51.if.end57_crit_edge
  %skbs58 = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %skbs58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skbs58, align 4
  %arrayidx59 = getelementptr ptr, ptr %31, i32 %3
  %32 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx59, align 4
  %skbs_dma = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %skbs_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skbs_dma, align 4
  %arrayidx60 = getelementptr i32, ptr %35, i32 %3
  %36 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx60, align 4
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 133, i32 1
  %40 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %43, %45
  tail call void @dma_unmap_page_attrs(ptr noundef %41, i32 noundef %37, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #11
  tail call void @consume_skb(ptr noundef %33) #11
  %46 = ptrtoint ptr %skbs58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skbs58, align 4
  %arrayidx62 = getelementptr ptr, ptr %47, i32 %3
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx62, align 4
  %49 = ptrtoint ptr %skbs_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skbs_dma, align 4
  %arrayidx64 = getelementptr i32, ptr %50, i32 %3
  %51 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx64, align 4
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tail, align 4
  %add.i.i = add i32 %53, 1
  %size.i.i = getelementptr inbounds %struct.owl_emac_priv, ptr %priv, i32 0, i32 5, i32 4
  %54 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i.i, align 4
  %sub.i.i113 = add i32 %55, -1
  %and.i.i = and i32 %sub.i.i113, %add.i.i
  store i32 %and.i.i, ptr %tail, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end57.cleanup_crit_edge, label %if.then72, !prof !150

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then72:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_tx_wake_queue(ptr noundef %57) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end57.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #11
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @owl_emac_disable(ptr noundef %1, i1 noundef zeroext true)
  tail call void @netif_device_detach(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clks = getelementptr i8, ptr %1, i32 2312
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #11
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_emac_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %clks = getelementptr i8, ptr %1, i32 2312
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %reset.i = getelementptr i8, ptr %1, i32 2328
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 8
  %call.i25 = tail call i32 @reset_control_assert(ptr noundef %5) #11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #11
  %6 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset.i, align 8
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %7) #11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #11
  %call5 = tail call fastcc i32 @owl_emac_core_sw_reset(ptr noundef %add.ptr.i)
  %call6 = tail call fastcc i32 @owl_emac_enable(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #11
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #11
  br label %cleanup

if.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_device_attach(ptr noundef %1) #11
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end.if.end12_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.end12 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__initcall__kmod_owl_emac__369_1620_owl_emac_driver_init6, !1, !"__initcall__kmod_owl_emac__369_1620_owl_emac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1620, i32 1}
!2 = !{ptr @__exitcall_owl_emac_driver_exit, !1, !"__exitcall_owl_emac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description370, !4, !"__UNIQUE_ID_description370", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1622, i32 1}
!5 = !{ptr @__UNIQUE_ID_author371, !6, !"__UNIQUE_ID_author371", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1623, i32 1}
!7 = !{ptr @__UNIQUE_ID_author372, !8, !"__UNIQUE_ID_author372", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1624, i32 1}
!9 = !{ptr @__UNIQUE_ID_file373, !10, !"__UNIQUE_ID_file373", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1625, i32 1}
!11 = !{ptr @__UNIQUE_ID_license374, !10, !"__UNIQUE_ID_license374", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1613, i32 11}
!14 = !{ptr @owl_emac_driver, !15, !"owl_emac_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1611, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1496, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @owl_emac_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @owl_emac_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @owl_emac_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1500, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1504, i32 3}
!29 = !{ptr @owl_emac_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @owl_emac_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1527, i32 3}
!33 = !{ptr @owl_emac_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @owl_emac_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1553, i32 10}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1562, i32 3}
!39 = !{ptr @owl_emac_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @owl_emac_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1568, i32 3}
!43 = !{ptr @owl_emac_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @owl_emac_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @owl_emac_probe.__key.20, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1572, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/actions/owl-emac.h", i32 223, i32 51}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/actions/owl-emac.h", i32 223, i32 58}
!52 = distinct !{null, !53, !"owl_emac_clk_names", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/actions/owl-emac.h", i32 223, i32 26}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1464, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @owl_emac_clk_set_rate._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @owl_emac_clk_set_rate._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1471, i32 3}
!61 = !{ptr @owl_emac_clk_set_rate._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @owl_emac_clk_set_rate._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1393, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @owl_emac_get_mac_addr._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @owl_emac_get_mac_addr._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1334, i32 49}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1349, i32 43}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1350, i32 20}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1205, i32 2}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @owl_emac_reset_task.__UNIQUE_ID_ddebug368, !76, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1048, i32 22}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @owl_emac_netdev_ops, !87, !"owl_emac_netdev_ops", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1220, i32 36}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 578, i32 3}
!90 = !{ptr @owl_emac_ndo_start_xmit._rs, !89, !"_rs", i1 false, i1 false}
!91 = !{ptr @__func__.owl_emac_ndo_start_xmit, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @owl_emac_ndo_start_xmit._entry, !89, !"_entry", i1 false, i1 false}
!94 = !{ptr @owl_emac_ndo_start_xmit._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @owl_emac_ndo_start_xmit._rs.43, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 598, i32 3}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @owl_emac_ndo_start_xmit.descriptor, !96, !"descriptor", i1 false, i1 false}
!99 = !{ptr @owl_emac_ethtool_ops, !100, !"owl_emac_ethtool_ops", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1252, i32 33}
!101 = !{ptr @owl_emac_poll.tx_err_cnt, !102, !"tx_err_cnt", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 868, i32 13}
!103 = !{ptr @owl_emac_poll.rx_err_cnt, !104, !"rx_err_cnt", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 868, i32 25}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 930, i32 3}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @owl_emac_poll.__UNIQUE_ID_ddebug367, !106, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!109 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 731, i32 4}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @owl_emac_tx_complete.__UNIQUE_ID_ddebug361, !112, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!115 = !{ptr @owl_emac_tx_complete_tail._rs, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 651, i32 3}
!117 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @owl_emac_tx_complete_tail.descriptor, !116, !"descriptor", i1 false, i1 false}
!120 = !{ptr @owl_emac_rx_process._rs, !121, !"_rs", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 782, i32 4}
!122 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @owl_emac_rx_process.descriptor, !121, !"descriptor", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 810, i32 23}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 822, i32 23}
!129 = !{ptr @owl_emac_of_match, !130, !"owl_emac_of_match", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1602, i32 34}
!131 = !{ptr @owl_emac_pm_ops, !132, !"owl_emac_pm_ops", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/actions/owl-emac.c", i32 1608, i32 8}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2156652185}
!143 = !{i64 6288201}
!144 = !{i64 6288619}
!145 = !{i64 2156651971}
!146 = !{i64 2148761801, i64 2148761806, i64 2148761819, i64 2148761863, i64 2148761897, i64 2148761918}
!147 = !{i64 2156741259}
!148 = !{i64 2156741753}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{i64 2156729765}
!152 = !{i64 2156730259}
!153 = !{i64 2156665121}
!154 = !{i64 2156670581}
!155 = !{i64 2156681303}
!156 = !{!"branch_weights", i32 2000, i32 2002}
!157 = !{i64 2156689362}
!158 = !{i64 2156701145}
!159 = !{i64 2156706957}
!160 = !{i64 2156712505}
!161 = !{i64 2156719327}
!162 = !{i64 2156694504}
