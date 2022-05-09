; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cirrus/ep93xx_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/cirrus/ep93xx_eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ep93xx_eth_data = type { [6 x i8], i8 }
%struct.ep93xx_descs = type { [64 x %struct.ep93xx_rdesc], [8 x %struct.ep93xx_tdesc], [64 x %struct.ep93xx_rstat], [8 x %struct.ep93xx_tstat] }
%struct.ep93xx_rdesc = type { i32, i32 }
%struct.ep93xx_tdesc = type { i32, i32 }
%struct.ep93xx_rstat = type { i32, i32 }
%struct.ep93xx_tstat = type { i32 }
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
%struct.ep93xx_priv = type { ptr, ptr, i32, ptr, i32, [64 x ptr], [8 x ptr], %struct.spinlock, i32, i32, i32, %struct.spinlock, i32, ptr, %struct.napi_struct, %struct.mii_if_info, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }

@__initcall__kmod_ep93xx_eth__339_871_ep93xx_eth_driver_init6 = internal global ptr @ep93xx_eth_driver_init, section ".initcall6.init", align 4
@ep93xx_eth_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ep93xx_eth_probe, ptr @ep93xx_eth_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ep93xx_eth_driver_exit = internal global ptr @ep93xx_eth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file340 = internal constant [55 x i8] c"ep93xx_eth.file=drivers/net/ethernet/cirrus/ep93xx_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [23 x i8] c"ep93xx_eth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias342 = internal constant [37 x i8] c"ep93xx_eth.alias=platform:ep93xx-eth\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep93xx-eth\00", [21 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ep93xx_eth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not reserve memory region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep93xx_eth_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/cirrus/ep93xx_eth.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ep93xx_eth_probe._entry_ptr = internal global ptr @ep93xx_eth_probe._entry, section ".printk_index", align 4
@ep93xx_eth_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to ioremap ethernet registers\0A\00", [58 x i8] zeroinitializer }, align 32
@ep93xx_eth_probe._entry_ptr.8 = internal global ptr @ep93xx_eth_probe._entry.6, section ".printk_index", align 4
@ep93xx_eth_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register netdev\0A\00", [37 x i8] zeroinitializer }, align 32
@ep93xx_eth_probe._entry_ptr.11 = internal global ptr @ep93xx_eth_probe._entry.9, section ".printk_index", align 4
@ep93xx_eth_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: ep93xx on-chip ethernet, IRQ %d, %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@ep93xx_eth_probe._entry_ptr.14 = internal global ptr @ep93xx_eth_probe._entry.12, section ".printk_index", align 4
@ep93xx_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ep93xx_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep93xx_nway_reset, ptr @ep93xx_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep93xx_get_link_ksettings, ptr @ep93xx_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ep93xx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ep93xx_open, ptr @ep93xx_close, ptr @ep93xx_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @ep93xx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ep93xx_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ep->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@ep93xx_open.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ep->tx_pending_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ep93xx_start_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012ep93xx_eth:%s: hw failed to reset\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ep93xx_start_hw\00", [16 x i8] zeroinitializer }, align 32
@ep93xx_start_hw._entry_ptr = internal global ptr @ep93xx_start_hw._entry, section ".printk_index", align 4
@ep93xx_start_hw._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012ep93xx_eth:%s: hw failed to start\0A\00", [59 x i8] zeroinitializer }, align 32
@ep93xx_start_hw._entry_ptr.24 = internal global ptr @ep93xx_start_hw._entry.22, section ".printk_index", align 4
@ep93xx_tx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012ep93xx_eth:%s: frame aborted %.8x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ep93xx_tx_complete\00", [45 x i8] zeroinitializer }, align 32
@ep93xx_tx_complete._entry_ptr = internal global ptr @ep93xx_tx_complete._entry, section ".printk_index", align 4
@ep93xx_tx_complete._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012ep93xx_eth:%s: entry mismatch %.8x\0A\00", [58 x i8] zeroinitializer }, align 32
@ep93xx_tx_complete._entry_ptr.29 = internal global ptr @ep93xx_tx_complete._entry.27, section ".printk_index", align 4
@ep93xx_stop_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.30, ptr @.str.3, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep93xx_stop_hw\00", [17 x i8] zeroinitializer }, align 32
@ep93xx_stop_hw._entry_ptr = internal global ptr @ep93xx_stop_hw._entry, section ".printk_index", align 4
@ep93xx_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012ep93xx_eth:%s: not end-of-frame %.8x %.8x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep93xx_rx\00", [22 x i8] zeroinitializer }, align 32
@ep93xx_rx._entry_ptr = internal global ptr @ep93xx_rx._entry, section ".printk_index", align 4
@ep93xx_rx._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012ep93xx_eth:%s: not end-of-buffer %.8x %.8x\0A\00", [50 x i8] zeroinitializer }, align 32
@ep93xx_rx._entry_ptr.35 = internal global ptr @ep93xx_rx._entry.33, section ".printk_index", align 4
@ep93xx_rx._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\012ep93xx_eth:%s: entry mismatch %.8x %.8x\0A\00", [53 x i8] zeroinitializer }, align 32
@ep93xx_rx._entry_ptr.38 = internal global ptr @ep93xx_rx._entry.36, section ".printk_index", align 4
@ep93xx_rx._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015ep93xx_eth:%s: invalid length %.8x %.8x\0A\00", [53 x i8] zeroinitializer }, align 32
@ep93xx_rx._entry_ptr.41 = internal global ptr @ep93xx_rx._entry.39, section ".printk_index", align 4
@ep93xx_mdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ep93xx_eth:%s: mdio read timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep93xx_mdio_read\00", [47 x i8] zeroinitializer }, align 32
@ep93xx_mdio_read._entry_ptr = internal global ptr @ep93xx_mdio_read._entry, section ".printk_index", align 4
@ep93xx_mdio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ep93xx_eth:%s: mdio write timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ep93xx_mdio_write\00", [46 x i8] zeroinitializer }, align 32
@ep93xx_mdio_write._entry_ptr = internal global ptr @ep93xx_mdio_write._entry, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ep93xx_eth_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 863, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 867, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 822, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 829, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 848, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 852, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"ep93xx_ethtool_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 724, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"ep93xx_netdev_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 732, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 645, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 649, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 326, i32 6 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 545, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 590, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 389, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 391, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 626, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 251, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 253, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 255, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 272, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 199, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [44 x i8] c"../drivers/net/ethernet/cirrus/ep93xx_eth.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 223, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias342, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_ep93xx_eth_driver_exit, ptr @__initcall__kmod_ep93xx_eth__339_871_ep93xx_eth_driver_init6, ptr @ep93xx_eth_driver_exit, ptr @ep93xx_eth_probe._entry, ptr @ep93xx_eth_probe._entry.12, ptr @ep93xx_eth_probe._entry.6, ptr @ep93xx_eth_probe._entry.9, ptr @ep93xx_eth_probe._entry_ptr, ptr @ep93xx_eth_probe._entry_ptr.11, ptr @ep93xx_eth_probe._entry_ptr.14, ptr @ep93xx_eth_probe._entry_ptr.8, ptr @ep93xx_mdio_read._entry, ptr @ep93xx_mdio_read._entry_ptr, ptr @ep93xx_mdio_write._entry, ptr @ep93xx_mdio_write._entry_ptr, ptr @ep93xx_rx._entry, ptr @ep93xx_rx._entry.33, ptr @ep93xx_rx._entry.36, ptr @ep93xx_rx._entry.39, ptr @ep93xx_rx._entry_ptr, ptr @ep93xx_rx._entry_ptr.35, ptr @ep93xx_rx._entry_ptr.38, ptr @ep93xx_rx._entry_ptr.41, ptr @ep93xx_start_hw._entry, ptr @ep93xx_start_hw._entry.22, ptr @ep93xx_start_hw._entry_ptr, ptr @ep93xx_start_hw._entry_ptr.24, ptr @ep93xx_stop_hw._entry, ptr @ep93xx_stop_hw._entry_ptr, ptr @ep93xx_tx_complete._entry, ptr @ep93xx_tx_complete._entry.27, ptr @ep93xx_tx_complete._entry_ptr, ptr @ep93xx_tx_complete._entry_ptr.29, ptr @ep93xx_eth_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @ep93xx_ethtool_ops, ptr @ep93xx_netdev_ops, ptr @ep93xx_open.__key, ptr @.str.15, ptr @ep93xx_open.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_eth_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_eth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_eth_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_eth_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_eth_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_open.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_start_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_start_hw._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_tx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_tx_complete._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_stop_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_rx._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_rx._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_rx._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_mdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_mdio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_eth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ep93xx_eth_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_eth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ep93xx_eth_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_eth_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pdev, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef nonnull %pdev, i32 noundef 512, i32 noundef 0) #9
  %call3 = tail call i32 @platform_get_irq(ptr noundef nonnull %pdev, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call ptr @alloc_etherdev_mqs(i32 noundef 680, i32 noundef 1, i32 noundef 1) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end6.err_out_crit_edge, label %if.end10

if.end6.err_out_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end10:                                         ; preds = %if.end6
  tail call void @dev_addr_mod(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %1, i32 noundef 6) #9
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ep93xx_ethtool_ops, ptr %ethtool_ops.i, align 16
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ep93xx_netdev_ops, ptr %netdev_ops.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 23
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i, align 16
  %or.i = or i64 %5, 9
  store i64 %or.i, ptr %features.i, align 16
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 2304
  %dev12 = getelementptr i8, ptr %call.i, i32 2716
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %dev12, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %parent, align 8
  %napi = getelementptr i8, ptr %call.i, i32 2720
  tail call void @netif_napi_add(ptr noundef nonnull %call.i, ptr noundef %napi, ptr noundef nonnull @ep93xx_poll, i32 noundef 64) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i108, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i108:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i108, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i108 ], [ %14, %if.end10.dev_name.exit_crit_edge ]
  %call18 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add.i, ptr noundef %retval.0.i, i32 noundef 0) #9
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call18, ptr %add.ptr.i, align 8
  %cmp20 = icmp eq ptr %call18, null
  br i1 %cmp20, label %dev_name.exit.err_out.sink.split_crit_edge, label %if.end23

