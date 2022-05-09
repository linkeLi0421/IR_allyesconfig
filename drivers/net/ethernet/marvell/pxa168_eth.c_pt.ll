; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/pxa168_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/pxa168_eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pxa168_eth_platform_data = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rx_desc = type { i32, i16, i16, i32, i32 }
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
%struct.pxa168_eth_private = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.napi_struct, i8, i32, i32, i32, i32, i32, %struct.timer_list, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.146, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.146 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.tx_desc = type { i32, i16, i16, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.addr_table_entry = type { i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_pxa168_eth__490_1592_pxa168_eth_driver_init6 = internal global ptr @pxa168_eth_driver_init, section ".initcall6.init", align 4
@pxa168_eth_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa168_eth_probe, ptr @pxa168_eth_remove, ptr @pxa168_eth_shutdown, ptr @pxa168_eth_suspend, ptr @pxa168_eth_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa168_eth_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxa168_eth_driver_exit = internal global ptr @pxa168_eth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file491 = internal constant [56 x i8] c"pxa168_eth.file=drivers/net/ethernet/marvell/pxa168_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license492 = internal constant [23 x i8] c"pxa168_eth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description493 = internal constant [58 x i8] c"pxa168_eth.description=Ethernet driver for Marvell PXA168\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [37 x i8] c"pxa168_eth.alias=platform:pxa168_eth\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa168-eth\00", [21 x i8] zeroinitializer }, align 32
@pxa168_eth_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa168-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pxa168_eth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015PXA168 10/100 Ethernet Driver\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxa168_eth_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/marvell/pxa168_eth.c\00", [54 x i8] zeroinitializer }, align 32
@pxa168_eth_probe._entry_ptr = internal global ptr @pxa168_eth_probe._entry, section ".printk_index", align 4
@pxa168_eth_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1399, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fast Ethernet failed to get clock\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa168_eth_probe._entry_ptr.8 = internal global ptr @pxa168_eth_probe._entry.4, section ".printk_index", align 4
@pxa168_eth_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pxa168_eth_open, ptr @pxa168_eth_stop, ptr @pxa168_eth_start_xmit, ptr null, ptr null, ptr null, ptr @pxa168_eth_set_rx_mode, ptr @pxa168_eth_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @pxa168_eth_change_mtu, ptr null, ptr @pxa168_eth_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa168_eth_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@pxa168_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @pxa168_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@pxa168_eth_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&pep->tx_timeout_task)\00", [55 x i8] zeroinitializer }, align 32
@pxa168_eth_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1446, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using random mac address\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pxa168_eth_probe._entry_ptr.13 = internal global ptr @pxa168_eth_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port-id\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@pxa168_eth_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1476, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"missing phy-handle\0A\00", [44 x i8] zeroinitializer }, align 32
@pxa168_eth_probe._entry_ptr.18 = internal global ptr @pxa168_eth_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pxa168_eth_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&pep->timeout)\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa168_eth smi\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@pxa168_eth_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1139, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can't assign irq\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxa168_eth_open\00", [16 x i8] zeroinitializer }, align 32
@pxa168_eth_open._entry_ptr = internal global ptr @pxa168_eth_open._entry, section ".printk_index", align 4
@phy_basic_features = external dso_local local_unnamed_addr global [3 x i32], section ".data..ro_after_init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error in freeing Rx Ring. %d skb's still\0A\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s : DMA Stuck\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.abort_dma = private unnamed_addr constant [10 x i8] c"abort_dma\00", align 1
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Error in TX\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: table section is full, need to move to 16kB implementation?\0A\00", [63 x i8] zeroinitializer }, align 32
@pxa168_eth_change_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fatal error on re-opening device after MTU change\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pxa168_eth_change_mtu\00", [42 x i8] zeroinitializer }, align 32
@pxa168_eth_change_mtu._entry_ptr = internal global ptr @pxa168_eth_change_mtu._entry, section ".printk_index", align 4
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX timeout  desc_count %d\0A\00", [37 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.3\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rx pkt on multiple desc\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pxa168_eth: SMI bus busy timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pxa168_eth: SMI bus read not valid\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"pxa168_eth_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1580, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1587, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"pxa168_eth_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1574, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1395, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1399, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"pxa168_eth_netdev_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1372, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"pxa168_ethtool_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1363, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1435, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1446, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1471, i32 43 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1474, i32 44 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1476, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1480, i32 28 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1492, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1500, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1503, i32 46 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1139, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 326, i32 6 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1070, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 300, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 732, i32 21 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 492, i32 9 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1205, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 749, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1358, i32 25 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1359, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 820, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1307, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [45 x i8] c"../drivers/net/ethernet/marvell/pxa168_eth.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1315, i32 9 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias494, ptr @__UNIQUE_ID_description493, ptr @__UNIQUE_ID_file491, ptr @__UNIQUE_ID_license492, ptr @__exitcall_pxa168_eth_driver_exit, ptr @__initcall__kmod_pxa168_eth__490_1592_pxa168_eth_driver_init6, ptr @pxa168_eth_change_mtu._entry, ptr @pxa168_eth_change_mtu._entry_ptr, ptr @pxa168_eth_driver_exit, ptr @pxa168_eth_open._entry, ptr @pxa168_eth_open._entry_ptr, ptr @pxa168_eth_probe._entry, ptr @pxa168_eth_probe._entry.10, ptr @pxa168_eth_probe._entry.16, ptr @pxa168_eth_probe._entry.4, ptr @pxa168_eth_probe._entry_ptr, ptr @pxa168_eth_probe._entry_ptr.13, ptr @pxa168_eth_probe._entry_ptr.18, ptr @pxa168_eth_probe._entry_ptr.8, ptr @pxa168_eth_driver, ptr @.str, ptr @pxa168_eth_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pxa168_eth_netdev_ops, ptr @pxa168_ethtool_ops, ptr @pxa168_eth_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @pxa168_eth_probe.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa168_eth_change_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa168_eth_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_eth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa168_eth_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end6, label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %call2) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %call9 = tail call ptr @alloc_etherdev_mqs(i32 noundef 448, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %clk_prepare_enable.exit.err_clk_crit_edge, label %if.end11

clk_prepare_enable.exit.err_clk_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_clk

if.end11:                                         ; preds = %clk_prepare_enable.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9, i32 2304
  %dev13 = getelementptr i8, ptr %call9, i32 2424
  %1 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9, ptr %dev13, align 8
  %clk14 = getelementptr i8, ptr %call9, i32 2732
  %2 = ptrtoint ptr %clk14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %clk14, align 4
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %base = getelementptr i8, ptr %call9, i32 2740
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %base, align 4
  %cmp.i291 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call15 to i32
  br label %err_netdev

if.end21:                                         ; preds = %if.end11
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call22)
  %cmp = icmp eq i32 %call22, -517
  br i1 %cmp, label %if.end21.err_netdev_crit_edge, label %do.body25

if.end21.err_netdev_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_netdev

do.body25:                                        ; preds = %if.end21
  %irq = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 64
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp26 = icmp slt i32 %6, 0
  br i1 %cmp26, label %do.body30, label %do.end38, !prof !102

do.body30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1424, 0\0A.popsection", ""() #12, !srcloc !103
  unreachable

do.end38:                                         ; preds = %do.body25
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call22, ptr %irq, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pxa168_eth_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 115
  %9 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 200, ptr %watchdog_timeo, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 5
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %base_addr, align 32
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 44
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pxa168_ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 30
  %12 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 31
  %13 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9500, ptr %max_mtu, align 4
  %tx_timeout_task = getelementptr i8, ptr %call9, i32 2380
  tail call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #12
  %14 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %tx_timeout_task, align 4
  %lockdep_map = getelementptr i8, ptr %call9, i32 2396
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @pxa168_eth_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry44 = getelementptr i8, ptr %call9, i32 2384
  %15 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr i8, ptr %call9, i32 2388
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry44, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call9, i32 2392
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pxa168_eth_tx_timeout_task, ptr %func, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call49 = tail call i32 @of_get_ethdev_address(ptr noundef %19, ptr noundef nonnull %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end38.if.end61_crit_edge, label %if.then51

do.end38.if.end61_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then51:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %20 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %21 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %22 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %23 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %24 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %25 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %27, i32 1080
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #12, !srcloc !104
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %31, i32 1072
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #12, !srcloc !104
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %shr.i = lshr i32 %29, 24
  %conv.i = trunc i32 %shr.i to i8
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %addr, align 4
  %shr3.i = lshr i32 %29, 16
  %conv5.i = trunc i32 %shr3.i to i8
  %35 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv5.i, ptr %20, align 1
  %shr7.i = lshr i32 %29, 8
  %conv9.i = trunc i32 %shr7.i to i8
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv9.i, ptr %21, align 2
  %conv12.i = trunc i32 %29 to i8
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv12.i, ptr %22, align 1
  %shr14.i = lshr i32 %33, 8
  %conv16.i = trunc i32 %shr14.i to i8
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv16.i, ptr %23, align 4
  %conv19.i = trunc i32 %33 to i8
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv19.i, ptr %24, align 1
  %40 = load i32, ptr %addr, align 4
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then51.do.end58_crit_edge

if.then51.do.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

is_valid_ether_addr.exit:                         ; preds = %if.then51
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %23, align 4
  %conv.i.i = zext i16 %43 to i32
  %or.i.i = or i32 %40, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end58_crit_edge, label %if.then54

is_valid_ether_addr.exit.do.end58_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then54:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @dev_addr_mod(ptr noundef nonnull %call9, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  br label %if.end60

do.end58:                                         ; preds = %is_valid_ether_addr.exit.do.end58_crit_edge, %if.then51.do.end58_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call9)
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.then54
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %do.end38.if.end61_crit_edge
  %rx_ring_size = getelementptr i8, ptr %call9, i32 2672
  %44 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 64, ptr %rx_ring_size, align 8
  %tx_ring_size = getelementptr i8, ptr %call9, i32 2664
  %45 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 64, ptr %tx_ring_size, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %46 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %platform_data.i, align 8
  %pd = getelementptr i8, ptr %call9, i32 2736
  %48 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %pd, align 8
  %tobool65.not = icmp eq ptr %47, null
  br i1 %tobool65.not, label %if.else94, label %if.then66

if.then66:                                        ; preds = %if.end61
  %rx_queue_size = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %47, i32 0, i32 5
  %49 = ptrtoint ptr %rx_queue_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool68.not = icmp eq i32 %50, 0
  br i1 %tobool68.not, label %if.then66.if.end73_crit_edge, label %if.then69

if.then66.if.end73_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rx_ring_size, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.then66.if.end73_crit_edge
  %52 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pd, align 8
  %tx_queue_size = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %tx_queue_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool75.not = icmp eq i32 %55, 0
  br i1 %tobool75.not, label %if.end73.if.end80_crit_edge, label %if.then76

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tx_ring_size, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.end73.if.end80_crit_edge
  %57 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pd, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %port_num = getelementptr i8, ptr %call9, i32 2308
  %61 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %port_num, align 4
  %phy_addr = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %phy_addr, align 4
  %phy_addr83 = getelementptr i8, ptr %call9, i32 2312
  %64 = ptrtoint ptr %phy_addr83 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %phy_addr83, align 8
  %speed = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %58, i32 0, i32 2
  %65 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %speed, align 4
  %phy_speed = getelementptr i8, ptr %call9, i32 2316
  %67 = ptrtoint ptr %phy_speed to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %phy_speed, align 4
  %duplex = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %58, i32 0, i32 3
  %68 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %duplex, align 4
  %phy_duplex = getelementptr i8, ptr %call9, i32 2320
  %70 = ptrtoint ptr %phy_duplex to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %phy_duplex, align 8
  %intf = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %58, i32 0, i32 4
  %71 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %intf, align 4
  %phy_intf = getelementptr i8, ptr %call9, i32 2324
  %73 = ptrtoint ptr %phy_intf to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %phy_intf, align 4
  %init = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %58, i32 0, i32 7
  %74 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init, align 4
  %tobool88.not = icmp eq ptr %75, null
  br i1 %tobool88.not, label %if.end80.do.body125_crit_edge, label %if.then89

if.end80.do.body125_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body125

if.then89:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %call92 = call i32 %75() #12
  br label %do.body125

if.else94:                                        ; preds = %if.end61
  %76 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %of_node, align 8
  %tobool97.not = icmp eq ptr %77, null
  br i1 %tobool97.not, label %if.else94.do.body125_crit_edge, label %if.then98

if.else94.do.body125_crit_edge:                   ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body125

if.then98:                                        ; preds = %if.else94
  %port_num101 = getelementptr i8, ptr %call9, i32 2308
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %77, ptr noundef nonnull @.str.14, ptr noundef %port_num101, i32 noundef 1, i32 noundef 0) #12
  %78 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #12
  %80 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i292 = call i32 @__of_parse_phandle_with_args(ptr noundef %79, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %tobool.not.i293 = icmp eq i32 %call.i292, 0
  br i1 %tobool.not.i293, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  br label %do.end110

of_parse_phandle.exit:                            ; preds = %if.then98
  %81 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  %tobool106.not = icmp eq ptr %82, null
  br i1 %tobool106.not, label %of_parse_phandle.exit.do.end110_crit_edge, label %if.end112

of_parse_phandle.exit.do.end110_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end110

do.end110:                                        ; preds = %of_parse_phandle.exit.do.end110_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #15
  br label %err_netdev

if.end112:                                        ; preds = %of_parse_phandle.exit
  %phy_addr113 = getelementptr i8, ptr %call9, i32 2312
  %call.i.i295 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %82, ptr noundef nonnull @.str.19, ptr noundef %phy_addr113, i32 noundef 1, i32 noundef 0) #12
  call void @of_node_put(ptr noundef nonnull %82) #12
  %83 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %of_node, align 8
  %phy_intf117 = getelementptr i8, ptr %call9, i32 2324
  %call118 = call i32 @of_get_phy_mode(ptr noundef %84, ptr noundef %phy_intf117) #12
  %85 = zext i32 %call118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call118, label %if.end112.err_netdev_crit_edge [
    i32 0, label %if.end112.do.body125_crit_edge
    i32 -19, label %if.end112.do.body125_crit_edge303
  ]

