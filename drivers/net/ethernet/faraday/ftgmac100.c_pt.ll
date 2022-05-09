; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/faraday/ftgmac100.c_pt.bc'
source_filename = "../drivers/net/ethernet/faraday/ftgmac100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ncsi_dev = type { i32, i32, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ftgmac100_txdes = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ftgmac100 = type { ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ftgmac100_rxdes = type { i32, i32, i32, i32 }

@__initcall__kmod_ftgmac100__508_2010_ftgmac100_driver_init6 = internal global ptr @ftgmac100_driver_init, section ".initcall6.init", align 4
@ftgmac100_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ftgmac100_probe, ptr @ftgmac100_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ftgmac100_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ftgmac100_driver_exit = internal global ptr @ftgmac100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author509 = internal constant [57 x i8] c"ftgmac100.author=Po-Yu Chuang <ratbert@faraday-tech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description510 = internal constant [39 x i8] c"ftgmac100.description=FTGMAC100 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file511 = internal constant [54 x i8] c"ftgmac100.file=drivers/net/ethernet/faraday/ftgmac100\00", section ".modinfo", align 1
@__UNIQUE_ID_license512 = internal constant [22 x i8] c"ftgmac100.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ftgmac100\00", [22 x i8] zeroinitializer }, align 32
@ftgmac100_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,ftgmac100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ftgmac100_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ftgmac100_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftgmac100_get_ringparam, ptr @ftgmac100_set_ringparam, ptr null, ptr @ftgmac100_get_pauseparam, ptr @ftgmac100_set_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ftgmac100_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ftgmac100_open, ptr @ftgmac100_stop, ptr @ftgmac100_hard_start_xmit, ptr null, ptr null, ptr null, ptr @ftgmac100_set_rx_mode, ptr @ftgmac100_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftgmac100_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @ncsi_vlan_rx_add_vid, ptr @ncsi_vlan_rx_kill_vid, ptr @ftgmac100_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftgmac100_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ftgmac100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->reset_task)\00", [59 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ftgmac100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1809, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not reserve memory region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftgmac100_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/faraday/ftgmac100.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry_ptr = internal global ptr @ftgmac100_probe._entry, section ".printk_index", align 4
@ftgmac100_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to ioremap ethernet registers\0A\00", [58 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry_ptr.9 = internal global ptr @ftgmac100_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2400-mac\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2500-mac\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2600-mac\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"use-ncsi\00", [23 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1855, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using NCSI interface\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry_ptr.17 = internal global ptr @ftgmac100_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1879, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to connect to phy\0A\00", [38 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry_ptr.21 = internal global ptr @ftgmac100_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1904, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MII probe failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry_ptr.25 = internal global ptr @ftgmac100_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no-hw-checksum\00", [17 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1938, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register netdev\0A\00", [37 x i8] zeroinitializer }, align 32
@ftgmac100_probe._entry_ptr.29 = internal global ptr @ftgmac100_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq %d, mapped at %p\0A\00", [42 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate descriptors\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate packet buffers\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown speed %d !\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hardware reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate rx skb\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to map rx page\0A\00", [41 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AHB bus error ! Resetting chip.\0A\00", [63 x i8] zeroinitializer }, align 32
@ftgmac100_hard_start_xmit.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ftgmac100_hard_start_xmit\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx packet too big\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"map tx packet head failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"map tx fragment failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ftgmac100_reset.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftgmac100_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Resetting NIC...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"attempting to continue...\0A\00", [37 x i8] zeroinitializer }, align 32
@ftgmac100_reset.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.48, i8 1, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Reset done !\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ftgmac100_initial_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 188, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Read MAC address %pM from device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ftgmac100_initial_mac\00", [42 x i8] zeroinitializer }, align 32
@ftgmac100_initial_mac._entry_ptr = internal global ptr @ftgmac100_initial_mac._entry, section ".printk_index", align 4
@ftgmac100_initial_mac._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 204, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Read MAC address %pM from chip\0A\00", [32 x i8] zeroinitializer }, align 32
@ftgmac100_initial_mac._entry_ptr.53 = internal global ptr @ftgmac100_initial_mac._entry.51, section ".printk_index", align 4
@ftgmac100_initial_mac._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.4, i32 208, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Generated random MAC address %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@ftgmac100_initial_mac._entry_ptr.56 = internal global ptr @ftgmac100_initial_mac._entry.54, section ".printk_index", align 4
@ftgmac100_ncsi_handler.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 1, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ftgmac100_ncsi_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NCSI interface %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftgmac100_mdio\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@ftgmac100_setup_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 1689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot register MDIO bus!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ftgmac100_setup_mdio\00", [43 x i8] zeroinitializer }, align 32
@ftgmac100_setup_mdio._entry_ptr = internal global ptr @ftgmac100_setup_mdio._entry, section ".printk_index", align 4
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mdio read timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mdio write timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported PHY mode %s !\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: no PHY found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Could not attach to PHY\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RCLK\00", [27 x i8] zeroinitializer }, align 32
@switch.table.ftgmac100_mii_probe = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.100, ptr @.str.100, ptr @.str.100, ptr @.str.100, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.99, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 10, i64 100, i64 1000]
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"ftgmac100_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 2002, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 2006, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"ftgmac100_of_match\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1996, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"ftgmac100_ethtool_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1140, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"ftgmac100_netdev_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1631, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1803, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1809, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1816, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1832, i32 41 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1833, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1834, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1848, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1855, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1862, i32 39 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1879, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1891, i32 45 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1904, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1931, i32 32 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1938, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1942, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1485, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1514, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1521, i32 22 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 154, i32 28 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 133, i32 21 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 392, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 400, i32 24 }
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 326, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1179, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 720, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 748, i32 23 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 828, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1307, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1331, i32 22 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1340, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 187, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 204, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 207, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1726, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1674, i32 24 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1675, i32 47 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1689, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1023, i32 21 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1059, i32 21 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1448, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1454, i32 23 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1462, i32 22 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 211, i32 10 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 213, i32 10 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 215, i32 10 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 217, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 219, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 221, i32 10 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 223, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 225, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 227, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 237, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 239, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 241, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 243, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 245, i32 10 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 247, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 249, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 251, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 253, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 255, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 257, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 259, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 261, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 263, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 265, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 267, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 269, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 271, i32 10 }
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private constant [44 x i8] c"../drivers/net/ethernet/faraday/ftgmac100.c\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1756, i32 48 }
@___asan_gen_.400 = private unnamed_addr constant [33 x i8] c"switch.table.ftgmac100_mii_probe\00", align 1
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_author509, ptr @__UNIQUE_ID_description510, ptr @__UNIQUE_ID_file511, ptr @__UNIQUE_ID_license512, ptr @__exitcall_ftgmac100_driver_exit, ptr @__initcall__kmod_ftgmac100__508_2010_ftgmac100_driver_init6, ptr @ftgmac100_driver_exit, ptr @ftgmac100_initial_mac._entry, ptr @ftgmac100_initial_mac._entry.51, ptr @ftgmac100_initial_mac._entry.54, ptr @ftgmac100_initial_mac._entry_ptr, ptr @ftgmac100_initial_mac._entry_ptr.53, ptr @ftgmac100_initial_mac._entry_ptr.56, ptr @ftgmac100_probe._entry, ptr @ftgmac100_probe._entry.14, ptr @ftgmac100_probe._entry.19, ptr @ftgmac100_probe._entry.23, ptr @ftgmac100_probe._entry.27, ptr @ftgmac100_probe._entry.7, ptr @ftgmac100_probe._entry_ptr, ptr @ftgmac100_probe._entry_ptr.17, ptr @ftgmac100_probe._entry_ptr.21, ptr @ftgmac100_probe._entry_ptr.25, ptr @ftgmac100_probe._entry_ptr.29, ptr @ftgmac100_probe._entry_ptr.9, ptr @ftgmac100_setup_mdio._entry, ptr @ftgmac100_setup_mdio._entry_ptr, ptr @ftgmac100_driver, ptr @.str, ptr @ftgmac100_of_match, ptr @ftgmac100_ethtool_ops, ptr @ftgmac100_netdev_ops, ptr @ftgmac100_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @switch.table.ftgmac100_mii_probe], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_initial_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_initial_mac._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_initial_mac._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftgmac100_setup_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ftgmac100_mii_probe to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ftgmac100_driver, ptr noundef null) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @platform_driver_unregister(ptr noundef nonnull @ftgmac100_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup171_crit_edge, label %if.end

entry.cleanup171_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup171

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup171_crit_edge, label %if.end3

if.end.cleanup171_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup171

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 400, i32 noundef 1, i32 noundef 1) #16
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup171_crit_edge, label %if.end7

if.end3.cleanup171_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup171

if.end7:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %1 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ftgmac100_ethtool_ops, ptr %ethtool_ops, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ftgmac100_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %3 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 500, ptr %watchdog_timeo, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %netdev10 = getelementptr i8, ptr %call4, i32 2380
  %5 = ptrtoint ptr %netdev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %netdev10, align 4
  %dev12 = getelementptr i8, ptr %call4, i32 2384
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev12, align 8
  %reset_task = getelementptr i8, ptr %call4, i32 2616
  tail call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #16
  %7 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %reset_task, align 8
  %lockdep_map = getelementptr i8, ptr %call4, i32 2632
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @ftgmac100_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry16 = getelementptr i8, ptr %call4, i32 2620
  %8 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr i8, ptr %call4, i32 2624
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call4, i32 2628
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ftgmac100_reset_task, ptr %func, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %12
  %add.i = add i32 %sub.i, %14
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end7.dev_name.exit_crit_edge ]
  %call21 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %add.i, ptr noundef %retval.0.i, i32 noundef 0) #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21, ptr %add.ptr.i, align 8
  %tobool24.not = icmp eq ptr %call21, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #19
  br label %err_req_mem

if.end30:                                         ; preds = %dev_name.exit
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call, align 4
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i, align 4
  %sub.i290 = sub i32 1, %21
  %add.i291 = add i32 %sub.i290, %23
  %call33 = tail call ptr @ioremap(i32 noundef %21, i32 noundef %add.i291) #16
  %base = getelementptr i8, ptr %call4, i32 2308
  %24 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call33, ptr %base, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #19
  br label %err_ioremap

if.end41:                                         ; preds = %if.end30
  %irq42 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 64
  %25 = ptrtoint ptr %irq42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call1, ptr %irq42, align 4
  %tx_pause = getelementptr i8, ptr %call4, i32 2692
  %26 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %tx_pause, align 4
  %rx_pause = getelementptr i8, ptr %call4, i32 2693
  %27 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rx_pause, align 1
  %aneg_pause = getelementptr i8, ptr %call4, i32 2694
  %28 = ptrtoint ptr %aneg_pause to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %aneg_pause, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #16
  %29 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %30 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev12, align 8
  %32 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev10, align 4
  %call.i = tail call i32 @device_get_ethdev_address(ptr noundef %31, ptr noundef %33) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i292 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i292, label %do.end.i, label %if.end.i294

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev12, align 8
  %36 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev10, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr.i, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.49, ptr noundef %39) #19
  br label %ftgmac100_initial_mac.exit

if.end.i294:                                      ; preds = %if.end41
  %40 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 5
  %41 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 3
  %42 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 2
  %43 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr.i293 = getelementptr i8, ptr %45, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #16, !srcloc !217
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr5.i = getelementptr i8, ptr %49, i32 12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #16, !srcloc !217
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %shr.i = lshr i32 %47, 8
  %conv.i = trunc i32 %shr.i to i8
  %52 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %mac.i, align 4
  %conv8.i = trunc i32 %47 to i8
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv8.i, ptr %43, align 1
  %shr10.i = lshr i32 %51, 24
  %conv12.i = trunc i32 %shr10.i to i8
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv12.i, ptr %42, align 2
  %shr14.i = lshr i32 %51, 16
  %conv16.i = trunc i32 %shr14.i to i8
  %55 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv16.i, ptr %41, align 1
  %shr18.i = lshr i32 %51, 8
  %conv20.i = trunc i32 %shr18.i to i8
  %56 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv20.i, ptr %29, align 4
  %conv23.i = trunc i32 %51 to i8
  %57 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv23.i, ptr %40, align 1
  %58 = load i32, ptr %mac.i, align 4
  %59 = and i32 %58, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i294.if.else.i_crit_edge

if.end.i294.if.else.i_crit_edge:                  ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i294
  %60 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %29, align 4
  %conv.i.i.i = zext i16 %61 to i32
  %or.i.i.i = or i32 %58, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.else.i_crit_edge, label %if.then26.i

is_valid_ether_addr.exit.i.if.else.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then26.i:                                      ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev10, align 4
  call void @dev_addr_mod(ptr noundef %63, i32 noundef 0, ptr noundef nonnull %mac.i, i32 noundef 6) #16
  %64 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev12, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.52, ptr noundef nonnull %mac.i) #19
  br label %ftgmac100_initial_mac.exit

if.else.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.else.i_crit_edge, %if.end.i294.if.else.i_crit_edge
  %66 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev10, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #16
  %68 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #16
  %69 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %addr.i.i, align 1
  %71 = and i8 %70, -4
  %72 = or i8 %71, 2
  store i8 %72, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %67, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #16
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 55
  %73 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #16
  %74 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev12, align 8
  %76 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev10, align 4
  %dev_addr40.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 86
  %78 = ptrtoint ptr %dev_addr40.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_addr40.i, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.55, ptr noundef %79) #19
  br label %ftgmac100_initial_mac.exit