dev_name.exit.err_out.sink.split_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end23:                                         ; preds = %dev_name.exit
  %18 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call2, align 4
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i110 = sub i32 1, %19
  %add.i111 = add i32 %sub.i110, %21
  %call26 = tail call ptr @ioremap(i32 noundef %19, i32 noundef %add.i111) #9
  %base_addr = getelementptr i8, ptr %call.i, i32 2308
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26, ptr %base_addr, align 4
  %cmp28 = icmp eq ptr %call26, null
  br i1 %cmp28, label %if.end23.err_out.sink.split_crit_edge, label %if.end34

if.end23.err_out.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end34:                                         ; preds = %if.end23
  %irq35 = getelementptr i8, ptr %call.i, i32 2312
  %23 = ptrtoint ptr %irq35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call3, ptr %irq35, align 8
  %phy_id = getelementptr inbounds %struct.ep93xx_eth_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phy_id, align 1
  %conv = zext i8 %25 to i32
  %mii = getelementptr i8, ptr %call.i, i32 2944
  %26 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %mii, align 8
  %phy_id_mask = getelementptr i8, ptr %call.i, i32 2952
  %27 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call.i, i32 2956
  %28 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 31, ptr %reg_num_mask, align 4
  %dev40 = getelementptr i8, ptr %call.i, i32 2964
  %29 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %dev40, align 4
  %mdio_read = getelementptr i8, ptr %call.i, i32 2968
  %30 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ep93xx_mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call.i, i32 2972
  %31 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ep93xx_mdio_write, ptr %mdio_write, align 4
  %mdc_divisor = getelementptr i8, ptr %call.i, i32 2976
  %32 = ptrtoint ptr %mdc_divisor to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 40, ptr %mdc_divisor, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add.ptr.i112 = getelementptr i8, ptr %34, i32 4
  %37 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i112, align 2
  %conv.i = zext i16 %38 to i32
  %or.i113 = or i32 %36, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i113)
  %cmp.i114 = icmp eq i32 %or.i113, 0
  br i1 %cmp.i114, label %if.then44, label %if.end34.if.end45_crit_edge

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call.i)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end34.if.end45_crit_edge
  %call46 = tail call i32 @register_netdev(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.end56, label %if.end45.err_out.sink.split_crit_edge

if.end45.err_out.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %irq35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq35, align 8
  %41 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr, align 64
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i, i32 noundef %40, ptr noundef %42) #12
  br label %cleanup

err_out.sink.split:                               ; preds = %if.end45.err_out.sink.split_crit_edge, %if.end23.err_out.sink.split_crit_edge, %dev_name.exit.err_out.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.1, %dev_name.exit.err_out.sink.split_crit_edge ], [ @.str.7, %if.end23.err_out.sink.split_crit_edge ], [ @.str.10, %if.end45.err_out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -12, %dev_name.exit.err_out.sink.split_crit_edge ], [ -5, %if.end23.err_out.sink.split_crit_edge ], [ %call46, %if.end45.err_out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.10.sink) #12
  br label %err_out

err_out:                                          ; preds = %err_out.sink.split, %if.end6.err_out_crit_edge
  %err.0 = phi i32 [ -12, %if.end6.err_out_crit_edge ], [ %err.0.ph, %err_out.sink.split ]
  %call60 = tail call i32 @ep93xx_eth_remove(ptr noundef nonnull %pdev)
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end56, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ 0, %do.end56 ], [ -19, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_eth_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef nonnull %1) #9
  tail call fastcc void @ep93xx_free_buffers(ptr noundef %add.ptr.i)
  %base_addr = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %3) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %cmp6.not = icmp eq ptr %5, null
  br i1 %cmp6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %6 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call8, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call8, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp168.i = icmp sgt i32 %budget, 0
  br i1 %cmp168.i, label %while.body.lr.ph.i, label %entry.ep93xx_rx.exit_crit_edge

entry.ep93xx_rx.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep93xx_rx.exit

while.body.lr.ph.i:                               ; preds = %entry
  %rx_pointer.i = getelementptr i8, ptr %1, i32 2656
  %descs.i = getelementptr i8, ptr %1, i32 2316
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %napi.i = getelementptr i8, ptr %1, i32 2720
  %stats87.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %processed.0169.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc97.i, %cleanup.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pointer.i, align 8
  %4 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descs.i, align 4
  %rstat2.i = getelementptr inbounds %struct.ep93xx_descs, ptr %5, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.ep93xx_rstat, ptr %rstat2.i, i32 %3
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %rstat14.i = getelementptr %struct.ep93xx_rstat, ptr %rstat2.i, i32 %3, i32 1
  %8 = ptrtoint ptr %rstat14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rstat14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not.i = icmp sgt i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool6.not.i = icmp sgt i32 %9, -1
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %while.body.i.ep93xx_rx.exit_crit_edge, label %if.end.i

while.body.i.ep93xx_rx.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep93xx_rx.exit

if.end.i:                                         ; preds = %while.body.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %add.ptr.i, align 4
  %11 = ptrtoint ptr %rstat14.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rstat14.i, align 4
  %and9.i = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.end.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %7, i32 noundef %9) #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i, %if.end.i.if.end13.i_crit_edge
  %and14.i = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end13.i.if.end22.i_crit_edge

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %7, i32 noundef %9) #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end19.i, %if.end13.i.if.end22.i_crit_edge
  %and23.i = lshr i32 %9, 16
  %shr.i = and i32 %and23.i, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %3)
  %cmp24.not.i = icmp eq i32 %shr.i, %3
  br i1 %cmp24.not.i, label %if.end22.i.if.end31.i_crit_edge, label %do.end28.i

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, i32 noundef %7, i32 noundef %9) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.end22.i.if.end31.i_crit_edge
  %and32.i = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end59.i

if.then34.i:                                      ; preds = %if.end31.i
  %12 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and35.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then34.i.if.end40.i_crit_edge, label %if.then37.i

if.then34.i.if.end40.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc39.i = add i32 %15, 1
  store i32 %inc39.i, ptr %rx_fifo_errors.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.then34.i.if.end40.i_crit_edge
  %and41.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end46.i_crit_edge, label %if.then43.i

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_frame_errors.i, align 4
  %inc45.i = add i32 %17, 1
  store i32 %inc45.i, ptr %rx_frame_errors.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end46.i_crit_edge
  %and47.i = and i32 %7, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end52.i_crit_edge, label %if.then49.i

if.end46.i.if.end52.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_length_errors.i, align 8
  %inc51.i = add i32 %19, 1
  store i32 %inc51.i, ptr %rx_length_errors.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end52.i_crit_edge
  %and53.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end52.i.cleanup.i_crit_edge, label %if.then55.i

if.end52.i.cleanup.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_crc_errors.i, align 8
  %inc57.i = add i32 %21, 1
  store i32 %inc57.i, ptr %rx_crc_errors.i, align 8
  br label %cleanup.i

if.end59.i:                                       ; preds = %if.end31.i
  %and60.i = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2044, i32 %and60.i)
  %cmp61.i = icmp ugt i32 %and60.i, 2044
  br i1 %cmp61.i, label %do.end65.i, label %if.end68.i

do.end65.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %call67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32, i32 noundef %7, i32 noundef %9) #12
  br label %cleanup.i

if.end68.i:                                       ; preds = %if.end59.i
  %and69.i = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  %sub.i = add nsw i32 %and60.i, -4
  %spec.select.i = select i1 %tobool70.not.i, i32 %and60.i, i32 %sub.i
  %add.i = add nsw i32 %spec.select.i, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i, i32 noundef 2592) #9
  %cmp74.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp74.not.i, label %if.else.i, label %if.then77.i, !prof !104