if.end112.do.body125_crit_edge303:                ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body125

if.end112.do.body125_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body125

if.end112.err_netdev_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_netdev

do.body125:                                       ; preds = %if.end112.do.body125_crit_edge, %if.end112.do.body125_crit_edge303, %if.else94.do.body125_crit_edge, %if.then89, %if.end80.do.body125_crit_edge
  %port_num126 = getelementptr i8, ptr %call9, i32 2308
  %86 = ptrtoint ptr %port_num126 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port_num126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp127 = icmp sgt i32 %87, 2
  br i1 %cmp127, label %do.body135, label %do.end143, !prof !102

do.body135:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1488, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

do.end143:                                        ; preds = %do.body125
  %napi = getelementptr i8, ptr %call9, i32 2432
  %88 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_ring_size, align 8
  call void @netif_napi_add(ptr noundef nonnull %call9, ptr noundef %napi, ptr noundef nonnull @pxa168_rx_poll, i32 noundef %89) #12
  %timeout = getelementptr i8, ptr %call9, i32 2680
  %90 = call ptr @memset(ptr %timeout, i32 0, i32 48)
  call void @init_timer_key(ptr noundef %timeout, ptr noundef nonnull @rxq_refill_timer_wrapper, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @pxa168_eth_probe.__key.20) #12
  %call.i296 = call ptr @mdiobus_alloc_size(i32 noundef 0) #12
  %smi_bus = getelementptr i8, ptr %call9, i32 2728
  %91 = ptrtoint ptr %smi_bus to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i296, ptr %smi_bus, align 8
  %tobool151.not = icmp eq ptr %call.i296, null
  br i1 %tobool151.not, label %do.end143.err_netdev_crit_edge, label %if.end153

do.end143.err_netdev_crit_edge:                   ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_netdev

if.end153:                                        ; preds = %do.end143
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i296, i32 0, i32 3
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr.i, ptr %priv, align 8
  %93 = ptrtoint ptr %smi_bus to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %smi_bus, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.22, ptr %name, align 4
  %96 = load ptr, ptr %smi_bus, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @pxa168_smi_read, ptr %read, align 4
  %98 = load ptr, ptr %smi_bus, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @pxa168_smi_write, ptr %write, align 8
  %100 = load ptr, ptr %smi_bus, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 8
  %id161 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %103 = ptrtoint ptr %id161 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %id161, align 4
  %call162 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.23, ptr noundef %102, i32 noundef %104)
  %105 = ptrtoint ptr %smi_bus to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %smi_bus, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %dev1, ptr %parent, align 4
  %108 = load ptr, ptr %smi_bus, align 8
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %108, i32 0, i32 13
  %109 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %phy_mask, align 8
  %110 = load ptr, ptr %smi_bus, align 8
  %call167 = call i32 @__mdiobus_register(ptr noundef %110, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %if.end153.err_free_mdio_crit_edge

if.end153.err_free_mdio_crit_edge:                ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_mdio

if.end170:                                        ; preds = %if.end153
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %pdev, ptr %add.ptr.i, align 8
  %parent174 = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 133, i32 1
  %112 = ptrtoint ptr %parent174 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %dev1, ptr %parent174, align 8
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  %add.ptr.i.i298 = getelementptr i8, ptr %114, i32 1112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i298, i32 0) #12, !srcloc !106
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %116, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #12, !srcloc !106
  %117 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %118, i32 1108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #12, !srcloc !106
  call fastcc void @abort_dma(ptr noundef %add.ptr.i) #12
  %htpr.i.i = getelementptr i8, ptr %call9, i32 2744
  %119 = ptrtoint ptr %htpr.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %htpr.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %120, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end170
  %121 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev13, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 133, i32 1
  %123 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %parent.i.i, align 8
  %htpr_dma.i.i = getelementptr i8, ptr %call9, i32 2748
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %124, i32 noundef 16384, ptr noundef %htpr_dma.i.i, i32 noundef 3264, i32 noundef 0) #12
  %125 = ptrtoint ptr %htpr.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i.i.i, ptr %htpr.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then.i.i.pxa168_init_hw.exit_crit_edge, label %if.then.i.i.if.end.i300_crit_edge

if.then.i.i.if.end.i300_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i300

if.then.i.i.pxa168_init_hw.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxa168_init_hw.exit

if.else.i.i:                                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  %126 = call ptr @memset(ptr %120, i32 0, i32 16384)
  br label %if.end.i300

if.end.i300:                                      ; preds = %if.else.i.i, %if.then.i.i.if.end.i300_crit_edge
  %htpr_dma8.i.i = getelementptr i8, ptr %call9, i32 2748
  %127 = ptrtoint ptr %htpr_dma8.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %htpr_dma8.i.i, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %128) #12
  %130 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %131, i32 1064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %129) #12, !srcloc !106
  %132 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %133, i32 1088
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -63832064) #12, !srcloc !106
  %134 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %135, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 1048576) #12, !srcloc !106
  %136 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev13, align 8
  %mtu.i.i.i = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 20
  %138 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mtu.i.i.i, align 4
  %add1.i.i.i = add i32 %139, 43
  %and.i.i.i = and i32 %add1.i.i.i, -8
  %skb_size2.i.i.i = getelementptr i8, ptr %call9, i32 2660
  %140 = ptrtoint ptr %skb_size2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and.i.i.i, ptr %skb_size2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1519, i32 %and.i.i.i)
  %cmp.i.i299 = icmp slt i32 %and.i.i.i, 1519
  br i1 %cmp.i.i299, label %if.end.i300.set_port_config_ext.exit.i_crit_edge, label %if.else.i9.i

if.end.i300.set_port_config_ext.exit.i_crit_edge: ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_port_config_ext.exit.i

if.else.i9.i:                                     ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %and.i.i.i)
  %cmp3.i.i = icmp ult i32 %and.i.i.i, 1537
  br i1 %cmp3.i.i, label %if.else.i9.i.set_port_config_ext.exit.i_crit_edge, label %if.else5.i.i

if.else.i9.i.set_port_config_ext.exit.i_crit_edge: ; preds = %if.else.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_port_config_ext.exit.i

if.else5.i.i:                                     ; preds = %if.else.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i.i.i)
  %cmp7.i.i = icmp ult i32 %and.i.i.i, 2049
  %..i.i = select i1 %cmp7.i.i, i32 271093304, i32 271109688
  br label %set_port_config_ext.exit.i

set_port_config_ext.exit.i:                       ; preds = %if.else5.i.i, %if.else.i9.i.set_port_config_ext.exit.i_crit_edge, %if.end.i300.set_port_config_ext.exit.i_crit_edge
  %skb_size.0.i.i = phi i32 [ 271060536, %if.end.i300.set_port_config_ext.exit.i_crit_edge ], [ 271076920, %if.else.i9.i.set_port_config_ext.exit.i_crit_edge ], [ %..i.i, %if.else5.i.i ]
  %141 = call i32 @llvm.bswap.i32(i32 %skb_size.0.i.i) #12
  %142 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %143, i32 1032
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i, i32 %141) #12, !srcloc !106
  br label %pxa168_init_hw.exit

