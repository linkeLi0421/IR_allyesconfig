; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mediatek/mtk_star_emac.c_pt.bc'
source_filename = "../drivers/net/ethernet/mediatek/mtk_star_emac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mtk_star_priv = type { ptr, ptr, ptr, [3 x %struct.clk_bulk_data], ptr, ptr, i32, %struct.mtk_star_ring, %struct.mtk_star_ring, ptr, %struct.napi_struct, ptr, i32, ptr, i32, i32, i32, i32, %struct.spinlock, %struct.rtnl_link_stats64 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mtk_star_ring = type { ptr, [128 x ptr], [128 x i32], i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mtk_star_ring_desc = type { i32, i32, i32, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_mtk_star_emac__356_1578_mtk_star_driver_init6 = internal global ptr @mtk_star_driver_init, section ".initcall6.init", align 4
@mtk_star_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_star_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_star_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_star_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_star_driver_exit = internal global ptr @mtk_star_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author357 = internal constant [69 x i8] c"mtk_star_emac.author=Bartosz Golaszewski <bgolaszewski@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [60 x i8] c"mtk_star_emac.description=Mediatek STAR Ethernet MAC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [63 x i8] c"mtk_star_emac.file=drivers/net/ethernet/mediatek/mtk_star_emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [26 x i8] c"mtk_star_emac.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_star_emac\00", [18 x i8] zeroinitializer }, align 32
@mtk_star_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8518-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8175-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mtk_star_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_star_suspend, ptr @mtk_star_resume, ptr @mtk_star_suspend, ptr @mtk_star_resume, ptr @mtk_star_suspend, ptr @mtk_star_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_star_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@mtk_star_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mtk_star_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mtk_star_emac:1481:(&mtk_star_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,pericfg\00", [47 x i8] zeroinitializer }, align 32
@mtk_star_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1488, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to lookup the PERICFG syscon\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_star_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/mediatek/mtk_star_emac.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_star_probe._entry_ptr = internal global ptr @mtk_star_probe._entry, section ".printk_index", align 4
@mtk_star_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1516, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported phy mode: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_star_probe._entry_ptr.11 = internal global ptr @mtk_star_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@mtk_star_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1522, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to retrieve the phy handle from device tree\0A\00", [44 x i8] zeroinitializer }, align 32
@mtk_star_probe._entry_ptr.15 = internal global ptr @mtk_star_probe._entry.13, section ".printk_index", align 4
@mtk_star_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1530, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported DMA mask\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_star_probe._entry_ptr.18 = internal global ptr @mtk_star_probe._entry.16, section ".printk_index", align 4
@mtk_star_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mtk_star_netdev_open, ptr @mtk_star_netdev_stop, ptr @mtk_star_netdev_start_xmit, ptr null, ptr null, ptr null, ptr @mtk_star_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @mtk_star_netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_star_netdev_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mtk_star_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @mtk_star_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk-mac-mdio\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to connect to PHY\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"setting hash bit timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to set hash bit\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMA mapping error of RX descriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_star_reset_counters.counter_regs = internal constant { [28 x i32], [48 x i8] } { [28 x i32] [i32 256, i32 260, i32 264, i32 268, i32 272, i32 276, i32 280, i32 284, i32 288, i32 292, i32 296, i32 300, i32 304, i32 308, i32 312, i32 316, i32 472, i32 476, i32 480, i32 484, i32 488, i32 492, i32 496, i32 500, i32 504, i32 508, i32 532, i32 536], [48 x i8] zeroinitializer }, align 32
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.51, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 127, i64 255]
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"mtk_star_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1570, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1572, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"mtk_star_of_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1559, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"mtk_star_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1567, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1470, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"mtk_star_regmap_config\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 271, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1480, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1486, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1488, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1515, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1520, i32 45 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1522, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1530, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"mtk_star_netdev_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1159, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"mtk_star_ethtool_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1177, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 42, i32 51 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 42, i32 59 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 42, i32 66 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 211, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 213, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 215, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 217, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 219, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 221, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 223, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 225, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 227, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 229, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 231, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 233, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 235, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 237, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 239, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 241, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 243, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 245, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 247, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 249, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 251, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 253, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 255, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 257, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 259, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 261, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 263, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 265, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 267, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 269, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 271, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1372, i32 44 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1387, i32 43 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1388, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 968, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 326, i32 6 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1153, i32 20 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1156, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1224, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"counter_regs\00", align 1
@___asan_gen_.267 = private constant [49 x i8] c"../drivers/net/ethernet/mediatek/mtk_star_emac.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 539, i32 28 }
@___asan_gen_.269 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__exitcall_mtk_star_driver_exit, ptr @__initcall__kmod_mtk_star_emac__356_1578_mtk_star_driver_init6, ptr @mtk_star_driver_exit, ptr @mtk_star_probe._entry, ptr @mtk_star_probe._entry.13, ptr @mtk_star_probe._entry.16, ptr @mtk_star_probe._entry.9, ptr @mtk_star_probe._entry_ptr, ptr @mtk_star_probe._entry_ptr.11, ptr @mtk_star_probe._entry_ptr.15, ptr @mtk_star_probe._entry_ptr.18, ptr @mtk_star_driver, ptr @.str, ptr @mtk_star_of_match, ptr @mtk_star_pm_ops, ptr @mtk_star_probe.__key, ptr @.str.1, ptr @mtk_star_probe._key, ptr @mtk_star_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @mtk_star_netdev_ops, ptr @mtk_star_ethtool_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @mtk_star_reset_counters.counter_regs, ptr @switch.table.phy_modes], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_star_reset_counters.counter_regs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_star_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_star_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_star_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node2, align 8
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev1, i32 noundef 2616, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %add.ptr.i, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %5 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 60, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1514, ptr %max_mtu, align 4
  %lock = getelementptr i8, ptr %call, i32 4684
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mtk_star_probe.__key, i16 noundef signext 3) #11
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @mtk_star_regmap_config, ptr noundef nonnull @mtk_star_probe._key, ptr noundef nonnull @.str.2) #11
  %regs = getelementptr i8, ptr %call, i32 2308
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %regs, align 4
  %cmp.i175 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.3) #11
  %pericfg = getelementptr i8, ptr %call, i32 2312
  %10 = ptrtoint ptr %pericfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %pericfg, align 8
  %cmp.i176 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #14
  %11 = ptrtoint ptr %pericfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pericfg, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call29, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %for.body.preheader

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end28
  %arrayidx35 = getelementptr i8, ptr %call, i32 2316
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.19, ptr %arrayidx35, align 4
  %arrayidx35.1 = getelementptr i8, ptr %call, i32 2324
  %16 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.20, ptr %arrayidx35.1, align 4
  %arrayidx35.2 = getelementptr i8, ptr %call, i32 2332
  %17 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.21, ptr %arrayidx35.2, align 4
  %clks36 = getelementptr i8, ptr %call, i32 2316
  %call37 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %clks36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %for.body.preheader
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef %clks36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end40
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef %clks36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks36) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end.i
  %call47 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %phy_intf = getelementptr i8, ptr %call, i32 4660
  %call51 = tail call i32 @of_get_phy_mode(ptr noundef %1, ptr noundef %phy_intf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end50
  %18 = ptrtoint ptr %phy_intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_intf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp55.not = icmp eq i32 %19, 7
  br i1 %cmp55.not, label %if.end63, label %do.end59

do.end59:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = tail call fastcc ptr @phy_modes(i32 noundef %19)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %call61) #14
  br label %cleanup

if.end63:                                         ; preds = %if.else
  %call64 = tail call fastcc ptr @of_parse_phandle(ptr noundef %1)
  %phy_node = getelementptr i8, ptr %call, i32 4656
  %20 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call64, ptr %phy_node, align 8
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %do.end70, label %if.end71

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.end71:                                         ; preds = %if.end63
  %21 = ptrtoint ptr %pericfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pericfg, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 964, i32 noundef 15, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %call72 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end78, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #14
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %dma_addr = getelementptr i8, ptr %call, i32 2348
  %call.i177 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %dma_addr, i32 noundef 3265, i32 noundef 0) #11
  %ring_base = getelementptr i8, ptr %call, i32 2340
  %23 = ptrtoint ptr %ring_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i177, ptr %ring_base, align 4
  %tobool81.not = icmp eq ptr %call.i177, null
  br i1 %tobool81.not, label %if.end78.cleanup_crit_edge, label %if.end83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %call.i.i178 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 8, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  tail call fastcc void @mtk_star_init_config(ptr noundef %add.ptr.i)
  %call84 = tail call fastcc i32 @mtk_star_mdio_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  %call88 = tail call i32 @platform_get_ethdev_address(ptr noundef %dev1, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %lor.lhs.false, label %if.end87.if.then91_crit_edge

if.end87.if.then91_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

lor.lhs.false:                                    ; preds = %if.end87
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr, align 64
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.if.then91_crit_edge

lor.lhs.false.if.then91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %or.i.i = or i32 %29, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then91_crit_edge, label %is_valid_ether_addr.exit.if.end92_crit_edge

is_valid_ether_addr.exit.if.end92_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

is_valid_ether_addr.exit.if.then91_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

if.then91:                                        ; preds = %is_valid_ether_addr.exit.if.then91_crit_edge, %lor.lhs.false.if.then91_crit_edge, %if.end87.if.then91_crit_edge
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %is_valid_ether_addr.exit.if.end92_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %33 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mtk_star_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %34 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mtk_star_ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call, i32 4432
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @mtk_star_poll, i32 noundef 64) #11
  %call93 = tail call i32 @devm_register_netdev(ptr noundef %dev1, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end83.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %do.end77, %do.end70, %do.end59, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.then3.i, %if.end40.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end25, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ %9, %if.then15 ], [ %13, %do.end25 ], [ -22, %do.end59 ], [ %call72, %do.end77 ], [ %call93, %if.end92 ], [ -19, %do.end70 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call37, %for.body.preheader.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ -12, %if.end78.cleanup_crit_edge ], [ %call84, %if.end83.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @mtk_star_clk_disable_unprepare, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clks.i = getelementptr inbounds %struct.mtk_star_priv, ptr %data, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks.i) #11
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_star_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clks = getelementptr inbounds %struct.mtk_star_priv, ptr %data, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks) #11
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.52, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #5 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #11
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #11
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_star_init_config(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 148, i32 noundef 7) #11
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 172, i32 noundef 255, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_star_mdio_init(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %of_node2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node2, align 8
  %call3 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.53) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call3) #11
  br i1 %call4, label %if.end6, label %if.end.out_put_node_crit_edge