if.then77.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %descs.i, align 4
  %arrayidx.i = getelementptr [64 x %struct.ep93xx_rdesc], ptr %23, i32 0, i32 %3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %25, i32 2
  store ptr %add.ptr.i163.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %27, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i, align 8
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %29, i32 noundef %31, i32 noundef %spec.select.i, i32 noundef 2) #9
  %arrayidx80.i = getelementptr %struct.ep93xx_priv, ptr %add.ptr.i.i, i32 0, i32 5, i32 %3
  %32 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx80.i, align 4
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %36 = call ptr @memcpy(ptr %35, ptr %33, i32 %spec.select.i)
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i, align 8
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %38, i32 noundef %40, i32 noundef %spec.select.i, i32 noundef 2) #9
  %call84.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %spec.select.i) #9
  %call85.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %1) #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %41 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call85.i, ptr %protocol.i, align 8
  %call86.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef nonnull %call.i.i) #9
  %42 = ptrtoint ptr %stats87.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stats87.i, align 8
  %inc88.i = add i32 %43, 1
  store i32 %inc88.i, ptr %stats87.i, align 8
  %44 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_bytes.i, align 8
  %add90.i = add i32 %45, %spec.select.i
  store i32 %add90.i, ptr %rx_bytes.i, align 8
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_dropped.i, align 8
  %inc92.i = add i32 %47, 1
  store i32 %inc92.i, ptr %rx_dropped.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then77.i, %do.end65.i, %if.then55.i, %if.end52.i.cleanup.i_crit_edge
  %add94.i = add i32 %3, 1
  %and95.i = and i32 %add94.i, 63
  %48 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and95.i, ptr %rx_pointer.i, align 8
  %inc97.i = add nuw nsw i32 %processed.0169.i, 1
  %exitcond.not.i = icmp eq i32 %inc97.i, %budget
  br i1 %exitcond.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ep93xx_rx.exit:                                   ; preds = %while.body.i.ep93xx_rx.exit_crit_edge, %entry.ep93xx_rx.exit_crit_edge
  %processed.0.lcssa.i = phi i32 [ 0, %entry.ep93xx_rx.exit_crit_edge ], [ %processed.0169.i, %while.body.i.ep93xx_rx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %processed.0.lcssa.i, i32 %budget)
  %cmp = icmp slt i32 %processed.0.lcssa.i, %budget
  br i1 %cmp, label %land.lhs.true, label %ep93xx_rx.exit.if.end_crit_edge

ep93xx_rx.exit.if.end_crit_edge:                  ; preds = %ep93xx_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %ep93xx_rx.exit
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %processed.0.lcssa.i) #9
  br i1 %call2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rx_lock = getelementptr i8, ptr %napi, i32 -108
  tail call void @_raw_spin_lock_irq(ptr noundef %rx_lock) #9
  %base_addr = getelementptr i8, ptr %napi, i32 -412
  %49 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 15) #9, !srcloc !105
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx_lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %ep93xx_rx.exit.if.end_crit_edge, %cleanup.i.if.end_crit_edge
  %processed.0.lcssa.i26 = phi i32 [ %processed.0.lcssa.i, %if.then ], [ %processed.0.lcssa.i, %land.lhs.true.if.end_crit_edge ], [ %processed.0.lcssa.i, %ep93xx_rx.exit.if.end_crit_edge ], [ %budget, %cleanup.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %processed.0.lcssa.i26)
  %tobool.not = icmp eq i32 %processed.0.lcssa.i26, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %processed.0.lcssa.i26 to i16
  %base_addr6 = getelementptr i8, ptr %napi, i32 -412
  %51 = ptrtoint ptr %base_addr6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr6, align 4
  %add.ptr7 = getelementptr i8, ptr %52, i32 156
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %conv) #9, !srcloc !106
  %53 = ptrtoint ptr %base_addr6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr6, align 4
  %add.ptr10 = getelementptr i8, ptr %54, i32 172
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 %conv) #9, !srcloc !106
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  ret i32 %processed.0.lcssa.i26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %reg
  %or1 = or i32 %or, 32768
  %base_addr = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or1) #9, !srcloc !105
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !107
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %entry.if.else_crit_edge, label %if.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 1) #9
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr, align 4
  %add.ptr3.1 = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.1) #9, !srcloc !107
  %and.1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp5.1 = icmp eq i32 %and.1, 0
  br i1 %cmp5.1, label %if.end.if.else_crit_edge, label %if.end.1

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #9
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 4
  %add.ptr3.2 = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.2) #9, !srcloc !107
  %and.2 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp5.2 = icmp eq i32 %and.2, 0
  br i1 %cmp5.2, label %if.end.1.if.else_crit_edge, label %if.end.2

if.end.1.if.else_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 1) #9
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr, align 4
  %add.ptr3.3 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.3) #9, !srcloc !107
  %and.3 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp5.3 = icmp eq i32 %and.3, 0
  br i1 %cmp5.3, label %if.end.2.if.else_crit_edge, label %if.end.3

if.end.2.if.else_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 1) #9
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr, align 4
  %add.ptr3.4 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.4) #9, !srcloc !107
  %and.4 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp5.4 = icmp eq i32 %and.4, 0
  br i1 %cmp5.4, label %if.end.3.if.else_crit_edge, label %if.end.4

if.end.3.if.else_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 1) #9
  %17 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr, align 4
  %add.ptr3.5 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.5) #9, !srcloc !107
  %and.5 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp5.5 = icmp eq i32 %and.5, 0
  br i1 %cmp5.5, label %if.end.4.if.else_crit_edge, label %if.end.5

if.end.4.if.else_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 1) #9
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr, align 4
  %add.ptr3.6 = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.6) #9, !srcloc !107
  %and.6 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp5.6 = icmp eq i32 %and.6, 0
  br i1 %cmp5.6, label %if.end.5.if.else_crit_edge, label %if.end.6

if.end.5.if.else_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 1) #9
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr, align 4
  %add.ptr3.7 = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.7) #9, !srcloc !107
  %and.7 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp5.7 = icmp eq i32 %and.7, 0
  br i1 %cmp5.7, label %if.end.6.if.else_crit_edge, label %if.end.7

if.end.6.if.else_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 1) #9
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr, align 4
  %add.ptr3.8 = getelementptr i8, ptr %27, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.8) #9, !srcloc !107
  %and.8 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %cmp5.8 = icmp eq i32 %and.8, 0
  br i1 %cmp5.8, label %if.end.7.if.else_crit_edge, label %if.end.8

if.end.7.if.else_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 1) #9
  %29 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr, align 4
  %add.ptr3.9 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.9) #9, !srcloc !107
  %and.9 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %cmp5.9 = icmp eq i32 %and.9, 0
  br i1 %cmp5.9, label %if.end.8.if.else_crit_edge, label %do.end

if.end.8.if.else_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end:                                           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 1) #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #12
  br label %if.end12

if.else:                                          ; preds = %if.end.8.if.else_crit_edge, %if.end.7.if.else_crit_edge, %if.end.6.if.else_crit_edge, %if.end.5.if.else_crit_edge, %if.end.4.if.else_crit_edge, %if.end.3.if.else_crit_edge, %if.end.2.if.else_crit_edge, %if.end.1.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %32 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr, align 4
  %add.ptr10 = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !107
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.end
  %data.0 = phi i32 [ 65535, %do.end ], [ %34, %if.else ]
  ret i32 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %data) #9, !srcloc !105
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %reg
  %or1 = or i32 %or, 16384
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or1) #9, !srcloc !105
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !107
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %entry.if.end11_crit_edge, label %if.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 1) #9
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr, align 4
  %add.ptr5.1 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #9, !srcloc !107
  %and.1 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp7.1 = icmp eq i32 %and.1, 0
  br i1 %cmp7.1, label %if.end.if.end11_crit_edge, label %if.end.1

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #9
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr, align 4
  %add.ptr5.2 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.2) #9, !srcloc !107
  %and.2 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp7.2 = icmp eq i32 %and.2, 0
  br i1 %cmp7.2, label %if.end.1.if.end11_crit_edge, label %if.end.2

if.end.1.if.end11_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 1) #9
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr, align 4
  %add.ptr5.3 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.3) #9, !srcloc !107
  %and.3 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp7.3 = icmp eq i32 %and.3, 0
  br i1 %cmp7.3, label %if.end.2.if.end11_crit_edge, label %if.end.3

if.end.2.if.end11_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 1) #9
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr, align 4
  %add.ptr5.4 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.4) #9, !srcloc !107
  %and.4 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp7.4 = icmp eq i32 %and.4, 0
  br i1 %cmp7.4, label %if.end.3.if.end11_crit_edge, label %if.end.4

if.end.3.if.end11_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 1) #9
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_addr, align 4
  %add.ptr5.5 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.5) #9, !srcloc !107
  %and.5 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp7.5 = icmp eq i32 %and.5, 0
  br i1 %cmp7.5, label %if.end.4.if.end11_crit_edge, label %if.end.5

if.end.4.if.end11_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 1) #9
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr, align 4
  %add.ptr5.6 = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.6) #9, !srcloc !107
  %and.6 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp7.6 = icmp eq i32 %and.6, 0
  br i1 %cmp7.6, label %if.end.5.if.end11_crit_edge, label %if.end.6

if.end.5.if.end11_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 1) #9
  %25 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr, align 4
  %add.ptr5.7 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.7) #9, !srcloc !107
  %and.7 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp7.7 = icmp eq i32 %and.7, 0
  br i1 %cmp7.7, label %if.end.6.if.end11_crit_edge, label %if.end.7

if.end.6.if.end11_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 1) #9
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr, align 4
  %add.ptr5.8 = getelementptr i8, ptr %29, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.8) #9, !srcloc !107
  %and.8 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %cmp7.8 = icmp eq i32 %and.8, 0
  br i1 %cmp7.8, label %if.end.7.if.end11_crit_edge, label %if.end.8