pxa168_init_hw.exit:                              ; preds = %set_port_config_ext.exit.i, %if.then.i.i.pxa168_init_hw.exit_crit_edge
  %call176 = call i32 @register_netdev(ptr noundef nonnull %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %pxa168_init_hw.exit.cleanup_crit_edge, label %err_mdiobus

pxa168_init_hw.exit.cleanup_crit_edge:            ; preds = %pxa168_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_mdiobus:                                      ; preds = %pxa168_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %smi_bus to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %smi_bus, align 8
  call void @mdiobus_unregister(ptr noundef %145) #12
  br label %err_free_mdio

err_free_mdio:                                    ; preds = %err_mdiobus, %if.end153.err_free_mdio_crit_edge
  %err.0 = phi i32 [ %call167, %if.end153.err_free_mdio_crit_edge ], [ %call176, %err_mdiobus ]
  %146 = ptrtoint ptr %smi_bus to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %smi_bus, align 8
  call void @mdiobus_free(ptr noundef %147) #12
  br label %err_netdev

err_netdev:                                       ; preds = %err_free_mdio, %do.end143.err_netdev_crit_edge, %if.end112.err_netdev_crit_edge, %do.end110, %if.end21.err_netdev_crit_edge, %if.then18
  %err.1 = phi i32 [ %4, %if.then18 ], [ -517, %if.end21.err_netdev_crit_edge ], [ %err.0, %err_free_mdio ], [ -22, %do.end110 ], [ %call118, %if.end112.err_netdev_crit_edge ], [ -12, %do.end143.err_netdev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call9) #12
  br label %err_clk

err_clk:                                          ; preds = %err_netdev, %clk_prepare_enable.exit.err_clk_crit_edge
  %err.2 = phi i32 [ %err.1, %err_netdev ], [ -12, %clk_prepare_enable.exit.err_clk_crit_edge ]
  call void @clk_disable(ptr noundef %call2) #12
  call void @clk_unprepare(ptr noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %pxa168_init_hw.exit.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ -19, %do.end6 ], [ %err.2, %err_clk ], [ 0, %pxa168_init_hw.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_timeout_task = getelementptr i8, ptr %1, i32 2380
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_task) #12
  %htpr = getelementptr i8, ptr %1, i32 2744
  %2 = ptrtoint ptr %htpr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htpr, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev3 = getelementptr i8, ptr %1, i32 2424
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %htpr_dma = getelementptr i8, ptr %1, i32 2748
  %8 = ptrtoint ptr %htpr_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %htpr_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 16384, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #12
  %10 = ptrtoint ptr %htpr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %htpr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %11 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phydev, align 16
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_disconnect(ptr noundef nonnull %12) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %clk = getelementptr i8, ptr %1, i32 2732
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #12
  tail call void @clk_unprepare(ptr noundef %14) #12
  %smi_bus = getelementptr i8, ptr %1, i32 2728
  %15 = ptrtoint ptr %smi_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smi_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %16) #12
  %17 = ptrtoint ptr %smi_bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smi_bus, align 8
  tail call void @mdiobus_free(ptr noundef %18) #12
  tail call void @unregister_netdev(ptr noundef %1) #12
  tail call void @free_netdev(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_eth_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %base.i.i = getelementptr i8, ptr %1, i32 2740
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %3, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #12, !srcloc !106
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %5, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #12, !srcloc !106
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %7, i32 1096
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #12, !srcloc !104
  tail call fastcc void @abort_dma(ptr noundef %add.ptr.i.i) #12
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %10, i32 1024
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #12, !srcloc !104
  %12 = and i32 %11, 2147483647
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %14, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %12) #12, !srcloc !106
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %15 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_stop(ptr noundef %16) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa168_eth_suspend(ptr nocapture noundef readnone %pdev, [1 x i32] %state.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa168_eth_resume(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_eth_tx_timeout_task(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call i32 @pxa168_eth_stop(ptr noundef %1)
  %call2 = tail call i32 @pxa168_eth_open(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #12
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_rx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  tail call fastcc void @txq_reclaim(ptr noundef %1, i32 noundef 0)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_ring_size = getelementptr i8, ptr %napi, i32 232
  %6 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_ring_size, align 8
  %tx_desc_count = getelementptr i8, ptr %napi, i32 236
  %8 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_desc_count, align 4
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_resource_err.i = getelementptr i8, ptr %1, i32 2328
  %rx_curr_desc_q.i = getelementptr i8, ptr %1, i32 2332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp92.i = icmp sgt i32 %budget, 0
  br i1 %cmp92.i, label %while.body.lr.ph.i, label %if.end.rxq_process.exit_crit_edge

if.end.rxq_process.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxq_process.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %rx_used_desc_q.i = getelementptr i8, ptr %1, i32 2336
  %p_rx_desc_area.i = getelementptr i8, ptr %1, i32 2348
  %rx_skb.i = getelementptr i8, ptr %1, i32 2360
  %rx_ring_size.i = getelementptr i8, ptr %1, i32 2672
  %rx_desc_count.i = getelementptr i8, ptr %1, i32 2676
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %received_packets.093.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %rx_resource_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_resource_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.rxq_process.exit_crit_edge

while.body.i.rxq_process.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxq_process.exit

if.end.i:                                         ; preds = %while.body.i
  %12 = ptrtoint ptr %rx_curr_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_curr_desc_q.i, align 4
  %14 = ptrtoint ptr %rx_used_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_used_desc_q.i, align 8
  %16 = ptrtoint ptr %p_rx_desc_area.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_rx_desc_area.i, align 4
  %arrayidx.i = getelementptr %struct.rx_desc, ptr %17, i32 %13
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool3.not.i = icmp sgt i32 %19, -1
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.rxq_process.exit_crit_edge

if.end.i.rxq_process.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxq_process.exit

if.end5.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_skb.i, align 8
  %arrayidx6.i = getelementptr ptr, ptr %21, i32 %13
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx6.i, align 4
  store ptr null, ptr %arrayidx6.i, align 4
  %add.i = add i32 %13, 1
  %24 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_ring_size.i, align 8
  %rem.i = srem i32 %add.i, %25
  %26 = ptrtoint ptr %rx_curr_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rem.i, ptr %rx_curr_desc_q.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %15)
  %cmp10.i = icmp eq i32 %rem.i, %15
  br i1 %cmp10.i, label %if.then11.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %rx_resource_err.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %rx_resource_err.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end5.i.if.end13.i_crit_edge
  %28 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_desc_count.i, align 4
  %dec14.i = add i32 %29, -1
  store i32 %dec14.i, ptr %rx_desc_count.i, align 4
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i, align 8
  %dev15.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %buf_ptr.i = getelementptr %struct.rx_desc, ptr %17, i32 %13, i32 3
  %32 = ptrtoint ptr %buf_ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_ptr.i, align 4
  %buf_size.i = getelementptr %struct.rx_desc, ptr %17, i32 %13, i32 2
  %34 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %buf_size.i, align 2
  %conv.i = zext i16 %35 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev15.i, i32 noundef %33, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #12
  %inc.i = add nuw nsw i32 %received_packets.093.i, 1
  %36 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stats1.i, align 4
  %inc16.i = add i32 %37, 1
  store i32 %inc16.i, ptr %stats1.i, align 4
  %byte_cnt.i = getelementptr %struct.rx_desc, ptr %17, i32 %13, i32 1
  %38 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %byte_cnt.i, align 4
  %conv17.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_bytes.i, align 4
  %add18.i = add i32 %41, %conv17.i
  store i32 %add18.i, ptr %rx_bytes.i, align 4
  %and22.i = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %42 = and i32 %19, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %42)
  %43 = icmp eq i32 %42, 196608
  br i1 %43, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end13.i
  %and19.i = and i32 %19, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and19.i)
  %cmp20.not.i = icmp eq i32 %and19.i, 196608
  %44 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_dropped.i, align 4
  %inc25.i = add i32 %45, 1
  store i32 %inc25.i, ptr %rx_dropped.i, align 4
  br i1 %cmp20.not.i, label %if.then24.i.if.end34.i_crit_edge, label %if.then29.i

if.then24.i.if.end34.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.then24.i
  %call30.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then29.i.if.end34.i_crit_edge, label %if.then32.i

if.then29.i.if.end34.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #15
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.then29.i.if.end34.i_crit_edge, %if.then24.i.if.end34.i_crit_edge
  br i1 %tobool23.not.i, label %if.end34.i.if.end39.i_crit_edge, label %if.then37.i

if.end34.i.if.end39.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_errors.i, align 4
  %inc38.i = add i32 %47, 1
  store i32 %inc38.i, ptr %rx_errors.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end39.i_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef %23, i32 noundef 1) #12
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %byte_cnt.i, align 4
  %conv41.i = zext i16 %49 to i32
  %sub.i = add nsw i32 %conv41.i, -4
  %call42.i = tail call ptr @skb_put(ptr noundef %23, i32 noundef %sub.i) #12
  %call43.i = tail call zeroext i16 @eth_type_trans(ptr noundef %23, ptr noundef %1) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15, i32 0, i32 18
  %50 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %call43.i, ptr %protocol.i, align 8
  %call44.i = tail call i32 @netif_receive_skb(ptr noundef %23) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.end39.i
  %exitcond.not.i = icmp eq i32 %inc.i, %budget
  br i1 %exitcond.not.i, label %rxq_process.exit.thread, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

rxq_process.exit.thread:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rxq_refill(ptr noundef %1) #12
  br label %if.end7

rxq_process.exit:                                 ; preds = %if.end.i.rxq_process.exit_crit_edge, %while.body.i.rxq_process.exit_crit_edge, %if.end.rxq_process.exit_crit_edge
  %received_packets.0.lcssa.i = phi i32 [ 0, %if.end.rxq_process.exit_crit_edge ], [ %received_packets.093.i, %if.end.i.rxq_process.exit_crit_edge ], [ %received_packets.093.i, %while.body.i.rxq_process.exit_crit_edge ]
  tail call fastcc void @rxq_refill(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %received_packets.0.lcssa.i, i32 %budget)
  %cmp4 = icmp slt i32 %received_packets.0.lcssa.i, %budget
  br i1 %cmp4, label %if.then5, label %rxq_process.exit.if.end7_crit_edge

rxq_process.exit.if.end7_crit_edge:               ; preds = %rxq_process.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %rxq_process.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %received_packets.0.lcssa.i) #12
  %base.i = getelementptr i8, ptr %napi, i32 308
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -852688880) #12, !srcloc !106
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %rxq_process.exit.if.end7_crit_edge, %rxq_process.exit.thread
  %received_packets.0.lcssa.i21 = phi i32 [ %budget, %rxq_process.exit.thread ], [ %received_packets.0.lcssa.i, %if.then5 ], [ %received_packets.0.lcssa.i, %rxq_process.exit.if.end7_crit_edge ]
  ret i32 %received_packets.0.lcssa.i21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxq_refill_timer_wrapper(ptr noundef %t) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %napi = getelementptr i8, ptr %t, i32 -248
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %napi) #12
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_smi_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @smi_wait_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxa168_eth_private, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.38) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %phy_addr, 16
  %shl1 = shl i32 %regnum, 21
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, 67108864
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2) #12
  %base.i = getelementptr inbounds %struct.pxa168_eth_private, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !106
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i1719 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1719) #12, !srcloc !104
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %and20 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool4.not21 = icmp eq i32 %and20, 0
  br i1 %tobool4.not21, label %for.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  tail call void @msleep(i32 noundef 10) #12
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #12, !srcloc !104
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  %and = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.body.1, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then5:                                         ; preds = %for.body.9
  call void @__sanitizer_cov_trace_pc() #14
  %dev6 = getelementptr inbounds %struct.pxa168_eth_private, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.39) #15
  br label %cleanup

for.body.1:                                       ; preds = %for.body.preheader
  tail call void @msleep(i32 noundef 10) #12
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.1 = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.1) #12, !srcloc !104
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  %and.1 = and i32 %20, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool4.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool4.not.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @msleep(i32 noundef 10) #12
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.2 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.2) #12, !srcloc !104
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %and.2 = and i32 %24, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool4.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool4.not.2, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  tail call void @msleep(i32 noundef 10) #12
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.3 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.3) #12, !srcloc !104
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %and.3 = and i32 %28, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool4.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool4.not.3, label %for.body.4, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  tail call void @msleep(i32 noundef 10) #12
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.4 = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.4) #12, !srcloc !104
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %and.4 = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool4.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool4.not.4, label %for.body.5, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  tail call void @msleep(i32 noundef 10) #12
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.5 = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.5) #12, !srcloc !104
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %and.5 = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool4.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool4.not.5, label %for.body.6, label %for.body.5.for.end_crit_edge

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  tail call void @msleep(i32 noundef 10) #12
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.6 = getelementptr i8, ptr %38, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.6) #12, !srcloc !104
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  %and.6 = and i32 %40, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool4.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool4.not.6, label %for.body.7, label %for.body.6.for.end_crit_edge

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.7:                                       ; preds = %for.body.6
  tail call void @msleep(i32 noundef 10) #12
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.7 = getelementptr i8, ptr %42, i32 16
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.7) #12, !srcloc !104
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  %and.7 = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool4.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool4.not.7, label %for.body.8, label %for.body.7.for.end_crit_edge

for.body.7.for.end_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.8:                                       ; preds = %for.body.7
  tail call void @msleep(i32 noundef 10) #12
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.8 = getelementptr i8, ptr %46, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.8) #12, !srcloc !104
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %and.8 = and i32 %48, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool4.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool4.not.8, label %for.body.9, label %for.body.8.for.end_crit_edge

for.body.8.for.end_crit_edge:                     ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.9:                                       ; preds = %for.body.8
  tail call void @msleep(i32 noundef 10) #12
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i17.9 = getelementptr i8, ptr %50, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.9) #12, !srcloc !104
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %and.9 = and i32 %52, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool4.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool4.not.9, label %if.then5, label %for.body.9.for.end_crit_edge