ftgmac100_initial_mac.exit:                       ; preds = %if.else.i, %if.then26.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #16
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  %tobool44.not = icmp eq ptr %81, null
  br i1 %tobool44.not, label %if.end122.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %ftgmac100_initial_mac.exit
  %call45 = call i32 @of_device_is_compatible(ptr noundef nonnull %81, ptr noundef nonnull @.str.10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %land.lhs.true.if.then52_crit_edge

land.lhs.true.if.then52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then52

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call47 = call i32 @of_device_is_compatible(ptr noundef nonnull %81, ptr noundef nonnull @.str.11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false.if.then52_crit_edge

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then52

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %call50 = call i32 @of_device_is_compatible(ptr noundef nonnull %81, ptr noundef nonnull @.str.12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true62.critedge286, label %lor.lhs.false49.if.then52_crit_edge

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %lor.lhs.false.if.then52_crit_edge, %land.lhs.true.if.then52_crit_edge
  %rxdes0_edorr_mask = getelementptr i8, ptr %call4, i32 2332
  %82 = ptrtoint ptr %rxdes0_edorr_mask to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1073741824, ptr %rxdes0_edorr_mask, align 4
  %txdes0_edotr_mask = getelementptr i8, ptr %call4, i32 2360
  %83 = ptrtoint ptr %txdes0_edotr_mask to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1073741824, ptr %txdes0_edotr_mask, align 8
  %is_aspeed = getelementptr i8, ptr %call4, i32 2696
  %84 = ptrtoint ptr %is_aspeed to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %is_aspeed, align 8
  %call53 = call i32 @of_device_is_compatible(ptr noundef nonnull %81, ptr noundef nonnull @.str.12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.land.lhs.true62_crit_edge, label %if.then55

if.then52.land.lhs.true62_crit_edge:              ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true62

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %86, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 24) #16, !srcloc !220
  br label %land.lhs.true62

land.lhs.true62.critedge286:                      ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #18
  %rxdes0_edorr_mask58.c = getelementptr i8, ptr %call4, i32 2332
  %87 = ptrtoint ptr %rxdes0_edorr_mask58.c to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 32768, ptr %rxdes0_edorr_mask58.c, align 4
  %txdes0_edotr_mask59.c = getelementptr i8, ptr %call4, i32 2360
  %88 = ptrtoint ptr %txdes0_edotr_mask59.c to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 32768, ptr %txdes0_edotr_mask59.c, align 8
  br label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true62.critedge286, %if.then55, %if.then52.land.lhs.true62_crit_edge
  %call63 = call ptr @of_get_property(ptr noundef nonnull %81, ptr noundef nonnull @.str.13, ptr noundef null) #16
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %land.lhs.true77, label %do.end68

do.end68:                                         ; preds = %land.lhs.true62
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #19
  %use_ncsi = getelementptr i8, ptr %call4, i32 2680
  %89 = ptrtoint ptr %use_ncsi to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %use_ncsi, align 8
  %call70 = call ptr @ncsi_register_dev(ptr noundef nonnull %call4, ptr noundef nonnull @ftgmac100_ncsi_handler) #16
  %ndev = getelementptr i8, ptr %call4, i32 2388
  %90 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call70, ptr %ndev, align 4
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %do.end68.err_phy_connect_crit_edge, label %do.end68.if.end122_crit_edge

do.end68.if.end122_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

do.end68.err_phy_connect_crit_edge:               ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_phy_connect

land.lhs.true77:                                  ; preds = %land.lhs.true62
  %call78 = call ptr @of_get_property(ptr noundef nonnull %81, ptr noundef nonnull @.str.18, ptr noundef null) #16
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %land.lhs.true103.critedge, label %if.then80

if.then80:                                        ; preds = %land.lhs.true77
  %call81 = call i32 @of_device_is_compatible(ptr noundef nonnull %81, ptr noundef nonnull @.str.10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %if.then80.if.then86_crit_edge

if.then80.if.then86_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then86

lor.lhs.false83:                                  ; preds = %if.then80
  %call84 = call i32 @of_device_is_compatible(ptr noundef nonnull %81, ptr noundef nonnull @.str.11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %lor.lhs.false83.if.end91_crit_edge, label %lor.lhs.false83.if.then86_crit_edge

lor.lhs.false83.if.then86_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then86

lor.lhs.false83.if.end91_crit_edge:               ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then86:                                        ; preds = %lor.lhs.false83.if.then86_crit_edge, %if.then80.if.then86_crit_edge
  %call87 = call fastcc i32 @ftgmac100_setup_mdio(ptr noundef nonnull %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.if.end91_crit_edge, label %if.then86.err_setup_mdio_crit_edge

if.then86.err_setup_mdio_crit_edge:               ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup_mdio

if.then86.if.end91_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.end91:                                         ; preds = %if.then86.if.end91_crit_edge, %lor.lhs.false83.if.end91_crit_edge
  %91 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev10, align 4
  %call93 = call ptr @of_phy_get_and_connect(ptr noundef %92, ptr noundef nonnull %81, ptr noundef nonnull @ftgmac100_adjust_link) #16
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %cleanup.thread305, label %cleanup.thread

cleanup.thread305:                                ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #19
  br label %err_phy_connect

cleanup.thread:                                   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  call void @phy_support_asym_pause(ptr noundef nonnull %call93) #16
  call void @phy_attached_info(ptr noundef nonnull %call93) #16
  br label %if.end122

land.lhs.true103.critedge:                        ; preds = %land.lhs.true77
  %call104 = call ptr @of_get_child_by_name(ptr noundef nonnull %81, ptr noundef nonnull @.str.22) #16
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.then106, label %land.lhs.true103.critedge.if.end122_crit_edge

land.lhs.true103.critedge.if.end122_crit_edge:    ; preds = %land.lhs.true103.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

if.then106:                                       ; preds = %land.lhs.true103.critedge
  %use_ncsi107 = getelementptr i8, ptr %call4, i32 2680
  %93 = ptrtoint ptr %use_ncsi107 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %use_ncsi107, align 8
  %call108 = call fastcc i32 @ftgmac100_setup_mdio(ptr noundef nonnull %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.then106.err_setup_mdio_crit_edge

if.then106.err_setup_mdio_crit_edge:              ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup_mdio

if.end111:                                        ; preds = %if.then106
  %call112 = call fastcc i32 @ftgmac100_mii_probe(ptr noundef nonnull %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.if.end122_crit_edge, label %do.end117

if.end111.if.end122_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  %94 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.24) #19
  br label %err_ncsi_dev

if.end122.critedge:                               ; preds = %ftgmac100_initial_mac.exit
  call void @__sanitizer_cov_trace_pc() #18
  %rxdes0_edorr_mask58.c287 = getelementptr i8, ptr %call4, i32 2332
  %96 = ptrtoint ptr %rxdes0_edorr_mask58.c287 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 32768, ptr %rxdes0_edorr_mask58.c287, align 4
  %txdes0_edotr_mask59.c288 = getelementptr i8, ptr %call4, i32 2360
  %97 = ptrtoint ptr %txdes0_edotr_mask59.c288 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 32768, ptr %txdes0_edotr_mask59.c288, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.end122.critedge, %if.end111.if.end122_crit_edge, %land.lhs.true103.critedge.if.end122_crit_edge, %cleanup.thread, %do.end68.if.end122_crit_edge
  %is_aspeed123 = getelementptr i8, ptr %call4, i32 2696
  %98 = ptrtoint ptr %is_aspeed123 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_aspeed123, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool124.not = icmp eq i8 %99, 0
  br i1 %tobool124.not, label %if.end122.if.end130_crit_edge, label %if.then125

if.end122.if.end130_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.then125:                                       ; preds = %if.end122
  %100 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev12, align 8
  %call.i296 = call ptr @devm_clk_get(ptr noundef %101, ptr noundef null) #16
  %cmp.i.i = icmp ugt ptr %call.i296, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ftgmac100_setup_clk.exit, label %if.end.i297

if.end.i297:                                      ; preds = %if.then125
  %clk3.i = getelementptr i8, ptr %call4, i32 2664
  %102 = ptrtoint ptr %clk3.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i296, ptr %clk3.i, align 8
  %call.i.i = call i32 @clk_prepare(ptr noundef %call.i296) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i297.err_phy_connect_crit_edge

if.end.i297.err_phy_connect_crit_edge:            ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_phy_connect

if.end.i.i:                                       ; preds = %if.end.i297
  %call1.i.i = call i32 @clk_enable(ptr noundef %call.i296) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end7.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @clk_unprepare(ptr noundef %call.i296) #16
  br label %err_phy_connect

if.end7.i:                                        ; preds = %if.end.i.i
  %103 = ptrtoint ptr %clk3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk3.i, align 8
  %use_ncsi.i = getelementptr i8, ptr %call4, i32 2680
  %105 = ptrtoint ptr %use_ncsi.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %use_ncsi.i, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool9.not.i = icmp eq i8 %106, 0
  %cond.i = select i1 %tobool9.not.i, i32 100000000, i32 25000000
  %call10.i = call i32 @clk_set_rate(ptr noundef %104, i32 noundef %cond.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end7.i.cleanup_clk.i_crit_edge

if.end7.i.cleanup_clk.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup_clk.i

if.end13.i:                                       ; preds = %if.end7.i
  %107 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev12, align 8
  %call15.i = call ptr @devm_clk_get_optional(ptr noundef %108, ptr noundef nonnull @.str.101) #16
  %rclk.i = getelementptr i8, ptr %call4, i32 2668
  %109 = ptrtoint ptr %rclk.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call15.i, ptr %rclk.i, align 4
  %call.i37.i = call i32 @clk_prepare(ptr noundef %call15.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i38.i, label %if.end.i41.i, label %if.end13.i.cleanup_clk.i_crit_edge

if.end13.i.cleanup_clk.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup_clk.i

if.end.i41.i:                                     ; preds = %if.end13.i
  %call1.i39.i = call i32 @clk_enable(ptr noundef %call15.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i)
  %tobool2.not.i40.i = icmp eq i32 %call1.i39.i, 0
  br i1 %tobool2.not.i40.i, label %if.end.i41.i.if.end130_crit_edge, label %if.then3.i42.i

if.end.i41.i.if.end130_crit_edge:                 ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.then3.i42.i:                                   ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @clk_unprepare(ptr noundef %call15.i) #16
  br label %cleanup_clk.i

cleanup_clk.i:                                    ; preds = %if.then3.i42.i, %if.end13.i.cleanup_clk.i_crit_edge, %if.end7.i.cleanup_clk.i_crit_edge
  %rc.0.i = phi i32 [ %call10.i, %if.end7.i.cleanup_clk.i_crit_edge ], [ %call1.i39.i, %if.then3.i42.i ], [ %call.i37.i, %if.end13.i.cleanup_clk.i_crit_edge ]
  %110 = ptrtoint ptr %clk3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clk3.i, align 8
  call void @clk_disable(ptr noundef %111) #16
  call void @clk_unprepare(ptr noundef %111) #16
  br label %err_phy_connect

ftgmac100_setup_clk.exit:                         ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #18
  %112 = ptrtoint ptr %call.i296 to i32
  br label %err_phy_connect

if.end130:                                        ; preds = %if.end.i41.i.if.end130_crit_edge, %if.end122.if.end130_crit_edge
  %new_rx_q_entries = getelementptr i8, ptr %call4, i32 2364
  %113 = ptrtoint ptr %new_rx_q_entries to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 128, ptr %new_rx_q_entries, align 4
  %rx_q_entries = getelementptr i8, ptr %call4, i32 2312
  %114 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 128, ptr %rx_q_entries, align 8
  %new_tx_q_entries = getelementptr i8, ptr %call4, i32 2368
  %115 = ptrtoint ptr %new_tx_q_entries to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 128, ptr %new_tx_q_entries, align 8
  %tx_q_entries = getelementptr i8, ptr %call4, i32 2336
  %116 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 128, ptr %tx_q_entries, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 24
  %use_ncsi131 = getelementptr i8, ptr %call4, i32 2680
  %117 = ptrtoint ptr %use_ncsi131 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %use_ncsi131, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool132.not = icmp eq i8 %118, 0
  %spec.store.select = select i1 %tobool132.not, i64 1099511644553, i64 1099511645065
  %119 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %spec.store.select, ptr %hw_features, align 8
  br i1 %tobool44.not, label %if.end130.if.end150_crit_edge, label %land.lhs.true137

if.end130.if.end150_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end150

land.lhs.true137:                                 ; preds = %if.end130
  %call138 = call i32 @of_device_is_compatible(ptr noundef nonnull %81, ptr noundef nonnull @.str.10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %land.lhs.true137.land.lhs.true144_crit_edge, label %if.then140

land.lhs.true137.land.lhs.true144_crit_edge:      ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true144

if.then140:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #18
  %120 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %hw_features, align 8
  %and = and i64 %121, -9
  store i64 %and, ptr %hw_features, align 8
  br label %land.lhs.true144

land.lhs.true144:                                 ; preds = %if.then140, %land.lhs.true137.land.lhs.true144_crit_edge
  %call145 = call ptr @of_get_property(ptr noundef nonnull %81, ptr noundef nonnull @.str.26, ptr noundef null) #16
  %tobool146.not = icmp eq ptr %call145, null
  br i1 %tobool146.not, label %land.lhs.true144.if.end150_crit_edge, label %if.then147

land.lhs.true144.if.end150_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end150

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #18
  %122 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %hw_features, align 8
  %and149 = and i64 %123, -1099511627785
  store i64 %and149, ptr %hw_features, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %land.lhs.true144.if.end150_crit_edge, %if.end130.if.end150_crit_edge
  %124 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 23
  %126 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %features, align 16
  %or152 = or i64 %127, %125
  store i64 %or152, ptr %features, align 16
  %call153 = call i32 @register_netdev(ptr noundef nonnull %call4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end160, label %do.end158

do.end158:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #19
  %rclk = getelementptr i8, ptr %call4, i32 2668
  %128 = ptrtoint ptr %rclk to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rclk, align 4
  call void @clk_disable(ptr noundef %129) #16
  call void @clk_unprepare(ptr noundef %129) #16
  %clk = getelementptr i8, ptr %call4, i32 2664
  %130 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %131) #16
  call void @clk_unprepare(ptr noundef %131) #16
  br label %err_phy_connect

if.end160:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #18
  %132 = ptrtoint ptr %irq42 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %irq42, align 4
  %134 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call4, ptr noundef nonnull @.str.30, i32 noundef %133, ptr noundef %135) #19
  br label %cleanup171

err_phy_connect:                                  ; preds = %do.end158, %ftgmac100_setup_clk.exit, %cleanup_clk.i, %if.then3.i.i, %if.end.i297.err_phy_connect_crit_edge, %cleanup.thread305, %do.end68.err_phy_connect_crit_edge
  %err.2 = phi i32 [ %112, %ftgmac100_setup_clk.exit ], [ %call153, %do.end158 ], [ -22, %do.end68.err_phy_connect_crit_edge ], [ -22, %cleanup.thread305 ], [ %call.i.i, %if.end.i297.err_phy_connect_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %rc.0.i, %cleanup_clk.i ]
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 145
  %136 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i299 = icmp eq ptr %137, null
  br i1 %tobool.not.i299, label %err_phy_connect.err_ncsi_dev_crit_edge, label %if.end.i300

err_phy_connect.err_ncsi_dev_crit_edge:           ; preds = %err_phy_connect
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ncsi_dev

if.end.i300:                                      ; preds = %err_phy_connect
  call void @__sanitizer_cov_trace_pc() #18
  call void @phy_disconnect(ptr noundef nonnull %137) #16
  br label %err_ncsi_dev

err_ncsi_dev:                                     ; preds = %if.end.i300, %err_phy_connect.err_ncsi_dev_crit_edge, %do.end117
  %err.3 = phi i32 [ %call112, %do.end117 ], [ %err.2, %err_phy_connect.err_ncsi_dev_crit_edge ], [ %err.2, %if.end.i300 ]
  %ndev163 = getelementptr i8, ptr %call4, i32 2388
  %138 = ptrtoint ptr %ndev163 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ndev163, align 4
  %tobool164.not = icmp eq ptr %139, null
  br i1 %tobool164.not, label %err_ncsi_dev.if.end167_crit_edge, label %if.then165

err_ncsi_dev.if.end167_crit_edge:                 ; preds = %err_ncsi_dev
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end167

if.then165:                                       ; preds = %err_ncsi_dev
  call void @__sanitizer_cov_trace_pc() #18
  call void @ncsi_unregister_dev(ptr noundef nonnull %139) #16
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %err_ncsi_dev.if.end167_crit_edge
  %mii_bus.i = getelementptr i8, ptr %call4, i32 2660
  %140 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i301 = icmp eq ptr %141, null
  br i1 %tobool.not.i301, label %if.end167.err_setup_mdio_crit_edge, label %if.end.i302

if.end167.err_setup_mdio_crit_edge:               ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_setup_mdio

if.end.i302:                                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #18
  call void @mdiobus_unregister(ptr noundef nonnull %141) #16
  %142 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mii_bus.i, align 4
  call void @mdiobus_free(ptr noundef %143) #16
  br label %err_setup_mdio

err_setup_mdio:                                   ; preds = %if.end.i302, %if.end167.err_setup_mdio_crit_edge, %if.then106.err_setup_mdio_crit_edge, %if.then86.err_setup_mdio_crit_edge
  %err.4 = phi i32 [ %call108, %if.then106.err_setup_mdio_crit_edge ], [ %call87, %if.then86.err_setup_mdio_crit_edge ], [ %err.3, %if.end167.err_setup_mdio_crit_edge ], [ %err.3, %if.end.i302 ]
  %144 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %145) #16
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_setup_mdio, %do.end39
  %err.5 = phi i32 [ %err.4, %err_setup_mdio ], [ -5, %do.end39 ]
  %146 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr.i, align 8
  %call170 = call i32 @release_resource(ptr noundef %147) #16
  br label %err_req_mem

err_req_mem:                                      ; preds = %err_ioremap, %do.end28
  %err.6 = phi i32 [ %err.5, %err_ioremap ], [ -12, %do.end28 ]
  call void @free_netdev(ptr noundef nonnull %call4) #16
  br label %cleanup171

cleanup171:                                       ; preds = %err_req_mem, %if.end160, %if.end3.cleanup171_crit_edge, %if.end.cleanup171_crit_edge, %entry.cleanup171_crit_edge
  %retval.0 = phi i32 [ 0, %if.end160 ], [ -6, %entry.cleanup171_crit_edge ], [ %call1, %if.end.cleanup171_crit_edge ], [ %err.6, %err_req_mem ], [ -12, %if.end3.cleanup171_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev = getelementptr i8, ptr %1, i32 2388
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @ncsi_unregister_dev(ptr noundef nonnull %3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @unregister_netdev(ptr noundef %1) #16
  %rclk = getelementptr i8, ptr %1, i32 2668
  %4 = ptrtoint ptr %rclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rclk, align 4
  tail call void @clk_disable(ptr noundef %5) #16
  tail call void @clk_unprepare(ptr noundef %5) #16
  %clk = getelementptr i8, ptr %1, i32 2664
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %7) #16
  tail call void @clk_unprepare(ptr noundef %7) #16
  %reset_task = getelementptr i8, ptr %1, i32 2616
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task) #16
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %8 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.ftgmac100_phy_disconnect.exit_crit_edge, label %if.end.i

if.end.ftgmac100_phy_disconnect.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_phy_disconnect.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @phy_disconnect(ptr noundef nonnull %9) #16
  br label %ftgmac100_phy_disconnect.exit

ftgmac100_phy_disconnect.exit:                    ; preds = %if.end.i, %if.end.ftgmac100_phy_disconnect.exit_crit_edge
  %mii_bus.i = getelementptr i8, ptr %1, i32 2660
  %10 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i16 = icmp eq ptr %11, null
  br i1 %tobool.not.i16, label %ftgmac100_phy_disconnect.exit.ftgmac100_destroy_mdio.exit_crit_edge, label %if.end.i17

ftgmac100_phy_disconnect.exit.ftgmac100_destroy_mdio.exit_crit_edge: ; preds = %ftgmac100_phy_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_destroy_mdio.exit

if.end.i17:                                       ; preds = %ftgmac100_phy_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mdiobus_unregister(ptr noundef nonnull %11) #16
  %12 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mii_bus.i, align 4
  tail call void @mdiobus_free(ptr noundef %13) #16
  br label %ftgmac100_destroy_mdio.exit

ftgmac100_destroy_mdio.exit:                      ; preds = %if.end.i17, %ftgmac100_phy_disconnect.exit.ftgmac100_destroy_mdio.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %base = getelementptr i8, ptr %1, i32 2308
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %15) #16
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %call4 = tail call i32 @release_resource(ptr noundef %17) #16
  %napi = getelementptr i8, ptr %1, i32 2392
  tail call void @__netif_napi_del(ptr noundef %napi) #16
  tail call void @synchronize_net() #16
  tail call void @free_netdev(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_reset_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -312
  tail call fastcc void @ftgmac100_reset(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ncsi_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_ncsi_handler(ptr nocapture noundef readonly %nd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp.not = icmp eq i32 %1, 256
  br i1 %cmp.not, label %do.body2, label %entry.do.end13_crit_edge, !prof !222

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftgmac100_ncsi_handler.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftgmac100_ncsi_handler, %if.then10)) #16
          to label %do.end13 [label %if.then10], !srcloc !223

if.then10:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %nd, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %link_up = getelementptr inbounds %struct.ncsi_dev, ptr %nd, i32 0, i32 1
  %4 = ptrtoint ptr %link_up to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool11.not, ptr @.str.60, ptr @.str.59
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ftgmac100_ncsi_handler.__UNIQUE_ID_ddebug507, ptr noundef %3, ptr noundef nonnull @.str.58, ptr noundef nonnull %cond) #16
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body2, %entry.do.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_setup_mdio(ptr nocapture noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %netdev, i32 2384
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #16
  %mii_bus = getelementptr i8, ptr %netdev, i32 2660
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %mii_bus, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %base = getelementptr i8, ptr %netdev, i32 2308
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %8 = and i32 %7, -129
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #16, !srcloc !220
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %lor.lhs.false.if.end13_crit_edge
  %11 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mii_bus, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.61, ptr %name, align 4
  %14 = load ptr, ptr %mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %id17 = getelementptr i8, ptr %1, i32 -12
  %17 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id17, align 4
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.62, ptr noundef %16, i32 noundef %18)
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mii_bus, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %parent, align 4
  %netdev21 = getelementptr i8, ptr %netdev, i32 2380
  %24 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev21, align 4
  %26 = load ptr, ptr %mii_bus, align 4
  %priv23 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %priv23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %priv23, align 8
  %28 = load ptr, ptr %mii_bus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ftgmac100_mdiobus_read, ptr %read, align 4
  %30 = load ptr, ptr %mii_bus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ftgmac100_mdiobus_write, ptr %write, align 8
  %32 = load ptr, ptr %mii_bus, align 4
  %arrayidx = getelementptr %struct.mii_bus, ptr %32, i32 0, i32 15, i32 0
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %arrayidx, align 4
  %34 = load ptr, ptr %mii_bus, align 4
  %arrayidx.1 = getelementptr %struct.mii_bus, ptr %34, i32 0, i32 15, i32 1
  %35 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx.1, align 4
  %36 = load ptr, ptr %mii_bus, align 4
  %arrayidx.2 = getelementptr %struct.mii_bus, ptr %36, i32 0, i32 15, i32 2
  %37 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx.2, align 4
  %38 = load ptr, ptr %mii_bus, align 4
  %arrayidx.3 = getelementptr %struct.mii_bus, ptr %38, i32 0, i32 15, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %arrayidx.3, align 4
  %40 = load ptr, ptr %mii_bus, align 4
  %arrayidx.4 = getelementptr %struct.mii_bus, ptr %40, i32 0, i32 15, i32 4
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %arrayidx.4, align 4
  %42 = load ptr, ptr %mii_bus, align 4
  %arrayidx.5 = getelementptr %struct.mii_bus, ptr %42, i32 0, i32 15, i32 5
  %43 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %arrayidx.5, align 4
  %44 = load ptr, ptr %mii_bus, align 4
  %arrayidx.6 = getelementptr %struct.mii_bus, ptr %44, i32 0, i32 15, i32 6
  %45 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %arrayidx.6, align 4
  %46 = load ptr, ptr %mii_bus, align 4
  %arrayidx.7 = getelementptr %struct.mii_bus, ptr %46, i32 0, i32 15, i32 7
  %47 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %arrayidx.7, align 4
  %48 = load ptr, ptr %mii_bus, align 4
  %arrayidx.8 = getelementptr %struct.mii_bus, ptr %48, i32 0, i32 15, i32 8
  %49 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %arrayidx.8, align 4
  %50 = load ptr, ptr %mii_bus, align 4
  %arrayidx.9 = getelementptr %struct.mii_bus, ptr %50, i32 0, i32 15, i32 9
  %51 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %arrayidx.9, align 4
  %52 = load ptr, ptr %mii_bus, align 4
  %arrayidx.10 = getelementptr %struct.mii_bus, ptr %52, i32 0, i32 15, i32 10
  %53 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %arrayidx.10, align 4
  %54 = load ptr, ptr %mii_bus, align 4
  %arrayidx.11 = getelementptr %struct.mii_bus, ptr %54, i32 0, i32 15, i32 11
  %55 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %arrayidx.11, align 4
  %56 = load ptr, ptr %mii_bus, align 4
  %arrayidx.12 = getelementptr %struct.mii_bus, ptr %56, i32 0, i32 15, i32 12
  %57 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %arrayidx.12, align 4
  %58 = load ptr, ptr %mii_bus, align 4
  %arrayidx.13 = getelementptr %struct.mii_bus, ptr %58, i32 0, i32 15, i32 13
  %59 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %arrayidx.13, align 4
  %60 = load ptr, ptr %mii_bus, align 4
  %arrayidx.14 = getelementptr %struct.mii_bus, ptr %60, i32 0, i32 15, i32 14
  %61 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %arrayidx.14, align 4
  %62 = load ptr, ptr %mii_bus, align 4
  %arrayidx.15 = getelementptr %struct.mii_bus, ptr %62, i32 0, i32 15, i32 15
  %63 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %arrayidx.15, align 4
  %64 = load ptr, ptr %mii_bus, align 4
  %arrayidx.16 = getelementptr %struct.mii_bus, ptr %64, i32 0, i32 15, i32 16
  %65 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %arrayidx.16, align 4
  %66 = load ptr, ptr %mii_bus, align 4
  %arrayidx.17 = getelementptr %struct.mii_bus, ptr %66, i32 0, i32 15, i32 17
  %67 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %arrayidx.17, align 4
  %68 = load ptr, ptr %mii_bus, align 4
  %arrayidx.18 = getelementptr %struct.mii_bus, ptr %68, i32 0, i32 15, i32 18
  %69 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %arrayidx.18, align 4
  %70 = load ptr, ptr %mii_bus, align 4
  %arrayidx.19 = getelementptr %struct.mii_bus, ptr %70, i32 0, i32 15, i32 19
  %71 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %arrayidx.19, align 4
  %72 = load ptr, ptr %mii_bus, align 4
  %arrayidx.20 = getelementptr %struct.mii_bus, ptr %72, i32 0, i32 15, i32 20
  %73 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %arrayidx.20, align 4
  %74 = load ptr, ptr %mii_bus, align 4
  %arrayidx.21 = getelementptr %struct.mii_bus, ptr %74, i32 0, i32 15, i32 21
  %75 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %arrayidx.21, align 4
  %76 = load ptr, ptr %mii_bus, align 4
  %arrayidx.22 = getelementptr %struct.mii_bus, ptr %76, i32 0, i32 15, i32 22
  %77 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %arrayidx.22, align 4
  %78 = load ptr, ptr %mii_bus, align 4
  %arrayidx.23 = getelementptr %struct.mii_bus, ptr %78, i32 0, i32 15, i32 23
  %79 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %arrayidx.23, align 4
  %80 = load ptr, ptr %mii_bus, align 4
  %arrayidx.24 = getelementptr %struct.mii_bus, ptr %80, i32 0, i32 15, i32 24
  %81 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %arrayidx.24, align 4
  %82 = load ptr, ptr %mii_bus, align 4
  %arrayidx.25 = getelementptr %struct.mii_bus, ptr %82, i32 0, i32 15, i32 25
  %83 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %arrayidx.25, align 4
  %84 = load ptr, ptr %mii_bus, align 4
  %arrayidx.26 = getelementptr %struct.mii_bus, ptr %84, i32 0, i32 15, i32 26
  %85 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %arrayidx.26, align 4
  %86 = load ptr, ptr %mii_bus, align 4
  %arrayidx.27 = getelementptr %struct.mii_bus, ptr %86, i32 0, i32 15, i32 27
  %87 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %arrayidx.27, align 4
  %88 = load ptr, ptr %mii_bus, align 4
  %arrayidx.28 = getelementptr %struct.mii_bus, ptr %88, i32 0, i32 15, i32 28
  %89 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %arrayidx.28, align 4
  %90 = load ptr, ptr %mii_bus, align 4
  %arrayidx.29 = getelementptr %struct.mii_bus, ptr %90, i32 0, i32 15, i32 29
  %91 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %arrayidx.29, align 4
  %92 = load ptr, ptr %mii_bus, align 4
  %arrayidx.30 = getelementptr %struct.mii_bus, ptr %92, i32 0, i32 15, i32 30
  %93 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %arrayidx.30, align 4
  %94 = load ptr, ptr %mii_bus, align 4
  %arrayidx.31 = getelementptr %struct.mii_bus, ptr %94, i32 0, i32 15, i32 31
  %95 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %arrayidx.31, align 4
  %call27 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.22) #16
  %96 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mii_bus, align 4
  %call29 = tail call i32 @of_mdiobus_register(ptr noundef %97, ptr noundef %call27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.63) #19
  %100 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_free(ptr noundef %101) #16
  br label %cleanup

if.end33:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @of_node_put(ptr noundef %call27) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %do.end ], [ 0, %if.end33 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_adjust_link(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %new_speed.0 = phi i32 [ %5, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %aneg_pause = getelementptr i8, ptr %netdev, i32 2694
  %6 = ptrtoint ptr %aneg_pause to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aneg_pause, align 2, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else11, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4 = icmp ne i32 %9, 0
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asym_pause, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp ne i32 %11, 0
  %spec.select = xor i1 %tobool4, %tobool6.not
  br label %if.end18

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rx_pause12 = getelementptr i8, ptr %netdev, i32 2693
  %12 = ptrtoint ptr %rx_pause12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx_pause12, align 1, !range !221
  %tx_pause15 = getelementptr i8, ptr %netdev, i32 2692
  %14 = ptrtoint ptr %tx_pause15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_pause15, align 4, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %extract.t102 = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %extract.t104 = icmp ne i8 %13, 0
  br label %if.end18

if.end18:                                         ; preds = %if.else11, %if.then3
  %tx_pause.0.off0 = phi i1 [ %extract.t102, %if.else11 ], [ %spec.select, %if.then3 ]
  %rx_pause.0.off0 = phi i1 [ %extract.t104, %if.else11 ], [ %tobool4, %if.then3 ]
  %speed19 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %speed19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed19, align 8
  %cur_speed = getelementptr i8, ptr %netdev, i32 2672
  %18 = ptrtoint ptr %cur_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_speed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp eq i32 %17, %19
  br i1 %cmp, label %land.lhs.true, label %if.end18.if.end37_crit_edge

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end18
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %duplex, align 4
  %cur_duplex = getelementptr i8, ptr %netdev, i32 2676
  %22 = ptrtoint ptr %cur_duplex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp20 = icmp eq i32 %21, %23
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

land.lhs.true21:                                  ; preds = %land.lhs.true
  %rx_pause23 = getelementptr i8, ptr %netdev, i32 2693
  %24 = ptrtoint ptr %rx_pause23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx_pause23, align 1, !range !221
  %26 = zext i1 %rx_pause.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %26)
  %cmp26 = icmp eq i8 %25, %26
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true21.if.end37_crit_edge

land.lhs.true21.if.end37_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %tx_pause31 = getelementptr i8, ptr %netdev, i32 2692
  %27 = ptrtoint ptr %tx_pause31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_pause31, align 4, !range !221
  %29 = zext i1 %tx_pause.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %29)
  %cmp34 = icmp eq i8 %28, %29
  br i1 %cmp34, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true28.if.end37_crit_edge, %land.lhs.true21.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end18.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_speed.0)
  %tobool38.not = icmp eq i32 %new_speed.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool40.not = icmp eq i32 %19, 0
  %or.cond = select i1 %tobool38.not, i1 %tobool40.not, i1 false
  br i1 %or.cond, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @phy_print_status(ptr noundef %1) #16
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %30 = ptrtoint ptr %cur_speed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %new_speed.0, ptr %cur_speed, align 8
  %duplex44 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %duplex44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %duplex44, align 4
  %cur_duplex45 = getelementptr i8, ptr %netdev, i32 2676
  %33 = ptrtoint ptr %cur_duplex45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cur_duplex45, align 4
  %rx_pause47 = getelementptr i8, ptr %netdev, i32 2693
  %frombool48 = zext i1 %rx_pause.0.off0 to i8
  %34 = ptrtoint ptr %rx_pause47 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool48, ptr %rx_pause47, align 1
  %tx_pause50 = getelementptr i8, ptr %netdev, i32 2692
  %frombool51 = zext i1 %tx_pause.0.off0 to i8
  %35 = ptrtoint ptr %tx_pause50 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool51, ptr %tx_pause50, align 4
  br i1 %tobool38.not, label %if.end42.cleanup_crit_edge, label %if.end54

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end54:                                         ; preds = %if.end42
  %base = getelementptr i8, ptr %netdev, i32 2308
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !220
  %38 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phydev1, align 16
  %tobool56.not = icmp eq ptr %39, null
  br i1 %tobool56.not, label %if.end54.if.end59_crit_edge, label %if.then57

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.phy_device, ptr %39, i32 0, i32 32
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54.if.end59_crit_edge
  tail call fastcc void @ftgmac100_reset(ptr noundef %add.ptr.i)
  %40 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phydev1, align 16
  %tobool61.not = icmp eq ptr %41, null
  br i1 %tobool61.not, label %if.end59.cleanup_crit_edge, label %if.then62

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  %lock64 = getelementptr inbounds %struct.phy_device, ptr %41, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock64, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end59.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_mii_probe(ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  %phy_intf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %netdev, i32 2384
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_intf) #16
  %4 = ptrtoint ptr %phy_intf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %phy_intf, align 4, !annotation !224
  %call2 = call i32 @of_get_phy_mode(ptr noundef %3, ptr noundef nonnull %phy_intf) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %phy_intf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9, ptr %phy_intf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %is_aspeed = getelementptr i8, ptr %netdev, i32 2696
  %6 = ptrtoint ptr %is_aspeed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_aspeed, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %phy_intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_intf, align 4
  %10 = add i32 %9, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %9)
  %12 = icmp ult i32 %9, 30
  br i1 %12, label %switch.lookup, label %if.then5.phy_modes.exit_crit_edge

if.then5.phy_modes.exit_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.ftgmac100_mii_probe, i32 0, i32 %9
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %if.then5.phy_modes.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.100, %if.then5.phy_modes.exit_crit_edge ]
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.67, ptr noundef nonnull %retval.0.i) #19
  br label %if.end7

if.end7:                                          ; preds = %phy_modes.exit, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %mii_bus = getelementptr i8, ptr %netdev, i32 2660
  %14 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mii_bus, align 4
  %call8 = call ptr @phy_find_first(ptr noundef %15) #16
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.68, ptr noundef %netdev) #19
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.phydev_name.exit_crit_edge

if.end11.phydev_name.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %phydev_name.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call8, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i, %if.end11.phydev_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.end11.phydev_name.exit_crit_edge ]
  %20 = ptrtoint ptr %phy_intf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_intf, align 4
  %call13 = call ptr @phy_connect(ptr noundef %netdev, ptr noundef %retval.0.i.i, ptr noundef nonnull @ftgmac100_adjust_link, i32 noundef %21) #16
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end19