if.end.7.if.end11_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 1) #9
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr, align 4
  %add.ptr5.9 = getelementptr i8, ptr %32, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.9) #9, !srcloc !107
  %and.9 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %cmp7.9 = icmp eq i32 %and.9, 0
  br i1 %cmp7.9, label %if.end.8.if.end11_crit_edge, label %do.end

if.end.8.if.end11_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 1) #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end.8.if.end11_crit_edge, %if.end.7.if.end11_crit_edge, %if.end.6.if.end11_crit_edge, %if.end.5.if.end11_crit_edge, %if.end.4.if.end11_crit_edge, %if.end.3.if.end11_crit_edge, %if.end.2.if.end11_crit_edge, %if.end.1.if.end11_crit_edge, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #9
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2944
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2944
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2944
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2944
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #9
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev1.i = getelementptr i8, ptr %dev, i32 2716
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %descs_dma_addr.i = getelementptr i8, ptr %dev, i32 2320
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 1120, ptr noundef %descs_dma_addr.i, i32 noundef 3264, i32 noundef 0) #9
  %descs.i = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %descs.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.0123.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 2048) #13
  %cmp6.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp6.i, label %for.body.i.err.i_crit_edge, label %if.end8.i

for.body.i.err.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end8.i:                                        ; preds = %for.body.i
  %call.i78.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #9
  br i1 %call.i78.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end8.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.err.sink.split.sink.split.i_crit_edge, label %if.then.i.i, !prof !108

land.rhs.i.i.err.sink.split.sink.split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split.sink.split.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %err.sink.split.sink.split.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end8.i
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  %sub.i.i = add i32 %11, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %shr.i.i
  %and.i.i = and i32 %11, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.err.sink.split.i_crit_edge, label %for.inc.i

dma_map_single_attrs.exit.i.err.sink.split.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split.i

for.inc.i:                                        ; preds = %dma_map_single_attrs.exit.i
  %arrayidx.i = getelementptr %struct.ep93xx_priv, ptr %add.ptr.i, i32 0, i32 5, i32 %i.0123.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %descs.i, align 4
  %arrayidx14.i = getelementptr [64 x %struct.ep93xx_rdesc], ptr %14, i32 0, i32 %i.0123.i
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call41.i.i, ptr %arrayidx14.i, align 4
  %shl.i = shl i32 %i.0123.i, 16
  %or.i = or i32 %shl.i, 2048
  %16 = load ptr, ptr %descs.i, align 4
  %rdesc1.i = getelementptr [64 x %struct.ep93xx_rdesc], ptr %16, i32 0, i32 %i.0123.i, i32 1
  %17 = ptrtoint ptr %rdesc1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %rdesc1.i, align 4
  %inc.i = add nuw nsw i32 %i.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.for.body21.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body21.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.inc41.i.for.body21.i_crit_edge, %for.inc.i.for.body21.i_crit_edge
  %i.1124.i = phi i32 [ %inc42.i, %for.inc41.i.for.body21.i_crit_edge ], [ 0, %for.inc.i.for.body21.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i77.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 2048) #13
  %cmp25.i = icmp eq ptr %call7.i77.i, null
  br i1 %cmp25.i, label %for.body21.i.err.i_crit_edge, label %if.end27.i

for.body21.i.err.i_crit_edge:                     ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end27.i:                                       ; preds = %for.body21.i
  %call.i79.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i77.i) #9
  br i1 %call.i79.i, label %land.rhs.i81.i, label %dma_map_single_attrs.exit96.i

land.rhs.i81.i:                                   ; preds = %if.end27.i
  %.b1.i80.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i80.i, label %land.rhs.i81.i.err.sink.split.sink.split.i_crit_edge, label %if.then.i85.i, !prof !108

land.rhs.i81.i.err.sink.split.sink.split.i_crit_edge: ; preds = %land.rhs.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split.sink.split.i

if.then.i85.i:                                    ; preds = %land.rhs.i81.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i82.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %init_name.i.i83.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i83.i, align 8
  %tobool.not.i.i84.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i84.i, label %if.end.i.i86.i, label %if.then.i85.i.dev_name.exit.i88.i_crit_edge

if.then.i85.i.dev_name.exit.i88.i_crit_edge:      ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i88.i

if.end.i.i86.i:                                   ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i88.i

dev_name.exit.i88.i:                              ; preds = %if.end.i.i86.i, %if.then.i85.i.dev_name.exit.i88.i_crit_edge
  %retval.0.i.i87.i = phi ptr [ %22, %if.end.i.i86.i ], [ %20, %if.then.i85.i.dev_name.exit.i88.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i82.i, ptr noundef %retval.0.i.i87.i) #9
  br label %err.sink.split.sink.split.i

dma_map_single_attrs.exit96.i:                    ; preds = %if.end27.i
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef nonnull %call7.i77.i, i32 noundef 2048) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %call7.i77.i to i32
  %sub.i89.i = add i32 %24, 1073741824
  %shr.i90.i = lshr i32 %sub.i89.i, 12
  %add.ptr.i91.i = getelementptr %struct.page, ptr %23, i32 %shr.i90.i
  %and.i92.i = and i32 %24, 4088
  %call41.i93.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i91.i, i32 noundef %and.i92.i, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i93.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i93.i)
  %cmp.i97.i = icmp eq i32 %call41.i93.i, -1
  br i1 %cmp.i97.i, label %dma_map_single_attrs.exit96.i.err.sink.split.i_crit_edge, label %for.inc41.i

dma_map_single_attrs.exit96.i.err.sink.split.i_crit_edge: ; preds = %dma_map_single_attrs.exit96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split.i

for.inc41.i:                                      ; preds = %dma_map_single_attrs.exit96.i
  %arrayidx33.i = getelementptr %struct.ep93xx_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.1124.i
  %25 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i77.i, ptr %arrayidx33.i, align 4
  %26 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %descs.i, align 4
  %arrayidx35.i = getelementptr %struct.ep93xx_descs, ptr %27, i32 0, i32 1, i32 %i.1124.i
  %28 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call41.i93.i, ptr %arrayidx35.i, align 4
  %inc42.i = add nuw nsw i32 %i.1124.i, 1
  %exitcond134.not.i = icmp eq i32 %inc42.i, 8
  br i1 %exitcond134.not.i, label %if.end, label %for.inc41.i.for.body21.i_crit_edge

for.inc41.i.for.body21.i_crit_edge:               ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.i

err.sink.split.sink.split.i:                      ; preds = %dev_name.exit.i88.i, %land.rhs.i81.i.err.sink.split.sink.split.i_crit_edge, %dev_name.exit.i.i, %land.rhs.i.i.err.sink.split.sink.split.i_crit_edge
  %call7.i77139.sink.ph.i = phi ptr [ %call7.i.i, %dev_name.exit.i.i ], [ %call7.i.i, %land.rhs.i.i.err.sink.split.sink.split.i_crit_edge ], [ %call7.i77.i, %dev_name.exit.i88.i ], [ %call7.i77.i, %land.rhs.i81.i.err.sink.split.sink.split.i_crit_edge ]
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #9
  br label %err.sink.split.i

err.sink.split.i:                                 ; preds = %err.sink.split.sink.split.i, %dma_map_single_attrs.exit96.i.err.sink.split.i_crit_edge, %dma_map_single_attrs.exit.i.err.sink.split.i_crit_edge
  %call7.i77139.sink.i = phi ptr [ %call7.i77139.sink.ph.i, %err.sink.split.sink.split.i ], [ %call7.i77.i, %dma_map_single_attrs.exit96.i.err.sink.split.i_crit_edge ], [ %call7.i.i, %dma_map_single_attrs.exit.i.err.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i77139.sink.i) #9
  br label %err.i

err.i:                                            ; preds = %err.sink.split.i, %for.body21.i.err.i_crit_edge, %for.body.i.err.i_crit_edge
  tail call fastcc void @ep93xx_free_buffers(ptr noundef %add.ptr.i) #9
  br label %cleanup

if.end:                                           ; preds = %for.inc41.i
  %napi = getelementptr i8, ptr %dev, i32 2720
  tail call void @napi_enable(ptr noundef %napi) #9
  %base_addr.i = getelementptr i8, ptr %dev, i32 2308
  %29 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 1) #9, !srcloc !105
  %31 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %32, i32 32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !107
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.i = icmp eq i32 %and.i, 0
  br i1 %cmp4.i, label %if.end.if.end8.i39_crit_edge, label %if.end.i

if.end.if.end8.i39_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.i:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #9
  %34 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.1.i = getelementptr i8, ptr %35, i32 32
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.1.i) #9, !srcloc !107
  %and.1.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp4.1.i = icmp eq i32 %and.1.i, 0
  br i1 %cmp4.1.i, label %if.end.i.if.end8.i39_crit_edge, label %if.end.1.i

if.end.i.if.end8.i39_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @msleep(i32 noundef 1) #9
  %37 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.2.i = getelementptr i8, ptr %38, i32 32
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.2.i) #9, !srcloc !107
  %and.2.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %cmp4.2.i = icmp eq i32 %and.2.i, 0
  br i1 %cmp4.2.i, label %if.end.1.i.if.end8.i39_crit_edge, label %if.end.2.i