if.end.out_put_node_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_node

if.end6:                                          ; preds = %if.end
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %3, i32 noundef 0) #11
  %mii = getelementptr i8, ptr %ndev, i32 4424
  %6 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %mii, align 8
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.out_put_node_crit_edge, label %if.end11

if.end6.out_put_node_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_node

if.end11:                                         ; preds = %if.end6
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end11.dev_name.exit_crit_edge ]
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.54, ptr noundef %retval.0.i)
  %11 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mii, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.55, ptr %name, align 4
  %14 = load ptr, ptr %mii, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %parent, align 4
  %16 = load ptr, ptr %mii, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mtk_star_mdio_read, ptr %read, align 4
  %18 = load ptr, ptr %mii, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mtk_star_mdio_write, ptr %write, align 8
  %20 = load ptr, ptr %mii, align 8
  %priv20 = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %priv20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %priv20, align 8
  %22 = load ptr, ptr %mii, align 8
  %call22 = tail call i32 @devm_of_mdiobus_register(ptr noundef %3, ptr noundef %22, ptr noundef nonnull %call3) #11
  br label %out_put_node

out_put_node:                                     ; preds = %dev_name.exit, %if.end6.out_put_node_crit_edge, %if.end.out_put_node_crit_edge
  %ret.0 = phi i32 [ %call22, %dev_name.exit ], [ -19, %if.end.out_put_node_crit_edge ], [ -12, %if.end6.out_put_node_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put_node ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #11
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #11
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #11
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -2128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !155
  %regs.i = getelementptr i8, ptr %napi, i32 -2124
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 80, ptr noundef nonnull %val.i) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i.i, align 4, !annotation !155
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 80, ptr noundef nonnull %val.i.i) #11
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 80, i32 noundef %9) #11
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_ring.i = getelementptr i8, ptr %napi, i32 -2080
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %lock.i = getelementptr i8, ptr %napi, i32 252
  call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %head.i.i.i = getelementptr i8, ptr %napi, i32 -1052
  %tail.i.i.i = getelementptr i8, ptr %napi, i32 -1048
  %14 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head.i.i.i, align 4
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i.not26.i = icmp eq i32 %15, %17
  br i1 %cmp.i.not26.i, label %if.then.mtk_star_tx_complete_all.exit_crit_edge, label %if.end.i.preheader

if.then.mtk_star_tx_complete_all.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_tx_complete_all.exit

if.end.i.preheader:                               ; preds = %if.then
  %18 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring.i, align 4
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail.i.i.i, align 4
  %arrayidx.i.i.i45 = getelementptr %struct.mtk_star_ring_desc, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i45, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool.not.i.i.i46 = icmp sgt i32 %23, -1
  br i1 %tobool.not.i.i.i46, label %if.end.i.preheader.mtk_star_tx_complete_all.exit_crit_edge, label %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge

if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge: ; preds = %if.end.i.preheader
  br label %mtk_star_tx_complete_one.exit.i

if.end.i.preheader.mtk_star_tx_complete_all.exit_crit_edge: ; preds = %if.end.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_tx_complete_all.exit

for.cond.i:                                       ; preds = %mtk_star_tx_complete_one.exit.i
  %add.i = add i32 %57, %bytes_compl.027.i48
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head.i.i.i, align 4
  %26 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i.not.i = icmp eq i32 %25, %27
  br i1 %cmp.i.not.i, label %for.cond.i.for.end.i_crit_edge, label %if.end.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i:                                         ; preds = %for.cond.i
  %28 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring.i, align 4
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mtk_star_ring_desc, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !156
  %tobool.not.i.i.i = icmp sgt i32 %33, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge

if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_tx_complete_one.exit.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

mtk_star_tx_complete_one.exit.i:                  ; preds = %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge, %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge
  %34 = phi i32 [ %33, %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge ], [ %23, %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge ]
  %arrayidx.i.i.i49 = phi ptr [ %arrayidx.i.i.i, %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge ], [ %arrayidx.i.i.i45, %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge ]
  %35 = phi i32 [ %31, %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge ], [ %21, %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge ]
  %36 = phi ptr [ %29, %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge ], [ %19, %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge ]
  %bytes_compl.027.i48 = phi i32 [ %add.i, %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge ], [ 0, %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge ]
  %wake.0.off028.i47 = phi i1 [ true, %if.end.i.mtk_star_tx_complete_one.exit.i_crit_edge ], [ false, %if.end.i.preheader.mtk_star_tx_complete_one.exit.i_crit_edge ]
  %37 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 7, i32 2, i32 %38
  %39 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx5.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 7, i32 1, i32 %38
  %41 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx7.i.i.i, align 4
  store i32 0, ptr %arrayidx5.i.i.i, align 4
  %43 = load i32, ptr %tail.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 7, i32 1, i32 %43
  %44 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx13.i.i.i, align 4
  %and14.i.i.i = and i32 %34, -1073741824
  %data_ptr.i.i.i = getelementptr %struct.mtk_star_ring_desc, ptr %36, i32 %35, i32 1
  %45 = ptrtoint ptr %data_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %data_ptr.i.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %and14.i.i.i, ptr %arrayidx.i.i.i49, align 4
  %47 = load i32, ptr %tail.i.i.i, align 4
  %add.i.i.i = add i32 %47, 1
  %rem.i.i.i = and i32 %add.i.i.i, 127
  store i32 %rem.i.i.i, ptr %tail.i.i.i, align 4
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 133, i32 1
  %50 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i.i.i.i, align 8
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %52 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %53, %55
  call void @dma_unmap_page_attrs(ptr noundef %51, i32 noundef %40, i32 noundef %sub.i.i.i.i, i32 noundef 1, i32 noundef 0) #11
  %56 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i.i.i.i, align 4
  call void @__dev_kfree_skb_irq(ptr noundef %42, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i = icmp slt i32 %57, 0
  br i1 %cmp.i, label %mtk_star_tx_complete_one.exit.i.for.end.i_crit_edge, label %for.cond.i

mtk_star_tx_complete_one.exit.i.for.end.i_crit_edge: ; preds = %mtk_star_tx_complete_one.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %mtk_star_tx_complete_one.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %bytes_compl.0.lcssa.i = phi i32 [ %add.i, %for.cond.i.for.end.i_crit_edge ], [ %add.i, %if.end.i.for.end.i_crit_edge ], [ %bytes_compl.027.i48, %mtk_star_tx_complete_one.exit.i.for.end.i_crit_edge ]
  %wake.0.off0.lcssa.i = phi i1 [ true, %for.cond.i.for.end.i_crit_edge ], [ true, %if.end.i.for.end.i_crit_edge ], [ %wake.0.off028.i47, %mtk_star_tx_complete_one.exit.i.for.end.i_crit_edge ]
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %58 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.0.lcssa.i)
  %tobool.not.i.i19.i = icmp eq i32 %bytes_compl.0.lcssa.i, 0
  br i1 %tobool.not.i.i19.i, label %for.end.i.netdev_completed_queue.exit.i_crit_edge, label %if.end.i.i.i, !prof !157

for.end.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_completed_queue.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %bytes_compl.0.lcssa.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 15, i32 1
  %60 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %62 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i20.i = sub i32 %61, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i20.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i20.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.end14.i.i.i, !prof !157

if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_completed_queue.exit.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 13
  %call15.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_completed_queue.exit.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @netif_schedule_queue(ptr noundef %59) #11
  br i1 %wake.0.off0.lcssa.i, label %if.then17.i.i.i.land.lhs.true.i_crit_edge, label %if.then17.i.i.i.mtk_star_tx_complete_all.exit_crit_edge

if.then17.i.i.i.mtk_star_tx_complete_all.exit_crit_edge: ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_tx_complete_all.exit

if.then17.i.i.i.land.lhs.true.i_crit_edge:        ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

netdev_completed_queue.exit.i:                    ; preds = %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, %for.end.i.netdev_completed_queue.exit.i_crit_edge
  br i1 %wake.0.off0.lcssa.i, label %netdev_completed_queue.exit.i.land.lhs.true.i_crit_edge, label %netdev_completed_queue.exit.i.mtk_star_tx_complete_all.exit_crit_edge

netdev_completed_queue.exit.i.mtk_star_tx_complete_all.exit_crit_edge: ; preds = %netdev_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_tx_complete_all.exit

netdev_completed_queue.exit.i.land.lhs.true.i_crit_edge: ; preds = %netdev_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %netdev_completed_queue.exit.i.land.lhs.true.i_crit_edge, %if.then17.i.i.i.land.lhs.true.i_crit_edge
  %64 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i22.i = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %state.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %state.i.i22.i, align 4
  %and1.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.mtk_star_tx_complete_all.exit_crit_edge, label %if.then6.i

land.lhs.true.i.mtk_star_tx_complete_all.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_tx_complete_all.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_tx_wake_queue(ptr noundef %65) #11
  br label %mtk_star_tx_complete_all.exit

mtk_star_tx_complete_all.exit:                    ; preds = %if.then6.i, %land.lhs.true.i.mtk_star_tx_complete_all.exit_crit_edge, %netdev_completed_queue.exit.i.mtk_star_tx_complete_all.exit_crit_edge, %if.then17.i.i.i.mtk_star_tx_complete_all.exit_crit_edge, %if.end.i.preheader.mtk_star_tx_complete_all.exit_crit_edge, %if.then.mtk_star_tx_complete_all.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  br label %if.end