if.then15:                                        ; preds = %phydev_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.69, ptr noundef %netdev) #19
  %22 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %phydev_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @phy_support_asym_pause(ptr noundef %call13) #16
  call void @phy_attached_info(ptr noundef %call13) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then15, %if.then10
  %retval.0 = phi i32 [ %22, %if.then15 ], [ 0, %if.end19 ], [ -19, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_intf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ncsi_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #16
  %init_name.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call3 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ftgmac100_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ering, i32 0, i32 36)
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %1 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %2 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1024, ptr %tx_max_pending, align 4
  %rx_q_entries = getelementptr i8, ptr %netdev, i32 2312
  %3 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_q_entries, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %5 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_pending, align 4
  %tx_q_entries = getelementptr i8, ptr %netdev, i32 2336
  %6 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_q_entries, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %1)
  %cmp = icmp ugt i32 %1, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %2 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp4 = icmp ult i32 %1, 32
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp7 = icmp ult i32 %3, 32
  %or.cond31 = or i1 %cmp7, %or.cond
  %or.cond31.not = xor i1 %or.cond31, true
  %4 = tail call i32 @llvm.ctpop.i32(i32 %1) #16, !range !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.i = icmp ult i32 %4, 2
  %or.cond33 = select i1 %or.cond31.not, i1 %cmp1.i, i1 false
  %5 = tail call i32 @llvm.ctpop.i32(i32 %3) #16, !range !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1.i32 = icmp ult i32 %5, 2
  %or.cond34 = select i1 %or.cond33, i1 %cmp1.i32, i1 false
  br i1 %or.cond34, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %new_rx_q_entries = getelementptr i8, ptr %netdev, i32 2364
  %6 = ptrtoint ptr %new_rx_q_entries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %new_rx_q_entries, align 4
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_pending, align 4
  %new_tx_q_entries = getelementptr i8, ptr %netdev, i32 2368
  %9 = ptrtoint ptr %new_tx_q_entries to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %new_tx_q_entries, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %reset_task = getelementptr i8, ptr %netdev, i32 2616
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %reset_task) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ftgmac100_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %aneg_pause = getelementptr i8, ptr %netdev, i32 2694
  %0 = ptrtoint ptr %aneg_pause to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aneg_pause, align 2, !range !221
  %2 = zext i8 %1 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %autoneg, align 4
  %tx_pause = getelementptr i8, ptr %netdev, i32 2692
  %4 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_pause, align 4, !range !221
  %6 = zext i8 %5 to i32
  %tx_pause3 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %7 = ptrtoint ptr %tx_pause3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pause3, align 4
  %rx_pause = getelementptr i8, ptr %netdev, i32 2693
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_pause, align 1, !range !221
  %10 = zext i8 %9 to i32
  %rx_pause6 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %11 = ptrtoint ptr %rx_pause6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rx_pause6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %aneg_pause = getelementptr i8, ptr %netdev, i32 2694
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %aneg_pause to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %aneg_pause, align 2
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2 = icmp ne i32 %6, 0
  %tx_pause3 = getelementptr i8, ptr %netdev, i32 2692
  %frombool4 = zext i1 %tobool2 to i8
  %7 = ptrtoint ptr %tx_pause3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool4, ptr %tx_pause3, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5 = icmp ne i32 %9, 0
  %rx_pause6 = getelementptr i8, ptr %netdev, i32 2693
  %frombool7 = zext i1 %tobool5 to i8
  %10 = ptrtoint ptr %rx_pause6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool7, ptr %rx_pause6, align 1
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end20_crit_edge, label %if.end.if.then18_crit_edge

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end.thread:                                    ; preds = %entry
  %13 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10 = icmp ne i32 %14, 0
  %15 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12 = icmp ne i32 %16, 0
  tail call void @phy_set_asym_pause(ptr noundef nonnull %1, i1 noundef zeroext %tobool10, i1 noundef zeroext %tobool12) #16
  %state.i34 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %17 = ptrtoint ptr %state.i34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i34, align 4
  %and1.i.i35 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35)
  %tobool.i36.not = icmp eq i32 %and1.i.i35, 0
  br i1 %tobool.i36.not, label %if.end.thread.if.end20_crit_edge, label %land.lhs.true