if.end.1.i.if.end8.i39_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @msleep(i32 noundef 1) #9
  %40 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.3.i = getelementptr i8, ptr %41, i32 32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.3.i) #9, !srcloc !107
  %and.3.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %cmp4.3.i = icmp eq i32 %and.3.i, 0
  br i1 %cmp4.3.i, label %if.end.2.i.if.end8.i39_crit_edge, label %if.end.3.i

if.end.2.i.if.end8.i39_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @msleep(i32 noundef 1) #9
  %43 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.4.i = getelementptr i8, ptr %44, i32 32
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.4.i) #9, !srcloc !107
  %and.4.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %cmp4.4.i = icmp eq i32 %and.4.i, 0
  br i1 %cmp4.4.i, label %if.end.3.i.if.end8.i39_crit_edge, label %if.end.4.i

if.end.3.i.if.end8.i39_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @msleep(i32 noundef 1) #9
  %46 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.5.i = getelementptr i8, ptr %47, i32 32
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.5.i) #9, !srcloc !107
  %and.5.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %cmp4.5.i = icmp eq i32 %and.5.i, 0
  br i1 %cmp4.5.i, label %if.end.4.i.if.end8.i39_crit_edge, label %if.end.5.i

if.end.4.i.if.end8.i39_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.5.i:                                       ; preds = %if.end.4.i
  tail call void @msleep(i32 noundef 1) #9
  %49 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.6.i = getelementptr i8, ptr %50, i32 32
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.6.i) #9, !srcloc !107
  %and.6.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %cmp4.6.i = icmp eq i32 %and.6.i, 0
  br i1 %cmp4.6.i, label %if.end.5.i.if.end8.i39_crit_edge, label %if.end.6.i

if.end.5.i.if.end8.i39_crit_edge:                 ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.6.i:                                       ; preds = %if.end.5.i
  tail call void @msleep(i32 noundef 1) #9
  %52 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.7.i = getelementptr i8, ptr %53, i32 32
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.7.i) #9, !srcloc !107
  %and.7.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %cmp4.7.i = icmp eq i32 %and.7.i, 0
  br i1 %cmp4.7.i, label %if.end.6.i.if.end8.i39_crit_edge, label %if.end.7.i

if.end.6.i.if.end8.i39_crit_edge:                 ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.7.i:                                       ; preds = %if.end.6.i
  tail call void @msleep(i32 noundef 1) #9
  %55 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.8.i = getelementptr i8, ptr %56, i32 32
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.8.i) #9, !srcloc !107
  %and.8.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %cmp4.8.i = icmp eq i32 %and.8.i, 0
  br i1 %cmp4.8.i, label %if.end.7.i.if.end8.i39_crit_edge, label %if.end.8.i

if.end.7.i.if.end8.i39_crit_edge:                 ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end.8.i:                                       ; preds = %if.end.7.i
  tail call void @msleep(i32 noundef 1) #9
  %58 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.9.i = getelementptr i8, ptr %59, i32 32
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.9.i) #9, !srcloc !107
  %and.9.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i)
  %cmp4.9.i = icmp eq i32 %and.9.i, 0
  br i1 %cmp4.9.i, label %if.end.8.i.if.end8.i39_crit_edge, label %if.end.8.i.if.then4_crit_edge

if.end.8.i.if.then4_crit_edge:                    ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.8.i.if.end8.i39_crit_edge:                 ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i39

if.end8.i39:                                      ; preds = %if.end.8.i.if.end8.i39_crit_edge, %if.end.7.i.if.end8.i39_crit_edge, %if.end.6.i.if.end8.i39_crit_edge, %if.end.5.i.if.end8.i39_crit_edge, %if.end.4.i.if.end8.i39_crit_edge, %if.end.3.i.if.end8.i39_crit_edge, %if.end.2.i.if.end8.i39_crit_edge, %if.end.1.i.if.end8.i39_crit_edge, %if.end.i.if.end8.i39_crit_edge, %if.end.if.end8.i39_crit_edge
  %mdc_divisor.i = getelementptr i8, ptr %dev, i32 2976
  %61 = ptrtoint ptr %mdc_divisor.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mdc_divisor.i, align 8
  %conv.i = zext i8 %62 to i32
  %sub.i = shl nuw nsw i32 %conv.i, 9
  %shl.i38 = add nsw i32 %sub.i, -512
  %63 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %shl.i38) #9, !srcloc !105
  %mii.i = getelementptr i8, ptr %dev, i32 2944
  %65 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mii.i, align 8
  %call11.i = tail call i32 @ep93xx_mdio_read(ptr noundef %dev, i32 noundef %66, i32 noundef 1) #9
  %and12.i = and i32 %call11.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.not.i = icmp eq i32 %and12.i, 0
  br i1 %cmp13.not.i, label %if.end8.i39.if.end22.i_crit_edge, label %if.then15.i

if.end8.i39.if.end22.i_crit_edge:                 ; preds = %if.end8.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end8.i39
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %mdc_divisor.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mdc_divisor.i, align 8
  %conv17.i = zext i8 %68 to i32
  %sub18.i = shl nuw nsw i32 %conv17.i, 9
  %or.i40 = add nsw i32 %sub18.i, -256
  %69 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base_addr.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %70, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %or.i40) #9, !srcloc !105
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end8.i39.if.end22.i_crit_edge
  %71 = ptrtoint ptr %descs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %descs_dma_addr.i, align 8
  %73 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base_addr.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %74, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %72) #9, !srcloc !105
  %75 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_addr.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %76, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %72) #9, !srcloc !105
  %77 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base_addr.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %78, i32 148
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.i, i16 512) #9, !srcloc !106
  %79 = ptrtoint ptr %descs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %descs_dma_addr.i, align 8
  %add30.i = add i32 %80, 576
  %81 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base_addr.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %82, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %add30.i) #9, !srcloc !105
  %83 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_addr.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %84, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %add30.i) #9, !srcloc !105
  %85 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base_addr.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %86, i32 164
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36.i, i16 512) #9, !srcloc !106
  %87 = ptrtoint ptr %descs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %descs_dma_addr.i, align 8
  %add38.i = add i32 %88, 512
  %89 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base_addr.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %90, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %add38.i) #9, !srcloc !105
  %91 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %92, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %add38.i) #9, !srcloc !105
  %93 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base_addr.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %94, i32 180
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr44.i, i16 64) #9, !srcloc !106
  %95 = ptrtoint ptr %descs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %descs_dma_addr.i, align 8
  %add46.i = add i32 %96, 1088
  %97 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_addr.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %98, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %add46.i) #9, !srcloc !105
  %99 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base_addr.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %100, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %add46.i) #9, !srcloc !105
  %101 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base_addr.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %102, i32 196
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr52.i, i16 32) #9, !srcloc !106
  %103 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base_addr.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %104, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 257) #9, !srcloc !105
  %105 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base_addr.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %106, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 15) #9, !srcloc !105
  %107 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base_addr.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %108, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 0) #9, !srcloc !105
  %109 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %110, i32 132
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #9, !srcloc !107
  %and66.i = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %cmp67.not.i = icmp eq i32 %and66.i, 0
  br i1 %cmp67.not.i, label %if.end70.i, label %if.end22.i.do.body_crit_edge

if.end22.i.do.body_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.i:                                       ; preds = %if.end22.i
  tail call void @msleep(i32 noundef 1) #9
  %112 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.1.i = getelementptr i8, ptr %113, i32 132
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.1.i) #9, !srcloc !107
  %and66.1.i = and i32 %114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.1.i)
  %cmp67.not.1.i = icmp eq i32 %and66.1.i, 0
  br i1 %cmp67.not.1.i, label %if.end70.1.i, label %if.end70.i.do.body_crit_edge

if.end70.i.do.body_crit_edge:                     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.1.i:                                     ; preds = %if.end70.i
  tail call void @msleep(i32 noundef 1) #9
  %115 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.2.i = getelementptr i8, ptr %116, i32 132
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.2.i) #9, !srcloc !107
  %and66.2.i = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.2.i)
  %cmp67.not.2.i = icmp eq i32 %and66.2.i, 0
  br i1 %cmp67.not.2.i, label %if.end70.2.i, label %if.end70.1.i.do.body_crit_edge

if.end70.1.i.do.body_crit_edge:                   ; preds = %if.end70.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.2.i:                                     ; preds = %if.end70.1.i
  tail call void @msleep(i32 noundef 1) #9
  %118 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.3.i = getelementptr i8, ptr %119, i32 132
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.3.i) #9, !srcloc !107
  %and66.3.i = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.3.i)
  %cmp67.not.3.i = icmp eq i32 %and66.3.i, 0
  br i1 %cmp67.not.3.i, label %if.end70.3.i, label %if.end70.2.i.do.body_crit_edge

if.end70.2.i.do.body_crit_edge:                   ; preds = %if.end70.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.3.i:                                     ; preds = %if.end70.2.i
  tail call void @msleep(i32 noundef 1) #9
  %121 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.4.i = getelementptr i8, ptr %122, i32 132
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.4.i) #9, !srcloc !107
  %and66.4.i = and i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.4.i)
  %cmp67.not.4.i = icmp eq i32 %and66.4.i, 0
  br i1 %cmp67.not.4.i, label %if.end70.4.i, label %if.end70.3.i.do.body_crit_edge