if.end:                                           ; preds = %mtk_star_tx_complete_all.exit, %entry.if.end_crit_edge
  %and2 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp5.i = icmp sgt i32 %budget, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.then4.mtk_star_process_rx.exit_crit_edge

if.then4.mtk_star_process_rx.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_process_rx.exit

for.body.lr.ph.i:                                 ; preds = %if.then4
  %rx_ring.i.i = getelementptr i8, ptr %napi, i32 -1044
  %lock.i.i = getelementptr i8, ptr %napi, i32 252
  %tail.i.i.i28 = getelementptr i8, ptr %napi, i32 -12
  %head.i.i.i.i = getelementptr i8, ptr %napi, i32 -16
  br label %for.body.i

for.body.i:                                       ; preds = %mtk_star_receive_packet.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %received.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %mtk_star_receive_packet.exit.i.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 8
  %parent.i.i.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 133, i32 1
  %70 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parent.i.i.i, align 8
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #11
  %72 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_ring.i.i, align 4
  %74 = ptrtoint ptr %tail.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tail.i.i.i28, align 4
  %arrayidx.i.i.i29 = getelementptr %struct.mtk_star_ring_desc, ptr %73, i32 %75
  %76 = ptrtoint ptr %arrayidx.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %arrayidx.i.i.i29, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %tobool.not.i.i.i30 = icmp sgt i32 %77, -1
  br i1 %tobool.not.i.i.i30, label %for.body.i.mtk_star_receive_packet.exit.i_crit_edge, label %if.end.i.i

for.body.i.mtk_star_receive_packet.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_receive_packet.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %and2.i.i.i = and i32 %77, 65535
  %78 = ptrtoint ptr %tail.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tail.i.i.i28, align 4
  %arrayidx5.i.i.i31 = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 8, i32 2, i32 %79
  %80 = ptrtoint ptr %arrayidx5.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx5.i.i.i31, align 4
  %arrayidx7.i.i.i32 = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 8, i32 1, i32 %79
  %82 = ptrtoint ptr %arrayidx7.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx7.i.i.i32, align 4
  store i32 0, ptr %arrayidx5.i.i.i31, align 4
  %84 = load i32, ptr %tail.i.i.i28, align 4
  %arrayidx13.i.i.i33 = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 8, i32 1, i32 %84
  %85 = ptrtoint ptr %arrayidx13.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx13.i.i.i33, align 4
  %and14.i.i.i34 = and i32 %77, -1073741824
  %data_ptr.i.i.i35 = getelementptr %struct.mtk_star_ring_desc, ptr %73, i32 %75, i32 1
  %86 = ptrtoint ptr %data_ptr.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 0, ptr %data_ptr.i.i.i35, align 4
  %87 = ptrtoint ptr %arrayidx.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %and14.i.i.i34, ptr %arrayidx.i.i.i29, align 4
  %88 = load i32, ptr %tail.i.i.i28, align 4
  %add.i.i.i36 = add i32 %88, 1
  %rem.i.i.i37 = and i32 %add.i.i.i36, 127
  store i32 %rem.i.i.i37, ptr %tail.i.i.i28, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #11
  %89 = and i32 %77, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %if.end9.i.i, label %if.end.i.i.push_new_skb.i.i_crit_edge

if.end.i.i.push_new_skb.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %push_new_skb.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1514, i32 noundef 2592) #11
  %tobool.not.i64.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i64.i.i, label %if.then12.i.i, label %if.end.i65.i.i

if.end.i65.i.i:                                   ; preds = %if.end9.i.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %91 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tail.i.i.i.i, align 8
  %93 = ptrtoint ptr %92 to i32
  %and.i.i.i = and i32 %93, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i65.i.i.if.end13.i.i_crit_edge, label %if.then3.i.i.i

if.end.i65.i.i.if.end13.i.i_crit_edge:            ; preds = %if.end.i65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub nuw nsw i32 16, %and.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %94 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %95, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %92, i32 %sub.i.i.i
  %96 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 36, i32 6
  %97 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_dropped.i.i, align 8
  %inc.i.i = add i32 %98, 1
  store i32 %inc.i.i, ptr %rx_dropped.i.i, align 8
  br label %push_new_skb.i.i

if.end13.i.i:                                     ; preds = %if.then3.i.i.i, %if.end.i65.i.i.if.end13.i.i_crit_edge
  %data.i2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %99 = ptrtoint ptr %data.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i2.i.i.i, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %100, i32 2
  store ptr %add.ptr.i3.i.i.i, ptr %data.i2.i.i.i, align 4
  %101 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i5.i.i.i = getelementptr i8, ptr %102, i32 2
  store ptr %add.ptr1.i5.i.i.i, ptr %tail.i.i.i.i, align 8
  %call14.i.i = call fastcc i32 @mtk_star_dma_map_rx(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i.i.i.i) #11
  call void @debug_dma_mapping_error(ptr noundef %71, i32 noundef %call14.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call14.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.then17.i.i, label %if.end21.i.i

if.then17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped19.i.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 36, i32 6
  %103 = ptrtoint ptr %rx_dropped19.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_dropped19.i.i, align 8
  %inc20.i.i = add i32 %104, 1
  store i32 %inc20.i.i, ptr %rx_dropped19.i.i, align 8
  call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.61) #14
  br label %push_new_skb.i.i

if.end21.i.i:                                     ; preds = %if.end13.i.i
  %105 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr, align 8
  %parent.i.i.i.i38 = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 133, i32 1
  %107 = ptrtoint ptr %parent.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %parent.i.i.i.i38, align 8
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 7
  %109 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.i.not.i.i.i.i = icmp eq i32 %110, 0
  br i1 %tobool.i.not.i.i.i.i, label %cond.false.i.i.i.i, label %if.end21.i.i.mtk_star_dma_unmap_rx.exit.i.i_crit_edge

if.end21.i.i.mtk_star_dma_unmap_rx.exit.i.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_dma_unmap_rx.exit.i.i

cond.false.i.i.i.i:                               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 17
  %111 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i68.i.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 16
  %113 = ptrtoint ptr %tail.i.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %tail.i.i68.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %112 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %114 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  br label %mtk_star_dma_unmap_rx.exit.i.i

mtk_star_dma_unmap_rx.exit.i.i:                   ; preds = %cond.false.i.i.i.i, %if.end21.i.i.mtk_star_dma_unmap_rx.exit.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i.i, %cond.false.i.i.i.i ], [ 0, %if.end21.i.i.mtk_star_dma_unmap_rx.exit.i.i_crit_edge ]
  call void @dma_unmap_page_attrs(ptr noundef %108, i32 noundef %81, i32 noundef %cond.i.i.i.i, i32 noundef 2, i32 noundef 0) #11
  %call23.i.i = call ptr @skb_put(ptr noundef %83, i32 noundef %and2.i.i.i) #11
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 15
  %115 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  store i16 %bf.clear.i.i, ptr %ip_summed.i.i, align 8
  %call26.i.i = call zeroext i16 @eth_type_trans(ptr noundef %83, ptr noundef %69) #11
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 15, i32 0, i32 18
  %116 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %call26.i.i, ptr %protocol.i.i, align 8
  %117 = getelementptr inbounds %struct.anon.44, ptr %83, i32 0, i32 2
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %69, ptr %117, align 8
  %call30.i.i = call i32 @netif_receive_skb(ptr noundef %83) #11
  br label %push_new_skb.i.i

push_new_skb.i.i:                                 ; preds = %mtk_star_dma_unmap_rx.exit.i.i, %if.then17.i.i, %if.then12.i.i, %if.end.i.i.push_new_skb.i.i_crit_edge
  %desc_data.sroa.10.1.i.i = phi i32 [ %81, %if.then12.i.i ], [ %call14.i.i, %mtk_star_dma_unmap_rx.exit.i.i ], [ %81, %if.then17.i.i ], [ %81, %if.end.i.i.push_new_skb.i.i_crit_edge ]
  %new_skb.0.i.i = phi ptr [ %83, %if.then12.i.i ], [ %call.i.i.i.i.i, %mtk_star_dma_unmap_rx.exit.i.i ], [ %83, %if.then17.i.i ], [ %83, %if.end.i.i.push_new_skb.i.i_crit_edge ]
  %data_len.i.i.i.i39 = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0.i.i, i32 0, i32 7
  %119 = ptrtoint ptr %data_len.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i.i.i.i39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i.not.i.i.i = icmp eq i32 %120, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %push_new_skb.i.i.skb_tailroom.exit.i.i_crit_edge

push_new_skb.i.i.skb_tailroom.exit.i.i_crit_edge: ; preds = %push_new_skb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %push_new_skb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0.i.i, i32 0, i32 17
  %121 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %end.i.i.i, align 4
  %tail.i69.i.i = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0.i.i, i32 0, i32 16
  %123 = ptrtoint ptr %tail.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tail.i69.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %push_new_skb.i.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %push_new_skb.i.i.skb_tailroom.exit.i.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #11
  %125 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx_ring.i.i, align 4
  %127 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %head.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mtk_star_ring_desc, ptr %126, i32 %128
  %129 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 8, i32 1, i32 %128
  %131 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %new_skb.0.i.i, ptr %arrayidx3.i.i.i.i, align 4
  %132 = load i32, ptr %head.i.i.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr, i32 0, i32 8, i32 2, i32 %132
  %133 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %desc_data.sroa.10.1.i.i, ptr %arrayidx5.i.i.i.i, align 4
  %or6.i.i.i.i = or i32 %130, %cond.i.i.i
  %data_ptr.i.i.i.i = getelementptr %struct.mtk_star_ring_desc, ptr %126, i32 %128, i32 1
  %134 = ptrtoint ptr %data_ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %desc_data.sroa.10.1.i.i, ptr %data_ptr.i.i.i.i, align 4
  store volatile i32 %or6.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %or6.i.i.i.i, 2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %135 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 %and.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %136 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %head.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %137, 1
  %rem.i.i.i.i = and i32 %add.i.i.i.i, 127
  store i32 %rem.i.i.i.i, ptr %head.i.i.i.i, align 4
  br label %mtk_star_receive_packet.exit.i