for.body.9.for.end_crit_edge:                     ; preds = %for.body.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.9.for.end_crit_edge, %for.body.8.for.end_crit_edge, %for.body.7.for.end_crit_edge, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %10, %if.end.for.end_crit_edge ], [ %14, %for.body.preheader.for.end_crit_edge ], [ %20, %for.body.1.for.end_crit_edge ], [ %24, %for.body.2.for.end_crit_edge ], [ %28, %for.body.3.for.end_crit_edge ], [ %32, %for.body.4.for.end_crit_edge ], [ %36, %for.body.5.for.end_crit_edge ], [ %40, %for.body.6.for.end_crit_edge ], [ %44, %for.body.7.for.end_crit_edge ], [ %48, %for.body.8.for.end_crit_edge ], [ %52, %for.body.9.for.end_crit_edge ]
  %and8 = and i32 %.lcssa, 65535
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  %retval.0 = phi i32 [ -110, %if.then ], [ -19, %if.then5 ], [ %and8, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_smi_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @smi_wait_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxa168_eth_private, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.38) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %phy_addr, 16
  %shl1 = shl i32 %regnum, 21
  %or = or i32 %shl1, %shl
  %conv = zext i16 %value to i32
  %or3 = or i32 %or, %conv
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3) #12
  %base.i = getelementptr inbounds %struct.pxa168_eth_private, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !106
  %call4 = tail call fastcc i32 @smi_wait_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7 = getelementptr inbounds %struct.pxa168_eth_private, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -110, %if.then ], [ -110, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_open(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.i = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cmd.i) #12
  %0 = call ptr @memset(ptr %cmd.i, i32 255, i32 88)
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %1 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %pxa168_init_phy.exit.thread

pxa168_init_phy.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cmd.i) #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %smi_bus.i = getelementptr i8, ptr %dev, i32 2728
  %3 = ptrtoint ptr %smi_bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smi_bus.i, align 8
  %phy_addr.i = getelementptr i8, ptr %dev, i32 2312
  %5 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_addr.i, align 8
  %call1.i = tail call ptr @mdiobus_scan(ptr noundef %4, i32 noundef %6) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call1.i to i32
  br label %pxa168_init_phy.exit

if.end5.i:                                        ; preds = %if.end.i
  %phy_intf.i = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %phy_intf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_intf.i, align 4
  %call6.i = tail call i32 @phy_connect_direct(ptr noundef %dev, ptr noundef %call1.i, ptr noundef nonnull @pxa168_eth_adjust_link, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %pxa168_init_phy.exit.thread110

pxa168_init_phy.exit.thread110:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_addr.i, align 8
  %conv.i = trunc i32 %11 to i8
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd.i, i32 0, i32 4
  %12 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %phy_address.i, align 2
  %phy_speed.i = getelementptr i8, ptr %dev, i32 2316
  %13 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_speed.i, align 4
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd.i, i32 0, i32 1
  %15 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %speed.i, align 4
  %phy_duplex.i = getelementptr i8, ptr %dev, i32 2320
  %16 = ptrtoint ptr %phy_duplex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_duplex.i, align 8
  %conv12.i = trunc i32 %17 to i8
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd.i, i32 0, i32 2
  %18 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv12.i, ptr %duplex.i, align 4
  %advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd.i, i32 0, i32 1, i32 1
  %19 = call ptr @memcpy(ptr %advertising.i, ptr @phy_basic_features, i32 12)
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  %spec.store.select.i = zext i1 %cmp.not.i to i8
  %20 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.store.select.i, ptr %autoneg.i, align 1
  %call22.i = call i32 @phy_ethtool_set_link_ksettings(ptr noundef %dev, ptr noundef nonnull %cmd.i) #12
  br label %pxa168_init_phy.exit

pxa168_init_phy.exit:                             ; preds = %if.end9.i, %if.then3.i
  %retval.0.i = phi i32 [ %7, %if.then3.i ], [ %call22.i, %if.end9.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cmd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %pxa168_init_phy.exit.if.end_crit_edge, label %pxa168_init_phy.exit.cleanup_crit_edge

pxa168_init_phy.exit.cleanup_crit_edge:           ; preds = %pxa168_init_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pxa168_init_phy.exit.if.end_crit_edge:            ; preds = %pxa168_init_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %pxa168_init_phy.exit.if.end_crit_edge, %pxa168_init_phy.exit.thread
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @pxa168_eth_int_handler, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev5 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rx_resource_err = getelementptr i8, ptr %dev, i32 2328
  %23 = ptrtoint ptr %rx_resource_err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rx_resource_err, align 8
  %rx_ring_size.i = getelementptr i8, ptr %dev, i32 2672
  %24 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_ring_size.i, align 8
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #12
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !102

kcalloc.exit.thread.i:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %rx_skb45.i = getelementptr i8, ptr %dev, i32 2360
  %28 = ptrtoint ptr %rx_skb45.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rx_skb45.i, align 8
  br label %out_free_irq

if.end7.i.i.i:                                    ; preds = %if.end6
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #16
  %rx_skb.i = getelementptr i8, ptr %dev, i32 2360
  %30 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i.i, ptr %rx_skb.i, align 8
  %tobool.not.i42 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i42, label %if.end7.i.i.i.out_free_irq_crit_edge, label %if.end.i43

if.end7.i.i.i.out_free_irq_crit_edge:             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irq

if.end.i43:                                       ; preds = %if.end7.i.i.i
  %rx_desc_count.i = getelementptr i8, ptr %dev, i32 2676
  %31 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rx_desc_count.i, align 4
  %32 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_ring_size.i, align 8
  %mul.i = shl i32 %33, 4
  %rx_desc_area_size.i = getelementptr i8, ptr %dev, i32 2356
  %34 = ptrtoint ptr %rx_desc_area_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i, ptr %rx_desc_area_size.i, align 4
  %dev4.i = getelementptr i8, ptr %dev, i32 2424
  %35 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev4.i, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 133, i32 1
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i, align 8
  %rx_desc_dma.i = getelementptr i8, ptr %dev, i32 2352
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %38, i32 noundef %mul.i, ptr noundef %rx_desc_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %p_rx_desc_area.i = getelementptr i8, ptr %dev, i32 2348
  %39 = ptrtoint ptr %p_rx_desc_area.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %p_rx_desc_area.i, align 4
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %out.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp52.not.i = icmp eq i32 %25, 0
  br i1 %cmp52.not.i, label %for.cond.preheader.i.if.end9_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end9_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.053.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %rx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_desc_dma.i, align 8
  %add.i = add nuw nsw i32 %i.053.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %42 = icmp eq i32 %add.i, %25
  %add.op.i = shl i32 %add.i, 4
  %mul13.i = select i1 %42, i32 0, i32 %add.op.i
  %add14.i = add i32 %mul13.i, %41
  %next_desc_ptr.i = getelementptr %struct.rx_desc, ptr %call.i.i, i32 %i.053.i, i32 4
  %43 = ptrtoint ptr %next_desc_ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add14.i, ptr %next_desc_ptr.i, align 4
  br i1 %42, label %for.body.i.if.end9_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end9_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

out.i:                                            ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_skb.i, align 8
  call void @kfree(ptr noundef %45) #12
  br label %out_free_irq

if.end9:                                          ; preds = %for.body.i.if.end9_crit_edge, %for.cond.preheader.i.if.end9_crit_edge
  %rx_curr_desc_q.i = getelementptr i8, ptr %dev, i32 2332
  %46 = ptrtoint ptr %rx_curr_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rx_curr_desc_q.i, align 4
  %rx_used_desc_q.i = getelementptr i8, ptr %dev, i32 2336
  %47 = ptrtoint ptr %rx_used_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rx_used_desc_q.i, align 8
  %mul15.i = shl i32 %25, 4
  %48 = ptrtoint ptr %rx_desc_area_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul15.i, ptr %rx_desc_area_size.i, align 4
  %tx_ring_size.i = getelementptr i8, ptr %dev, i32 2664
  %49 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_ring_size.i, align 8
  %51 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 4) #12
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %kcalloc.exit.thread.i45, label %if.end7.i.i.i77, !prof !102

kcalloc.exit.thread.i45:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %tx_skb45.i = getelementptr i8, ptr %dev, i32 2376
  %53 = ptrtoint ptr %tx_skb45.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %tx_skb45.i, align 8
  br label %out_free_rx_skb

if.end7.i.i.i77:                                  ; preds = %if.end9
  %54 = extractvalue { i32, i1 } %51, 0
  %call8.i.i.i76 = call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 3520) #16
  %tx_skb.i = getelementptr i8, ptr %dev, i32 2376
  %55 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i.i.i76, ptr %tx_skb.i, align 8
  %tobool.not.i79 = icmp eq ptr %call8.i.i.i76, null
  br i1 %tobool.not.i79, label %if.end7.i.i.i77.out_free_rx_skb_crit_edge, label %if.end.i86

if.end7.i.i.i77.out_free_rx_skb_crit_edge:        ; preds = %if.end7.i.i.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_rx_skb

if.end.i86:                                       ; preds = %if.end7.i.i.i77
  %tx_desc_count.i = getelementptr i8, ptr %dev, i32 2668
  %56 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %tx_desc_count.i, align 4
  %57 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_ring_size.i, align 8
  %mul.i81 = shl i32 %58, 4
  %tx_desc_area_size.i = getelementptr i8, ptr %dev, i32 2372
  %59 = ptrtoint ptr %tx_desc_area_size.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul.i81, ptr %tx_desc_area_size.i, align 4
  %60 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev4.i, align 8
  %parent.i83 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 133, i32 1
  %62 = ptrtoint ptr %parent.i83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i83, align 8
  %tx_desc_dma.i = getelementptr i8, ptr %dev, i32 2368
  %call.i.i84 = call ptr @dma_alloc_attrs(ptr noundef %63, i32 noundef %mul.i81, ptr noundef %tx_desc_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %p_tx_desc_area.i = getelementptr i8, ptr %dev, i32 2364
  %64 = ptrtoint ptr %p_tx_desc_area.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i84, ptr %p_tx_desc_area.i, align 4
  %tobool8.not.i85 = icmp eq ptr %call.i.i84, null
  br i1 %tobool8.not.i85, label %out.i99, label %for.cond.preheader.i88

for.cond.preheader.i88:                           ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp52.not.i87 = icmp eq i32 %50, 0
  br i1 %cmp52.not.i87, label %for.cond.preheader.i88.if.end13_crit_edge, label %for.cond.preheader.i88.for.body.i96_crit_edge

for.cond.preheader.i88.for.body.i96_crit_edge:    ; preds = %for.cond.preheader.i88
  br label %for.body.i96

for.cond.preheader.i88.if.end13_crit_edge:        ; preds = %for.cond.preheader.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.body.i96:                                     ; preds = %for.body.i96.for.body.i96_crit_edge, %for.cond.preheader.i88.for.body.i96_crit_edge
  %i.053.i89 = phi i32 [ %add.i90, %for.body.i96.for.body.i96_crit_edge ], [ 0, %for.cond.preheader.i88.for.body.i96_crit_edge ]
  %65 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_desc_dma.i, align 8
  %add.i90 = add nuw nsw i32 %i.053.i89, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i90, i32 %50)
  %67 = icmp eq i32 %add.i90, %50
  %add.op.i91 = shl i32 %add.i90, 4
  %mul13.i92 = select i1 %67, i32 0, i32 %add.op.i91
  %add14.i93 = add i32 %mul13.i92, %66
  %next_desc_ptr.i94 = getelementptr %struct.tx_desc, ptr %call.i.i84, i32 %i.053.i89, i32 4
  %68 = ptrtoint ptr %next_desc_ptr.i94 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add14.i93, ptr %next_desc_ptr.i94, align 4
  br i1 %67, label %for.body.i96.if.end13_crit_edge, label %for.body.i96.for.body.i96_crit_edge

for.body.i96.for.body.i96_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i96

for.body.i96.if.end13_crit_edge:                  ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