if.end70.3.i.do.body_crit_edge:                   ; preds = %if.end70.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.4.i:                                     ; preds = %if.end70.3.i
  tail call void @msleep(i32 noundef 1) #9
  %124 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.5.i = getelementptr i8, ptr %125, i32 132
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.5.i) #9, !srcloc !107
  %and66.5.i = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.5.i)
  %cmp67.not.5.i = icmp eq i32 %and66.5.i, 0
  br i1 %cmp67.not.5.i, label %if.end70.5.i, label %if.end70.4.i.do.body_crit_edge

if.end70.4.i.do.body_crit_edge:                   ; preds = %if.end70.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.5.i:                                     ; preds = %if.end70.4.i
  tail call void @msleep(i32 noundef 1) #9
  %127 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.6.i = getelementptr i8, ptr %128, i32 132
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.6.i) #9, !srcloc !107
  %and66.6.i = and i32 %129, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.6.i)
  %cmp67.not.6.i = icmp eq i32 %and66.6.i, 0
  br i1 %cmp67.not.6.i, label %if.end70.6.i, label %if.end70.5.i.do.body_crit_edge

if.end70.5.i.do.body_crit_edge:                   ; preds = %if.end70.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.6.i:                                     ; preds = %if.end70.5.i
  tail call void @msleep(i32 noundef 1) #9
  %130 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.7.i = getelementptr i8, ptr %131, i32 132
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.7.i) #9, !srcloc !107
  %and66.7.i = and i32 %132, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.7.i)
  %cmp67.not.7.i = icmp eq i32 %and66.7.i, 0
  br i1 %cmp67.not.7.i, label %if.end70.7.i, label %if.end70.6.i.do.body_crit_edge

if.end70.6.i.do.body_crit_edge:                   ; preds = %if.end70.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.7.i:                                     ; preds = %if.end70.6.i
  tail call void @msleep(i32 noundef 1) #9
  %133 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.8.i = getelementptr i8, ptr %134, i32 132
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.8.i) #9, !srcloc !107
  %and66.8.i = and i32 %135, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.8.i)
  %cmp67.not.8.i = icmp eq i32 %and66.8.i, 0
  br i1 %cmp67.not.8.i, label %if.end70.8.i, label %if.end70.7.i.do.body_crit_edge

if.end70.7.i.do.body_crit_edge:                   ; preds = %if.end70.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.8.i:                                     ; preds = %if.end70.7.i
  tail call void @msleep(i32 noundef 1) #9
  %136 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base_addr.i, align 4
  %add.ptr64.9.i = getelementptr i8, ptr %137, i32 132
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.9.i) #9, !srcloc !107
  %and66.9.i = and i32 %138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.9.i)
  %cmp67.not.9.i = icmp eq i32 %and66.9.i, 0
  br i1 %cmp67.not.9.i, label %if.end70.8.i.if.then4_crit_edge, label %if.end70.8.i.do.body_crit_edge

if.end70.8.i.do.body_crit_edge:                   ; preds = %if.end70.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end70.8.i.if.then4_crit_edge:                  ; preds = %if.end70.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %if.end70.8.i.if.then4_crit_edge, %if.end.8.i.if.then4_crit_edge
  %.str.20.sink = phi ptr [ @.str.20, %if.end.8.i.if.then4_crit_edge ], [ @.str.23, %if.end70.8.i.if.then4_crit_edge ]
  tail call void @msleep(i32 noundef 1) #9
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink, ptr noundef nonnull @.str.21) #12
  tail call void @napi_disable(ptr noundef %napi) #9
  tail call fastcc void @ep93xx_free_buffers(ptr noundef %add.ptr.i)
  br label %cleanup

do.body:                                          ; preds = %if.end70.8.i.do.body_crit_edge, %if.end70.7.i.do.body_crit_edge, %if.end70.6.i.do.body_crit_edge, %if.end70.5.i.do.body_crit_edge, %if.end70.4.i.do.body_crit_edge, %if.end70.3.i.do.body_crit_edge, %if.end70.2.i.do.body_crit_edge, %if.end70.1.i.do.body_crit_edge, %if.end70.i.do.body_crit_edge, %if.end22.i.do.body_crit_edge
  %139 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base_addr.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %140, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 64) #9, !srcloc !105
  %141 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base_addr.i, align 4
  %add.ptr86.i = getelementptr i8, ptr %142, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 64) #9, !srcloc !105
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %143 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_addr.i, align 64
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 1
  %147 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base_addr.i, align 4
  %add.ptr88.i = getelementptr i8, ptr %148, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88.i, i8 %146) #9, !srcloc !109
  %149 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx90.i = getelementptr i8, ptr %150, i32 1
  %151 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx90.i, align 1
  %153 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base_addr.i, align 4
  %add.ptr92.i = getelementptr i8, ptr %154, i32 81
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92.i, i8 %152) #9, !srcloc !109
  %155 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx94.i = getelementptr i8, ptr %156, i32 2
  %157 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx94.i, align 1
  %159 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base_addr.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %160, i32 82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96.i, i8 %158) #9, !srcloc !109
  %161 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx98.i = getelementptr i8, ptr %162, i32 3
  %163 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx98.i, align 1
  %165 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base_addr.i, align 4
  %add.ptr100.i = getelementptr i8, ptr %166, i32 83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100.i, i8 %164) #9, !srcloc !109
  %167 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx102.i = getelementptr i8, ptr %168, i32 4
  %169 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx102.i, align 1
  %171 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base_addr.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %172, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104.i, i8 %170) #9, !srcloc !109
  %173 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx106.i = getelementptr i8, ptr %174, i32 5
  %175 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx106.i, align 1
  %177 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base_addr.i, align 4
  %add.ptr108.i = getelementptr i8, ptr %178, i32 85
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr108.i, i8 %176) #9, !srcloc !109
  %179 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base_addr.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %180, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i, i32 0) #9, !srcloc !105
  %181 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base_addr.i, align 4
  %add.ptr112.i = getelementptr i8, ptr %182, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112.i, i32 133957628) #9, !srcloc !105
  %183 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 473088) #9, !srcloc !105
  %185 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base_addr.i, align 4
  %add.ptr116.i = getelementptr i8, ptr %186, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116.i, i32 1) #9, !srcloc !105
  %rx_lock = getelementptr i8, ptr %dev, i32 2612
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ep93xx_open.__key, i16 noundef signext 3) #9
  %rx_pointer = getelementptr i8, ptr %dev, i32 2656
  %187 = ptrtoint ptr %rx_pointer to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %rx_pointer, align 8
  %tx_clean_pointer = getelementptr i8, ptr %dev, i32 2660
  %188 = ptrtoint ptr %tx_clean_pointer to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %tx_clean_pointer, align 4
  %tx_pointer = getelementptr i8, ptr %dev, i32 2664
  %189 = ptrtoint ptr %tx_pointer to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %tx_pointer, align 8
  %tx_pending_lock = getelementptr i8, ptr %dev, i32 2668
  tail call void @__raw_spin_lock_init(ptr noundef %tx_pending_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @ep93xx_open.__key.16, i16 noundef signext 3) #9
  %tx_pending = getelementptr i8, ptr %dev, i32 2712
  %190 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %tx_pending, align 8
  %irq = getelementptr i8, ptr %dev, i32 2312
  %191 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %192, ptr noundef nonnull @ep93xx_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @napi_disable(ptr noundef %napi) #9
  tail call fastcc void @ep93xx_stop_hw(ptr noundef %dev)
  tail call fastcc void @ep93xx_free_buffers(ptr noundef %add.ptr.i)
  br label %cleanup