mtk_star_receive_packet.exit.i:                   ; preds = %skb_tailroom.exit.i.i, %for.body.i.mtk_star_receive_packet.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #11
  %inc.i = add nuw nsw i32 %received.06.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %budget)
  %cmp.i40 = icmp sge i32 %inc.i, %budget
  %138 = or i1 %cmp.i40, %tobool.not.i.i.i30
  br i1 %138, label %mtk_star_receive_packet.exit.i.mtk_star_process_rx.exit_crit_edge, label %mtk_star_receive_packet.exit.i.for.body.i_crit_edge

mtk_star_receive_packet.exit.i.for.body.i_crit_edge: ; preds = %mtk_star_receive_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mtk_star_receive_packet.exit.i.mtk_star_process_rx.exit_crit_edge: ; preds = %mtk_star_receive_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_process_rx.exit

mtk_star_process_rx.exit:                         ; preds = %mtk_star_receive_packet.exit.i.mtk_star_process_rx.exit_crit_edge, %if.then4.mtk_star_process_rx.exit_crit_edge
  %received.0.lcssa.i = phi i32 [ 0, %if.then4.mtk_star_process_rx.exit_crit_edge ], [ %inc.i, %mtk_star_receive_packet.exit.i.mtk_star_process_rx.exit_crit_edge ]
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 56, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end6

if.end6:                                          ; preds = %mtk_star_process_rx.exit, %if.end.if.end6_crit_edge
  %received.0 = phi i32 [ %received.0.lcssa.i, %mtk_star_process_rx.exit ], [ 0, %if.end.if.end6_crit_edge ]
  %and7 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then11, !prof !160

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mtk_star_update_stats(ptr noundef %add.ptr)
  call fastcc void @mtk_star_reset_counters(ptr noundef %add.ptr)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end6.if.end12_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %received.0, i32 %budget)
  %cmp = icmp slt i32 %received.0, %budget
  br i1 %cmp, label %if.then13, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %received.0) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end12.if.end15_crit_edge
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 4
  %call.i44 = call i32 @regmap_write(ptr noundef %142, i32 noundef 84, i32 noundef -329) #11
  ret i32 %received.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_register_netdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_mdio_read(ptr nocapture noundef readonly %mii, i32 noundef %phy_id, i32 noundef %regnum) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %mii, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !155
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.mtk_star_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef 32768) #11
  %shl = shl i32 %regnum, 8
  %and2 = and i32 %shl, 7936
  %or = or i32 %and2, 16384
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %call = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef %or) #11
  %call3 = tail call fastcc i32 @mtk_star_mdio_rwok_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %call8 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %data) #11
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %shr = lshr i32 %10, 16
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end6 ], [ -95, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_mdio_write(ptr nocapture noundef readonly %mii, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %data) #2 align 64 {
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
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %mii, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs.i = getelementptr inbounds %struct.mtk_star_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 32768) #11
  %conv = zext i16 %data to i32
  %shl = shl nuw i32 %conv, 16
  %shl3 = shl i32 %regnum, 8
  %and4 = and i32 %shl3, 7936
  %or = or i32 %shl, %and4
  %or5 = or i32 %or, 8192
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %or5) #11
  %call6 = tail call fastcc i32 @mtk_star_mdio_rwok_wait(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_star_mdio_rwok_wait(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 300000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1307) #11
  %regs = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %call849 = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call849)
  %tobool.not50 = icmp eq i32 %call849, 0
  br i1 %tobool.not50, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val) #11
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then21.lor.lhs.false_crit_edge, label %if.then21.lor.end_crit_edge

if.then21.lor.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