out.i99:                                          ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tx_skb.i, align 8
  call void @kfree(ptr noundef %70) #12
  br label %out_free_rx_skb

if.end13:                                         ; preds = %for.body.i96.if.end13_crit_edge, %for.cond.preheader.i88.if.end13_crit_edge
  %tx_curr_desc_q.i = getelementptr i8, ptr %dev, i32 2340
  %71 = ptrtoint ptr %tx_curr_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %tx_curr_desc_q.i, align 4
  %tx_used_desc_q.i = getelementptr i8, ptr %dev, i32 2344
  %72 = ptrtoint ptr %tx_used_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %tx_used_desc_q.i, align 8
  %mul15.i97 = shl i32 %50, 4
  %73 = ptrtoint ptr %tx_desc_area_size.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul15.i97, ptr %tx_desc_area_size.i, align 4
  %74 = ptrtoint ptr %rx_used_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %rx_used_desc_q.i, align 8
  %75 = ptrtoint ptr %rx_curr_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %rx_curr_desc_q.i, align 4
  call fastcc void @rxq_refill(ptr noundef %dev)
  %76 = ptrtoint ptr %rx_used_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %rx_used_desc_q.i, align 8
  %77 = ptrtoint ptr %rx_curr_desc_q.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %rx_curr_desc_q.i, align 4
  call void @netif_carrier_off(ptr noundef %dev) #12
  %napi = getelementptr i8, ptr %dev, i32 2432
  call void @napi_enable(ptr noundef %napi) #12
  %78 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phydev.i, align 16
  call void @phy_start(ptr noundef %79) #12
  %80 = ptrtoint ptr %tx_curr_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_curr_desc_q.i, align 4
  %82 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_desc_dma.i, align 8
  %mul.i104 = shl i32 %81, 4
  %add.i105 = add i32 %83, %mul.i104
  %84 = call i32 @llvm.bswap.i32(i32 %add.i105) #12
  %base.i.i = getelementptr i8, ptr %dev, i32 2740
  %85 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %86, i32 1252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %84) #12, !srcloc !106
  %87 = ptrtoint ptr %rx_curr_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_curr_desc_q.i, align 4
  %89 = ptrtoint ptr %rx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_desc_dma.i, align 8
  %mul1.i = shl i32 %88, 4
  %add2.i = add i32 %90, %mul1.i
  %91 = call i32 @llvm.bswap.i32(i32 %add2.i) #12
  %92 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %93, i32 1184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %91) #12, !srcloc !106
  %94 = ptrtoint ptr %rx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_desc_dma.i, align 8
  %add5.i = add i32 %95, %mul1.i
  %96 = call i32 @llvm.bswap.i32(i32 %add5.i) #12
  %97 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %98, i32 1152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %96) #12, !srcloc !106
  %99 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %100, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 0) #12, !srcloc !106
  %101 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %102, i32 1112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 -852688880) #12, !srcloc !106
  %103 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %104, i32 1024
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #12, !srcloc !104
  %106 = or i32 %105, -2147483648
  %107 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %108, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %106) #12, !srcloc !106
  %109 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %110, i32 1096
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #12, !srcloc !104
  %112 = or i32 %111, -2147483648
  %113 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %114, i32 1096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %112) #12, !srcloc !106
  br label %cleanup

out_free_rx_skb:                                  ; preds = %out.i99, %if.end7.i.i.i77.out_free_rx_skb_crit_edge, %kcalloc.exit.thread.i45
  call fastcc void @rxq_deinit(ptr noundef %dev)
  br label %out_free_irq

out_free_irq:                                     ; preds = %out_free_rx_skb, %out.i, %if.end7.i.i.i.out_free_irq_crit_edge, %kcalloc.exit.thread.i
  %115 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq, align 4
  %call17 = call ptr @free_irq(i32 noundef %116, ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_irq, %if.end13, %do.end, %pxa168_init_phy.exit.cleanup_crit_edge, %pxa168_init_phy.exit.thread110
  %retval.0 = phi i32 [ -11, %do.end ], [ -12, %out_free_irq ], [ 0, %if.end13 ], [ %retval.0.i, %pxa168_init_phy.exit.cleanup_crit_edge ], [ %call6.i, %pxa168_init_phy.exit.thread110 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base.i.i = getelementptr i8, ptr %dev, i32 2740
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %1, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #12, !srcloc !106
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %3, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #12, !srcloc !106
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %5, i32 1096
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #12, !srcloc !104
  tail call fastcc void @abort_dma(ptr noundef %add.ptr.i) #12
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %8, i32 1024
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #12, !srcloc !104
  %10 = and i32 %9, 2147483647
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %12, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %10) #12, !srcloc !106
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %13 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_stop(ptr noundef %14) #12
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %16, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #12, !srcloc !106
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %18, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #12, !srcloc !106
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %20, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #12, !srcloc !106
  %napi = getelementptr i8, ptr %dev, i32 2432
  tail call void @napi_disable(ptr noundef %napi) #12
  %timeout = getelementptr i8, ptr %dev, i32 2680
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timeout) #12
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %dev) #12
  tail call fastcc void @rxq_deinit(ptr noundef %dev)
  tail call fastcc void @txq_reclaim(ptr noundef %dev, i32 noundef 1) #12
  %tx_used_desc_q.i = getelementptr i8, ptr %dev, i32 2344
  %23 = ptrtoint ptr %tx_used_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_used_desc_q.i, align 8
  %tx_curr_desc_q.i = getelementptr i8, ptr %dev, i32 2340
  %25 = ptrtoint ptr %tx_curr_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_curr_desc_q.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not.i = icmp eq i32 %24, %26
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !108

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1120, 0\0A.popsection", ""() #12, !srcloc !109
  unreachable

do.end8.i:                                        ; preds = %entry
  %p_tx_desc_area.i = getelementptr i8, ptr %dev, i32 2364
  %27 = ptrtoint ptr %p_tx_desc_area.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_tx_desc_area.i, align 4
  %tobool9.not.i = icmp eq ptr %28, null
  br i1 %tobool9.not.i, label %do.end8.i.txq_deinit.exit_crit_edge, label %if.then10.i

do.end8.i.txq_deinit.exit_crit_edge:              ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %txq_deinit.exit

if.then10.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev11.i = getelementptr i8, ptr %dev, i32 2424
  %29 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev11.i, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i, align 8
  %tx_desc_area_size.i = getelementptr i8, ptr %dev, i32 2372
  %33 = ptrtoint ptr %tx_desc_area_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_desc_area_size.i, align 4
  %tx_desc_dma.i = getelementptr i8, ptr %dev, i32 2368
  %35 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_desc_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %28, i32 noundef %36, i32 noundef 0) #12
  br label %txq_deinit.exit

txq_deinit.exit:                                  ; preds = %if.then10.i, %do.end8.i.txq_deinit.exit_crit_edge
  %tx_skb.i = getelementptr i8, ptr %dev, i32 2376
  %37 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_skb.i, align 8
  tail call void @kfree(ptr noundef %38) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_curr_desc_q.i = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %tx_curr_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_curr_desc_q.i, align 4
  %add.i = add i32 %1, 1
  %tx_ring_size.i = getelementptr i8, ptr %dev, i32 2664
  %2 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_size.i, align 8
  %rem.i = srem i32 %add.i, %3
  store i32 %rem.i, ptr %tx_curr_desc_q.i, align 4
  %tx_used_desc_q.i = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %tx_used_desc_q.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_used_desc_q.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %5)
  %cmp.i = icmp eq i32 %rem.i, %5
  br i1 %cmp.i, label %do.body4.i, label %eth_alloc_tx_desc_index.exit, !prof !102

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1218, 0\0A.popsection", ""() #12, !srcloc !110
  unreachable

eth_alloc_tx_desc_index.exit:                     ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_desc_count.i = getelementptr i8, ptr %dev, i32 2668
  %6 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_desc_count.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %tx_desc_count.i, align 4
  %p_tx_desc_area = getelementptr i8, ptr %dev, i32 2364
  %8 = ptrtoint ptr %p_tx_desc_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_tx_desc_area, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %9, i32 %1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %tx_skb = getelementptr i8, ptr %dev, i32 2376
  %12 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_skb, align 8
  %arrayidx3 = getelementptr ptr, ptr %13, i32 %1
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %arrayidx3, align 4
  %conv = trunc i32 %11 to i16
  %byte_cnt = getelementptr %struct.tx_desc, ptr %9, i32 %1, i32 2
  %15 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %byte_cnt, align 2
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %19) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %eth_alloc_tx_desc_index.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !108

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #12
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %eth_alloc_tx_desc_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %19, i32 noundef %11) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %19 to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i25 = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i25, i32 noundef %and.i, i32 noundef %11, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %buf_ptr = getelementptr %struct.tx_desc, ptr %9, i32 %1, i32 3
  %26 = ptrtoint ptr %buf_ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %buf_ptr, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_flags.i, align 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %dma_map_single_attrs.exit.skb_tx_timestamp.exit_crit_edge, label %if.then.i26

dma_map_single_attrs.exit.skb_tx_timestamp.exit_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit

if.then.i26:                                      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i26, %dma_map_single_attrs.exit.skb_tx_timestamp.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !111
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2134441984, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !112
  tail call void @arm_heavy_mb() #12
  %base.i = getelementptr i8, ptr %dev, i32 2740
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %34, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 -2147450880) #12, !srcloc !106
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %35 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %36, %11
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %37 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %tx_packets, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 12
  %42 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp.not.i.i = icmp eq i32 %43, %41
  br i1 %cmp.not.i.i, label %skb_tx_timestamp.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

skb_tx_timestamp.exit.netif_trans_update.exit_crit_edge: ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %41, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %skb_tx_timestamp.exit.netif_trans_update.exit_crit_edge
  %45 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_ring_size.i, align 8
  %47 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_desc_count.i, align 4
  %sub = sub i32 %46, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %if.then, label %netif_trans_update.exit.if.end_crit_edge

netif_trans_update.exit.if.end_crit_edge:         ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %netif_trans_update.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_eth_set_rx_mode(ptr noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base.i = getelementptr i8, ptr %dev, i32 2740
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #12, !srcloc !104
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %5 = and i32 %2, -16777217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and = lshr i32 %4, 8
  %and.lobit = and i32 %and, 1
  %val.0 = or i32 %and.lobit, %6
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0) #12
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %7) #12, !srcloc !106
  %htpr = getelementptr i8, ptr %dev, i32 2744
  %10 = ptrtoint ptr %htpr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %htpr, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 16384)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @add_del_hash_entry(ptr noundef %add.ptr.i, ptr noundef %14, i32 noundef 0) #12
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %15 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.026 = load ptr, ptr %mc, align 4
  %cmp.not27 = icmp eq ptr %ha.026, %mc
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.028 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.026, %entry.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.028, i32 0, i32 2
  tail call fastcc void @add_del_hash_entry(ptr noundef %add.ptr.i, ptr noundef %addr, i32 noundef 0) #12
  %16 = ptrtoint ptr %ha.028 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0 = load ptr, ptr %ha.028, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  %oldMac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %oldMac) #12
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = call ptr @memcpy(ptr %oldMac, ptr %6, i32 6)
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv = zext i8 %11 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx7 = getelementptr i8, ptr %9, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or = or i32 %shl9, %shl
  %arrayidx11 = getelementptr i8, ptr %9, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %15 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or, %shl13
  %arrayidx16 = getelementptr i8, ptr %9, i32 3
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %or18 = or i32 %or14, %conv17
  %arrayidx20 = getelementptr i8, ptr %9, i32 4
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %arrayidx24 = getelementptr i8, ptr %9, i32 5
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %or26 = or i32 %shl22, %conv25
  %22 = tail call i32 @llvm.bswap.i32(i32 %or18) #12
  %base.i = getelementptr i8, ptr %dev, i32 2740
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %24, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %22) #12, !srcloc !106
  %25 = tail call i32 @llvm.bswap.i32(i32 %or26) #12
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %27, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %25) #12, !srcloc !106
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 73
  %28 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #12
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63
  %conv.i = zext i8 %29 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #12
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  call fastcc void @add_del_hash_entry(ptr noundef %add.ptr.i, ptr noundef nonnull %oldMac, i32 noundef 1) #12
  tail call fastcc void @add_del_hash_entry(ptr noundef %add.ptr.i, ptr noundef %31, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %oldMac) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_change_mtu(ptr noundef %dev, i32 noundef %mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mtu, ptr %mtu1, align 4
  %dev.i.i = getelementptr i8, ptr %dev, i32 2424
  %1 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i, align 8
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu.i.i, align 4
  %add1.i.i = add i32 %4, 43
  %and.i.i = and i32 %add1.i.i, -8
  %skb_size2.i.i = getelementptr i8, ptr %dev, i32 2660
  %5 = ptrtoint ptr %skb_size2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i.i, ptr %skb_size2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1519, i32 %and.i.i)
  %cmp.i = icmp slt i32 %and.i.i, 1519
  br i1 %cmp.i, label %entry.set_port_config_ext.exit_crit_edge, label %if.else.i