if.end.thread.if.end20_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end.thread
  %19 = ptrtoint ptr %aneg_pause to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %aneg_pause, align 2, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %land.lhs.true.if.then18_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %21 = ptrtoint ptr %rx_pause6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_pause6, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1048576, i32 1048577
  %23 = ptrtoint ptr %tx_pause3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_pause3, align 4, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i = icmp eq i8 %24, 0
  %or3.i = or i32 %spec.select.i, 4
  %fcr.1.i = select i1 %tobool1.not.i, i32 %spec.select.i, i32 %or3.i
  %base.i = getelementptr i8, ptr %netdev, i32 2308
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %26, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %27 = tail call i32 @llvm.bswap.i32(i32 %fcr.1.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %27) #16, !srcloc !220
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true.if.end20_crit_edge, %if.end.thread.if.end20_crit_edge, %if.end.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #20
  %rx_skbs.i = getelementptr i8, ptr %netdev, i32 2324
  %1 = ptrtoint ptr %rx_skbs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i.i, ptr %rx_skbs.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i39.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #20
  %tx_skbs.i = getelementptr i8, ptr %netdev, i32 2348
  %3 = ptrtoint ptr %tx_skbs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i39.i, ptr %tx_skbs.i, align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i.i39.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.then_crit_edge, label %if.end6.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end6.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr i8, ptr %netdev, i32 2384
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %rxdes_dma.i = getelementptr i8, ptr %netdev, i32 2320
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 16384, ptr noundef %rxdes_dma.i, i32 noundef 3264, i32 noundef 0) #16
  %rxdes.i = getelementptr i8, ptr %netdev, i32 2316
  %6 = ptrtoint ptr %rxdes.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %rxdes.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.if.then_crit_edge, label %if.end11.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end11.i:                                       ; preds = %if.end6.i
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %txdes_dma.i = getelementptr i8, ptr %netdev, i32 2344
  %call.i40.i = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 16384, ptr noundef %txdes_dma.i, i32 noundef 3264, i32 noundef 0) #16
  %txdes.i = getelementptr i8, ptr %netdev, i32 2340
  %9 = ptrtoint ptr %txdes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i40.i, ptr %txdes.i, align 4
  %tobool15.not.i = icmp eq ptr %call.i40.i, null
  br i1 %tobool15.not.i, label %if.end11.i.if.then_crit_edge, label %if.end17.i

if.end11.i.if.then_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end17.i:                                       ; preds = %if.end11.i
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %rx_scratch_dma.i = getelementptr i8, ptr %netdev, i32 2376
  %call.i41.i = tail call ptr @dma_alloc_attrs(ptr noundef %11, i32 noundef 1536, ptr noundef %rx_scratch_dma.i, i32 noundef 3264, i32 noundef 0) #16
  %rx_scratch.i = getelementptr i8, ptr %netdev, i32 2372
  %12 = ptrtoint ptr %rx_scratch.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i41.i, ptr %rx_scratch.i, align 4
  %tobool21.not.i = icmp eq ptr %call.i41.i, null
  br i1 %tobool21.not.i, label %if.end17.i.if.then_crit_edge, label %if.end

if.end17.i.if.then_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %if.end17.i.if.then_crit_edge, %if.end11.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.31) #19
  br label %cleanup

if.end:                                           ; preds = %if.end17.i
  %use_ncsi = getelementptr i8, ptr %netdev, i32 2680
  %13 = ptrtoint ptr %use_ncsi to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_ncsi, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  %not.tobool2.not = xor i1 %tobool2.not, true
  %spec.select = zext i1 %not.tobool2.not to i32
  %spec.select77 = select i1 %tobool2.not, i32 0, i32 100
  %15 = getelementptr i8, ptr %netdev, i32 2676
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  %17 = getelementptr i8, ptr %netdev, i32 2672
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select77, ptr %17, align 8
  %call7 = tail call fastcc i32 @ftgmac100_reset_and_config_mac(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_hw_crit_edge

if.end.err_hw_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_hw

if.end10:                                         ; preds = %if.end
  %napi = getelementptr i8, ptr %netdev, i32 2392
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi, ptr noundef nonnull @ftgmac100_poll, i32 noundef 64) #16
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @ftgmac100_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %netdev, ptr noundef %netdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.32, i32 noundef %22) #19
  br label %err_irq

if.end15:                                         ; preds = %if.end10
  %call16 = tail call fastcc i32 @ftgmac100_init_all(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.33) #19
  br label %err_alloc

if.end19:                                         ; preds = %if.end15
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %23 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phydev, align 16
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @phy_start(ptr noundef nonnull %24) #16
  br label %cleanup

if.else23:                                        ; preds = %if.end19
  %25 = ptrtoint ptr %use_ncsi to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_ncsi, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool25.not = icmp eq i8 %26, 0
  br i1 %tobool25.not, label %if.else23.cleanup_crit_edge, label %if.then26

if.else23.cleanup_crit_edge:                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then26:                                        ; preds = %if.else23
  tail call void @netif_carrier_on(ptr noundef %netdev) #16
  %ndev = getelementptr i8, ptr %netdev, i32 2388
  %27 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev, align 4
  %call27 = tail call i32 @ncsi_start_dev(ptr noundef %28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %err_ncsi

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

err_ncsi:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @napi_disable(ptr noundef %napi) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %err_alloc

err_alloc:                                        ; preds = %err_ncsi, %if.then18
  %err.0 = phi i32 [ %call16, %if.then18 ], [ %call27, %err_ncsi ]
  tail call fastcc void @ftgmac100_free_buffers(ptr noundef %add.ptr.i)
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call35 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %netdev) #16
  br label %err_irq

err_irq:                                          ; preds = %err_alloc, %if.then13
  %err.1 = phi i32 [ %call.i, %if.then13 ], [ %err.0, %err_alloc ]
  tail call void @__netif_napi_del(ptr noundef %napi) #16
  tail call void @synchronize_net() #16
  br label %err_hw

err_hw:                                           ; preds = %err_irq, %if.end.err_hw_crit_edge
  %err.2 = phi i32 [ %call7, %if.end.err_hw_crit_edge ], [ %err.1, %err_irq ]
  %base = getelementptr i8, ptr %netdev, i32 2308
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !220
  tail call fastcc void @ftgmac100_free_rings(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %err_hw, %if.then26.cleanup_crit_edge, %if.else23.cleanup_crit_edge, %if.then21, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %err.2, %err_hw ], [ 0, %if.else23.cleanup_crit_edge ], [ 0, %if.then26.cleanup_crit_edge ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !220
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %napi = getelementptr i8, ptr %netdev, i32 2392
  tail call void @napi_disable(ptr noundef %napi) #16
  tail call void @__netif_napi_del(ptr noundef %napi) #16
  tail call void @synchronize_net() #16
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @phy_stop(ptr noundef nonnull %5) #16
  br label %if.end5

if.else:                                          ; preds = %entry
  %use_ncsi = getelementptr i8, ptr %netdev, i32 2680
  %6 = ptrtoint ptr %use_ncsi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_ncsi, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %ndev = getelementptr i8, ptr %netdev, i32 2388
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  tail call void @ncsi_stop_dev(ptr noundef %9) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %if.then
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #16, !srcloc !220
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %netdev) #16
  tail call fastcc void @ftgmac100_free_buffers(ptr noundef %add.ptr.i)
  tail call fastcc void @ftgmac100_free_rings(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_hard_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %1)
  %cmp.i.i.i = icmp ult i32 %1, 60
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %entry.if.end_crit_edge, !prof !226

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i.i.i:                                    ; preds = %entry
  %sub.i.i.i = sub nuw nsw i32 60, %1
  %call.i.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i.i, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !222

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #16, !srcloc !227
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %6 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, %sub.i.i.i
  store i32 %add.i.i.i.i, ptr %len1.i.i.i, align 4
  br label %if.end

if.then:                                          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %8 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup140

if.end:                                           ; preds = %__skb_put.exit.i.i.i, %entry.if.end_crit_edge
  %10 = phi i32 [ %add.i.i.i.i, %__skb_put.exit.i.i.i ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %10)
  %cmp = icmp ugt i32 %10, 1536
  br i1 %cmp, label %if.then5, label %if.end23, !prof !226

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.drop_crit_edge, label %do.body9

if.then5.drop_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

do.body9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftgmac100_hard_start_xmit.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftgmac100_hard_start_xmit, %if.then18)) #16
          to label %drop [label %if.then18], !srcloc !223

if.then18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ftgmac100_hard_start_xmit.__UNIQUE_ID_ddebug504, ptr noundef %netdev, ptr noundef nonnull @.str.42) #16
  br label %drop

if.end23:                                         ; preds = %if.end
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %14 to i32
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %ip_summed, align 8
  %16 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %16)
  %cmp26 = icmp eq i16 %16, 1536
  br i1 %cmp26, label %land.lhs.true, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end23
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %17 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp.i = icmp eq i16 %18, 2048
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.ftgmac100_prep_tx_csum.exit_crit_edge

land.lhs.true.ftgmac100_prep_tx_csum.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_prep_tx_csum.exit

if.then.i:                                        ; preds = %land.lhs.true
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %22 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %conv.i.i.i
  %protocol2.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %protocol2.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.then.i.ftgmac100_prep_tx_csum.exit_crit_edge [
    i8 6, label %sw.bb.i
    i8 17, label %sw.bb5.i
    i8 0, label %if.then.i.if.end30_crit_edge
  ]

if.then.i.if.end30_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then.i.ftgmac100_prep_tx_csum.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_prep_tx_csum.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

sw.bb5.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

ftgmac100_prep_tx_csum.exit:                      ; preds = %if.then.i.ftgmac100_prep_tx_csum.exit_crit_edge, %land.lhs.true.ftgmac100_prep_tx_csum.exit_crit_edge
  %csum_vlan.0 = phi i32 [ 524288, %if.then.i.ftgmac100_prep_tx_csum.exit_crit_edge ], [ 0, %land.lhs.true.ftgmac100_prep_tx_csum.exit_crit_edge ]
  %call8.i = tail call i32 @skb_checksum_help(ptr noundef %skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %ftgmac100_prep_tx_csum.exit.if.end30_crit_edge, label %ftgmac100_prep_tx_csum.exit.drop_crit_edge

ftgmac100_prep_tx_csum.exit.drop_crit_edge:       ; preds = %ftgmac100_prep_tx_csum.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

ftgmac100_prep_tx_csum.exit.if.end30_crit_edge:   ; preds = %ftgmac100_prep_tx_csum.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.end30:                                         ; preds = %ftgmac100_prep_tx_csum.exit.if.end30_crit_edge, %sw.bb5.i, %sw.bb.i, %if.then.i.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %csum_vlan.2 = phi i32 [ %csum_vlan.0, %ftgmac100_prep_tx_csum.exit.if.end30_crit_edge ], [ 0, %if.end23.if.end30_crit_edge ], [ 655360, %sw.bb.i ], [ 786432, %sw.bb5.i ], [ 524288, %if.then.i.if.end30_crit_edge ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %26 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load31 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load31)
  %tobool34.not = icmp sgt i32 %bf.load31, -1
  br i1 %tobool34.not, label %if.end30.if.end38_crit_edge, label %if.then35

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %27 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan_tci, align 2
  %conv36 = zext i16 %28 to i32
  %or = or i32 %csum_vlan.2, %conv36
  %or37 = or i32 %or, 65536
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end30.if.end38_crit_edge
  %csum_vlan.3 = phi i32 [ %csum_vlan.2, %if.end30.if.end38_crit_edge ], [ %or37, %if.then35 ]
  %29 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len1.i.i.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %30, %32
  %dev = getelementptr i8, ptr %netdev, i32 2384
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %36) #16
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end38
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i243, !prof !222

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.thread

if.then.i243:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %34) #16
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i243.dev_name.exit.i_crit_edge

if.then.i243.dev_name.exit.i_crit_edge:           ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i243.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.then.i243.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %42, i32 noundef -1) #16
  br label %if.then44

dma_map_single_attrs.exit:                        ; preds = %if.end38
  tail call void @debug_dma_map_single(ptr noundef %34, ptr noundef %36, i32 noundef %sub.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %36 to i32
  %sub.i244 = add i32 %44, 1073741824
  %shr.i = lshr i32 %sub.i244, 12
  %add.ptr.i245 = getelementptr %struct.page, ptr %43, i32 %shr.i
  %and.i = and i32 %44, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %34, ptr noundef %add.ptr.i245, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #16
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %46, i32 noundef %call41.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i247 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i247, label %dma_map_single_attrs.exit.if.then44_crit_edge, label %if.end49

dma_map_single_attrs.exit.if.then44_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44

if.then44:                                        ; preds = %dma_map_single_attrs.exit.if.then44_crit_edge, %dma_map_single_attrs.exit.thread
  %call45 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.drop_crit_edge, label %if.then47

if.then44.drop_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.43) #19
  br label %drop

if.end49:                                         ; preds = %dma_map_single_attrs.exit
  %tx_pointer = getelementptr i8, ptr %netdev, i32 2356
  %47 = ptrtoint ptr %tx_pointer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_pointer, align 4
  %txdes50 = getelementptr i8, ptr %netdev, i32 2340
  %49 = ptrtoint ptr %txdes50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %txdes50, align 4
  %arrayidx = getelementptr %struct.ftgmac100_txdes, ptr %50, i32 %48
  %tx_skbs = getelementptr i8, ptr %netdev, i32 2348
  %51 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_skbs, align 4
  %arrayidx51 = getelementptr ptr, ptr %52, i32 %48
  %53 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %skb, ptr %arrayidx51, align 4
  %tx_q_entries.i = getelementptr i8, ptr %netdev, i32 2336
  %54 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_q_entries.i, align 8
  %sub.i248 = add i32 %55, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i248, i32 %48)
  %cmp.i249 = icmp eq i32 %sub.i248, %48
  br i1 %cmp.i249, label %if.then.i250, label %if.end49.ftgmac100_base_tx_ctlstat.exit_crit_edge

if.end49.ftgmac100_base_tx_ctlstat.exit_crit_edge: ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_base_tx_ctlstat.exit

if.then.i250:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %txdes0_edotr_mask.i = getelementptr i8, ptr %netdev, i32 2360
  %56 = ptrtoint ptr %txdes0_edotr_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %txdes0_edotr_mask.i, align 8
  br label %ftgmac100_base_tx_ctlstat.exit

ftgmac100_base_tx_ctlstat.exit:                   ; preds = %if.then.i250, %if.end49.ftgmac100_base_tx_ctlstat.exit_crit_edge
  %retval.0.i251 = phi i32 [ %57, %if.then.i250 ], [ 0, %if.end49.ftgmac100_base_tx_ctlstat.exit_crit_edge ]
  %and54 = and i32 %sub.i, 16383
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp57 = icmp eq i8 %14, 0
  %spec.select.v = select i1 %cmp57, i32 -1342177280, i32 -1610612736
  %or53 = or i32 %and54, %spec.select.v
  %spec.select = or i32 %or53, %retval.0.i251
  %58 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %txdes3 = getelementptr %struct.ftgmac100_txdes, ptr %50, i32 %48, i32 3
  %59 = ptrtoint ptr %txdes3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %txdes3, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %csum_vlan.3)
  %txdes1 = getelementptr %struct.ftgmac100_txdes, ptr %50, i32 %48, i32 1
  %61 = ptrtoint ptr %txdes1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %txdes1, align 4
  %add.i = add i32 %48, 1
  %62 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_q_entries.i, align 8
  %sub.i253 = add i32 %63, -1
  %and.i254 = and i32 %sub.i253, %add.i
  br i1 %cmp57, label %ftgmac100_base_tx_ctlstat.exit.for.end_crit_edge, label %for.body.lr.ph

ftgmac100_base_tx_ctlstat.exit.for.end_crit_edge: ; preds = %ftgmac100_base_tx_ctlstat.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %ftgmac100_base_tx_ctlstat.exit
  %txdes0_edotr_mask.i261 = getelementptr i8, ptr %netdev, i32 2360
  %sub = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0320 = phi i32 [ 0, %for.body.lr.ph ], [ %inc91, %for.inc.for.body_crit_edge ]
  %pointer.0319 = phi i32 [ %and.i254, %for.body.lr.ph ], [ %and.i268, %for.inc.for.body_crit_edge ]
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %arrayidx66 = getelementptr %struct.skb_shared_info, ptr %65, i32 0, i32 12, i32 %i.0320
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %65, i32 0, i32 12, i32 %i.0320, i32 1
  %66 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bv_len.i, align 4
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %70 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx66, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %65, i32 0, i32 12, i32 %i.0320, i32 2
  %72 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef %67, i32 noundef 1, i32 noundef 0) #16
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %75, i32 noundef %call2.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i256.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i256.not, label %dma_err, label %if.end74