if.then21.lor.lhs.false_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and24 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %phi.sel = select i1 %tobool25.not, i32 -110, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then21.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool23.not40 = phi i32 [ %call18, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call849, %entry.lor.end_crit_edge ], [ %call8, %if.then21.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %tobool23.not40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_netdev_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mtk_star_enable(ptr noundef %ndev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_netdev_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mtk_star_disable(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_netdev_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %mtk_star_dma_map_tx.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.mtk_star_dma_map_tx.exit.thread_crit_edge, label %if.then.i.i, !prof !160

land.rhs.i.i.mtk_star_dma_map_tx.exit.thread_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_dma_map_tx.exit.thread

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %mtk_star_dma_map_tx.exit.thread

mtk_star_dma_map_tx.exit.thread:                  ; preds = %dev_name.exit.i.i, %land.rhs.i.i.mtk_star_dma_map_tx.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #11
  br label %err_drop_packet

mtk_star_dma_map_tx.exit:                         ; preds = %entry
  %sub.i.i = sub i32 %7, %9
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %5, i32 noundef %sub.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %5 to i32
  %sub.i4.i = add i32 %15, 1073741824
  %shr.i.i = lshr i32 %sub.i4.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %14, i32 %shr.i.i
  %and.i.i = and i32 %15, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #11
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i, label %mtk_star_dma_map_tx.exit.err_drop_packet_crit_edge, label %if.end

mtk_star_dma_map_tx.exit.err_drop_packet_crit_edge: ; preds = %mtk_star_dma_map_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_drop_packet

if.end:                                           ; preds = %mtk_star_dma_map_tx.exit
  %tx_ring = getelementptr i8, ptr %ndev, i32 2352
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %lock = getelementptr i8, ptr %ndev, i32 4684
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %18 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring, align 4
  %head.i.i = getelementptr i8, ptr %ndev, i32 3380
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mtk_star_ring_desc, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.mtk_star_ring, ptr %tx_ring, i32 0, i32 1, i32 %21
  %24 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %skb, ptr %arrayidx3.i.i, align 4
  %25 = load i32, ptr %head.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.mtk_star_ring, ptr %tx_ring, i32 0, i32 2, i32 %25
  %26 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call41.i.i, ptr %arrayidx5.i.i, align 4
  %or.i.i = or i32 %17, %23
  %or6.i.i = or i32 %or.i.i, 939524096
  %data_ptr.i.i = getelementptr %struct.mtk_star_ring_desc, ptr %19, i32 %21, i32 1
  %27 = ptrtoint ptr %data_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %call41.i.i, ptr %data_ptr.i.i, align 4
  store volatile i32 %or6.i.i, ptr %arrayidx.i.i, align 4
  %and.i.i28 = and i32 %or6.i.i, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %and.i.i28, ptr %arrayidx.i.i, align 4
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head.i.i, align 4
  %add.i.i = add i32 %30, 1
  %rem.i.i = and i32 %add.i.i, 127
  store i32 %rem.i.i, ptr %head.i.i, align 4
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %32)
  %cmp.i.i.i = icmp ugt i32 %32, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !157

do.body2.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !161
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 15, i32 2
  %35 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !162
  %36 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %37, %32
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %40 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i, !prof !160

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_sent_queue.exit

if.end.i.i:                                       ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !163
  %41 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %43 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %42, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i.netdev_sent_queue.exit_crit_edge, !prof !157

if.end.i.i.netdev_sent_queue.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #11
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %45 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %head.i.i, align 4
  %tail.i.i = getelementptr i8, ptr %ndev, i32 3384
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tail.i.i, align 4
  %sub.i.i30 = sub i32 %46, %48
  %49 = tail call i32 @llvm.abs.i32(i32 %sub.i.i30, i1 false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %49)
  %cmp.i31 = icmp eq i32 %49, 128
  br i1 %cmp.i31, label %if.then9, label %netdev_sent_queue.exit.if.end10_crit_edge

netdev_sent_queue.exit.if.end10_crit_edge:        ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %netdev_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i33 = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i33) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %netdev_sent_queue.exit.if.end10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %regs.i = getelementptr i8, ptr %ndev, i32 2308
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %call.i.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 52, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

err_drop_packet:                                  ; preds = %mtk_star_dma_map_tx.exit.err_drop_packet_crit_edge, %mtk_star_dma_map_tx.exit.thread
  tail call void @consume_skb(ptr noundef %skb) #11
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %54 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_drop_packet, %if.end10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_star_set_rx_mode(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regs = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 16, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %5)
  %cmp = icmp slt i32 %5, 257
  %and3 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %cmp, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.else10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %regs.i = getelementptr i8, ptr %ndev, i32 2308
  br label %for.body

for.cond:                                         ; preds = %mtk_star_set_hashbit.exit
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.093 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %call.i67 = tail call fastcc i32 @mtk_star_hash_wait_cmd_start(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i, label %mtk_star_set_hashbit.exit, label %for.body.hash_fail_crit_edge

for.body.hash_fail_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %hash_fail

mtk_star_set_hashbit.exit:                        ; preds = %for.body
  %or3.i = or i32 %i.093, -2147454976
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 28, i32 noundef %or3.i) #11
  %call5.i = tail call fastcc i32 @mtk_star_hash_wait_ok(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %for.cond, label %mtk_star_set_hashbit.exit.hash_fail_crit_edge

mtk_star_set_hashbit.exit.hash_fail_crit_edge:    ; preds = %mtk_star_set_hashbit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hash_fail

if.else10:                                        ; preds = %if.else
  %call.i68 = tail call fastcc i32 @mtk_star_hash_wait_cmd_start(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %mtk_star_reset_hash_table.exit, label %if.else10.hash_fail_crit_edge

if.else10.hash_fail_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %hash_fail

mtk_star_reset_hash_table.exit:                   ; preds = %if.else10
  %regs.i70 = getelementptr i8, ptr %ndev, i32 2308
  %8 = ptrtoint ptr %regs.i70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i70, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 28, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %10 = ptrtoint ptr %regs.i70 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i70, align 4
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 92, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %call4.i71 = tail call fastcc i32 @mtk_star_hash_wait_ok(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i71)
  %tobool12.not = icmp eq i32 %call4.i71, 0
  br i1 %tobool12.not, label %mtk_star_reset_hash_table.exit.for.cond16_crit_edge, label %mtk_star_reset_hash_table.exit.hash_fail_crit_edge

mtk_star_reset_hash_table.exit.hash_fail_crit_edge: ; preds = %mtk_star_reset_hash_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hash_fail

mtk_star_reset_hash_table.exit.for.cond16_crit_edge: ; preds = %mtk_star_reset_hash_table.exit
  br label %for.cond16

for.cond16:                                       ; preds = %mtk_star_set_hashbit.exit83.for.cond16_crit_edge, %mtk_star_reset_hash_table.exit.for.cond16_crit_edge
  %hw_addr.0.in = phi ptr [ %hw_addr.0, %mtk_star_set_hashbit.exit83.for.cond16_crit_edge ], [ %mc, %mtk_star_reset_hash_table.exit.for.cond16_crit_edge ]
  %12 = ptrtoint ptr %hw_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %hw_addr.0 = load ptr, ptr %hw_addr.0.in, align 4
  %cmp20.not = icmp eq ptr %hw_addr.0, %mc
  br i1 %cmp20.not, label %for.cond16.cleanup_crit_edge, label %for.body21

for.cond16.cleanup_crit_edge:                     ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body21:                                       ; preds = %for.cond16
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %hw_addr.0, i32 0, i32 2
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr, align 4
  %arrayidx24 = getelementptr %struct.netdev_hw_addr, ptr %hw_addr.0, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24, align 1
  %call.i74 = tail call fastcc i32 @mtk_star_hash_wait_cmd_start(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %mtk_star_set_hashbit.exit83, label %for.body21.hash_fail_crit_edge

for.body21.hash_fail_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %hash_fail

mtk_star_set_hashbit.exit83:                      ; preds = %for.body21
  %and22 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %and22, 8
  %conv25 = zext i8 %16 to i32
  %shl.masked = and i32 %shl, 256
  %and.i76 = or i32 %shl.masked, %conv25
  %or3.i77 = or i32 %and.i76, -2147454976
  %17 = ptrtoint ptr %regs.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i70, align 4
  %call4.i79 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 28, i32 noundef %or3.i77) #11
  %call5.i80 = tail call fastcc i32 @mtk_star_hash_wait_ok(ptr noundef %add.ptr.i) #11
  %tobool27.not = icmp eq i32 %call5.i80, 0
  br i1 %tobool27.not, label %mtk_star_set_hashbit.exit83.for.cond16_crit_edge, label %mtk_star_set_hashbit.exit83.hash_fail_crit_edge

mtk_star_set_hashbit.exit83.hash_fail_crit_edge:  ; preds = %mtk_star_set_hashbit.exit83
  call void @__sanitizer_cov_trace_pc() #13
  br label %hash_fail

mtk_star_set_hashbit.exit83.for.cond16_crit_edge: ; preds = %mtk_star_set_hashbit.exit83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond16

hash_fail:                                        ; preds = %mtk_star_set_hashbit.exit83.hash_fail_crit_edge, %for.body21.hash_fail_crit_edge, %mtk_star_reset_hash_table.exit.hash_fail_crit_edge, %if.else10.hash_fail_crit_edge, %mtk_star_set_hashbit.exit.hash_fail_crit_edge, %for.body.hash_fail_crit_edge
  %ret.0 = phi i32 [ %call4.i71, %mtk_star_reset_hash_table.exit.hash_fail_crit_edge ], [ %call.i68, %if.else10.hash_fail_crit_edge ], [ %call.i74, %for.body21.hash_fail_crit_edge ], [ %call5.i80, %mtk_star_set_hashbit.exit83.hash_fail_crit_edge ], [ %call.i67, %for.body.hash_fail_crit_edge ], [ %call5.i, %mtk_star_set_hashbit.exit.hash_fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %ret.0)
  %cmp39 = icmp eq i32 %ret.0, -110
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %hash_fail
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.59) #14
  br label %cleanup

if.else42:                                        ; preds = %hash_fail
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.60) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else42, %if.then41, %for.cond16.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_netdev_ioctl(ptr noundef %ndev, ptr noundef %req, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
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
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
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
define internal void @mtk_star_netdev_get_stats64(ptr noundef %ndev, ptr nocapture noundef writeonly %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call fastcc void @mtk_star_update_stats(ptr noundef %add.ptr.i)
  %stats1 = getelementptr i8, ptr %ndev, i32 4728
  %0 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 192)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_star_enable(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %regs.i = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 84, i32 noundef -1) #11
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %call.i65 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 52, i32 noundef 2) #11
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 56, i32 noundef 2) #11
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr.i, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %9, i32 1
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %13 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %15 to i32
  %shl6.i = shl nuw i32 %conv5.i, 24
  %arrayidx7.i = getelementptr i8, ptr %9, i32 3
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %17 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %shl9.i, %shl6.i
  %arrayidx11.i = getelementptr i8, ptr %9, i32 4
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %19 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %or14.i = or i32 %or10.i, %shl13.i
  %arrayidx15.i = getelementptr i8, ptr %9, i32 5
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %21 to i32
  %or17.i = or i32 %or14.i, %conv16.i
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %call18.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 20, i32 noundef %or.i) #11
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %call20.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 24, i32 noundef %or17.i) #11
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8, i32 noundef 1670144) #11
  %call.i67 = tail call fastcc i32 @mtk_star_hash_wait_cmd_start(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i, label %mtk_star_reset_hash_table.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mtk_star_reset_hash_table.exit:                   ; preds = %entry
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %call.i.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 28, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 92, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %call4.i = tail call fastcc i32 @mtk_star_hash_wait_ok(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %mtk_star_reset_hash_table.exit.cleanup_crit_edge

mtk_star_reset_hash_table.exit.cleanup_crit_edge: ; preds = %mtk_star_reset_hash_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mtk_star_reset_hash_table.exit
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 16, i32 noundef 17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 8, i32 noundef 4194304, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %ring_base.i = getelementptr i8, ptr %ndev, i32 2340
  %36 = ptrtoint ptr %ring_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring_base.i, align 4
  %descs_base.i = getelementptr i8, ptr %ndev, i32 2344
  %38 = ptrtoint ptr %descs_base.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %descs_base.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.036.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %descs_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %descs_base.i, align 8
  %arrayidx.i = getelementptr %struct.mtk_star_ring_desc, ptr %40, i32 %i.036.i
  %41 = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 12)
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -2147483648, ptr %arrayidx.i, align 4
  %44 = zext i32 %i.036.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.036.i, label %for.body.i.for.inc.i_crit_edge [
    i32 127, label %for.body.i.if.then.i_crit_edge
    i32 255, label %for.body.i.if.then.i_crit_edge114
  ]

for.body.i.if.then.i_crit_edge114:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge114
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1073741824, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %mtk_star_dma_init.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mtk_star_dma_init.exit:                           ; preds = %for.inc.i
  %tx_ring.i = getelementptr i8, ptr %ndev, i32 2352
  %46 = ptrtoint ptr %descs_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %descs_base.i, align 8
  %48 = getelementptr i8, ptr %ndev, i32 2356
  %49 = call ptr @memset(ptr %48, i32 0, i32 1024)
  %50 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %tx_ring.i, align 4
  %head.i.i = getelementptr i8, ptr %ndev, i32 3380
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %head.i.i, align 4
  %tail.i.i = getelementptr i8, ptr %ndev, i32 3384
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tail.i.i, align 4
  %rx_ring.i = getelementptr i8, ptr %ndev, i32 3388
  %add.ptr.i72 = getelementptr %struct.mtk_star_ring_desc, ptr %47, i32 128
  %53 = getelementptr i8, ptr %ndev, i32 3392
  %54 = call ptr @memset(ptr %53, i32 0, i32 1024)
  %55 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i72, ptr %rx_ring.i, align 4
  %head.i34.i = getelementptr i8, ptr %ndev, i32 4416
  %56 = ptrtoint ptr %head.i34.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %head.i34.i, align 4
  %tail.i35.i = getelementptr i8, ptr %ndev, i32 4420
  %57 = ptrtoint ptr %tail.i35.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %tail.i35.i, align 4
  %dma_addr.i = getelementptr i8, ptr %ndev, i32 2348
  %58 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_addr.i, align 4
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %call.i74 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 68, i32 noundef %59) #11
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 60, i32 noundef %59) #11
  %add.i = add i32 %59, 2048
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 72, i32 noundef %add.i) #11
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 64, i32 noundef %add.i) #11
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 133, i32 1
  %70 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parent.i.i, align 8
  br label %for.body.i77

for.body.i77:                                     ; preds = %skb_tailroom.exit.i.for.body.i77_crit_edge, %mtk_star_dma_init.exit
  %i.036.i76 = phi i32 [ 0, %mtk_star_dma_init.exit ], [ %inc.i81, %skb_tailroom.exit.i.for.body.i77_crit_edge ]
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1514, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i77.cleanup_crit_edge, label %if.end.i.i

for.body.i77.cleanup_crit_edge:                   ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i77
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %72 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i.i.i, align 8
  %74 = ptrtoint ptr %73 to i32
  %and.i.i = and i32 %74, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i78_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i78_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i78

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub nuw nsw i32 16, %and.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %75 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %76, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %73, i32 %sub.i.i
  %77 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end.i78