entry.set_port_config_ext.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_port_config_ext.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %and.i.i)
  %cmp3.i = icmp ult i32 %and.i.i, 1537
  br i1 %cmp3.i, label %if.else.i.set_port_config_ext.exit_crit_edge, label %if.else5.i

if.else.i.set_port_config_ext.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_port_config_ext.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i.i)
  %cmp7.i = icmp ult i32 %and.i.i, 2049
  %..i = select i1 %cmp7.i, i32 271093304, i32 271109688
  br label %set_port_config_ext.exit

set_port_config_ext.exit:                         ; preds = %if.else5.i, %if.else.i.set_port_config_ext.exit_crit_edge, %entry.set_port_config_ext.exit_crit_edge
  %skb_size.0.i = phi i32 [ 271060536, %entry.set_port_config_ext.exit_crit_edge ], [ 271076920, %if.else.i.set_port_config_ext.exit_crit_edge ], [ %..i, %if.else5.i ]
  %6 = tail call i32 @llvm.bswap.i32(i32 %skb_size.0.i) #12
  %base.i.i = getelementptr i8, ptr %dev, i32 2740
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #12, !srcloc !106
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %set_port_config_ext.exit.cleanup_crit_edge, label %if.end

set_port_config_ext.exit.cleanup_crit_edge:       ; preds = %set_port_config_ext.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %set_port_config_ext.exit
  %call4 = tail call i32 @pxa168_eth_stop(ptr noundef %dev)
  %call5 = tail call i32 @pxa168_eth_open(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.32) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %set_port_config_ext.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_eth_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_desc_count = getelementptr i8, ptr %dev, i32 2668
  %0 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_desc_count, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %1) #15
  %tx_timeout_task = getelementptr i8, ptr %dev, i32 2380
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %tx_timeout_task) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_eth_netpoll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #12
  %base.i.i.i = getelementptr i8, ptr %dev, i32 2740
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 1104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !104
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %entry.pxa168_eth_int_handler.exit_crit_edge, label %if.end.i.i

entry.pxa168_eth_int_handler.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxa168_eth_int_handler.exit

if.end.i.i:                                       ; preds = %entry
  %neg.i.i = xor i32 %5, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #12
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %8, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %6) #12, !srcloc !106
  %and.i.i = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end3.i.thread.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %and4.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end3.i.i.pxa168_eth_int_handler.exit_crit_edge, label %if.end3.i.i.if.end.i_crit_edge

if.end3.i.i.if.end.i_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end3.i.i.pxa168_eth_int_handler.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxa168_eth_int_handler.exit

if.end3.i.thread.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %work_todo.i.i = getelementptr i8, ptr %dev, i32 2656
  %9 = ptrtoint ptr %work_todo.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %work_todo.i.i, align 8
  %11 = or i8 %10, 2
  store i8 %11, ptr %work_todo.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end3.i.thread.i, %if.end3.i.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %13, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #12, !srcloc !106
  %napi.i = getelementptr i8, ptr %dev, i32 2432
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #12
  br i1 %call.i.i, label %if.then.i.i, label %if.end.i.pxa168_eth_int_handler.exit_crit_edge

if.end.i.pxa168_eth_int_handler.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pxa168_eth_int_handler.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %napi.i) #12
  br label %pxa168_eth_int_handler.exit

pxa168_eth_int_handler.exit:                      ; preds = %if.then.i.i, %if.end.i.pxa168_eth_int_handler.exit_crit_edge, %if.end3.i.i.pxa168_eth_int_handler.exit_crit_edge, %entry.pxa168_eth_int_handler.exit_crit_edge
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa168_eth_int_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr i8, ptr %dev_id, i32 2740
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !104
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %neg.i = xor i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #12
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %4) #12, !srcloc !106
  %and.i = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end3.i.thread

if.end3.i:                                        ; preds = %if.end.i
  %and4.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i.thread:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %work_todo.i = getelementptr i8, ptr %dev_id, i32 2656
  %7 = ptrtoint ptr %work_todo.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %work_todo.i, align 8
  %9 = or i8 %8, 2
  store i8 %9, ptr %work_todo.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end3.i.thread, %if.end3.i.if.end_crit_edge
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %11, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #12, !srcloc !106
  %napi = getelementptr i8, ptr %dev_id, i32 2432
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %napi) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3.i.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxq_refill(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_desc_count = getelementptr i8, ptr %dev, i32 2676
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2672
  %0 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_desc_count, align 4
  %2 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp48 = icmp slt i32 %1, %3
  br i1 %cmp48, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %skb_size = getelementptr i8, ptr %dev, i32 2660
  %rx_used_desc_q = getelementptr i8, ptr %dev, i32 2336
  %p_rx_desc_area = getelementptr i8, ptr %dev, i32 2348
  %rx_skb = getelementptr i8, ptr %dev, i32 2360
  %rx_resource_err = getelementptr i8, ptr %dev, i32 2328
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %skb_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_size, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %5, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call.i, null
  %6 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %rx_desc_count, align 4
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add i32 %.pr, 1
  %7 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %rx_desc_count, align 4
  %8 = ptrtoint ptr %rx_used_desc_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_used_desc_q, align 8
  %10 = ptrtoint ptr %p_rx_desc_area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_rx_desc_area, align 4
  %arrayidx = getelementptr %struct.rx_desc, ptr %11, i32 %9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call.i41 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %15) #12
  br i1 %call.i41, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !108

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #12
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %cleanup

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %15, i32 noundef %sub.ptr.sub) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %sub.ptr.rhs.cast, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i42 = getelementptr %struct.page, ptr %22, i32 %shr.i
  %and.i = and i32 %sub.ptr.rhs.cast, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i42, i32 noundef %and.i, i32 noundef %sub.ptr.sub, i32 noundef 2, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.cleanup_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.cleanup_crit_edge ]
  %buf_ptr = getelementptr %struct.rx_desc, ptr %11, i32 %9, i32 3
  %23 = ptrtoint ptr %buf_ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %buf_ptr, align 4
  %conv = trunc i32 %sub.ptr.sub to i16
  %buf_size = getelementptr %struct.rx_desc, ptr %11, i32 %9, i32 2
  %24 = ptrtoint ptr %buf_size to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %buf_size, align 2
  %25 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_skb, align 8
  %arrayidx7 = getelementptr ptr, ptr %26, i32 %9
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %arrayidx7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2139095040, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  %add = add i32 %9, 1
  %29 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_ring_size, align 8
  %rem = srem i32 %add, %30
  %31 = ptrtoint ptr %rx_used_desc_q to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rem, ptr %rx_used_desc_q, align 8
  %32 = ptrtoint ptr %rx_resource_err to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rx_resource_err, align 8
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %add.ptr.i43 = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr.i43, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %36, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %37 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_desc_count, align 4
  %39 = load i32, ptr %rx_ring_size, align 8
  %cmp = icmp slt i32 %38, %39
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %40 = phi i32 [ %1, %entry.while.end_crit_edge ], [ %.pr, %while.body.while.end_crit_edge ], [ %38, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp11 = icmp eq i32 %40, 0
  br i1 %cmp11, label %if.then13, label %while.end.if.end16_crit_edge

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add14 = add i32 %41, 10
  %timeout = getelementptr i8, ptr %dev, i32 2680
  %expires = getelementptr i8, ptr %dev, i32 2688
  %42 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add14, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timeout) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %while.end.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxq_deinit(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_desc_count = getelementptr i8, ptr %dev, i32 2676
  %0 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_desc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not36 = icmp eq i32 %1, 0
  br i1 %tobool.not36, label %entry.if.end9_crit_edge, label %land.rhs.lr.ph

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2672
  %rx_skb = getelementptr i8, ptr %dev, i32 2360
  %2 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41 = icmp sgt i32 %3, 0
  br i1 %cmp41, label %land.rhs.lr.ph.for.body_crit_edge, label %land.rhs.lr.ph.if.then7_crit_edge

land.rhs.lr.ph.if.then7_crit_edge:                ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.rhs.lr.ph.for.body_crit_edge:                ; preds = %land.rhs.lr.ph
  br label %for.body

land.rhs:                                         ; preds = %for.inc
  %inc = add nuw nsw i32 %curr.03742, 1
  %4 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_size, align 8
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %land.rhs.for.body_crit_edge, label %land.rhs.if.then7_crit_edge

land.rhs.if.then7_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %land.rhs.lr.ph.for.body_crit_edge
  %curr.03742 = phi i32 [ %inc, %land.rhs.for.body_crit_edge ], [ 0, %land.rhs.lr.ph.for.body_crit_edge ]
  %6 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_skb, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %curr.03742
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %for.incthread-pre-split, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %9) #12
  %10 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_desc_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %rx_desc_count, align 4
  br label %for.inc

for.incthread-pre-split:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %rx_desc_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.incthread-pre-split, %if.then
  %13 = phi i32 [ %.pr, %for.incthread-pre-split ], [ %dec, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.inc.if.end9_crit_edge, label %land.rhs

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %land.rhs.if.then7_crit_edge, %land.rhs.lr.ph.if.then7_crit_edge
  %.lcssa = phi i32 [ %1, %land.rhs.lr.ph.if.then7_crit_edge ], [ %13, %land.rhs.if.then7_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %.lcssa) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.inc.if.end9_crit_edge, %entry.if.end9_crit_edge
  %p_rx_desc_area = getelementptr i8, ptr %dev, i32 2348
  %14 = ptrtoint ptr %p_rx_desc_area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_rx_desc_area, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %dev12 = getelementptr i8, ptr %dev, i32 2424
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 133, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %rx_desc_area_size = getelementptr i8, ptr %dev, i32 2356
  %20 = ptrtoint ptr %rx_desc_area_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_desc_area_size, align 4
  %rx_desc_dma = getelementptr i8, ptr %dev, i32 2352
  %22 = ptrtoint ptr %rx_desc_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_desc_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %15, i32 noundef %23, i32 noundef 0) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %rx_skb16 = getelementptr i8, ptr %dev, i32 2360
  %24 = ptrtoint ptr %rx_skb16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_skb16, align 8
  tail call void @kfree(ptr noundef %25) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_scan(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_eth_adjust_link(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %base.i = getelementptr i8, ptr %dev, i32 2740
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %3, i32 1024
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #12, !srcloc !104
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %7, i32 1032
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #12, !srcloc !104
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  %and = and i32 %5, -32769
  %and3 = and i32 %9, -1314817
  %interface = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp = icmp eq i32 %11, 7
  %or = or i32 %and3, 1048576
  %spec.select = select i1 %cmp, i32 %or, i32 %and3
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %13)
  %cmp4 = icmp eq i32 %13, 100
  %or6 = or i32 %spec.select, 262144
  %cfgext.1 = select i1 %cmp4, i32 %or6, i32 %spec.select
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %masksel = select i1 %tobool.not, i32 0, i32 32768
  %cfg.0 = or i32 %masksel, %and
  %pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  %or13 = or i32 %cfgext.1, 4096
  %cfgext.2 = select i1 %tobool11.not, i32 %or13, i32 %cfgext.1
  call void @__sanitizer_cov_trace_cmp4(i32 %cfg.0, i32 %5)
  %cmp15 = icmp eq i32 %cfg.0, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %cfgext.2, i32 %9)
  %cmp16 = icmp eq i32 %cfgext.2, %9
  %or.cond = select i1 %cmp15, i1 %cmp16, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end18

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %18 = tail call i32 @llvm.bswap.i32(i32 %cfg.0) #12
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %20, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %18) #12, !srcloc !106
  %21 = tail call i32 @llvm.bswap.i32(i32 %cfgext.2) #12
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %23, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %21) #12, !srcloc !106
  tail call void @phy_print_status(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abort_dma(ptr nocapture noundef readonly %pep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pxa168_eth_private, ptr %pep, i32 0, i32 32
  br label %do.body

do.body:                                          ; preds = %land.rhs.9.do.body_crit_edge, %entry
  %max_retries.0 = phi i32 [ 40, %entry ], [ %dec1, %land.rhs.9.do.body_crit_edge ]
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8388736) #12, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #12
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i1213 = getelementptr i8, ptr %4, i32 1096
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1213) #12, !srcloc !104
  %6 = and i32 %5, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not14 = icmp eq i32 %6, 0
  br i1 %tobool.not14, label %do.body.do.end_crit_edge, label %land.rhs.preheader

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.preheader:                               ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #12
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 1096
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #12, !srcloc !104
  %11 = and i32 %10, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.rhs.preheader.do.end_crit_edge, label %land.rhs.1