if.end74:                                         ; preds = %for.body
  %76 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_skbs, align 4
  %arrayidx76 = getelementptr ptr, ptr %77, i32 %pointer.0319
  %78 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %skb, ptr %arrayidx76, align 4
  %79 = ptrtoint ptr %txdes50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %txdes50, align 4
  %arrayidx78 = getelementptr %struct.ftgmac100_txdes, ptr %80, i32 %pointer.0319
  %81 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_q_entries.i, align 8
  %sub.i259 = add i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i259, i32 %pointer.0319)
  %cmp.i260 = icmp eq i32 %sub.i259, %pointer.0319
  br i1 %cmp.i260, label %if.then.i262, label %if.end74.for.inc_crit_edge

if.end74.for.inc_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then.i262:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %txdes0_edotr_mask.i261 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %txdes0_edotr_mask.i261, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i262, %if.end74.for.inc_crit_edge
  %retval.0.i263 = phi i32 [ %84, %if.then.i262 ], [ 0, %if.end74.for.inc_crit_edge ]
  %and81 = and i32 %67, 16383
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0320, i32 %sub)
  %cmp83 = icmp eq i32 %i.0320, %sub
  %spec.select242.v = select i1 %cmp83, i32 -1879048192, i32 -2147483648
  %or80 = or i32 %and81, %spec.select242.v
  %spec.select242 = or i32 %or80, %retval.0.i263
  %85 = tail call i32 @llvm.bswap.i32(i32 %spec.select242)
  %86 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx78, align 16
  %txdes188 = getelementptr %struct.ftgmac100_txdes, ptr %80, i32 %pointer.0319, i32 1
  %87 = ptrtoint ptr %txdes188 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %txdes188, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %call2.i)
  %txdes389 = getelementptr %struct.ftgmac100_txdes, ptr %80, i32 %pointer.0319, i32 3
  %89 = ptrtoint ptr %txdes389 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %txdes389, align 4
  %add.i265 = add i32 %pointer.0319, 1
  %90 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_q_entries.i, align 8
  %sub.i267 = add i32 %91, -1
  %and.i268 = and i32 %sub.i267, %add.i265
  %inc91 = add nuw nsw i32 %i.0320, 1
  %exitcond.not = icmp eq i32 %inc91, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ftgmac100_base_tx_ctlstat.exit.for.end_crit_edge
  %pointer.0.lcssa = phi i32 [ %and.i254, %ftgmac100_base_tx_ctlstat.exit.for.end_crit_edge ], [ %and.i268, %for.inc.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !228
  %92 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx, align 16
  %94 = ptrtoint ptr %tx_pointer to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %pointer.0.lcssa, ptr %tx_pointer, align 4
  %tx_clean_pointer.i = getelementptr i8, ptr %netdev, i32 2352
  %95 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_clean_pointer.i, align 8
  %97 = xor i32 %pointer.0.lcssa, -1
  %sub1.i = add i32 %96, %97
  %98 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_q_entries.i, align 8
  %sub2.i = add i32 %99, -1
  %and.i270 = and i32 %sub2.i, %sub1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i270)
  %cmp95 = icmp ult i32 %and.i270, 18
  br i1 %cmp95, label %if.then103, label %for.end.if.end115_crit_edge, !prof !226

for.end.if.end115_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then103:                                       ; preds = %for.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %100 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %101, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !229
  %102 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_clean_pointer.i, align 8
  %104 = ptrtoint ptr %tx_pointer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_pointer, align 4
  %106 = xor i32 %105, -1
  %sub1.i273 = add i32 %103, %106
  %107 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_q_entries.i, align 8
  %sub2.i275 = add i32 %108, -1
  %and.i276 = and i32 %sub2.i275, %sub1.i273
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i276)
  %cmp111 = icmp ugt i32 %and.i276, 17
  br i1 %cmp111, label %if.then113, label %if.then103.if.end115_crit_edge

if.then103.if.end115_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then113:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %110) #16
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.then103.if.end115_crit_edge, %for.end.if.end115_crit_edge
  %base = getelementptr i8, ptr %netdev, i32 2308
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %112, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #16, !srcloc !220
  br label %cleanup140

dma_err:                                          ; preds = %for.body
  %call116 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %dma_err.if.end119_crit_edge, label %if.then118

dma_err.if.end119_crit_edge:                      ; preds = %dma_err
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then118:                                       ; preds = %dma_err
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.44) #19
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %dma_err.if.end119_crit_edge
  %113 = ptrtoint ptr %tx_pointer to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_pointer, align 4
  %115 = ptrtoint ptr %txdes3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %txdes3, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #16
  %118 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len1.i.i.i, align 4
  %120 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data_len.i, align 8
  %sub.i.i = sub i32 %119, %121
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %123, i32 noundef %117, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #16
  %and3.i = and i32 %spec.select, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end119.ftgmac100_free_tx_packet.exit_crit_edge, label %if.then5.i

if.end119.ftgmac100_free_tx_packet.exit_crit_edge: ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_free_tx_packet.exit

if.then5.i:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %ftgmac100_free_tx_packet.exit

ftgmac100_free_tx_packet.exit:                    ; preds = %if.then5.i, %if.end119.ftgmac100_free_tx_packet.exit_crit_edge
  %124 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tx_skbs, align 4
  %arrayidx.i = getelementptr ptr, ptr %125, i32 %114
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %arrayidx.i, align 4
  %127 = ptrtoint ptr %txdes0_edotr_mask.i261 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %txdes0_edotr_mask.i261, align 8
  %and121 = and i32 %128, %spec.select
  %129 = tail call i32 @llvm.bswap.i32(i32 %and121)
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0320)
  %cmp124321.not = icmp eq i32 %i.0320, 0
  br i1 %cmp124321.not, label %ftgmac100_free_tx_packet.exit.drop_crit_edge, label %ftgmac100_free_tx_packet.exit.for.body126_crit_edge

ftgmac100_free_tx_packet.exit.for.body126_crit_edge: ; preds = %ftgmac100_free_tx_packet.exit
  br label %for.body126

ftgmac100_free_tx_packet.exit.drop_crit_edge:     ; preds = %ftgmac100_free_tx_packet.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

for.body126:                                      ; preds = %ftgmac100_free_tx_packet.exit298.for.body126_crit_edge, %ftgmac100_free_tx_packet.exit.for.body126_crit_edge
  %j.0323 = phi i32 [ %inc135, %ftgmac100_free_tx_packet.exit298.for.body126_crit_edge ], [ 0, %ftgmac100_free_tx_packet.exit.for.body126_crit_edge ]
  %pointer.2322 = phi i32 [ %and.i284, %ftgmac100_free_tx_packet.exit298.for.body126_crit_edge ], [ %114, %ftgmac100_free_tx_packet.exit.for.body126_crit_edge ]
  %add.i281 = add i32 %pointer.2322, 1
  %131 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_q_entries.i, align 8
  %sub.i283 = add i32 %132, -1
  %and.i284 = and i32 %sub.i283, %add.i281
  %133 = ptrtoint ptr %txdes50 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %txdes50, align 4
  %arrayidx129 = getelementptr %struct.ftgmac100_txdes, ptr %134, i32 %and.i284
  %135 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx129, align 16
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  %txdes3.i285 = getelementptr %struct.ftgmac100_txdes, ptr %134, i32 %and.i284, i32 3
  %138 = ptrtoint ptr %txdes3.i285 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %txdes3.i285, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #16
  %and.i286 = and i32 %137, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i286)
  %tobool.not.i = icmp eq i32 %and.i286, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i290

if.then.i290:                                     ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #18
  %141 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len1.i.i.i, align 4
  %143 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %data_len.i, align 8
  %sub.i.i289 = sub i32 %142, %144
  br label %if.end.i294

if.else.i:                                        ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i = and i32 %137, 16383
  br label %if.end.i294

if.end.i294:                                      ; preds = %if.else.i, %if.then.i290
  %and1.sink.i = phi i32 [ %and1.i, %if.else.i ], [ %sub.i.i289, %if.then.i290 ]
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %146, i32 noundef %140, i32 noundef %and1.sink.i, i32 noundef 1, i32 noundef 0) #16
  %and3.i292 = and i32 %137, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i292)
  %tobool4.not.i293 = icmp eq i32 %and3.i292, 0
  br i1 %tobool4.not.i293, label %if.end.i294.ftgmac100_free_tx_packet.exit298_crit_edge, label %if.then5.i295

if.end.i294.ftgmac100_free_tx_packet.exit298_crit_edge: ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_free_tx_packet.exit298

if.then5.i295:                                    ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %ftgmac100_free_tx_packet.exit298

ftgmac100_free_tx_packet.exit298:                 ; preds = %if.then5.i295, %if.end.i294.ftgmac100_free_tx_packet.exit298_crit_edge
  %147 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tx_skbs, align 4
  %arrayidx.i297 = getelementptr ptr, ptr %148, i32 %and.i284
  %149 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx.i297, align 4
  %150 = ptrtoint ptr %txdes0_edotr_mask.i261 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %txdes0_edotr_mask.i261, align 8
  %and132 = and i32 %151, %137
  %152 = tail call i32 @llvm.bswap.i32(i32 %and132)
  %153 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %arrayidx129, align 16
  %inc135 = add nuw nsw i32 %j.0323, 1
  %exitcond325.not = icmp eq i32 %inc135, %i.0320
  br i1 %exitcond325.not, label %ftgmac100_free_tx_packet.exit298.drop_crit_edge, label %ftgmac100_free_tx_packet.exit298.for.body126_crit_edge

ftgmac100_free_tx_packet.exit298.for.body126_crit_edge: ; preds = %ftgmac100_free_tx_packet.exit298
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body126

ftgmac100_free_tx_packet.exit298.drop_crit_edge:  ; preds = %ftgmac100_free_tx_packet.exit298
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

drop:                                             ; preds = %ftgmac100_free_tx_packet.exit298.drop_crit_edge, %ftgmac100_free_tx_packet.exit.drop_crit_edge, %if.then47, %if.then44.drop_crit_edge, %ftgmac100_prep_tx_csum.exit.drop_crit_edge, %if.then18, %do.body9, %if.then5.drop_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  %tx_dropped138 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %154 = ptrtoint ptr %tx_dropped138 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tx_dropped138, align 4
  %inc139 = add i32 %155, 1
  store i32 %inc139, ptr %tx_dropped138, align 4
  br label %cleanup140

cleanup140:                                       ; preds = %drop, %if.end115, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_set_rx_mode(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %maht1.i = getelementptr i8, ptr %netdev, i32 2688
  %0 = ptrtoint ptr %maht1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %maht1.i, align 8
  %maht0.i = getelementptr i8, ptr %netdev, i32 2684
  %1 = ptrtoint ptr %maht0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %maht0.i, align 4
  %netdev.i = getelementptr i8, ptr %netdev, i32 2380
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  %mc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 66
  %4 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ha.025.i = load ptr, ptr %mc.i, align 4
  %cmp.not26.i = icmp eq ptr %ha.025.i, %mc.i
  br i1 %cmp.not26.i, label %entry.ftgmac100_calc_mc_hash.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ftgmac100_calc_mc_hash.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_calc_mc_hash.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ha.027.i = phi ptr [ %ha.0.i, %if.end.i.for.body.i_crit_edge ], [ %ha.025.i, %entry.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.027.i, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #21
  %shr.i = lshr i32 %call.i, 2
  %neg.i = and i32 %shr.i, 63
  %and.i = xor i32 %neg.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and.i)
  %cmp5.i = icmp ugt i32 %and.i, 31
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %shl.i = lshr i32 -2147483648, %neg.i
  %5 = ptrtoint ptr %maht1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maht1.i, align 8
  %or.i = or i32 %6, %shl.i
  store i32 %or.i, ptr %maht1.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %shl7.i = shl nuw i32 1, %and.i
  %7 = ptrtoint ptr %maht0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maht0.i, align 4
  %or9.i = or i32 %8, %shl7.i
  store i32 %or9.i, ptr %maht0.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %9 = ptrtoint ptr %ha.027.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0.i = load ptr, ptr %ha.027.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp.not.i, label %if.end.i.ftgmac100_calc_mc_hash.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end.i.ftgmac100_calc_mc_hash.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_calc_mc_hash.exit

ftgmac100_calc_mc_hash.exit:                      ; preds = %if.end.i.ftgmac100_calc_mc_hash.exit_crit_edge, %entry.ftgmac100_calc_mc_hash.exit_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %ftgmac100_calc_mc_hash.exit.cleanup_crit_edge, label %if.end

ftgmac100_calc_mc_hash.exit.cleanup_crit_edge:    ; preds = %ftgmac100_calc_mc_hash.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %ftgmac100_calc_mc_hash.exit
  %12 = ptrtoint ptr %maht0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maht0.i, align 4
  %base = getelementptr i8, ptr %netdev, i32 2308
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #16, !srcloc !220
  %17 = ptrtoint ptr %maht1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maht1.i, align 8
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %21) #16, !srcloc !220
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr.i10 = getelementptr i8, ptr %23, i32 80
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %25 = and i32 %24, 133120
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #16
  %cur_duplex.i = getelementptr i8, ptr %netdev, i32 2676
  %27 = ptrtoint ptr %cur_duplex.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i = icmp eq i32 %28, 1
  %spec.select.v.i = select i1 %cmp.i, i32 138511, i32 138255
  %spec.select.i = or i32 %spec.select.v.i, %26
  %29 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 8
  %and2.i = shl i32 %32, 6
  %33 = and i32 %and2.i, 16384
  %34 = or i32 %spec.select.i, %33
  %and8.i = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i12, label %if.then10.i

if.then10.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %or11.i = or i32 %34, 65536
  br label %ftgmac100_start_hw.exit

if.else.i12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %count.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 66, i32 1
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not.i = icmp eq i32 %36, 0
  %or15.i = or i32 %34, 32768
  %spec.select39.i = select i1 %tobool13.not.i, i32 %34, i32 %or15.i
  br label %ftgmac100_start_hw.exit

ftgmac100_start_hw.exit:                          ; preds = %if.else.i12, %if.then10.i
  %maccr.2.i = phi i32 [ %or11.i, %if.then10.i ], [ %spec.select39.i, %if.else.i12 ]
  %features.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 23
  %37 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %features.i, align 16
  %39 = trunc i64 %38 to i32
  %40 = lshr i32 %39, 4
  %41 = and i32 %40, 16
  %42 = or i32 %41, %maccr.2.i
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr25.i = getelementptr i8, ptr %44, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %45) #16, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %ftgmac100_start_hw.exit, %ftgmac100_calc_mc_hash.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_mac_addr(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %dev, ptr noundef %p) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @eth_commit_mac_addr_change(ptr noundef %dev, ptr noundef %p) #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %arrayidx3.i = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %7 to i32
  %shl5.i = shl nuw i32 %conv4.i, 24
  %arrayidx6.i = getelementptr i8, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %9 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %shl8.i, %shl5.i
  %arrayidx10.i = getelementptr i8, ptr %1, i32 4
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %11 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 8
  %or13.i = or i32 %or9.i, %shl12.i
  %arrayidx14.i = getelementptr i8, ptr %1, i32 5
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %13 to i32
  %or16.i = or i32 %or13.i, %conv15.i
  %base.i = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %16) #16, !srcloc !220
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %19 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %19) #16, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !220
  %reset_task = getelementptr i8, ptr %netdev, i32 2616
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %reset_task) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_vlan_rx_add_vid(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_vlan_rx_kill_vid(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftgmac100_poll_controller(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !230
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then22, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  %call12 = tail call i32 @ftgmac100_interrupt(i32 noundef %2, ptr noundef %netdev)
  br label %do.body24

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %irq48 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %3 = ptrtoint ptr %irq48 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq48, align 4
  %call1249 = tail call i32 @ftgmac100_interrupt(i32 noundef %4, ptr noundef %netdev)
  tail call void @trace_hardirqs_on() #16
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %do.end11
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !231
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !226

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !232
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %base = getelementptr i8, ptr %netdev, i32 2308
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %netdev5 = getelementptr i8, ptr %netdev, i32 2380
  %7 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev5, align 4
  %features6 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %features6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features6, align 16
  %11 = and i32 %6, -268435457
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = trunc i64 %10 to i32
  %14 = lshr i32 %13, 4
  %15 = and i32 %14, 16
  %maccr.0 = or i32 %15, %12
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %18 = tail call i32 @llvm.bswap.i32(i32 %maccr.0) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %18) #16, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_reset_and_config_mac(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_speed = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 27
  %0 = ptrtoint ptr %cur_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_speed, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %1, label %sw.default [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 0, label %entry.sw.epilog_crit_edge36
    i32 100, label %sw.bb1
    i32 1000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 19
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef %1) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge36
  %maccr.0 = phi i32 [ 0, %sw.default ], [ 512, %sw.bb2 ], [ 524288, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge36 ]
  %rx_pointer = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 6
  %5 = ptrtoint ptr %rx_pointer to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx_pointer, align 8
  %tx_clean_pointer = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 12
  %6 = ptrtoint ptr %tx_clean_pointer to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_clean_pointer, align 8
  %tx_pointer = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 13
  %7 = ptrtoint ptr %tx_pointer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_pointer, align 4
  %netdev1.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 19
  %8 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev1.i, align 4
  %base.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %12 = tail call i32 @llvm.bswap.i32(i32 %maccr.0) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #16, !srcloc !220
  %or.i = or i32 %maccr.0, -2147483648
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #16, !srcloc !220
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.epilog
  %i.014.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %.mask.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #16
  %20 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev1.i, align 4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %12) #16, !srcloc !220
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr3.i20 = getelementptr i8, ptr %25, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i20, i32 %15) #16, !srcloc !220
  br label %for.body.i25