if.end.i78:                                       ; preds = %if.then3.i.i, %if.end.i.i.if.end.i78_crit_edge
  %data.i2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %78 = ptrtoint ptr %data.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i2.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %79, i32 2
  store ptr %add.ptr.i3.i.i, ptr %data.i2.i.i, align 4
  %80 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i5.i.i = getelementptr i8, ptr %81, i32 2
  store ptr %add.ptr1.i5.i.i, ptr %tail.i.i.i, align 8
  %call3.i = tail call fastcc i32 @mtk_star_dma_map_rx(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i.i.i) #11
  tail call void @debug_dma_mapping_error(ptr noundef %71, i32 noundef %call3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i.not.i = icmp eq i32 %call3.i, -1
  br i1 %cmp.i.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i78
  %82 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i79 = getelementptr %struct.mtk_star_ring_desc, ptr %83, i32 %i.036.i76
  %data_ptr.i = getelementptr %struct.mtk_star_ring_desc, ptr %83, i32 %i.036.i76, i32 1
  %84 = ptrtoint ptr %data_ptr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call3.i, ptr %data_ptr.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %85 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end7.i.skb_tailroom.exit.i_crit_edge

if.end7.i.skb_tailroom.exit.i_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 17
  %87 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i.i, align 4
  %89 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %90 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end7.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end7.i.skb_tailroom.exit.i_crit_edge ]
  %and.i = and i32 %cond.i.i, 65535
  %91 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i79, align 4
  %.masked.i = and i32 %92, 2147483647
  %and10.i = or i32 %.masked.i, %and.i
  store i32 %and10.i, ptr %arrayidx.i79, align 4
  %arrayidx11.i80 = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 8, i32 1, i32 %i.036.i76
  %93 = ptrtoint ptr %arrayidx11.i80 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i.i.i, ptr %arrayidx11.i80, align 4
  %arrayidx12.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 8, i32 2, i32 %i.036.i76
  %94 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call3.i, ptr %arrayidx12.i, align 4
  %inc.i81 = add nuw nsw i32 %i.036.i76, 1
  %exitcond.not.i82 = icmp eq i32 %inc.i81, 128
  br i1 %exitcond.not.i82, label %if.end12, label %skb_tailroom.exit.i.for.body.i77_crit_edge

skb_tailroom.exit.i.for.body.i77_crit_edge:       ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i77

if.end12:                                         ; preds = %skb_tailroom.exit.i
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq, align 4
  %call.i84 = tail call i32 @request_threaded_irq(i32 noundef %96, ptr noundef nonnull @mtk_star_handle_irq, ptr noundef null, i32 noundef 2, ptr noundef %ndev, ptr noundef %ndev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool14.not = icmp eq i32 %call.i84, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_free_skbs_crit_edge

if.end12.err_free_skbs_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_skbs

if.end16:                                         ; preds = %if.end12
  %napi = getelementptr i8, ptr %ndev, i32 4432
  tail call void @napi_enable(ptr noundef %napi) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %97 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %val.i.i, align 4, !annotation !155
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %call.i.i85 = call i32 @regmap_read(ptr noundef %99, i32 noundef 80, ptr noundef nonnull %val.i.i) #11
  %100 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %102 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %103, i32 noundef 80, i32 noundef %101) #11
  %104 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i, align 4
  %call.i87 = call i32 @regmap_write(ptr noundef %105, i32 noundef 84, i32 noundef -329) #11
  %phy_node = getelementptr i8, ptr %ndev, i32 4656
  %106 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy_node, align 8
  %phy_intf = getelementptr i8, ptr %ndev, i32 4660
  %108 = ptrtoint ptr %phy_intf to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %phy_intf, align 4
  %call18 = call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef %107, ptr noundef nonnull @mtk_star_adjust_link, i32 noundef 0, i32 noundef %109) #11
  %phydev = getelementptr i8, ptr %ndev, i32 4664
  %110 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call18, ptr %phydev, align 8
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.56) #14
  %111 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq, align 4
  %call25 = call ptr @free_irq(i32 noundef %112, ptr noundef %ndev) #11
  br label %err_free_skbs

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i, align 4
  %call.i.i89 = call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 52, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %115 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i, align 4
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 56, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %117 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %phydev, align 8
  call void @phy_start(ptr noundef %118) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %119 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %120, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %cleanup

err_free_skbs:                                    ; preds = %if.then21, %if.end12.err_free_skbs_crit_edge
  %ret.0 = phi i32 [ %call.i84, %if.end12.err_free_skbs_crit_edge ], [ -19, %if.then21 ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %err_free_skbs
  %i.011.i.i = phi i32 [ 0, %err_free_skbs ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 8, i32 2, i32 %i.011.i.i
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i.i90 = icmp eq i32 %122, 0
  br i1 %tobool.not.i.i90, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i91

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i91:                                     ; preds = %for.body.i.i
  %arrayidx3.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 8, i32 1, i32 %i.011.i.i
  %123 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx3.i.i, align 4
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 133, i32 1
  %127 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %parent.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 7
  %129 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.i.not.i.i.i = icmp eq i32 %130, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end.i.i91.mtk_star_dma_unmap_rx.exit.i_crit_edge

if.end.i.i91.mtk_star_dma_unmap_rx.exit.i_crit_edge: ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_dma_unmap_rx.exit.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 17
  %131 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 16
  %133 = ptrtoint ptr %tail.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tail.i.i.i92, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %132 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %mtk_star_dma_unmap_rx.exit.i

mtk_star_dma_unmap_rx.exit.i:                     ; preds = %cond.false.i.i.i, %if.end.i.i91.mtk_star_dma_unmap_rx.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end.i.i91.mtk_star_dma_unmap_rx.exit.i_crit_edge ]
  call void @dma_unmap_page_attrs(ptr noundef %128, i32 noundef %122, i32 noundef %cond.i.i.i, i32 noundef 2, i32 noundef 0) #11
  call void @consume_skb(ptr noundef %124) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %mtk_star_dma_unmap_rx.exit.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.i.cleanup_crit_edge, %if.end22, %if.then6.i, %for.body.i77.cleanup_crit_edge, %mtk_star_reset_hash_table.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call4.i, %mtk_star_reset_hash_table.exit.cleanup_crit_edge ], [ %call.i67, %entry.cleanup_crit_edge ], [ -12, %if.then6.i ], [ %ret.0, %for.inc.i.i.cleanup_crit_edge ], [ -12, %for.body.i77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_handle_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
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
  %regs.i = getelementptr i8, ptr %data, i32 2308
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 84, i32 noundef -1) #11
  %napi = getelementptr i8, ptr %data, i32 4432
  %call.i4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call.i4, label %if.then.i, label %if.then.if.end_crit_edge

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
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_star_adjust_link(ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr i8, ptr %ndev, i32 4664
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 8
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %link22 = getelementptr i8, ptr %ndev, i32 4668
  %4 = ptrtoint ptr %link22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool23.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %link22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %link22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %speed = getelementptr i8, ptr %ndev, i32 4672
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  %speed11 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %speed11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end15, label %if.end15.thread

if.end15:                                         ; preds = %if.end
  %pause = getelementptr i8, ptr %ndev, i32 4680
  %11 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pause, align 8
  %pause16 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %pause16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pause16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp17.not = icmp eq i32 %12, %14
  br i1 %cmp17.not, label %if.end32, label %if.end15.if.then18_crit_edge

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.end15.thread:                                  ; preds = %if.end
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %speed, align 8
  %pause65 = getelementptr i8, ptr %ndev, i32 4680
  %16 = ptrtoint ptr %pause65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pause65, align 8
  %pause1666 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %pause1666 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pause1666, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17.not67 = icmp eq i32 %17, %19
  br i1 %cmp17.not67, label %if.end15.thread.if.then34_crit_edge, label %if.end15.thread.if.then18_crit_edge

if.end15.thread.if.then18_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.end15.thread.if.then34_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.then18:                                        ; preds = %if.end15.thread.if.then18_crit_edge, %if.end15.if.then18_crit_edge
  %20 = phi i32 [ %19, %if.end15.thread.if.then18_crit_edge ], [ %14, %if.end15.if.then18_crit_edge ]
  %pause69 = phi ptr [ %pause65, %if.end15.thread.if.then18_crit_edge ], [ %pause, %if.end15.if.then18_crit_edge ]
  %21 = ptrtoint ptr %pause69 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pause69, align 8
  br label %if.then34

if.else:                                          ; preds = %entry
  br i1 %tobool23.not, label %if.else.if.end44_crit_edge, label %if.then24

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %link22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %link22, align 4
  br label %if.then34

if.end32:                                         ; preds = %if.end15
  br i1 %tobool23.not, label %if.end32.if.then34_crit_edge, label %if.end32.if.end44_crit_edge

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.then34:                                        ; preds = %if.end32.if.then34_crit_edge, %if.then24, %if.then18, %if.end15.thread.if.then34_crit_edge
  %23 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load36 = load i16, ptr %link, align 8
  %24 = and i16 %bf.load36, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool40.not = icmp eq i16 %24, 0
  br i1 %tobool40.not, label %if.then34.if.end42_crit_edge, label %if.then41

if.then34.if.end42_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then41:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %speed.i = getelementptr i8, ptr %ndev, i32 4672
  %25 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %26)
  %switch.selectcmp.i = icmp eq i32 %26, 100
  %switch.select.i = select i1 %switch.selectcmp.i, i32 15104, i32 14592
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %26)
  %switch.selectcmp40.i = icmp eq i32 %26, 1000
  %switch.select41.i = select i1 %switch.selectcmp40.i, i32 15616, i32 %switch.select.i
  %regs.i = getelementptr i8, ptr %ndev, i32 2308
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 4, i32 noundef %switch.select41.i) #11
  %pause.i = getelementptr i8, ptr %ndev, i32 4680
  %29 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pause.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 134217984
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 12, i32 noundef 268370176, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %33 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pause.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool17.not.i = icmp eq i32 %34, 0
  %val.2.i = select i1 %tobool17.not.i, i32 0, i32 67108864
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %call.i42.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 96, i32 noundef 134152192, i32 noundef %val.2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then34.if.end42_crit_edge
  %phydev43 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %37 = ptrtoint ptr %phydev43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phydev43, align 16
  tail call void @phy_print_status(ptr noundef %38) #11
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end32.if.end44_crit_edge, %if.else.if.end44_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_star_hash_wait_cmd_start(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 300000
  %regs = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %call243 = call i32 @regmap_read(ptr noundef %2, i32 noundef 28, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool.not44 = icmp eq i32 %call243, 0
  br i1 %tobool.not44, label %entry.if.end_crit_edge, label %entry.cond.end25_crit_edge

entry.cond.end25_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end25

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %cond.false.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cond.false22_crit_edge, label %land.lhs.true

if.end.cond.false22_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

land.lhs.true:                                    ; preds = %if.end
  %call7 = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 2147480) #11
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 28, ptr noundef nonnull %val) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.false.if.end_crit_edge, label %cond.false.cond.end25_crit_edge