if.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %194, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 32768) #9, !srcloc !105
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %195 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %196, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then4, %err.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then4 ], [ %call.i, %if.then14 ], [ 0, %if.end16 ], [ -12, %err.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %napi = getelementptr i8, ptr %dev, i32 2720
  tail call void @napi_disable(ptr noundef %napi) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %base_addr = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !105
  %irq = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #9
  tail call fastcc void @ep93xx_stop_hw(ptr noundef %dev)
  tail call fastcc void @ep93xx_free_buffers(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2044, i32 %1)
  %cmp = icmp ugt i32 %1, 2044
  br i1 %cmp, label %if.then, label %if.end, !prof !104

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %2 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_pointer = getelementptr i8, ptr %dev, i32 2664
  %4 = ptrtoint ptr %tx_pointer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pointer, align 8
  %add = add i32 %5, 1
  %and = and i32 %add, 7
  store i32 %and, ptr %tx_pointer, align 8
  %descs = getelementptr i8, ptr %dev, i32 2316
  %6 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr %struct.ep93xx_descs, ptr %7, i32 0, i32 1, i32 %5
  %shl = shl i32 %5, 16
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %and6 = and i32 %9, 4095
  %or = or i32 %and6, %shl
  %or7 = or i32 %or, -2147483648
  %tdesc1 = getelementptr %struct.ep93xx_descs, ptr %7, i32 0, i32 1, i32 %5, i32 1
  %10 = ptrtoint ptr %tdesc1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or7, ptr %tdesc1, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = load i32, ptr %len, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %12, i32 noundef %14, i32 noundef %15, i32 noundef 1) #9
  %arrayidx10 = getelementptr %struct.ep93xx_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %5
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  tail call void @skb_copy_and_csum_dev(ptr noundef %skb, ptr noundef %17) #9
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef 1) #9
  tail call void @consume_skb(ptr noundef %skb) #9
  %tx_pending_lock = getelementptr i8, ptr %dev, i32 2668
  tail call void @_raw_spin_lock_irq(ptr noundef %tx_pending_lock) #9
  %tx_pending = getelementptr i8, ptr %dev, i32 2712
  %24 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_pending, align 8
  %inc15 = add i32 %25, 1
  store i32 %inc15, ptr %tx_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc15)
  %cmp17 = icmp eq i32 %inc15, 8
  br i1 %cmp17, label %if.then18, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %tx_pending_lock) #9
  %base_addr = getelementptr i8, ptr %dev, i32 2308
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #9, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %mii = getelementptr i8, ptr %dev, i32 2944
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep93xx_free_buffers(ptr nocapture noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ep93xx_priv, ptr %ep, i32 0, i32 13
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %descs = getelementptr inbounds %struct.ep93xx_priv, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %entry.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr [64 x %struct.ep93xx_rdesc], ptr %7, i32 0, i32 %i.045
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %for.body.if.end6_crit_edge, label %if.then5

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %9, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %arrayidx7 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 5, i32 %i.045
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  tail call void @kfree(ptr noundef %11) #9
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body10.preheader, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body10.preheader:                             ; preds = %if.end6
  %12 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %descs, align 4
  %arrayidx13 = getelementptr %struct.ep93xx_descs, ptr %13, i32 0, i32 1, i32 0
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %for.body10.preheader.if.end17_crit_edge, label %if.then16

for.body10.preheader.if.end17_crit_edge:          ; preds = %for.body10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %for.body10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %15, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.body10.preheader.if.end17_crit_edge
  %arrayidx18 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %descs, align 4
  %arrayidx13.1 = getelementptr %struct.ep93xx_descs, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx13.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not.1 = icmp eq i32 %21, 0
  br i1 %tobool15.not.1, label %if.end17.if.end17.1_crit_edge, label %if.then16.1

if.end17.if.end17.1_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.1

if.then16.1:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %21, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.then16.1, %if.end17.if.end17.1_crit_edge
  %arrayidx18.1 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18.1, align 4
  tail call void @kfree(ptr noundef %23) #9
  %24 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %descs, align 4
  %arrayidx13.2 = getelementptr %struct.ep93xx_descs, ptr %25, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not.2 = icmp eq i32 %27, 0
  br i1 %tobool15.not.2, label %if.end17.1.if.end17.2_crit_edge, label %if.then16.2

if.end17.1.if.end17.2_crit_edge:                  ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.2

if.then16.2:                                      ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %27, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17.2

if.end17.2:                                       ; preds = %if.then16.2, %if.end17.1.if.end17.2_crit_edge
  %arrayidx18.2 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx18.2, align 4
  tail call void @kfree(ptr noundef %29) #9
  %30 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %descs, align 4
  %arrayidx13.3 = getelementptr %struct.ep93xx_descs, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx13.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not.3 = icmp eq i32 %33, 0
  br i1 %tobool15.not.3, label %if.end17.2.if.end17.3_crit_edge, label %if.then16.3

if.end17.2.if.end17.3_crit_edge:                  ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.3

if.then16.3:                                      ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %33, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.then16.3, %if.end17.2.if.end17.3_crit_edge
  %arrayidx18.3 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 3
  %34 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx18.3, align 4
  tail call void @kfree(ptr noundef %35) #9
  %36 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %descs, align 4
  %arrayidx13.4 = getelementptr %struct.ep93xx_descs, ptr %37, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx13.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool15.not.4 = icmp eq i32 %39, 0
  br i1 %tobool15.not.4, label %if.end17.3.if.end17.4_crit_edge, label %if.then16.4

if.end17.3.if.end17.4_crit_edge:                  ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.4

if.then16.4:                                      ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %39, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17.4

if.end17.4:                                       ; preds = %if.then16.4, %if.end17.3.if.end17.4_crit_edge
  %arrayidx18.4 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 4
  %40 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx18.4, align 4
  tail call void @kfree(ptr noundef %41) #9
  %42 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %descs, align 4
  %arrayidx13.5 = getelementptr %struct.ep93xx_descs, ptr %43, i32 0, i32 1, i32 5
  %44 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx13.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool15.not.5 = icmp eq i32 %45, 0
  br i1 %tobool15.not.5, label %if.end17.4.if.end17.5_crit_edge, label %if.then16.5

if.end17.4.if.end17.5_crit_edge:                  ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.5

if.then16.5:                                      ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %45, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17.5

if.end17.5:                                       ; preds = %if.then16.5, %if.end17.4.if.end17.5_crit_edge
  %arrayidx18.5 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 5
  %46 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx18.5, align 4
  tail call void @kfree(ptr noundef %47) #9
  %48 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %descs, align 4
  %arrayidx13.6 = getelementptr %struct.ep93xx_descs, ptr %49, i32 0, i32 1, i32 6
  %50 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx13.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool15.not.6 = icmp eq i32 %51, 0
  br i1 %tobool15.not.6, label %if.end17.5.if.end17.6_crit_edge, label %if.then16.6

if.end17.5.if.end17.6_crit_edge:                  ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.6

if.then16.6:                                      ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %51, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17.6

if.end17.6:                                       ; preds = %if.then16.6, %if.end17.5.if.end17.6_crit_edge
  %arrayidx18.6 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 6
  %52 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx18.6, align 4
  tail call void @kfree(ptr noundef %53) #9
  %54 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %descs, align 4
  %arrayidx13.7 = getelementptr %struct.ep93xx_descs, ptr %55, i32 0, i32 1, i32 7
  %56 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx13.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool15.not.7 = icmp eq i32 %57, 0
  br i1 %tobool15.not.7, label %if.end17.6.if.end17.7_crit_edge, label %if.then16.7

if.end17.6.if.end17.7_crit_edge:                  ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.7

if.then16.7:                                      ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %57, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  br label %if.end17.7

if.end17.7:                                       ; preds = %if.then16.7, %if.end17.6.if.end17.7_crit_edge
  %arrayidx18.7 = getelementptr %struct.ep93xx_priv, ptr %ep, i32 0, i32 6, i32 7
  %58 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx18.7, align 4
  tail call void @kfree(ptr noundef %59) #9
  %60 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %descs, align 4
  %descs_dma_addr = getelementptr inbounds %struct.ep93xx_priv, ptr %ep, i32 0, i32 4
  %62 = ptrtoint ptr %descs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %descs_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 1120, ptr noundef %61, i32 noundef %63, i32 noundef 0) #9
  %64 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %descs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17.7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev_id, i32 2308
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %rx_lock = getelementptr i8, ptr %dev_id, i32 2612
  tail call void @_raw_spin_lock(ptr noundef %rx_lock) #9
  %napi = getelementptr i8, ptr %dev_id, i32 2720
  %call3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call3, label %if.then6, label %if.then2.if.end10_crit_edge, !prof !108

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr, align 4
  %add.ptr8 = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 8) #9, !srcloc !105
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then2.if.end10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock) #9
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %and13 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  %tx_pending_lock.i = getelementptr i8, ptr %dev_id, i32 2668
  tail call void @_raw_spin_lock(ptr noundef %tx_pending_lock.i) #9
  %tx_clean_pointer.i = getelementptr i8, ptr %dev_id, i32 2660
  %descs.i = getelementptr i8, ptr %dev_id, i32 2316
  %5 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_clean_pointer.i, align 4
  %7 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %descs.i, align 4
  %tstat285.i = getelementptr inbounds %struct.ep93xx_descs, ptr %8, i32 0, i32 3
  %add.ptr86.i = getelementptr %struct.ep93xx_tstat, ptr %tstat285.i, i32 %6
  %9 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not87.i = icmp sgt i32 %10, -1
  br i1 %tobool.not87.i, label %while.end.thread.i, label %if.end.lr.ph.i

while.end.thread.i:                               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %tx_pending_lock.i) #9
  br label %cleanup