for.body.i25:                                     ; preds = %if.end.i28.for.body.i25_crit_edge, %if.end
  %i.014.i21 = phi i32 [ 0, %if.end ], [ %inc.i26, %if.end.i28.for.body.i25_crit_edge ]
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr6.i22 = getelementptr i8, ptr %27, i32 80
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i22) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %.mask.i23 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i23)
  %tobool.not.i24 = icmp eq i32 %.mask.i23, 0
  br i1 %tobool.not.i24, label %for.body.i25.cleanup_crit_edge, label %if.end.i28

for.body.i25.cleanup_crit_edge:                   ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i28:                                       ; preds = %for.body.i25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #16
  %inc.i26 = add nuw nsw i32 %i.014.i21, 1
  %exitcond.not.i27 = icmp eq i32 %inc.i26, 200
  br i1 %exitcond.not.i27, label %if.end.i28.cleanup.sink.split_crit_edge, label %if.end.i28.for.body.i25_crit_edge

if.end.i28.for.body.i25_crit_edge:                ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i25

if.end.i28.cleanup.sink.split_crit_edge:          ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i28.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.end.i28.cleanup.sink.split_crit_edge ], [ %9, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %.sink, ptr noundef nonnull @.str.35) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.i25.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %cleanup.sink.split ], [ 0, %for.body.i25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -88
  %tx_pointer.i = getelementptr i8, ptr %napi, i32 -36
  %0 = ptrtoint ptr %tx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pointer.i, align 4
  %tx_clean_pointer.i = getelementptr i8, ptr %napi, i32 -40
  %2 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_clean_pointer.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.not = icmp eq i32 %1, %3
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.rhs.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs.lr.ph.i:                                 ; preds = %entry
  %netdev1.i = getelementptr i8, ptr %napi, i32 -12
  %4 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev1.i, align 4
  %txdes2.i.i = getelementptr i8, ptr %napi, i32 -52
  %tx_skbs.i.i = getelementptr i8, ptr %napi, i32 -44
  %dev2.i.i.i = getelementptr i8, ptr %napi, i32 -8
  %txdes0_edotr_mask.i.i = getelementptr i8, ptr %napi, i32 -32
  %tx_q_entries.i.i.i = getelementptr i8, ptr %napi, i32 -56
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %ftgmac100_tx_complete_packet.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %6 = phi i32 [ %3, %land.rhs.lr.ph.i ], [ %and.i28.i.i, %ftgmac100_tx_complete_packet.exit.i.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %txdes2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txdes2.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ftgmac100_txdes, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 16
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool.not.i.i = icmp sgt i32 %11, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.rhs.i.do.end.i_crit_edge

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.i.i:                                       ; preds = %land.rhs.i
  %12 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev1.i, align 4
  %14 = ptrtoint ptr %tx_skbs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_skbs.i.i, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %15, i32 %6
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.i.i, align 4
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 1
  %18 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_packets.i.i, align 4
  %inc.i.i = add i32 %19, 1
  store i32 %inc.i.i, ptr %tx_packets.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 3
  %22 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_bytes.i.i, align 4
  %add.i.i = add i32 %23, %21
  store i32 %add.i.i, ptr %tx_bytes.i.i, align 4
  %txdes3.i.i.i = getelementptr %struct.ftgmac100_txdes, ptr %8, i32 %6, i32 3
  %24 = ptrtoint ptr %txdes3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txdes3.i.i.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #16
  %and.i.i.i = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %28, %30
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i.i.i = and i32 %11, 16383
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %and1.sink.i.i.i = phi i32 [ %and1.i.i.i, %if.else.i.i.i ], [ %sub.i.i.i.i, %if.then.i.i.i ]
  %31 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2.i.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %26, i32 noundef %and1.sink.i.i.i, i32 noundef 1, i32 noundef 0) #16
  %and3.i.i.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.ftgmac100_tx_complete_packet.exit.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.ftgmac100_tx_complete_packet.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_tx_complete_packet.exit.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %17) #16
  br label %ftgmac100_tx_complete_packet.exit.i

ftgmac100_tx_complete_packet.exit.i:              ; preds = %if.then5.i.i.i, %if.end.i.i.i.ftgmac100_tx_complete_packet.exit.i_crit_edge
  %33 = ptrtoint ptr %tx_skbs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_skbs.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %34, i32 %6
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %36 = ptrtoint ptr %txdes0_edotr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %txdes0_edotr_mask.i.i, align 8
  %and5.i.i = and i32 %37, %11
  %38 = tail call i32 @llvm.bswap.i32(i32 %and5.i.i) #16
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.i.i, align 16
  %add.i.i.i = add i32 %6, 1
  %40 = ptrtoint ptr %tx_q_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_q_entries.i.i.i, align 8
  %sub.i.i.i = add i32 %41, -1
  %and.i28.i.i = and i32 %sub.i.i.i, %add.i.i.i
  %42 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i28.i.i, ptr %tx_clean_pointer.i, align 8
  %43 = ptrtoint ptr %tx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_pointer.i, align 4
  %cmp.i.not.i = icmp eq i32 %44, %and.i28.i.i
  br i1 %cmp.i.not.i, label %ftgmac100_tx_complete_packet.exit.i.do.end.i_crit_edge, label %ftgmac100_tx_complete_packet.exit.i.land.rhs.i_crit_edge

ftgmac100_tx_complete_packet.exit.i.land.rhs.i_crit_edge: ; preds = %ftgmac100_tx_complete_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

ftgmac100_tx_complete_packet.exit.i.do.end.i_crit_edge: ; preds = %ftgmac100_tx_complete_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %ftgmac100_tx_complete_packet.exit.i.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !233
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %45 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end.i.if.end_crit_edge, label %land.rhs7.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs7.i:                                      ; preds = %do.end.i
  %49 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_clean_pointer.i, align 8
  %51 = ptrtoint ptr %tx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_pointer.i, align 4
  %53 = xor i32 %52, -1
  %sub1.i.i = add i32 %50, %53
  %54 = ptrtoint ptr %tx_q_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_q_entries.i.i.i, align 8
  %sub2.i.i = add i32 %55, -1
  %and.i.i = and i32 %sub2.i.i, %sub1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i.i)
  %cmp.i45 = icmp ugt i32 %and.i.i, 17
  br i1 %cmp.i45, label %if.then.i, label %land.rhs7.i.if.end_crit_edge, !prof !226

land.rhs7.i.if.end_crit_edge:                     ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %land.rhs7.i
  %56 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i29.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i29.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i, align 4
  %_xmit_lock.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 11
  %60 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %xmit_lock_owner.i.i, align 4
  %61 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i31.i = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %state.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state.i.i31.i, align 4
  %and1.i.i.i32.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i32.i)
  %tobool.i.i33.not.i = icmp eq i32 %and1.i.i.i32.i, 0
  br i1 %tobool.i.i33.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %65 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_clean_pointer.i, align 8
  %67 = ptrtoint ptr %tx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_pointer.i, align 4
  %69 = xor i32 %68, -1
  %sub1.i36.i = add i32 %66, %69
  %70 = ptrtoint ptr %tx_q_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_q_entries.i.i.i, align 8
  %sub2.i38.i = add i32 %71, -1
  %and.i39.i = and i32 %sub2.i38.i, %sub1.i36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i39.i)
  %cmp15.i = icmp ugt i32 %and.i39.i, 17
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_tx_wake_queue(ptr noundef %62) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then16.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %72 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end.i, %land.rhs7.i.if.end_crit_edge, %do.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %netdev1.i46 = getelementptr i8, ptr %napi, i32 -12
  %rx_pointer.i = getelementptr i8, ptr %napi, i32 -64
  %rxdes2.i = getelementptr i8, ptr %napi, i32 -76
  %rx_skbs.i = getelementptr i8, ptr %napi, i32 -68
  %dev.i = getelementptr i8, ptr %napi, i32 -8
  %rx_q_entries.i.i = getelementptr i8, ptr %napi, i32 -80
  %rxdes0_edorr_mask.i = getelementptr i8, ptr %napi, i32 -60
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end
  %work_done.0 = phi i32 [ 0, %if.end ], [ %work_done.1.ph, %land.rhs.do.body_crit_edge ]
  %73 = ptrtoint ptr %netdev1.i46 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev1.i46, align 4
  %75 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_pointer.i, align 8
  %77 = ptrtoint ptr %rxdes2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rxdes2.i, align 4
  %arrayidx.i = getelementptr %struct.ftgmac100_rxdes, ptr %78, i32 %76
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 16
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %tobool.not.i = icmp sgt i32 %81, -1
  br i1 %tobool.not.i, label %do.body.do.end_crit_edge, label %if.end.i47

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.i47:                                       ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !234
  %82 = and i32 %81, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %82)
  %.not.i = icmp eq i32 %82, 805306368
  br i1 %.not.i, label %if.end11.i, label %if.end.i47.drop.i_crit_edge, !prof !222

if.end.i47.drop.i_crit_edge:                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop.i

if.end11.i:                                       ; preds = %if.end.i47
  %and12.i = and i32 %81, 16383
  %rxdes1.i = getelementptr %struct.ftgmac100_rxdes, ptr %78, i32 %76, i32 1
  %83 = ptrtoint ptr %rxdes1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rxdes1.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #16
  %and13.i = and i32 %81, 8126464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end34.i_crit_edge, label %if.then21.i, !prof !222

if.end11.i.if.end34.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then21.i:                                      ; preds = %if.end11.i
  %and22.i = and i32 %81, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp ne i32 %and22.i, 0
  %and24.i = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp ne i32 %and24.i, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 %tobool25.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %and12.i)
  %cmp.i48 = icmp ugt i32 %and12.i, 59
  %or.cond165.i = select i1 %or.cond.i, i1 %cmp.i48, i1 false
  %and28.i = and i32 %81, -2097153
  %status.0.i = select i1 %or.cond165.i, i32 %and28.i, i32 %81
  %and30.i = and i32 %status.0.i, 8126464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then21.i.if.end34.i_crit_edge, label %if.then32.i

if.then21.i.if.end34.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ftgmac100_rx_packet_error(ptr noundef %add.ptr, i32 noundef %status.0.i) #16
  br label %drop.i

if.end34.i:                                       ; preds = %if.then21.i.if.end34.i_crit_edge, %if.end11.i.if.end34.i_crit_edge
  %status.1.i = phi i32 [ %status.0.i, %if.then21.i.if.end34.i_crit_edge ], [ %81, %if.end11.i.if.end34.i_crit_edge ]
  %86 = ptrtoint ptr %rx_skbs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_skbs.i, align 4
  %arrayidx35.i = getelementptr ptr, ptr %87, i32 %76
  %88 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx35.i, align 4
  %tobool36.not.i = icmp eq ptr %89, null
  br i1 %tobool36.not.i, label %if.then43.i, label %if.end44.i, !prof !222

if.then43.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  %90 = tail call fastcc i32 @ftgmac100_alloc_rx_buf(ptr noundef %add.ptr, i32 noundef %76, ptr noundef %arrayidx.i) #16
  br label %drop.i

if.end44.i:                                       ; preds = %if.end34.i
  %and45.i = and i32 %status.1.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end54.i_crit_edge, label %if.then53.i, !prof !222

if.end44.i.if.end54.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 36, i32 8
  %91 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %multicast.i, align 8
  %inc.i = add i32 %92, 1
  store i32 %inc.i, ptr %multicast.i, align 8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end44.i.if.end54.i_crit_edge
  %features.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 23
  %93 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %features.i, align 16
  %and55.i = and i64 %94, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55.i)
  %tobool56.not.i = icmp eq i64 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end54.i.if.end68.i_crit_edge, label %if.then57.i

if.end54.i.if.end68.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  %and58.i = and i32 %85, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp ne i32 %and58.i, 0
  %and60.i = and i32 %85, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  %or.cond166.i = or i1 %tobool59.not.i, %tobool61.not.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 15
  %95 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set66.i = or i16 %bf.clear.i, 512
  %bf.clear.sink.i = select i1 %or.cond166.i, i16 %bf.clear.i, i16 %bf.set66.i
  store i16 %bf.clear.sink.i, ptr %ip_summed.i, align 8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then57.i, %if.end54.i.if.end68.i_crit_edge
  %call69.i = tail call ptr @skb_put(ptr noundef nonnull %89, i32 noundef %and12.i) #16
  %96 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %features.i, align 16
  %and71.i = and i64 %97, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and71.i)
  %tobool72.not.i = icmp eq i64 %and71.i, 0
  %and74.i = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  %or.cond167.i = select i1 %tobool72.not.i, i1 true, i1 %tobool75.not.i
  br i1 %or.cond167.i, label %if.end68.i.if.end78.i_crit_edge, label %if.then76.i

if.end68.i.if.end78.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78.i

if.then76.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = trunc i32 %85 to i16
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 15, i32 0, i32 9
  %98 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 15, i32 0, i32 10
  %99 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 15, i32 0, i32 3
  %100 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %if.end68.i.if.end78.i_crit_edge
  %rxdes3.i = getelementptr %struct.ftgmac100_rxdes, ptr %78, i32 %76, i32 3
  %101 = ptrtoint ptr %rxdes3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rxdes3.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #16
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %105, i32 noundef %103, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #16
  %106 = tail call fastcc i32 @ftgmac100_alloc_rx_buf(ptr noundef %add.ptr, i32 noundef %76, ptr noundef %arrayidx.i) #16
  %add.i.i49 = add i32 %76, 1
  %107 = ptrtoint ptr %rx_q_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_q_entries.i.i, align 8
  %sub.i.i = add i32 %108, -1
  %and.i.i50 = and i32 %sub.i.i, %add.i.i49
  %109 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and.i.i50, ptr %rx_pointer.i, align 8
  %call82.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %89, ptr noundef %74) #16
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 15, i32 0, i32 18
  %110 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %call82.i, ptr %protocol.i, align 8
  %stats83.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 36
  %111 = ptrtoint ptr %stats83.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %stats83.i, align 8
  %inc84.i = add i32 %112, 1
  store i32 %inc84.i, ptr %stats83.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 36, i32 2
  %113 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %114, %and12.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %ip_summed86.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 15
  %115 = ptrtoint ptr %ip_summed86.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load87.i = load i16, ptr %ip_summed86.i, align 8
  %116 = and i16 %bf.load87.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp90.i = icmp eq i16 %116, 0
  br i1 %cmp90.i, label %if.then92.i, label %if.else94.i

if.then92.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #18
  %call93.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %89) #16
  br label %if.end96.i

if.else94.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #18
  %call95.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %89) #16
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else94.i, %if.then92.i
  %inc97.i = add nsw i32 %work_done.0, 1
  br label %land.rhs