land.rhs.preheader.do.end_crit_edge:              ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.1:                                       ; preds = %land.rhs.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #12
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.1 = getelementptr i8, ptr %14, i32 1096
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.1) #12, !srcloc !104
  %16 = and i32 %15, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.1 = icmp eq i32 %16, 0
  br i1 %tobool.not.1, label %land.rhs.1.do.end_crit_edge, label %land.rhs.2

land.rhs.1.do.end_crit_edge:                      ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.2:                                       ; preds = %land.rhs.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #12
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.2 = getelementptr i8, ptr %19, i32 1096
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.2) #12, !srcloc !104
  %21 = and i32 %20, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.2 = icmp eq i32 %21, 0
  br i1 %tobool.not.2, label %land.rhs.2.do.end_crit_edge, label %land.rhs.3

land.rhs.2.do.end_crit_edge:                      ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.3:                                       ; preds = %land.rhs.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #12
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.3 = getelementptr i8, ptr %24, i32 1096
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.3) #12, !srcloc !104
  %26 = and i32 %25, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.3 = icmp eq i32 %26, 0
  br i1 %tobool.not.3, label %land.rhs.3.do.end_crit_edge, label %land.rhs.4

land.rhs.3.do.end_crit_edge:                      ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.4:                                       ; preds = %land.rhs.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #12
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.4 = getelementptr i8, ptr %29, i32 1096
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.4) #12, !srcloc !104
  %31 = and i32 %30, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.4 = icmp eq i32 %31, 0
  br i1 %tobool.not.4, label %land.rhs.4.do.end_crit_edge, label %land.rhs.5

land.rhs.4.do.end_crit_edge:                      ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.5:                                       ; preds = %land.rhs.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #12
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.5 = getelementptr i8, ptr %34, i32 1096
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.5) #12, !srcloc !104
  %36 = and i32 %35, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.5 = icmp eq i32 %36, 0
  br i1 %tobool.not.5, label %land.rhs.5.do.end_crit_edge, label %land.rhs.6

land.rhs.5.do.end_crit_edge:                      ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.6:                                       ; preds = %land.rhs.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #12
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.6 = getelementptr i8, ptr %39, i32 1096
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.6) #12, !srcloc !104
  %41 = and i32 %40, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.6 = icmp eq i32 %41, 0
  br i1 %tobool.not.6, label %land.rhs.6.do.end_crit_edge, label %land.rhs.7

land.rhs.6.do.end_crit_edge:                      ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.7:                                       ; preds = %land.rhs.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #12
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.7 = getelementptr i8, ptr %44, i32 1096
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.7) #12, !srcloc !104
  %46 = and i32 %45, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.7 = icmp eq i32 %46, 0
  br i1 %tobool.not.7, label %land.rhs.7.do.end_crit_edge, label %land.rhs.8

land.rhs.7.do.end_crit_edge:                      ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.8:                                       ; preds = %land.rhs.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #12
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.8 = getelementptr i8, ptr %49, i32 1096
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.8) #12, !srcloc !104
  %51 = and i32 %50, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.8 = icmp eq i32 %51, 0
  br i1 %tobool.not.8, label %land.rhs.8.do.end_crit_edge, label %land.rhs.9

land.rhs.8.do.end_crit_edge:                      ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.9:                                       ; preds = %land.rhs.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 2147480) #12
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.9 = getelementptr i8, ptr %54, i32 1096
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.9) #12, !srcloc !104
  %dec1 = add nsw i32 %max_retries.0, -1
  %cmp2.not = icmp eq i32 %max_retries.0, 0
  br i1 %cmp2.not, label %land.rhs.9.do.end_crit_edge, label %land.rhs.9.do.body_crit_edge

land.rhs.9.do.body_crit_edge:                     ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.rhs.9.do.end_crit_edge:                      ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.rhs.9.do.end_crit_edge, %land.rhs.8.do.end_crit_edge, %land.rhs.7.do.end_crit_edge, %land.rhs.6.do.end_crit_edge, %land.rhs.5.do.end_crit_edge, %land.rhs.4.do.end_crit_edge, %land.rhs.3.do.end_crit_edge, %land.rhs.2.do.end_crit_edge, %land.rhs.1.do.end_crit_edge, %land.rhs.preheader.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %max_retries.0)
  %cmp6 = icmp slt i32 %max_retries.0, 2
  br i1 %cmp6, label %if.then, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxa168_eth_private, ptr %pep, i32 0, i32 20
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.abort_dma) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txq_reclaim(ptr noundef %dev, i32 noundef %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @netif_tx_lock(ptr noundef %dev) #12
  %work_todo = getelementptr i8, ptr %dev, i32 2656
  %0 = ptrtoint ptr %work_todo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %work_todo, align 8
  %2 = and i8 %1, -3
  store i8 %2, ptr %work_todo, align 8
  %tx_desc_count = getelementptr i8, ptr %dev, i32 2668
  %3 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_desc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %while.body.lr.ph, label %entry.txq_reclaim_end_crit_edge

entry.txq_reclaim_end_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %txq_reclaim_end

while.body.lr.ph:                                 ; preds = %entry
  %tx_used_desc_q = getelementptr i8, ptr %dev, i32 2344
  %p_tx_desc_area = getelementptr i8, ptr %dev, i32 2364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp ne i32 %force, 0
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2664
  %tx_skb = getelementptr i8, ptr %dev, i32 2376
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %30, %if.end29.while.body_crit_edge ]
  %6 = ptrtoint ptr %tx_used_desc_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_used_desc_q, align 8
  %8 = ptrtoint ptr %p_tx_desc_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_tx_desc_area, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %9, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool5.not = icmp sgt i32 %11, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end, label %while.body.txq_reclaim_end_crit_edge

while.body.txq_reclaim_end_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %txq_reclaim_end

if.end:                                           ; preds = %while.body
  %add = add i32 %7, 1
  %12 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring_size, align 8
  %rem = srem i32 %add, %13
  %14 = ptrtoint ptr %tx_used_desc_q to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem, ptr %tx_used_desc_q, align 8
  %dec = add nsw i32 %5, -1
  %15 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %tx_desc_count, align 4
  %buf_ptr = getelementptr %struct.tx_desc, ptr %9, i32 %7, i32 3
  %16 = ptrtoint ptr %buf_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_ptr, align 4
  %byte_cnt = getelementptr %struct.tx_desc, ptr %9, i32 %7, i32 2
  %18 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %byte_cnt, align 2
  %conv11 = zext i16 %19 to i32
  %20 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_skb, align 8
  %arrayidx12 = getelementptr ptr, ptr %21, i32 %7
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx12, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %and18 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end25_crit_edge, label %if.then20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  %call21 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end24_crit_edge, label %if.then23

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20.if.end24_crit_edge
  %25 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end17.if.end25_crit_edge
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  tail call void @dma_unmap_page_attrs(ptr noundef %dev26, i32 noundef %17, i32 noundef %conv11, i32 noundef 1, i32 noundef 0) #12
  br i1 %tobool13.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %23, i32 noundef 1) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %29 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_desc_count, align 4
  %cmp = icmp sgt i32 %30, 0
  br i1 %cmp, label %if.end29.while.body_crit_edge, label %if.end29.txq_reclaim_end_crit_edge

if.end29.txq_reclaim_end_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %txq_reclaim_end

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

txq_reclaim_end:                                  ; preds = %if.end29.txq_reclaim_end_crit_edge, %while.body.txq_reclaim_end_crit_edge, %entry.txq_reclaim_end_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_del_hash_entry(ptr nocapture noundef readonly %pep, ptr nocapture noundef readonly %mac_addr, i32 noundef %del) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = shl nuw nsw i32 %conv, 11
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mac_addr, align 1
  %conv8 = zext i8 %4 to i32
  %5 = shl nuw nsw i32 %conv8, 3
  %shl11 = and i32 %5, 1920
  %or12 = or i32 %shl11, %2
  %shl17 = and i32 %5, 120
  %or18 = or i32 %or12, %shl17
  %arrayidx19 = getelementptr i8, ptr %mac_addr, i32 3
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %7 to i32
  %8 = shl i32 %conv20, 27
  %shl23 = and i32 %8, -2147483648
  %or24 = or i32 %or18, %shl23
  %shl29 = and i32 %8, 2013265920
  %or30 = or i32 %or24, %shl29
  %arrayidx31 = getelementptr i8, ptr %mac_addr, i32 2
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %10 to i32
  %11 = shl nuw nsw i32 %conv32, 19
  %shl35 = and i32 %11, 125829120
  %or36 = or i32 %or30, %shl35
  %shl41 = and i32 %11, 7864320
  %or42 = or i32 %or36, %shl41
  %or47 = or i32 %or42, 5
  %arrayidx48 = getelementptr i8, ptr %mac_addr, i32 5
  %12 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv49, 11
  %arrayidx59 = getelementptr i8, ptr %mac_addr, i32 4
  %15 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %16 to i32
  %17 = shl nuw nsw i32 %conv60, 3
  %shl63 = and i32 %17, 1920
  %or64 = or i32 %shl63, %14
  %shl69 = and i32 %17, 120
  %or70 = or i32 %or64, %shl69
  %18 = lshr i32 %conv20, 5
  %or76 = or i32 %or70, %18
  %htpr = getelementptr inbounds %struct.pxa168_eth_private, ptr %pep, i32 0, i32 33
  %19 = ptrtoint ptr %htpr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %htpr, align 8
  %or26.i.1.i.i = tail call i8 @llvm.bitreverse.i8(i8 %1) #12
  %or26.i.2.i.i = tail call i8 @llvm.bitreverse.i8(i8 %10) #12
  %or26.i.3.i.i = tail call i8 @llvm.bitreverse.i8(i8 %7) #12
  %or26.i.4.i.i = tail call i8 @llvm.bitreverse.i8(i8 %16) #12
  %or26.i.5.i.i = tail call i8 @llvm.bitreverse.i8(i8 %13) #12
  %conv.i = zext i8 %or26.i.5.i.i to i32
  %and5.i = and i32 %conv.i, 3
  %conv7.i = zext i8 %or26.i.4.i.i to i32
  %and8.i = shl nuw nsw i32 %conv7.i, 2
  %shl.i = and i32 %and8.i, 508
  %or.i = or i32 %shl.i, %and5.i
  %21 = lshr i32 %conv7.i, 7
  %conv14.i = zext i8 %or26.i.3.i.i to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 1
  %or16.i = or i32 %21, %shl15.i
  %conv18.i = zext i8 %or26.i.2.i.i to i32
  %22 = and i8 %or26.i.1.i.i, 1
  %and22.i = zext i8 %22 to i32
  %shl23.i = shl nuw nsw i32 %and22.i, 8
  %or24.i = or i32 %shl23.i, %conv18.i
  %23 = shl nuw nsw i32 %conv.i, 7
  %shl25.i = and i32 %23, 1536
  %xor.i = xor i32 %or16.i, %or24.i
  %xor26.i = xor i32 %xor.i, %or.i
  %and28.i = or i32 %xor26.i, %shl25.i
  %add.ptr = getelementptr %struct.addr_table_entry, ptr %20, i32 %and28.i
  %add.ptr88 = getelementptr %struct.addr_table_entry, ptr %20, i32 2047
  br label %for.body