if.end.lr.ph.i:                                   ; preds = %if.then15
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 20
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 18
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 9
  %tx_pending.i = getelementptr i8, ptr %dev_id, i32 2712
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %11 = phi i32 [ %10, %if.end.lr.ph.i ], [ %35, %cleanup.i.if.end.i_crit_edge ]
  %add.ptr89.i = phi ptr [ %add.ptr86.i, %if.end.lr.ph.i ], [ %add.ptr.i27, %cleanup.i.if.end.i_crit_edge ]
  %12 = phi i32 [ %6, %if.end.lr.ph.i ], [ %and43.i, %cleanup.i.if.end.i_crit_edge ]
  %wake.088.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %spec.select.i, %cleanup.i.if.end.i_crit_edge ]
  %13 = ptrtoint ptr %add.ptr89.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %add.ptr89.i, align 4
  %and5.i = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %do.end.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %11) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.end.i.if.end9.i_crit_edge
  %and10.i = and i32 %11, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and10.i, i32 %12)
  %cmp.not.i = icmp eq i32 %and10.i, %12
  br i1 %cmp.not.i, label %if.end9.i.if.end17.i_crit_edge, label %do.end14.i

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %11) #12
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end14.i, %if.end9.i.if.end17.i_crit_edge
  %and18.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end26.i_crit_edge, label %if.then20.i

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %descs.i, align 4
  %tdesc1.i = getelementptr %struct.ep93xx_descs, ptr %15, i32 0, i32 1, i32 %12, i32 1
  %16 = ptrtoint ptr %tdesc1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tdesc1.i, align 4
  %and22.i = and i32 %17, 4095
  %18 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end26.i_crit_edge
  %tx_errors.sink92.i = phi ptr [ %tx_bytes.i, %if.then20.i ], [ %tx_errors.i, %if.end17.i.if.end26.i_crit_edge ]
  %.sink91.i = phi i32 [ %and22.i, %if.then20.i ], [ 1, %if.end17.i.if.end26.i_crit_edge ]
  %20 = ptrtoint ptr %tx_errors.sink92.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_errors.sink92.i, align 4
  %inc25.i = add i32 %21, %.sink91.i
  store i32 %inc25.i, ptr %tx_errors.sink92.i, align 4
  %and27.i = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end32.i_crit_edge, label %if.then29.i

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_window_errors.i, align 8
  %inc31.i = add i32 %23, 1
  store i32 %inc31.i, ptr %tx_window_errors.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end32.i_crit_edge
  %and33.i = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.cleanup.i_crit_edge, label %if.then35.i

if.end32.i.cleanup.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc37.i = add i32 %25, 1
  store i32 %inc37.i, ptr %tx_fifo_errors.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then35.i, %if.end32.i.cleanup.i_crit_edge
  %shr.i = lshr i32 %11, 16
  %and39.i = and i32 %shr.i, 31
  %26 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %collisions.i, align 4
  %add41.i = add i32 %27, %and39.i
  store i32 %add41.i, ptr %collisions.i, align 4
  %add42.i = add i32 %12, 1
  %and43.i = and i32 %add42.i, 7
  %28 = ptrtoint ptr %tx_clean_pointer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and43.i, ptr %tx_clean_pointer.i, align 4
  %29 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_pending.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp45.i = icmp eq i32 %30, 8
  %spec.select.i = select i1 %cmp45.i, i32 1, i32 %wake.088.i
  %dec.i = add i32 %30, -1
  %31 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec.i, ptr %tx_pending.i, align 8
  %32 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %descs.i, align 4
  %tstat2.i = getelementptr inbounds %struct.ep93xx_descs, ptr %33, i32 0, i32 3
  %add.ptr.i27 = getelementptr %struct.ep93xx_tstat, ptr %tstat2.i, i32 %and43.i
  %34 = ptrtoint ptr %add.ptr.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i27, align 4
  %tobool.not.i = icmp sgt i32 %35, -1
  br i1 %tobool.not.i, label %while.end.i, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.end.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %phi.cmp.i = icmp eq i32 %spec.select.i, 0
  tail call void @_raw_spin_unlock(ptr noundef %tx_pending_lock.i) #9
  br i1 %phi.cmp.i, label %while.end.i.cleanup_crit_edge, label %if.then53.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %37) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then53.i, %while.end.i.cleanup_crit_edge, %while.end.thread.i, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ 1, %while.end.thread.i ], [ 1, %while.end.i.cleanup_crit_edge ], [ 1, %if.then53.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep93xx_stop_hw(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #9, !srcloc !105
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !107
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 1) #9
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr, align 4
  %add.ptr2.1 = getelementptr i8, ptr %6, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.1) #9, !srcloc !107
  %and.1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp4.1 = icmp eq i32 %and.1, 0
  br i1 %cmp4.1, label %if.end.if.end8_crit_edge, label %if.end.1

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #9
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 4
  %add.ptr2.2 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.2) #9, !srcloc !107
  %and.2 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp4.2 = icmp eq i32 %and.2, 0
  br i1 %cmp4.2, label %if.end.1.if.end8_crit_edge, label %if.end.2

if.end.1.if.end8_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 1) #9
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr, align 4
  %add.ptr2.3 = getelementptr i8, ptr %12, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.3) #9, !srcloc !107
  %and.3 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp4.3 = icmp eq i32 %and.3, 0
  br i1 %cmp4.3, label %if.end.2.if.end8_crit_edge, label %if.end.3

if.end.2.if.end8_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 1) #9
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr, align 4
  %add.ptr2.4 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.4) #9, !srcloc !107
  %and.4 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp4.4 = icmp eq i32 %and.4, 0
  br i1 %cmp4.4, label %if.end.3.if.end8_crit_edge, label %if.end.4

if.end.3.if.end8_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 1) #9
  %17 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr, align 4
  %add.ptr2.5 = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.5) #9, !srcloc !107
  %and.5 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp4.5 = icmp eq i32 %and.5, 0
  br i1 %cmp4.5, label %if.end.4.if.end8_crit_edge, label %if.end.5

if.end.4.if.end8_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 1) #9
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr, align 4
  %add.ptr2.6 = getelementptr i8, ptr %21, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.6) #9, !srcloc !107
  %and.6 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp4.6 = icmp eq i32 %and.6, 0
  br i1 %cmp4.6, label %if.end.5.if.end8_crit_edge, label %if.end.6

if.end.5.if.end8_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 1) #9
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr, align 4
  %add.ptr2.7 = getelementptr i8, ptr %24, i32 32
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.7) #9, !srcloc !107
  %and.7 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp4.7 = icmp eq i32 %and.7, 0
  br i1 %cmp4.7, label %if.end.6.if.end8_crit_edge, label %if.end.7

if.end.6.if.end8_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 1) #9
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr, align 4
  %add.ptr2.8 = getelementptr i8, ptr %27, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.8) #9, !srcloc !107
  %and.8 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %cmp4.8 = icmp eq i32 %and.8, 0
  br i1 %cmp4.8, label %if.end.7.if.end8_crit_edge, label %if.end.8

if.end.7.if.end8_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 1) #9
  %29 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr, align 4
  %add.ptr2.9 = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.9) #9, !srcloc !107
  %and.9 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %cmp4.9 = icmp eq i32 %and.9, 0
  br i1 %cmp4.9, label %if.end.8.if.end8_crit_edge, label %do.end

if.end.8.if.end8_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end:                                           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 1) #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.30) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.8.if.end8_crit_edge, %if.end.7.if.end8_crit_edge, %if.end.6.if.end8_crit_edge, %if.end.5.if.end8_crit_edge, %if.end.4.if.end8_crit_edge, %if.end.3.if.end8_crit_edge, %if.end.2.if.end8_crit_edge, %if.end.1.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

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
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_and_csum_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_ep93xx_eth__339_871_ep93xx_eth_driver_init6, !1, !"__initcall__kmod_ep93xx_eth__339_871_ep93xx_eth_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 871, i32 1}
!2 = !{ptr @__exitcall_ep93xx_eth_driver_exit, !1, !"__exitcall_ep93xx_eth_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file340, !4, !"__UNIQUE_ID_file340", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 873, i32 1}
!5 = !{ptr @__UNIQUE_ID_license341, !4, !"__UNIQUE_ID_license341", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias342, !7, !"__UNIQUE_ID_alias342", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 874, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 867, i32 11}
!10 = !{ptr @ep93xx_eth_driver, !11, !"ep93xx_eth_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 863, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 822, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ep93xx_eth_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @ep93xx_eth_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 829, i32 3}
!22 = !{ptr @ep93xx_eth_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ep93xx_eth_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 848, i32 3}
!26 = !{ptr @ep93xx_eth_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ep93xx_eth_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 852, i32 2}
!30 = !{ptr @ep93xx_eth_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ep93xx_eth_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ep93xx_ethtool_ops, !33, !"ep93xx_ethtool_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 724, i32 33}
!34 = !{ptr @ep93xx_netdev_ops, !35, !"ep93xx_netdev_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 732, i32 36}
!36 = !{ptr @ep93xx_open.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 645, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ep93xx_open.__key.16, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 649, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 545, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ep93xx_start_hw._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ep93xx_start_hw._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 590, i32 3}
!53 = !{ptr @ep93xx_start_hw._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ep93xx_start_hw._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 389, i32 4}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ep93xx_tx_complete._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ep93xx_tx_complete._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 391, i32 4}
!62 = !{ptr @ep93xx_tx_complete._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ep93xx_tx_complete._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 626, i32 3}
!66 = !{ptr @ep93xx_stop_hw._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ep93xx_stop_hw._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 251, i32 4}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ep93xx_rx._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ep93xx_rx._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 253, i32 4}
!75 = !{ptr @ep93xx_rx._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ep93xx_rx._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 255, i32 4}
!79 = !{ptr @ep93xx_rx._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ep93xx_rx._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 272, i32 4}
!83 = !{ptr @ep93xx_rx._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ep93xx_rx._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 199, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ep93xx_mdio_read._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ep93xx_mdio_read._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/cirrus/ep93xx_eth.c", i32 223, i32 3}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ep93xx_mdio_write._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @ep93xx_mdio_write._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 6235337}
!106 = !{i64 6234717}
!107 = !{i64 6235755}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 6235140}