drop.i:                                           ; preds = %if.then43.i, %if.then32.i, %if.end.i47.drop.i_crit_edge
  %status.2.i = phi i32 [ %81, %if.end.i47.drop.i_crit_edge ], [ %status.0.i, %if.then32.i ], [ %status.1.i, %if.then43.i ]
  %117 = ptrtoint ptr %rxdes0_edorr_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rxdes0_edorr_mask.i, align 4
  %and98.i = and i32 %118, %status.2.i
  %119 = tail call i32 @llvm.bswap.i32(i32 %and98.i) #16
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx.i, align 16
  %add.i168.i = add i32 %76, 1
  %121 = ptrtoint ptr %rx_q_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_q_entries.i.i, align 8
  %sub.i170.i = add i32 %122, -1
  %and.i171.i = and i32 %sub.i170.i, %add.i168.i
  %123 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and.i171.i, ptr %rx_pointer.i, align 8
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 36, i32 6
  %124 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_dropped.i, align 8
  %inc103.i = add i32 %125, 1
  store i32 %inc103.i, ptr %rx_dropped.i, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %drop.i, %if.end96.i
  %work_done.1.ph = phi i32 [ %inc97.i, %if.end96.i ], [ %work_done.0, %drop.i ]
  %cmp = icmp slt i32 %work_done.1.ph, %budget
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %work_done.165 = phi i32 [ %work_done.1.ph, %land.rhs.do.end_crit_edge ], [ %work_done.0, %do.body.do.end_crit_edge ]
  %need_mac_restart = getelementptr i8, ptr %napi, i32 303
  %126 = ptrtoint ptr %need_mac_restart to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %need_mac_restart, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool2.not = icmp eq i8 %127, 0
  br i1 %tobool2.not, label %do.end.if.end8_crit_edge, label %if.then5, !prof !222

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ftgmac100_start_hw(ptr noundef %add.ptr)
  %128 = ptrtoint ptr %need_mac_restart to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %need_mac_restart, align 1
  %base = getelementptr i8, ptr %napi, i32 -84
  %129 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %130, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -1946091520) #16, !srcloc !220
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end.if.end8_crit_edge
  %131 = ptrtoint ptr %tx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_pointer.i, align 4
  %133 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_clean_pointer.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp.i53.not = icmp eq i32 %132, %134
  br i1 %cmp.i53.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.165, i32 %budget)
  %cmp12 = icmp slt i32 %work_done.165, %budget
  br i1 %cmp12, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %base14 = getelementptr i8, ptr %napi, i32 -84
  %135 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 285212672) #16, !srcloc !220
  %137 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base14, align 4
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %140 = ptrtoint ptr %rxdes2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rxdes2.i, align 4
  %142 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rx_pointer.i, align 8
  %arrayidx.i56 = getelementptr %struct.ftgmac100_rxdes, ptr %141, i32 %143
  %144 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i56, align 16
  %and.i = and i32 %145, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then13
  %146 = ptrtoint ptr %tx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tx_pointer.i, align 4
  %148 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_clean_pointer.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %149)
  %cmp.i59.not = icmp eq i32 %147, %149
  br i1 %cmp.i59.not, label %if.end22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #16
  %150 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base14, align 4
  %add.ptr25 = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -1929314304) #16, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %lor.lhs.false.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %lor.lhs.false.cleanup_crit_edge ], [ %budget, %if.then13.cleanup_crit_edge ], [ %work_done.165, %if.end22 ], [ %work_done.165, %if.end11.cleanup_crit_edge ], [ %budget, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev_id, i32 2308
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #16, !srcloc !217
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #16, !srcloc !220
  %and = and i32 %3, 396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then, !prof !222

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then:                                          ; preds = %entry
  %and6 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 11
  %6 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %and9 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %8 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_fifo_errors, align 8
  %inc13 = add i32 %9, 1
  store i32 %inc13, ptr %rx_fifo_errors, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %and15 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 18
  %10 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifo_errors, align 8
  %inc19 = add i32 %11, 1
  store i32 %inc19, ptr %tx_fifo_errors, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %and21 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end31, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end27_crit_edge, label %if.then26

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.40) #19
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then23.if.end27_crit_edge
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #16, !srcloc !220
  %reset_task = getelementptr i8, ptr %dev_id, i32 2616
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %reset_task) #16
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %need_mac_restart = getelementptr i8, ptr %dev_id, i32 2695
  %15 = ptrtoint ptr %need_mac_restart to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %need_mac_restart, align 1
  %and32 = xor i32 %and, 396
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %entry.if.end33_crit_edge
  %new_mask.0 = phi i32 [ %and32, %if.end31 ], [ 396, %entry.if.end33_crit_edge ]
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %18 = tail call i32 @llvm.bswap.i32(i32 %new_mask.0) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %18) #16, !srcloc !220
  %napi = getelementptr i8, ptr %dev_id, i32 2392
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #16
  br i1 %call.i, label %if.then.i, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end33.cleanup_crit_edge, %if.end27
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_init_all(ptr noundef %priv, i1 noundef zeroext %ignore_alloc_err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %new_rx_q_entries.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %new_rx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rx_q_entries.i, align 4
  %rx_q_entries.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %rx_q_entries.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_q_entries.i, align 8
  %new_tx_q_entries.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %new_tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new_tx_q_entries.i, align 8
  %tx_q_entries.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 8
  %5 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_q_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp.i = icmp ult i32 %1, 32
  br i1 %cmp.i, label %do.end.i, label %for.body.lr.ph.i, !prof !226

for.body.lr.ph.i:                                 ; preds = %entry
  %rxdes25.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 3
  %rx_scratch_dma.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 18
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 956, i32 noundef 9, ptr noundef null) #16
  br label %ftgmac100_init_rings.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %rxdes25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxdes25.i, align 4
  %arrayidx.i = getelementptr %struct.ftgmac100_rxdes, ptr %7, i32 %i.098.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.i, align 16
  %9 = ptrtoint ptr %rx_scratch_dma.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_scratch_dma.i, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  %rxdes3.i = getelementptr %struct.ftgmac100_rxdes, ptr %7, i32 %i.098.i, i32 3
  %12 = ptrtoint ptr %rxdes3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rxdes3.i, align 4
  %inc.i = add nuw i32 %i.098.i, 1
  %13 = ptrtoint ptr %rx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_q_entries.i, align 8
  %cmp24.i = icmp ult i32 %inc.i, %14
  br i1 %cmp24.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %rxdes0_edorr_mask.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 7
  %15 = ptrtoint ptr %rxdes0_edorr_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxdes0_edorr_mask.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 16
  %or.i = or i32 %19, %17
  store i32 %or.i, ptr %arrayidx.i, align 16
  %20 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_q_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp29.i = icmp ult i32 %21, 32
  br i1 %cmp29.i, label %do.end45.i, label %for.body65.lr.ph.i, !prof !226

for.body65.lr.ph.i:                               ; preds = %for.end.i
  %txdes66.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 9
  br label %for.body65.i

do.end45.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 968, i32 noundef 9, ptr noundef null) #16
  br label %ftgmac100_init_rings.exit

for.body65.i:                                     ; preds = %for.body65.i.for.body65.i_crit_edge, %for.body65.lr.ph.i
  %i.1100.i = phi i32 [ 0, %for.body65.lr.ph.i ], [ %inc69.i, %for.body65.i.for.body65.i_crit_edge ]
  %22 = ptrtoint ptr %txdes66.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %txdes66.i, align 4
  %arrayidx67.i = getelementptr %struct.ftgmac100_txdes, ptr %23, i32 %i.1100.i
  %24 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx67.i, align 16
  %inc69.i = add nuw i32 %i.1100.i, 1
  %25 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_q_entries.i, align 8
  %cmp64.i = icmp ult i32 %inc69.i, %26
  br i1 %cmp64.i, label %for.body65.i.for.body65.i_crit_edge, label %for.end70.i

for.body65.i.for.body65.i_crit_edge:              ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body65.i

for.end70.i:                                      ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #18
  %txdes0_edotr_mask.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 14
  %27 = ptrtoint ptr %txdes0_edotr_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txdes0_edotr_mask.i, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  %30 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67.i, align 16
  %or72.i = or i32 %31, %29
  store i32 %or72.i, ptr %arrayidx67.i, align 16
  br label %ftgmac100_init_rings.exit

ftgmac100_init_rings.exit:                        ; preds = %for.end70.i, %do.end45.i, %do.end.i
  %rxdes1.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 3
  %32 = ptrtoint ptr %rx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_q_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp8.not.i = icmp eq i32 %33, 0
  br i1 %cmp8.not.i, label %ftgmac100_init_rings.exit.if.end_crit_edge, label %ftgmac100_init_rings.exit.for.body.i15_crit_edge

ftgmac100_init_rings.exit.for.body.i15_crit_edge: ; preds = %ftgmac100_init_rings.exit
  br label %for.body.i15

ftgmac100_init_rings.exit.if.end_crit_edge:       ; preds = %ftgmac100_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i15
  %inc.i12 = add nuw i32 %i.09.i, 1
  %34 = ptrtoint ptr %rx_q_entries.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_q_entries.i, align 8
  %cmp.i13 = icmp ult i32 %inc.i12, %35
  br i1 %cmp.i13, label %for.cond.i.for.body.i15_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.cond.i.for.body.i15_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i15

for.body.i15:                                     ; preds = %for.cond.i.for.body.i15_crit_edge, %ftgmac100_init_rings.exit.for.body.i15_crit_edge
  %i.09.i = phi i32 [ %inc.i12, %for.cond.i.for.body.i15_crit_edge ], [ 0, %ftgmac100_init_rings.exit.for.body.i15_crit_edge ]
  %36 = ptrtoint ptr %rxdes1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rxdes1.i, align 4
  %arrayidx.i14 = getelementptr %struct.ftgmac100_rxdes, ptr %37, i32 %i.09.i
  %call.i = tail call fastcc i32 @ftgmac100_alloc_rx_buf(ptr noundef %priv, i32 noundef %i.09.i, ptr noundef %arrayidx.i14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %ftgmac100_alloc_rx_buffers.exit

ftgmac100_alloc_rx_buffers.exit:                  ; preds = %for.body.i15
  br i1 %ignore_alloc_err, label %ftgmac100_alloc_rx_buffers.exit.if.end_crit_edge, label %ftgmac100_alloc_rx_buffers.exit.cleanup_crit_edge

ftgmac100_alloc_rx_buffers.exit.cleanup_crit_edge: ; preds = %ftgmac100_alloc_rx_buffers.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ftgmac100_alloc_rx_buffers.exit.if.end_crit_edge: ; preds = %ftgmac100_alloc_rx_buffers.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %ftgmac100_alloc_rx_buffers.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %ftgmac100_init_rings.exit.if.end_crit_edge
  %retval.2.i28 = phi i32 [ -12, %ftgmac100_alloc_rx_buffers.exit.if.end_crit_edge ], [ 0, %ftgmac100_init_rings.exit.if.end_crit_edge ], [ 0, %for.cond.i.if.end_crit_edge ]
  %base.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 1
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #16, !srcloc !220
  %rxdes_dma.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 4
  %43 = ptrtoint ptr %rxdes_dma.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rxdes_dma.i, align 8
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %46, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %47) #16, !srcloc !220
  %txdes_dma.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 10
  %48 = ptrtoint ptr %txdes_dma.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %txdes_dma.i, align 8
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %51, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %52) #16, !srcloc !220
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %54, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 393216) #16, !srcloc !220
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %56, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16777216) #16, !srcloc !220
  %netdev.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 19
  %57 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 86
  %59 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr.i, align 64
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %conv.i.i = zext i8 %62 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %arrayidx1.i.i = getelementptr i8, ptr %60, i32 1
  %63 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %64 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %60, i32 2
  %65 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %66 to i32
  %shl5.i.i = shl nuw i32 %conv4.i.i, 24
  %arrayidx6.i.i = getelementptr i8, ptr %60, i32 3
  %67 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %68 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 16
  %or9.i.i = or i32 %shl8.i.i, %shl5.i.i
  %arrayidx10.i.i = getelementptr i8, ptr %60, i32 4
  %69 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %70 to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 8
  %or13.i.i = or i32 %or9.i.i, %shl12.i.i
  %arrayidx14.i.i = getelementptr i8, ptr %60, i32 5
  %71 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %72 to i32
  %or16.i.i = or i32 %or13.i.i, %conv15.i.i
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %75 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %75) #16, !srcloc !220
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %77, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %78 = tail call i32 @llvm.bswap.i32(i32 %or16.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %78) #16, !srcloc !220
  %maht0.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 30
  %79 = ptrtoint ptr %maht0.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %maht0.i, align 4
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %83 = tail call i32 @llvm.bswap.i32(i32 %80) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %83) #16, !srcloc !220
  %maht1.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 31
  %84 = ptrtoint ptr %maht1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %maht1.i, align 8
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %87, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %88) #16, !srcloc !220
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %90, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 1915683328) #16, !srcloc !220
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %92, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 269484032) #16, !srcloc !220
  %93 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %94, i32 68
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %97, i32 72
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %99 = and i32 %98, -64
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #16
  %or.i16 = and i32 %95, 1056964608
  %or28.i = or i32 %100, %or.i16
  %101 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %102, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %103 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %103) #16, !srcloc !220
  %rx_pause.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 33
  %104 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rx_pause.i, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i17 = icmp eq i8 %105, 0
  %spec.select.i = select i1 %tobool.not.i17, i32 1048576, i32 1048577
  %tx_pause.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 32
  %106 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %tx_pause.i, align 4, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool1.not.i = icmp eq i8 %107, 0
  %or3.i = or i32 %spec.select.i, 4
  %fcr.1.i = select i1 %tobool1.not.i, i32 %spec.select.i, i32 %or3.i
  %108 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %109, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %110 = tail call i32 @llvm.bswap.i32(i32 %fcr.1.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %110) #16, !srcloc !220
  %111 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %112, i32 80
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %114 = and i32 %113, 133120
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #16
  %cur_duplex.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 28
  %116 = ptrtoint ptr %cur_duplex.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cur_duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp.i21 = icmp eq i32 %117, 1
  %spec.select.v.i = select i1 %cmp.i21, i32 138511, i32 138255
  %spec.select.i22 = or i32 %spec.select.v.i, %115
  %118 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 14
  %120 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags.i, align 8
  %and2.i = shl i32 %121, 6
  %122 = and i32 %and2.i, 16384
  %123 = or i32 %spec.select.i22, %122
  %and8.i = and i32 %121, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %or11.i = or i32 %123, 65536
  br label %ftgmac100_start_hw.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %count.i = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 66, i32 1
  %124 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool13.not.i = icmp eq i32 %125, 0
  %or15.i = or i32 %123, 32768
  %spec.select39.i = select i1 %tobool13.not.i, i32 %123, i32 %or15.i
  br label %ftgmac100_start_hw.exit

ftgmac100_start_hw.exit:                          ; preds = %if.else.i, %if.then10.i
  %maccr.2.i = phi i32 [ %or11.i, %if.then10.i ], [ %spec.select39.i, %if.else.i ]
  %features.i = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 23
  %126 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %features.i, align 16
  %128 = trunc i64 %127 to i32
  %129 = lshr i32 %128, 4
  %130 = and i32 %129, 16
  %131 = or i32 %130, %maccr.2.i
  %132 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %133, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %134 = tail call i32 @llvm.bswap.i32(i32 %131) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %134) #16, !srcloc !220
  %napi = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 22
  tail call void @napi_enable(ptr noundef %napi) #16
  %135 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 103
  %137 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %138, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %139 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %140, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1929314304) #16, !srcloc !220
  br label %cleanup

cleanup:                                          ; preds = %ftgmac100_start_hw.exit, %ftgmac100_alloc_rx_buffers.exit.cleanup_crit_edge
  %retval.2.i27 = phi i32 [ -12, %ftgmac100_alloc_rx_buffers.exit.cleanup_crit_edge ], [ %retval.2.i28, %ftgmac100_start_hw.exit ]
  ret i32 %retval.2.i27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_start_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_free_buffers(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_q_entries = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_q_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp45.not = icmp eq i32 %1, 0
  br i1 %cmp45.not, label %entry.for.cond7.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rx_skbs = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 5
  %rxdes1 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 3
  %dev = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 20
  br label %for.body

for.cond7.preheader:                              ; preds = %cleanup.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %tx_q_entries = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_q_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp848.not = icmp eq i32 %3, 0
  br i1 %cmp848.not, label %for.cond7.preheader.for.end23_crit_edge, label %for.body9.lr.ph

for.cond7.preheader.for.end23_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end23

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %tx_skbs = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 11
  %txdes10 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 9
  %dev2.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 20
  br label %for.body9

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %rx_skbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skbs, align 4
  %arrayidx2 = getelementptr ptr, ptr %5, i32 %i.046
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %rxdes1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxdes1, align 4
  %rxdes3 = getelementptr %struct.ftgmac100_rxdes, ptr %9, i32 %i.046, i32 3
  %10 = ptrtoint ptr %rxdes3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxdes3, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx2, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %12, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.046, 1
  %16 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_q_entries, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.cond7.preheader_crit_edge

cleanup.for.cond7.preheader_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond7.preheader

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body9:                                        ; preds = %cleanup17.for.body9_crit_edge, %for.body9.lr.ph
  %i.149 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc22, %cleanup17.for.body9_crit_edge ]
  %18 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skbs, align 4
  %arrayidx13 = getelementptr ptr, ptr %19, i32 %i.149
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %for.body9.cleanup17_crit_edge, label %if.end16

for.body9.cleanup17_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

if.end16:                                         ; preds = %for.body9
  %22 = ptrtoint ptr %txdes10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %txdes10, align 4
  %arrayidx11 = getelementptr %struct.ftgmac100_txdes, ptr %23, i32 %i.149
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11, align 16
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %txdes3.i = getelementptr %struct.ftgmac100_txdes, ptr %23, i32 %i.149, i32 3
  %27 = ptrtoint ptr %txdes3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txdes3.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  %and.i = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %31, %33
  br label %if.end.i

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i = and i32 %26, 16383
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %and1.sink.i = phi i32 [ %and1.i, %if.else.i ], [ %sub.i.i, %if.then.i ]
  %34 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %29, i32 noundef %and1.sink.i, i32 noundef 1, i32 noundef 0) #16
  %and3.i = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.ftgmac100_free_tx_packet.exit_crit_edge, label %if.then5.i

if.end.i.ftgmac100_free_tx_packet.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ftgmac100_free_tx_packet.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef nonnull %21) #16
  br label %ftgmac100_free_tx_packet.exit

ftgmac100_free_tx_packet.exit:                    ; preds = %if.then5.i, %if.end.i.ftgmac100_free_tx_packet.exit_crit_edge
  %36 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_skbs, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %i.149
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %ftgmac100_free_tx_packet.exit, %for.body9.cleanup17_crit_edge
  %inc22 = add nuw i32 %i.149, 1
  %39 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_q_entries, align 8
  %cmp8 = icmp ult i32 %inc22, %40
  br i1 %cmp8, label %cleanup17.for.body9_crit_edge, label %cleanup17.for.end23_crit_edge

cleanup17.for.end23_crit_edge:                    ; preds = %cleanup17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end23

cleanup17.for.body9_crit_edge:                    ; preds = %cleanup17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body9

for.end23:                                        ; preds = %cleanup17.for.end23_crit_edge, %for.cond7.preheader.for.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_free_rings(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_skbs = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rx_skbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skbs, align 4
  tail call void @kfree(ptr noundef %1) #16
  %tx_skbs = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %tx_skbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skbs, align 4
  tail call void @kfree(ptr noundef %3) #16
  %rxdes = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %rxdes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxdes, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 20
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %rxdes_dma = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %rxdes_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxdes_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 16384, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %rxdes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rxdes, align 4
  %txdes = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 9
  %11 = ptrtoint ptr %txdes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txdes, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dev5 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 20
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 8
  %txdes_dma = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 10
  %15 = ptrtoint ptr %txdes_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txdes_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef 16384, ptr noundef nonnull %12, i32 noundef %16, i32 noundef 0) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %17 = ptrtoint ptr %txdes to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %txdes, align 4
  %rx_scratch = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 17
  %18 = ptrtoint ptr %rx_scratch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_scratch, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %dev11 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 20
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 8
  %rx_scratch_dma = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 18
  %22 = ptrtoint ptr %rx_scratch_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_scratch_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef 1536, ptr noundef nonnull %19, i32 noundef %23, i32 noundef 0) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_start_hw(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %3 = and i32 %2, 133120
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cur_duplex = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 28
  %5 = ptrtoint ptr %cur_duplex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %spec.select.v = select i1 %cmp, i32 138511, i32 138255
  %spec.select = or i32 %spec.select.v, %4
  %netdev = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 19
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and2 = shl i32 %10, 6
  %11 = and i32 %and2, 16384
  %12 = or i32 %spec.select, %11
  %and8 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %or11 = or i32 %12, 65536
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %count = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 66, i32 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  %or15 = or i32 %12, 32768
  %spec.select39 = select i1 %tobool13.not, i32 %12, i32 %or15
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  %maccr.2 = phi i32 [ %or11, %if.then10 ], [ %spec.select39, %if.else ]
  %features = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 23
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features, align 16
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 4
  %19 = and i32 %18, 16
  %20 = or i32 %19, %maccr.2
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %23) #16, !srcloc !220
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ftgmac100_rx_packet_error(ptr nocapture noundef readonly %priv, i32 noundef %status) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %and = and i32 %status, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %2 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %status, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %4 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_crc_errors, align 8
  %inc6 = add i32 %5, 1
  store i32 %inc6, ptr %rx_crc_errors, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %and8 = and i32 %status, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %6 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_length_errors, align 8
  %inc12 = add i32 %7, 1
  store i32 %inc12, ptr %rx_length_errors, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_alloc_rx_buf(ptr nocapture noundef readonly %priv, i32 noundef %entry1, ptr nocapture noundef writeonly %rxdes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1538, i32 noundef 2592) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end26.sink.split_crit_edge, label %if.then8