cond.false.cond.end25_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end25

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call11 = call i32 @regmap_read(ptr noundef %9, i32 noundef 28, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool20.not = icmp eq i32 %call11, 0
  br i1 %tobool20.not, label %for.end.cond.false22_crit_edge, label %for.end.cond.end25_crit_edge

for.end.cond.end25_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end25

for.end.cond.false22_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

cond.false22:                                     ; preds = %for.end.cond.false22_crit_edge, %if.end.cond.false22_crit_edge
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and23 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond = select i1 %tobool24.not, i32 0, i32 -110
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false22, %for.end.cond.end25_crit_edge, %cond.false.cond.end25_crit_edge, %entry.cond.end25_crit_edge
  %cond26 = phi i32 [ %cond, %cond.false22 ], [ %call11, %for.end.cond.end25_crit_edge ], [ %call243, %entry.cond.end25_crit_edge ], [ %call2, %cond.false.cond.end25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %cond26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_star_hash_wait_ok(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 300000
  %regs = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %call258 = call i32 @regmap_read(ptr noundef %2, i32 noundef 28, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool.not59 = icmp eq i32 %call258, 0
  br i1 %tobool.not59, label %entry.if.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %cond.false.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.cond.false22_crit_edge

if.end.cond.false22_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

land.lhs.true:                                    ; preds = %if.end
  %call7 = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 2147480) #11
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 28, ptr noundef nonnull %val) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.false.if.end_crit_edge, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call11 = call i32 @regmap_read(ptr noundef %9, i32 noundef 28, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool20.not = icmp eq i32 %call11, 0
  br i1 %tobool20.not, label %for.end.cond.false22_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.cond.false22_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false22

cond.false22:                                     ; preds = %for.end.cond.false22_crit_edge, %if.end.cond.false22_crit_edge
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and23 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.false22.cleanup_crit_edge, label %if.end29

cond.false22.cleanup_crit_edge:                   ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %call31 = call i32 @regmap_test_bits(ptr noundef %13, i32 noundef 28, i32 noundef 65536) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %. = select i1 %tobool32.not, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %cond.false22.cleanup_crit_edge, %for.end.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end29 ], [ %call11, %for.end.cleanup_crit_edge ], [ -110, %cond.false22.cleanup_crit_edge ], [ %call258, %entry.cleanup_crit_edge ], [ %call2, %cond.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_test_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_star_dma_map_rx(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
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
  %add.ptr = getelementptr i8, ptr %5, i32 -2
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
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %skb_tailroom.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !160

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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %cond.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %add.ptr to i32
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
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_star_disable(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %napi = getelementptr i8, ptr %ndev, i32 4432
  tail call void @napi_disable(ptr noundef %napi) #11
  %regs.i = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 84, i32 noundef -1) #11
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 52, i32 noundef 2) #11
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 56, i32 noundef 2) #11
  %descs_base.i = getelementptr i8, ptr %ndev, i32 2344
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.04.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %descs_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %descs_base.i, align 8
  %arrayidx.i = getelementptr %struct.mtk_star_ring_desc, ptr %9, i32 %i.04.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %11, -2147483648
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %mtk_star_dma_disable.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mtk_star_dma_disable.exit:                        ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i.i, align 4, !annotation !155
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %call.i.i15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 80, ptr noundef nonnull %val.i.i) #11
  %15 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 80, i32 noundef %16) #11
  %phydev = getelementptr i8, ptr %ndev, i32 4664
  %19 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev, align 8
  call void @phy_stop(ptr noundef %20) #11
  %21 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phydev, align 8
  call void @phy_disconnect(ptr noundef %22) #11
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call3 = call ptr @free_irq(i32 noundef %24, ptr noundef %ndev) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %mtk_star_dma_disable.exit
  %i.011.i.i = phi i32 [ 0, %mtk_star_dma_disable.exit ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 8, i32 2, i32 %i.011.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %arrayidx3.i.i = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 8, i32 1, i32 %i.011.i.i
  %27 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3.i.i, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end.i.i.mtk_star_dma_unmap_rx.exit.i_crit_edge

if.end.i.i.mtk_star_dma_unmap_rx.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_star_dma_unmap_rx.exit.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %mtk_star_dma_unmap_rx.exit.i

mtk_star_dma_unmap_rx.exit.i:                     ; preds = %cond.false.i.i.i, %if.end.i.i.mtk_star_dma_unmap_rx.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end.i.i.mtk_star_dma_unmap_rx.exit.i_crit_edge ]
  call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %26, i32 noundef %cond.i.i.i, i32 noundef 2, i32 noundef 0) #11
  call void @consume_skb(ptr noundef %28) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %mtk_star_dma_unmap_rx.exit.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.body.i.i19_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.body.i.i19_crit_edge:             ; preds = %for.inc.i.i
  br label %for.body.i.i19

for.body.i.i19:                                   ; preds = %for.inc.i.i25.for.body.i.i19_crit_edge, %for.inc.i.i.for.body.i.i19_crit_edge
  %i.011.i.i16 = phi i32 [ %inc.i.i23, %for.inc.i.i25.for.body.i.i19_crit_edge ], [ 0, %for.inc.i.i.for.body.i.i19_crit_edge ]
  %arrayidx.i.i17 = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 7, i32 2, i32 %i.011.i.i16
  %39 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i18 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i18, label %for.body.i.i19.for.inc.i.i25_crit_edge, label %if.end.i.i22

for.body.i.i19.for.inc.i.i25_crit_edge:           ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i25

if.end.i.i22:                                     ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3.i.i20 = getelementptr %struct.mtk_star_priv, ptr %add.ptr.i, i32 0, i32 7, i32 1, i32 %i.011.i.i16
  %41 = ptrtoint ptr %arrayidx3.i.i20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx3.i.i20, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %parent.i.i.i21 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 133, i32 1
  %45 = ptrtoint ptr %parent.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i.i.i21, align 8
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %47 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 7
  %49 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %48, %50
  call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %40, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @consume_skb(ptr noundef %42) #11
  br label %for.inc.i.i25

for.inc.i.i25:                                    ; preds = %if.end.i.i22, %for.body.i.i19.for.inc.i.i25_crit_edge
  %inc.i.i23 = add nuw nsw i32 %i.011.i.i16, 1
  %exitcond.not.i.i24 = icmp eq i32 %inc.i.i23, 128
  br i1 %exitcond.not.i.i24, label %mtk_star_free_tx_skbs.exit, label %for.inc.i.i25.for.body.i.i19_crit_edge

for.inc.i.i25.for.body.i.i19_crit_edge:           ; preds = %for.inc.i.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i19