for.body:                                         ; preds = %if.end87.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %if.end87.for.body_crit_edge ]
  %entry1.01 = phi ptr [ %add.ptr, %entry ], [ %entry1.1, %if.end87.for.body_crit_edge ]
  %24 = ptrtoint ptr %entry1.01 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entry1.01, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %and78 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool.not = icmp eq i32 %and78, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.else

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.else:                                          ; preds = %for.body
  %27 = xor i32 %26, %or42
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp82 = icmp ult i32 %27, 8
  br i1 %cmp82, label %land.lhs.true, label %if.else.if.end87_crit_edge

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true:                                    ; preds = %if.else
  %hi = getelementptr inbounds %struct.addr_table_entry, ptr %entry1.01, i32 0, i32 1
  %28 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hi, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %or76)
  %cmp84 = icmp eq i32 %30, %or76
  br i1 %cmp84, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end87:                                         ; preds = %land.lhs.true.if.end87_crit_edge, %if.else.if.end87_crit_edge
  %cmp89 = icmp eq ptr %entry1.01, %add.ptr88
  %incdec.ptr = getelementptr %struct.addr_table_entry, ptr %entry1.01, i32 1
  %entry1.1 = select i1 %cmp89, ptr %20, ptr %incdec.ptr
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %if.end87.for.end_crit_edge, label %if.end87.for.body_crit_edge

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end87.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %for.body.for.end_crit_edge
  %entry1.0.lcssa = phi ptr [ %entry1.01, %land.lhs.true.for.end_crit_edge ], [ %entry1.01, %for.body.for.end_crit_edge ], [ %entry1.1, %if.end87.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %i.03, %land.lhs.true.for.end_crit_edge ], [ %i.03, %for.body.for.end_crit_edge ], [ 12, %if.end87.for.end_crit_edge ]
  %31 = ptrtoint ptr %entry1.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entry1.0.lcssa, align 4
  %33 = and i32 %32, -117440513
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %and96 = and i32 %or42, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %and96)
  %cmp97.not = icmp eq i32 %34, %and96
  br i1 %cmp97.not, label %for.end.if.end106_crit_edge, label %land.lhs.true99

for.end.if.end106_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true99:                                  ; preds = %for.end
  %hi100 = getelementptr inbounds %struct.addr_table_entry, ptr %entry1.0.lcssa, i32 0, i32 1
  %35 = ptrtoint ptr %hi100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hi100, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or76)
  %cmp101.not = icmp eq i32 %37, %or76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del)
  %tobool104.not = icmp eq i32 %del, 0
  %or.cond = or i1 %tobool104.not, %cmp101.not
  br i1 %or.cond, label %land.lhs.true99.if.end106_crit_edge, label %land.lhs.true99.cleanup_crit_edge

land.lhs.true99.cleanup_crit_edge:                ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true99.if.end106_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.end106:                                        ; preds = %land.lhs.true99.if.end106_crit_edge, %for.end.if.end106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.0.lcssa)
  %cmp107 = icmp eq i32 %i.0.lcssa, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del)
  %tobool110.not = icmp eq i32 %del, 0
  br i1 %cmp107, label %if.then109, label %if.end113

if.then109:                                       ; preds = %if.end106
  br i1 %tobool110.not, label %if.then111, label %if.then109.cleanup_crit_edge

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then111:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pxa168_eth_private, ptr %pep, i32 0, i32 20
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %or76)
  %41 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %.sink = select i1 %tobool110.not, i32 %40, i32 0
  %storemerge = select i1 %tobool110.not, i32 %41, i32 0
  %42 = getelementptr inbounds %struct.addr_table_entry, ptr %entry1.0.lcssa, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %42, align 4
  %44 = ptrtoint ptr %entry1.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge, ptr %entry1.0.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.then111, %if.then109.cleanup_crit_edge, %land.lhs.true99.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa168_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.35, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call4 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.36, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef nonnull @.str.36, i32 noundef 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_wait_ready(ptr nocapture noundef readonly %pep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pxa168_eth_private, ptr %pep, i32 0, i32 32
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !104
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not3 = icmp eq i32 %3, 0
  br i1 %tobool.not3, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  tail call void @msleep(i32 noundef 10) #12
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !104
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.preheader.cleanup_crit_edge, label %for.body.1

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.1:                                       ; preds = %for.body.preheader
  tail call void @msleep(i32 noundef 10) #12
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #12, !srcloc !104
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %for.body.1.cleanup_crit_edge, label %for.body.2

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.2:                                       ; preds = %for.body.1
  tail call void @msleep(i32 noundef 10) #12
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #12, !srcloc !104
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.2 = icmp eq i32 %15, 0
  br i1 %tobool.not.2, label %for.body.2.cleanup_crit_edge, label %for.body.3

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.3:                                       ; preds = %for.body.2
  tail call void @msleep(i32 noundef 10) #12
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #12, !srcloc !104
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3 = icmp eq i32 %19, 0
  br i1 %tobool.not.3, label %for.body.3.cleanup_crit_edge, label %for.body.4

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.4:                                       ; preds = %for.body.3
  tail call void @msleep(i32 noundef 10) #12
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #12, !srcloc !104
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.4 = icmp eq i32 %23, 0
  br i1 %tobool.not.4, label %for.body.4.cleanup_crit_edge, label %for.body.5

for.body.4.cleanup_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.5:                                       ; preds = %for.body.4
  tail call void @msleep(i32 noundef 10) #12
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #12, !srcloc !104
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.5 = icmp eq i32 %27, 0
  br i1 %tobool.not.5, label %for.body.5.cleanup_crit_edge, label %for.body.6

for.body.5.cleanup_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.6:                                       ; preds = %for.body.5
  tail call void @msleep(i32 noundef 10) #12
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #12, !srcloc !104
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.6 = icmp eq i32 %31, 0
  br i1 %tobool.not.6, label %for.body.6.cleanup_crit_edge, label %for.body.7

for.body.6.cleanup_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.7:                                       ; preds = %for.body.6
  tail call void @msleep(i32 noundef 10) #12
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #12, !srcloc !104
  %35 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.7 = icmp eq i32 %35, 0
  br i1 %tobool.not.7, label %for.body.7.cleanup_crit_edge, label %for.body.8

for.body.7.cleanup_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.8:                                       ; preds = %for.body.7
  tail call void @msleep(i32 noundef 10) #12
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #12, !srcloc !104
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.8 = icmp eq i32 %39, 0
  br i1 %tobool.not.8, label %for.body.8.cleanup_crit_edge, label %for.body.9

for.body.8.cleanup_crit_edge:                     ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.9:                                       ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 10) #12
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %41, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #12, !srcloc !104
  %43 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.9 = icmp eq i32 %43, 0
  %spec.select = select i1 %tobool.not.9, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.body.9, %for.body.8.cleanup_crit_edge, %for.body.7.cleanup_crit_edge, %for.body.6.cleanup_crit_edge, %for.body.5.cleanup_crit_edge, %for.body.4.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ], [ 0, %for.body.1.cleanup_crit_edge ], [ 0, %for.body.2.cleanup_crit_edge ], [ 0, %for.body.3.cleanup_crit_edge ], [ 0, %for.body.4.cleanup_crit_edge ], [ 0, %for.body.5.cleanup_crit_edge ], [ 0, %for.body.6.cleanup_crit_edge ], [ 0, %for.body.7.cleanup_crit_edge ], [ 0, %for.body.8.cleanup_crit_edge ], [ %spec.select, %for.body.9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_pxa168_eth__490_1592_pxa168_eth_driver_init6, !1, !"__initcall__kmod_pxa168_eth__490_1592_pxa168_eth_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1592, i32 1}
!2 = !{ptr @__exitcall_pxa168_eth_driver_exit, !1, !"__exitcall_pxa168_eth_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file491, !4, !"__UNIQUE_ID_file491", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1594, i32 1}
!5 = !{ptr @__UNIQUE_ID_license492, !4, !"__UNIQUE_ID_license492", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description493, !7, !"__UNIQUE_ID_description493", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1595, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias494, !9, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1596, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1587, i32 12}
!12 = !{ptr @pxa168_eth_driver, !13, !"pxa168_eth_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1580, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1395, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pxa168_eth_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @pxa168_eth_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1399, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pxa168_eth_probe._entry.4, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @pxa168_eth_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @pxa168_eth_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1435, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1446, i32 4}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pxa168_eth_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @pxa168_eth_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1471, i32 43}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1474, i32 44}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1476, i32 4}
!40 = !{ptr @pxa168_eth_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pxa168_eth_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1480, i32 28}
!44 = !{ptr @pxa168_eth_probe.__key.20, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1492, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1500, i32 23}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1503, i32 46}
!51 = !{ptr @pxa168_eth_netdev_ops, !52, !"pxa168_eth_netdev_ops", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1372, i32 36}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1139, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pxa168_eth_open._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @pxa168_eth_open._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1070, i32 19}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 300, i32 24}
!66 = !{ptr @__func__.abort_dma, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 300, i32 44}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 732, i32 21}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 492, i32 9}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1205, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pxa168_eth_change_mtu._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pxa168_eth_change_mtu._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 749, i32 19}
!79 = !{ptr @pxa168_ethtool_ops, !80, !"pxa168_ethtool_ops", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1363, i32 33}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1358, i32 25}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1359, i32 28}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 820, i32 10}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1307, i32 25}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1315, i32 9}
!91 = !{ptr @pxa168_eth_of_match, !92, !"pxa168_eth_of_match", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/marvell/pxa168_eth.c", i32 1574, i32 34}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2157693037, i64 2157693544, i64 2157693074, i64 2157693130, i64 2157693164, i64 2157693188, i64 2157693229, i64 2157693250, i64 2157693278, i64 2157693312}
!104 = !{i64 6295849}
!105 = !{i64 2157698676, i64 2157699183, i64 2157698713, i64 2157698769, i64 2157698803, i64 2157698827, i64 2157698868, i64 2157698889, i64 2157698917, i64 2157698951}
!106 = !{i64 6295431}
!107 = !{i64 2157673258}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2157676804, i64 2157677311, i64 2157676841, i64 2157676897, i64 2157676931, i64 2157676955, i64 2157676996, i64 2157677017, i64 2157677045, i64 2157677079}
!110 = !{i64 2157681942, i64 2157682449, i64 2157681979, i64 2157682035, i64 2157682069, i64 2157682093, i64 2157682134, i64 2157682155, i64 2157682183, i64 2157682217}
!111 = !{i64 2157688933}
!112 = !{i64 2157689141}
!113 = !{i64 2157664993}
!114 = !{i64 2157665109}