if.then.if.end26.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.sink.split

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.36) #19
  br label %if.end26.sink.split

if.else:                                          ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %dev = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 20
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #16
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !222

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #16
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i1 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i1, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef -1) #16
  br label %if.then19

dma_map_single_attrs.exit:                        ; preds = %if.else
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef %add.ptr.i.i.i, i32 noundef 1536) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #16
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef %call41.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then19_crit_edge, label %dma_map_single_attrs.exit.if.end26_crit_edge

dma_map_single_attrs.exit.if.end26_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

dma_map_single_attrs.exit.if.then19_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then19

if.then19:                                        ; preds = %dma_map_single_attrs.exit.if.then19_crit_edge, %dma_map_single_attrs.exit.thread
  %call20 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end23_crit_edge, label %if.then22

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #19
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then19.if.end23_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #16
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.end23, %if.then8, %if.then.if.end26.sink.split_crit_edge
  %rx_scratch_dma24 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 18
  %18 = ptrtoint ptr %rx_scratch_dma24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_scratch_dma24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %dma_map_single_attrs.exit.if.end26_crit_edge
  %skb.0 = phi ptr [ %call.i.i, %dma_map_single_attrs.exit.if.end26_crit_edge ], [ null, %if.end26.sink.split ]
  %map.0 = phi i32 [ %call41.i, %dma_map_single_attrs.exit.if.end26_crit_edge ], [ %19, %if.end26.sink.split ]
  %err.0 = phi i32 [ 0, %dma_map_single_attrs.exit.if.end26_crit_edge ], [ -12, %if.end26.sink.split ]
  %rx_skbs = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 5
  %20 = ptrtoint ptr %rx_skbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_skbs, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %entry1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb.0, ptr %arrayidx, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %map.0)
  %rxdes3 = getelementptr inbounds %struct.ftgmac100_rxdes, ptr %rxdes, i32 0, i32 3
  %24 = ptrtoint ptr %rxdes3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rxdes3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !235
  %rx_q_entries = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_q_entries, align 8
  %sub = add i32 %26, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %entry1)
  %cmp = icmp eq i32 %sub, %entry1
  br i1 %cmp, label %if.then27, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then27:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %rxdes0_edorr_mask = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 7
  %27 = ptrtoint ptr %rxdes0_edorr_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxdes0_edorr_mask, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end26.if.end30_crit_edge
  %storemerge = phi i32 [ %29, %if.then27 ], [ 0, %if.end26.if.end30_crit_edge ]
  %30 = ptrtoint ptr %rxdes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge, ptr %rxdes, align 16
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ncsi_stop_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_commit_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_reset(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftgmac100_reset.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftgmac100_reset, %if.then)) #16
          to label %do.end6 [label %if.then], !srcloc !223

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ftgmac100_reset.__UNIQUE_ID_ddebug505, ptr noundef %1, ptr noundef nonnull @.str.46) #16
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void @rtnl_lock() #16
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %do.end6.if.end10_crit_edge, label %if.then8

do.end6.if.end10_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.end6.if.end10_crit_edge
  %mii_bus = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 24
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end14.bail_crit_edge, label %if.end17

if.end14.bail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %bail

if.end17:                                         ; preds = %if.end14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 12
  %11 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.not.i.i = icmp eq i32 %12, %10
  br i1 %cmp.not.i.i, label %if.end17.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end17.netif_trans_update.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %10, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end17.netif_trans_update.exit_crit_edge
  %napi = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 22
  tail call void @napi_disable(ptr noundef %napi) #16
  tail call fastcc void @local_bh_disable() #16
  %14 = tail call i32 @llvm.read_register.i32(metadata !207) #16
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp13.not.i = icmp eq i32 %19, 0
  br i1 %cmp13.not.i, label %netif_trans_update.exit.netif_tx_disable.exit_crit_edge, label %netif_trans_update.exit.for.body.i_crit_edge

netif_trans_update.exit.for.body.i_crit_edge:     ; preds = %netif_trans_update.exit
  br label %for.body.i

netif_trans_update.exit.netif_tx_disable.exit_crit_edge: ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %netif_trans_update.exit.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %netif_trans_update.exit.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %21, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %21, i32 %i.014.i, i32 11
  %22 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %17, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %21, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %23 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %24 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %netif_trans_update.exit.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %base.i = getelementptr inbounds %struct.ftgmac100, ptr %priv, i32 0, i32 1
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #16, !srcloc !220
  %call18 = tail call fastcc i32 @ftgmac100_reset_and_config_mac(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %netif_tx_disable.exit.if.end21_crit_edge, label %if.then20

netif_tx_disable.exit.if.end21_crit_edge:         ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then20:                                        ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #19
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %netif_tx_disable.exit.if.end21_crit_edge
  tail call fastcc void @ftgmac100_free_buffers(ptr noundef %priv)
  %call22 = tail call fastcc i32 @ftgmac100_init_all(ptr noundef %priv, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftgmac100_reset.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftgmac100_reset, %if.then36)) #16
          to label %bail [label %if.then36], !srcloc !223

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ftgmac100_reset.__UNIQUE_ID_ddebug506, ptr noundef %1, ptr noundef nonnull @.str.48) #16
  br label %bail

bail:                                             ; preds = %if.then36, %if.end21, %if.end14.bail_crit_edge
  %28 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mii_bus, align 4
  %tobool43.not = icmp eq ptr %29, null
  br i1 %tobool43.not, label %bail.if.end47_crit_edge, label %if.then44

bail.if.end47_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.then44:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #18
  %mdio_lock46 = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock46) #16
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %bail.if.end47_crit_edge
  %30 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phydev, align 16
  %tobool49.not = icmp eq ptr %31, null
  br i1 %tobool49.not, label %if.end47.if.end53_crit_edge, label %if.then50

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %lock52 = getelementptr inbounds %struct.phy_device, ptr %31, i32 0, i32 32
  tail call void @mutex_unlock(ptr noundef %lock52) #16
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_mdiobus_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !217
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %and = and i32 %5, 63
  %and3 = shl i32 %phy_addr, 16
  %shl = and i32 %and3, 2031616
  %and4 = shl i32 %regnum, 21
  %shl5 = and i32 %and4, 65011712
  %or = or i32 %shl, %shl5
  %or6 = or i32 %or, %and
  %or7 = or i32 %or6, 67108864
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %8 = tail call i32 @llvm.bswap.i32(i32 %or7) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %8) #16, !srcloc !220
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 96
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %if.end.8.if.then_crit_edge, %if.end.7.if.then_crit_edge, %if.end.6.if.then_crit_edge, %if.end.5.if.then_crit_edge, %if.end.4.if.then_crit_edge, %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 100
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #16, !srcloc !217
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %17 = lshr i32 %16, 16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 21474800) #16
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr11.1 = getelementptr i8, ptr %20, i32 96
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.1) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp14.1 = icmp eq i32 %22, 0
  br i1 %cmp14.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 21474800) #16
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr11.2 = getelementptr i8, ptr %25, i32 96
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.2) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp14.2 = icmp eq i32 %27, 0
  br i1 %cmp14.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 21474800) #16
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr11.3 = getelementptr i8, ptr %30, i32 96
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.3) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp14.3 = icmp eq i32 %32, 0
  br i1 %cmp14.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 21474800) #16
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr11.4 = getelementptr i8, ptr %35, i32 96
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.4) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp14.4 = icmp eq i32 %37, 0
  br i1 %cmp14.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 21474800) #16
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr11.5 = getelementptr i8, ptr %40, i32 96
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.5) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %42 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp14.5 = icmp eq i32 %42, 0
  br i1 %cmp14.5, label %if.end.4.if.then_crit_edge, label %if.end.5

if.end.4.if.then_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 21474800) #16
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr11.6 = getelementptr i8, ptr %45, i32 96
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.6) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp14.6 = icmp eq i32 %47, 0
  br i1 %cmp14.6, label %if.end.5.if.then_crit_edge, label %if.end.6

if.end.5.if.then_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 21474800) #16
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr11.7 = getelementptr i8, ptr %50, i32 96
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.7) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp14.7 = icmp eq i32 %52, 0
  br i1 %cmp14.7, label %if.end.6.if.then_crit_edge, label %if.end.7

if.end.6.if.then_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 21474800) #16
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr11.8 = getelementptr i8, ptr %55, i32 96
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.8) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %57 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp14.8 = icmp eq i32 %57, 0
  br i1 %cmp14.8, label %if.end.7.if.then_crit_edge, label %if.end.8

if.end.7.if.then_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 21474800) #16
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr11.9 = getelementptr i8, ptr %60, i32 96
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.9) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp14.9 = icmp eq i32 %62, 0
  br i1 %cmp14.9, label %if.end.8.if.then_crit_edge, label %if.end.9

if.end.8.if.then_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 21474800) #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.65) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ -5, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftgmac100_mdiobus_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !217
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %and = and i32 %5, 63
  %and3 = shl i32 %phy_addr, 16
  %shl = and i32 %and3, 2031616
  %and4 = shl i32 %regnum, 21
  %shl5 = and i32 %and4, 65011712
  %or = or i32 %shl, %shl5
  %or6 = or i32 %or, %and
  %or7 = or i32 %or6, 134217728
  %conv = zext i16 %value to i32
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #16, !srcloc !220
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !219
  tail call void @arm_heavy_mb() #16
  %11 = tail call i32 @llvm.bswap.i32(i32 %or7) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #16, !srcloc !220
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #16
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr15.1 = getelementptr i8, ptr %18, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.1) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18.1 = icmp eq i32 %20, 0
  br i1 %cmp18.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #16
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr15.2 = getelementptr i8, ptr %23, i32 96
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.2) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp18.2 = icmp eq i32 %25, 0
  br i1 %cmp18.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #16
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr15.3 = getelementptr i8, ptr %28, i32 96
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.3) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp18.3 = icmp eq i32 %30, 0
  br i1 %cmp18.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 21474800) #16
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr15.4 = getelementptr i8, ptr %33, i32 96
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.4) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp18.4 = icmp eq i32 %35, 0
  br i1 %cmp18.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 21474800) #16
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr15.5 = getelementptr i8, ptr %38, i32 96
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.5) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp18.5 = icmp eq i32 %40, 0
  br i1 %cmp18.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #16
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr15.6 = getelementptr i8, ptr %43, i32 96
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.6) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp18.6 = icmp eq i32 %45, 0
  br i1 %cmp18.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 21474800) #16
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr15.7 = getelementptr i8, ptr %48, i32 96
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.7) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %50 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp18.7 = icmp eq i32 %50, 0
  br i1 %cmp18.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 21474800) #16
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr15.8 = getelementptr i8, ptr %53, i32 96
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.8) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %55 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp18.8 = icmp eq i32 %55, 0
  br i1 %cmp18.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 21474800) #16
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr15.9 = getelementptr i8, ptr %58, i32 96
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.9) #16, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !218
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp18.9 = icmp eq i32 %60, 0
  br i1 %cmp18.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 21474800) #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.66) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.9 ], [ 0, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !88, !89, !90, !92, !94, !96, !97, !98, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !122, !124, !126, !128, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__initcall__kmod_ftgmac100__508_2010_ftgmac100_driver_init6, !1, !"__initcall__kmod_ftgmac100__508_2010_ftgmac100_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 2010, i32 1}
!2 = !{ptr @__exitcall_ftgmac100_driver_exit, !1, !"__exitcall_ftgmac100_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author509, !4, !"__UNIQUE_ID_author509", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 2012, i32 1}
!5 = !{ptr @__UNIQUE_ID_description510, !6, !"__UNIQUE_ID_description510", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 2013, i32 1}
!7 = !{ptr @__UNIQUE_ID_file511, !8, !"__UNIQUE_ID_file511", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 2014, i32 1}
!9 = !{ptr @__UNIQUE_ID_license512, !8, !"__UNIQUE_ID_license512", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 2006, i32 12}
!12 = !{ptr @ftgmac100_driver, !13, !"ftgmac100_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 2002, i32 31}
!14 = !{ptr @ftgmac100_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1803, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1809, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ftgmac100_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ftgmac100_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1816, i32 3}
!27 = !{ptr @ftgmac100_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ftgmac100_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1832, i32 41}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1833, i32 34}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1834, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1848, i32 32}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1855, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ftgmac100_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ftgmac100_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1862, i32 39}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1879, i32 4}
!46 = !{ptr @ftgmac100_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ftgmac100_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1891, i32 45}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1904, i32 4}
!52 = !{ptr @ftgmac100_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ftgmac100_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1931, i32 32}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1938, i32 3}
!58 = !{ptr @ftgmac100_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ftgmac100_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1942, i32 22}
!62 = !{ptr @ftgmac100_ethtool_ops, !63, !"ftgmac100_ethtool_ops", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1140, i32 33}
!64 = !{ptr @ftgmac100_netdev_ops, !65, !"ftgmac100_netdev_ops", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1631, i32 36}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1485, i32 22}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1514, i32 22}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1521, i32 22}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 154, i32 28}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 133, i32 21}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 392, i32 24}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 400, i32 24}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1179, i32 9}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 720, i32 4}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ftgmac100_hard_start_xmit.__UNIQUE_ID_ddebug504, !87, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 748, i32 23}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 828, i32 22}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1307, i32 2}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ftgmac100_reset.__UNIQUE_ID_ddebug505, !95, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1331, i32 22}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1340, i32 2}
!102 = !{ptr @ftgmac100_reset.__UNIQUE_ID_ddebug506, !101, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 187, i32 3}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ftgmac100_initial_mac._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ftgmac100_initial_mac._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 204, i32 3}
!110 = !{ptr @ftgmac100_initial_mac._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ftgmac100_initial_mac._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 207, i32 3}
!114 = !{ptr @ftgmac100_initial_mac._entry.54, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ftgmac100_initial_mac._entry_ptr.56, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1726, i32 2}
!118 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ftgmac100_ncsi_handler.__UNIQUE_ID_ddebug507, !117, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!120 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1674, i32 24}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1675, i32 47}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1689, i32 3}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ftgmac100_setup_mdio._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ftgmac100_setup_mdio._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1023, i32 21}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1059, i32 21}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1448, i32 8}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1454, i32 23}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1462, i32 22}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/phy.h", i32 211, i32 10}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/phy.h", i32 213, i32 10}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/phy.h", i32 215, i32 10}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/phy.h", i32 217, i32 10}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/phy.h", i32 219, i32 10}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/phy.h", i32 221, i32 10}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/phy.h", i32 223, i32 10}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/phy.h", i32 225, i32 10}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/linux/phy.h", i32 227, i32 10}
!159 = distinct !{null, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/phy.h", i32 229, i32 10}
!161 = distinct !{null, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/phy.h", i32 231, i32 10}
!163 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/phy.h", i32 233, i32 10}
!165 = distinct !{null, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/phy.h", i32 235, i32 10}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/phy.h", i32 237, i32 10}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/phy.h", i32 239, i32 10}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/phy.h", i32 241, i32 10}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/phy.h", i32 243, i32 10}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/phy.h", i32 245, i32 10}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/phy.h", i32 247, i32 10}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/phy.h", i32 249, i32 10}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../include/linux/phy.h", i32 251, i32 10}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../include/linux/phy.h", i32 253, i32 10}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../include/linux/phy.h", i32 255, i32 10}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/phy.h", i32 257, i32 10}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/phy.h", i32 259, i32 10}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../include/linux/phy.h", i32 261, i32 10}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/phy.h", i32 263, i32 10}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/phy.h", i32 265, i32 10}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/phy.h", i32 267, i32 10}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/phy.h", i32 269, i32 10}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../include/linux/phy.h", i32 271, i32 10}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1756, i32 48}
!205 = !{ptr @ftgmac100_of_match, !206, !"ftgmac100_of_match", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/faraday/ftgmac100.c", i32 1996, i32 34}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 6299583}
!218 = !{i64 2153839932}
!219 = !{i64 2153841287}
!220 = !{i64 6299165}
!221 = !{i8 0, i8 2}
!222 = !{!"branch_weights", i32 2000, i32 1}
!223 = !{i64 2148772631, i64 2148772636, i64 2148772649, i64 2148772693, i64 2148772727, i64 2148772748}
!224 = !{!"auto-init"}
!225 = !{i32 0, i32 33}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{i64 2154663160, i64 2154663648, i64 2154663197, i64 2154663253, i64 2154663287, i64 2154663311, i64 2154663352, i64 2154663373, i64 2154663401, i64 2154663435}
!228 = !{i64 2158009846}
!229 = !{i64 2158010305}
!230 = !{i64 683297, i64 683358}
!231 = !{i64 686029}
!232 = !{i64 686314}
!233 = !{i64 2158006213}
!234 = !{i64 2158003370}
!235 = !{i64 2158002938}