mtk_star_free_tx_skbs.exit:                       ; preds = %for.inc.i.i25
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_star_update_stats(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %val.i123 = alloca i32, align 4
  %val.i118 = alloca i32, align 4
  %val.i113 = alloca i32, align 4
  %val.i108 = alloca i32, align 4
  %val.i103 = alloca i32, align 4
  %val.i98 = alloca i32, align 4
  %val.i93 = alloca i32, align 4
  %val.i88 = alloca i32, align 4
  %val.i83 = alloca i32, align 4
  %val.i78 = alloca i32, align 4
  %val.i73 = alloca i32, align 4
  %val.i68 = alloca i32, align 4
  %val.i63 = alloca i32, align 4
  %val.i58 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !155
  %regs.i = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 256, ptr noundef nonnull %val.i) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %conv.i = zext i32 %4 to i64
  %5 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %stats1, align 8
  %add.i = add i64 %6, %conv.i
  store i64 %add.i, ptr %stats1, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %tx_packets = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i58) #11
  %7 = ptrtoint ptr %val.i58 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i58, align 4, !annotation !155
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %call.i60 = call i32 @regmap_read(ptr noundef %9, i32 noundef 296, ptr noundef nonnull %val.i58) #11
  %10 = ptrtoint ptr %val.i58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i58, align 4
  %conv.i61 = zext i32 %11 to i64
  %12 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_packets, align 8
  %add.i62 = add i64 %13, %conv.i61
  store i64 %add.i62, ptr %tx_packets, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i58) #11
  %rx_bytes = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i63) #11
  %14 = ptrtoint ptr %val.i63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i63, align 4, !annotation !155
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %call.i65 = call i32 @regmap_read(ptr noundef %16, i32 noundef 260, ptr noundef nonnull %val.i63) #11
  %17 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i63, align 4
  %conv.i66 = zext i32 %18 to i64
  %19 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_bytes, align 8
  %add.i67 = add i64 %20, %conv.i66
  store i64 %add.i67, ptr %rx_bytes, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i63) #11
  %tx_bytes = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i68) #11
  %21 = ptrtoint ptr %val.i68 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i68, align 4, !annotation !155
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %call.i70 = call i32 @regmap_read(ptr noundef %23, i32 noundef 300, ptr noundef nonnull %val.i68) #11
  %24 = ptrtoint ptr %val.i68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i68, align 4
  %conv.i71 = zext i32 %25 to i64
  %26 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_bytes, align 8
  %add.i72 = add i64 %27, %conv.i71
  store i64 %add.i72, ptr %tx_bytes, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i68) #11
  %multicast = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i73) #11
  %28 = ptrtoint ptr %val.i73 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i73, align 4, !annotation !155
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %call.i75 = call i32 @regmap_read(ptr noundef %30, i32 noundef 480, ptr noundef nonnull %val.i73) #11
  %31 = ptrtoint ptr %val.i73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i73, align 4
  %conv.i76 = zext i32 %32 to i64
  %33 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %multicast, align 8
  %add.i77 = add i64 %34, %conv.i76
  store i64 %add.i77, ptr %multicast, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i73) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i78) #11
  %35 = ptrtoint ptr %val.i78 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i78, align 4, !annotation !155
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %call.i80 = call i32 @regmap_read(ptr noundef %37, i32 noundef 496, ptr noundef nonnull %val.i78) #11
  %38 = ptrtoint ptr %val.i78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i78, align 4
  %conv.i81 = zext i32 %39 to i64
  %40 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %multicast, align 8
  %add.i82 = add i64 %41, %conv.i81
  store i64 %add.i82, ptr %multicast, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i78) #11
  %collisions = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i83) #11
  %42 = ptrtoint ptr %val.i83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val.i83, align 4, !annotation !155
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %call.i85 = call i32 @regmap_read(ptr noundef %44, i32 noundef 304, ptr noundef nonnull %val.i83) #11
  %45 = ptrtoint ptr %val.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i83, align 4
  %conv.i86 = zext i32 %46 to i64
  %47 = ptrtoint ptr %collisions to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %collisions, align 8
  %add.i87 = add i64 %48, %conv.i86
  store i64 %add.i87, ptr %collisions, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i83) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i88) #11
  %49 = ptrtoint ptr %val.i88 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %val.i88, align 4, !annotation !155
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %call.i90 = call i32 @regmap_read(ptr noundef %51, i32 noundef 508, ptr noundef nonnull %val.i88) #11
  %52 = ptrtoint ptr %val.i88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i88, align 4
  %conv.i91 = zext i32 %53 to i64
  %54 = ptrtoint ptr %collisions to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %collisions, align 8
  %add.i92 = add i64 %55, %conv.i91
  store i64 %add.i92, ptr %collisions, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i88) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i93) #11
  %56 = ptrtoint ptr %val.i93 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i93, align 4, !annotation !155
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  %call.i95 = call i32 @regmap_read(ptr noundef %58, i32 noundef 264, ptr noundef nonnull %val.i93) #11
  %59 = ptrtoint ptr %val.i93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i93, align 4
  %conv.i96 = zext i32 %60 to i64
  %61 = ptrtoint ptr %collisions to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %collisions, align 8
  %add.i97 = add i64 %62, %conv.i96
  store i64 %add.i97, ptr %collisions, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i93) #11
  %rx_length_errors = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i98) #11
  %63 = ptrtoint ptr %val.i98 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %val.i98, align 4, !annotation !155
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %call.i100 = call i32 @regmap_read(ptr noundef %65, i32 noundef 532, ptr noundef nonnull %val.i98) #11
  %66 = ptrtoint ptr %val.i98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i98, align 4
  %conv.i101 = zext i32 %67 to i64
  %68 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rx_length_errors, align 8
  %add.i102 = add i64 %69, %conv.i101
  store i64 %add.i102, ptr %rx_length_errors, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i98) #11
  %rx_over_errors = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i103) #11
  %70 = ptrtoint ptr %val.i103 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %val.i103, align 4, !annotation !155
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %call.i105 = call i32 @regmap_read(ptr noundef %72, i32 noundef 268, ptr noundef nonnull %val.i103) #11
  %73 = ptrtoint ptr %val.i103 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val.i103, align 4
  %conv.i106 = zext i32 %74 to i64
  %75 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %rx_over_errors, align 8
  %add.i107 = add i64 %76, %conv.i106
  store i64 %add.i107, ptr %rx_over_errors, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i103) #11
  %rx_crc_errors = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i108) #11
  %77 = ptrtoint ptr %val.i108 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %val.i108, align 4, !annotation !155
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %call.i110 = call i32 @regmap_read(ptr noundef %79, i32 noundef 276, ptr noundef nonnull %val.i108) #11
  %80 = ptrtoint ptr %val.i108 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i108, align 4
  %conv.i111 = zext i32 %81 to i64
  %82 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rx_crc_errors, align 8
  %add.i112 = add i64 %83, %conv.i111
  store i64 %add.i112, ptr %rx_crc_errors, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i108) #11
  %rx_frame_errors = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i113) #11
  %84 = ptrtoint ptr %val.i113 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %val.i113, align 4, !annotation !155
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i, align 4
  %call.i115 = call i32 @regmap_read(ptr noundef %86, i32 noundef 488, ptr noundef nonnull %val.i113) #11
  %87 = ptrtoint ptr %val.i113 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i113, align 4
  %conv.i116 = zext i32 %88 to i64
  %89 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %rx_frame_errors, align 8
  %add.i117 = add i64 %90, %conv.i116
  store i64 %add.i117, ptr %rx_frame_errors, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i113) #11
  %rx_fifo_errors = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i118) #11
  %91 = ptrtoint ptr %val.i118 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %val.i118, align 4, !annotation !155
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 4
  %call.i120 = call i32 @regmap_read(ptr noundef %93, i32 noundef 272, ptr noundef nonnull %val.i118) #11
  %94 = ptrtoint ptr %val.i118 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i118, align 4
  %conv.i121 = zext i32 %95 to i64
  %96 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %rx_fifo_errors, align 8
  %add.i122 = add i64 %97, %conv.i121
  store i64 %add.i122, ptr %rx_fifo_errors, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i118) #11
  %rx_errors = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 19, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i123) #11
  %98 = ptrtoint ptr %val.i123 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %val.i123, align 4, !annotation !155
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %call.i125 = call i32 @regmap_read(ptr noundef %100, i32 noundef 472, ptr noundef nonnull %val.i123) #11
  %101 = ptrtoint ptr %val.i123 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val.i123, align 4
  %conv.i126 = zext i32 %102 to i64
  %103 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %rx_errors, align 8
  %add.i127 = add i64 %104, %conv.i126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i123) #11
  %105 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %rx_length_errors, align 8
  %add = add i64 %106, %add.i127
  %107 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %rx_over_errors, align 8
  %add9 = add i64 %108, %add
  %109 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %rx_crc_errors, align 8
  %add12 = add i64 %110, %add9
  %111 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %rx_frame_errors, align 8
  %add15 = add i64 %112, %add12
  %113 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %rx_fifo_errors, align 8
  %add18 = add i64 %114, %add15
  %115 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %add18, ptr %rx_errors, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_star_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_star_reset_counters(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !155
  %regs = getelementptr inbounds %struct.mtk_star_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr [28 x i32], ptr @mtk_star_reset_counters.counter_regs, i32 0, i32 %i.03
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #11
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mtk_star_disable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clks = getelementptr i8, ptr %1, i32 2316
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks) #11
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_star_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clks = getelementptr i8, ptr %1, i32 2316
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef %clks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef %clks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @mtk_star_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.then7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.then7 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_mtk_star_emac__356_1578_mtk_star_driver_init6, !1, !"__initcall__kmod_mtk_star_emac__356_1578_mtk_star_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1578, i32 1}
!2 = !{ptr @__exitcall_mtk_star_driver_exit, !1, !"__exitcall_mtk_star_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author357, !4, !"__UNIQUE_ID_author357", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1580, i32 1}
!5 = !{ptr @__UNIQUE_ID_description358, !6, !"__UNIQUE_ID_description358", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1581, i32 1}
!7 = !{ptr @__UNIQUE_ID_file359, !8, !"__UNIQUE_ID_file359", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1582, i32 1}
!9 = !{ptr @__UNIQUE_ID_license360, !8, !"__UNIQUE_ID_license360", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1572, i32 11}
!12 = !{ptr @mtk_star_driver, !13, !"mtk_star_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1570, i32 31}
!14 = !{ptr @mtk_star_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1470, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mtk_star_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1480, i32 15}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1486, i32 8}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1488, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mtk_star_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_star_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1515, i32 3}
!32 = !{ptr @mtk_star_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_star_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1520, i32 45}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1522, i32 3}
!38 = !{ptr @mtk_star_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtk_star_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1530, i32 3}
!42 = !{ptr @mtk_star_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_star_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mtk_star_regmap_config, !45, !"mtk_star_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 271, i32 35}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 42, i32 51}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 42, i32 59}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 42, i32 66}
!52 = distinct !{null, !53, !"mtk_star_clk_names", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 42, i32 26}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/phy.h", i32 211, i32 10}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/phy.h", i32 213, i32 10}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/phy.h", i32 215, i32 10}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/phy.h", i32 217, i32 10}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/phy.h", i32 219, i32 10}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/phy.h", i32 221, i32 10}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/phy.h", i32 223, i32 10}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 225, i32 10}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 227, i32 10}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 229, i32 10}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 231, i32 10}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 233, i32 10}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 235, i32 10}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 237, i32 10}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 239, i32 10}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 241, i32 10}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/phy.h", i32 243, i32 10}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/phy.h", i32 245, i32 10}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/phy.h", i32 247, i32 10}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/phy.h", i32 249, i32 10}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/phy.h", i32 251, i32 10}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/phy.h", i32 253, i32 10}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/phy.h", i32 255, i32 10}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/phy.h", i32 257, i32 10}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/phy.h", i32 259, i32 10}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/phy.h", i32 261, i32 10}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/phy.h", i32 263, i32 10}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/phy.h", i32 265, i32 10}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/phy.h", i32 267, i32 10}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/phy.h", i32 269, i32 10}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/phy.h", i32 271, i32 10}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1372, i32 44}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1387, i32 43}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1388, i32 20}
!122 = !{ptr @mtk_star_netdev_ops, !123, !"mtk_star_netdev_ops", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1159, i32 36}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 968, i32 20}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!128 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"flags", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 354, i32 28}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1153, i32 20}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1156, i32 20}
!136 = !{ptr @mtk_star_ethtool_ops, !137, !"mtk_star_ethtool_ops", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1177, i32 33}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1224, i32 20}
!140 = !{ptr @mtk_star_reset_counters.counter_regs, !141, !"counter_regs", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 539, i32 28}
!142 = !{ptr @mtk_star_of_match, !143, !"mtk_star_of_match", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1559, i32 34}
!144 = !{ptr @mtk_star_pm_ops, !145, !"mtk_star_pm_ops", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mediatek/mtk_star_emac.c", i32 1567, i32 8}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
!156 = !{i64 2156671457}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{i64 2155846593}
!159 = !{i64 2156684601}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i64 2154896714, i64 2154897214, i64 2154896751, i64 2154896807, i64 2154896841, i64 2154896865, i64 2154896906, i64 2154896927, i64 2154896955, i64 2154896989}
!162 = !{i64 2154898058}
!163 = !{i64 2155845522}
