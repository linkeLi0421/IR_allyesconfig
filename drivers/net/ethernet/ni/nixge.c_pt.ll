; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ni/nixge.c_pt.bc'
source_filename = "../drivers/net/ethernet/ni/nixge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.nixge_hw_dma_bd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nixge_tx_skb = type { ptr, i32, i32, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.nixge_priv = type { ptr, %struct.napi_struct, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.tasklet_struct, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_nixge__349_1396_nixge_driver_init6 = internal global ptr @nixge_driver_init, section ".initcall6.init", align 4
@nixge_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nixge_probe, ptr @nixge_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nixge_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nixge_driver_exit = internal global ptr @nixge_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file350 = internal constant [41 x i8] c"nixge.file=drivers/net/ethernet/ni/nixge\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [21 x i8] c"nixge.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [58 x i8] c"nixge.description=National Instruments XGE Management MAC\00", section ".modinfo", align 1
@__UNIQUE_ID_author353 = internal constant [45 x i8] c"nixge.author=Moritz Fischer <mdf@kernel.org>\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nixge\00", [26 x i8] zeroinitializer }, align 32
@nixge_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ni,xge-enet-2.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ni,xge-enet-3.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@nixge_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @nixge_open, ptr @nixge_stop, ptr @nixge_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @nixge_net_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nixge_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@nixge_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 34, i32 0, ptr @nixge_ethtools_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @nixge_ethtools_get_coalesce, ptr @nixge_ethtools_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nixge_ethtools_set_phys_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not find 'tx' irq\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not find 'rx' irq\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error registering mdio bus\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"not find \22phy-mode\22 property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"broken fixed-link specification\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register_netdev() error (%i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_irq() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: descriptor allocation failed\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.nixge_device_reset = private unnamed_addr constant [19 x i8] c"nixge_device_reset\00", align 1
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ethernet/ni/nixge.c\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DMA reset timeout!\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.__nixge_device_reset = private unnamed_addr constant [21 x i8] c"__nixge_device_reset\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No interrupts asserted in Tx path\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA Tx error 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Current BD is at: 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No interrupts asserted in Rx path\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA Rx error 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Please stop netif before applying configuration\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to map ...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to map dma regs\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map ctrl regs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-mii\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nixge_mii_bus\00", [18 x i8] zeroinitializer }, align 32
@nixge_mdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.13, i32 1102, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout setting address\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nixge_mdio_read\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nixge_mdio_read._entry_ptr = internal global ptr @nixge_mdio_read._entry, section ".printk_index", align 4
@nixge_mdio_read._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.13, i32 1121, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout setting read command\00", [35 x i8] zeroinitializer }, align 32
@nixge_mdio_read._entry_ptr.38 = internal global ptr @nixge_mdio_read._entry.36, section ".printk_index", align 4
@nixge_mdio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.39, ptr @.str.13, i32 1151, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nixge_mdio_write\00", [47 x i8] zeroinitializer }, align 32
@nixge_mdio_write._entry_ptr = internal global ptr @nixge_mdio_write._entry, section ".printk_index", align 4
@nixge_mdio_write._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.13, i32 1163, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout setting write command\00", [34 x i8] zeroinitializer }, align 32
@nixge_mdio_write._entry_ptr.42 = internal global ptr @nixge_mdio_write._entry.40, section ".printk_index", align 4
@nixge_mdio_write._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.13, i32 1178, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@nixge_mdio_write._entry_ptr.44 = internal global ptr @nixge_mdio_write._entry.43, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"nixge_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1388, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1392, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"nixge_dt_ids\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1221, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"nixge_netdev_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 980, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"nixge_ethtool_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1070, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1302, i32 47 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1304, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1309, i32 47 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1311, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1319, i32 47 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1324, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1331, i32 20 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1335, i32 49 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1339, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1348, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 905, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 419, i32 20 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 404, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 408, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 326, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 712, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 719, i32 20 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 720, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 762, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 768, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 993, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1024, i32 7 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1210, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 648, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1245, i32 64 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1247, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1253, i32 65 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1255, i32 20 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1192, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1194, i32 14 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1102, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1121, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1151, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1163, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private constant [35 x i8] c"../drivers/net/ethernet/ni/nixge.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1178, i32 4 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_nixge_driver_exit, ptr @__initcall__kmod_nixge__349_1396_nixge_driver_init6, ptr @nixge_driver_exit, ptr @nixge_mdio_read._entry, ptr @nixge_mdio_read._entry.36, ptr @nixge_mdio_read._entry_ptr, ptr @nixge_mdio_read._entry_ptr.38, ptr @nixge_mdio_write._entry, ptr @nixge_mdio_write._entry.40, ptr @nixge_mdio_write._entry.43, ptr @nixge_mdio_write._entry_ptr, ptr @nixge_mdio_write._entry_ptr.42, ptr @nixge_mdio_write._entry_ptr.44, ptr @nixge_driver, ptr @.str, ptr @nixge_dt_ids, ptr @nixge_netdev_ops, ptr @nixge_ethtool_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_mdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_mdio_read._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_mdio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_mdio_write._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nixge_mdio_write._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nixge_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nixge_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @nixge_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %addr.i = alloca [6 x i8], align 1
  %cell_size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 344, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %parent, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nixge_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nixge_ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %5 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9000, ptr %max_mtu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cell_size.i) #10
  %7 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cell_size.i, align 4, !annotation !117
  %call.i = tail call ptr @nvmem_cell_get(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.nixge_get_nvmem_address.exit_crit_edge, label %if.end.i

if.end.nixge_get_nvmem_address.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_get_nvmem_address.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call ptr @nvmem_cell_read(ptr noundef %call.i, ptr noundef nonnull %cell_size.i) #10
  call void @nvmem_cell_put(ptr noundef %call.i) #10
  br label %nixge_get_nvmem_address.exit

nixge_get_nvmem_address.exit:                     ; preds = %if.end.i, %if.end.nixge_get_nvmem_address.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ %call.i, %if.end.nixge_get_nvmem_address.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cell_size.i) #10
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %nixge_get_nvmem_address.exit.if.else_crit_edge, label %land.lhs.true

nixge_get_nvmem_address.exit.if.else_crit_edge:   ; preds = %nixge_get_nvmem_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %nixge_get_nvmem_address.exit
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %or.i.i = or i32 %9, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i147.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i147.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then6

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then6:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %retval.0.i, i32 noundef 6) #10
  call void @kfree(ptr noundef %retval.0.i) #10
  br label %if.end7

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %nixge_get_nvmem_address.exit.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %13 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr.i, align 1
  %16 = and i8 %15, -4
  %17 = or i8 %16, 2
  store i8 %17, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %18 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %add.ptr.i, align 8
  %dev11 = getelementptr i8, ptr %call, i32 2536
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev11, align 8
  %napi = getelementptr i8, ptr %call, i32 2312
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @nixge_poll, i32 noundef 64) #10
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call2.i148 = call ptr @of_match_node(ptr noundef nonnull @nixge_dt_ids, ptr noundef %24) #10
  %tobool.not.i = icmp eq ptr %call2.i148, null
  br i1 %tobool.not.i, label %if.end7.free_netdev_crit_edge, label %if.end.i150

if.end7.free_netdev_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_netdev

if.end.i150:                                      ; preds = %if.end7
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call2.i148, i32 0, i32 3
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %cmp.i149 = icmp eq ptr %26, null
  br i1 %cmp.i149, label %if.end7.i, label %if.end7.thread.i

if.end7.i:                                        ; preds = %if.end.i150
  %call4.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef null) #10
  %dma_regs.i = getelementptr i8, ptr %22, i32 2568
  %27 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call4.i, ptr %dma_regs.i, align 8
  %cmp.i.i151 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i151, label %if.end7.i.if.then10.i_crit_edge, label %if.then15.i

if.end7.i.if.then10.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.end7.thread.i:                                 ; preds = %if.end.i150
  %call5.i = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.26) #10
  %dma_regs6.i = getelementptr i8, ptr %22, i32 2568
  %28 = ptrtoint ptr %dma_regs6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i, ptr %dma_regs6.i, align 8
  %cmp.i48.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.i, label %if.end7.thread.i.if.then10.i_crit_edge, label %if.else17.i

if.end7.thread.i.if.then10.i_crit_edge:           ; preds = %if.end7.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.thread.i.if.then10.i_crit_edge, %if.end7.i.if.then10.i_crit_edge
  %dma_regs849.i = getelementptr i8, ptr %22, i32 2568
  br label %nixge_of_get_resources.exit

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i152 = getelementptr i8, ptr %call4.i, i32 16384
  br label %if.end20.i

if.else17.i:                                      ; preds = %if.end7.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.28) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else17.i, %if.then15.i
  %call18.sink.i = phi ptr [ %call18.i, %if.else17.i ], [ %add.ptr.i152, %if.then15.i ]
  %ctrl_regs19.i = getelementptr i8, ptr %22, i32 2564
  %29 = ptrtoint ptr %ctrl_regs19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call18.sink.i, ptr %ctrl_regs19.i, align 4
  %cmp.i46.i = icmp ugt ptr %call18.sink.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46.i, label %if.end20.i.nixge_of_get_resources.exit_crit_edge, label %if.end20.i.if.end15_crit_edge

if.end20.i.if.end15_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end20.i.nixge_of_get_resources.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_of_get_resources.exit

nixge_of_get_resources.exit:                      ; preds = %if.end20.i.nixge_of_get_resources.exit_crit_edge, %if.then10.i
  %.str.27.sink = phi ptr [ @.str.27, %if.then10.i ], [ @.str.29, %if.end20.i.nixge_of_get_resources.exit_crit_edge ]
  %retval.0.i153.in.in = phi ptr [ %dma_regs849.i, %if.then10.i ], [ %ctrl_regs19.i, %if.end20.i.nixge_of_get_resources.exit_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull %.str.27.sink) #13
  %30 = ptrtoint ptr %retval.0.i153.in.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %retval.0.i153.in = load ptr, ptr %retval.0.i153.in.in, align 4
  %retval.0.i153 = ptrtoint ptr %retval.0.i153.in to i32
  %tobool13.not = icmp eq ptr %retval.0.i153.in, null
  br i1 %tobool13.not, label %nixge_of_get_resources.exit.if.end15_crit_edge, label %nixge_of_get_resources.exit.free_netdev_crit_edge

nixge_of_get_resources.exit.free_netdev_crit_edge: ; preds = %nixge_of_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_netdev

nixge_of_get_resources.exit.if.end15_crit_edge:   ; preds = %nixge_of_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %nixge_of_get_resources.exit.if.end15_crit_edge, %if.end20.i.if.end15_crit_edge
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i = getelementptr i8, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %34 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %32, i32 3
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %36 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx6.i = getelementptr i8, ptr %32, i32 4
  %37 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %38 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i, %shl8.i
  %arrayidx11.i = getelementptr i8, ptr %32, i32 5
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %40 to i32
  %or14.i = or i32 %or9.i, %conv12.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %41 = call i32 @llvm.bswap.i32(i32 %or14.i) #10
  %ctrl_regs.i.i = getelementptr i8, ptr %call, i32 2564
  %42 = ptrtoint ptr %ctrl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctrl_regs.i.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %43, i32 4096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %41) #10, !srcloc !119
  %44 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx16.i = getelementptr i8, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %45, align 1
  %conv20.i = zext i8 %49 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 8
  %or22.i = or i32 %shl21.i, %conv17.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %50 = call i32 @llvm.bswap.i32(i32 %or22.i) #10
  %51 = ptrtoint ptr %ctrl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl_regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %52, i32 4100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %50) #10, !srcloc !119
  %call17 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #10
  %tx_irq = getelementptr i8, ptr %call, i32 2596
  %53 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call17, ptr %tx_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.2) #13
  %54 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_irq, align 4
  br label %free_netdev

if.end21:                                         ; preds = %if.end15
  %call22 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #10
  %rx_irq = getelementptr i8, ptr %call, i32 2600
  %56 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call22, ptr %rx_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp24 = icmp slt i32 %call22, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.4) #13
  %57 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_irq, align 8
  br label %free_netdev

if.end27:                                         ; preds = %if.end21
  %coalesce_count_rx = getelementptr i8, ptr %call, i32 2636
  %59 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 24, ptr %coalesce_count_rx, align 4
  %coalesce_count_tx = getelementptr i8, ptr %call, i32 2640
  %60 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 24, ptr %coalesce_count_tx, align 8
  %61 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %of_node.i, align 8
  %call29 = call ptr @of_get_child_by_name(ptr noundef %62, ptr noundef nonnull @.str.5) #10
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end27.if.end36_crit_edge, label %if.then31

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %if.end27
  %63 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev11, align 8
  %call.i.i = call ptr @devm_mdiobus_alloc_size(ptr noundef %64, i32 noundef 0) #10
  %tobool.not.i154 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i154, label %nixge_mdio_setup.exit.thread, label %if.end.i155

nixge_mdio_setup.exit.thread:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_node_put(ptr noundef nonnull %call29) #10
  br label %if.then34

if.end.i155:                                      ; preds = %if.then31
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev11, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i155.nixge_mdio_setup.exit_crit_edge

if.end.i155.nixge_mdio_setup.exit_crit_edge:      ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_mdio_setup.exit

if.end.i.i:                                       ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  br label %nixge_mdio_setup.exit

nixge_mdio_setup.exit:                            ; preds = %if.end.i.i, %if.end.i155.nixge_mdio_setup.exit_crit_edge
  %retval.0.i.i = phi ptr [ %70, %if.end.i.i ], [ %68, %if.end.i155.nixge_mdio_setup.exit_crit_edge ]
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i) #10
  %priv4.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %priv4.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.i, ptr %priv4.i, align 8
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.31, ptr %name.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @nixge_mdio_read, ptr %read.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @nixge_mdio_write, ptr %write.i, align 8
  %75 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev11, align 8
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 9
  %77 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %parent.i, align 4
  %mii_bus.i = getelementptr i8, ptr %call, i32 2560
  %78 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i, ptr %mii_bus.i, align 8
  %call6.i = call i32 @of_mdiobus_register(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call29) #10
  call void @of_node_put(ptr noundef nonnull %call29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool33.not = icmp eq i32 %call6.i, 0
  br i1 %tobool33.not, label %nixge_mdio_setup.exit.if.end36_crit_edge, label %nixge_mdio_setup.exit.if.then34_crit_edge

nixge_mdio_setup.exit.if.then34_crit_edge:        ; preds = %nixge_mdio_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

nixge_mdio_setup.exit.if.end36_crit_edge:         ; preds = %nixge_mdio_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %nixge_mdio_setup.exit.if.then34_crit_edge, %nixge_mdio_setup.exit.thread
  %retval.0.i156168 = phi i32 [ -12, %nixge_mdio_setup.exit.thread ], [ %call6.i, %nixge_mdio_setup.exit.if.then34_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.6) #13
  br label %free_netdev

if.end36:                                         ; preds = %nixge_mdio_setup.exit.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  %79 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node.i, align 8
  %phy_mode = getelementptr i8, ptr %call, i32 2544
  %call39 = call i32 @of_get_phy_mode(ptr noundef %80, ptr noundef %phy_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.7) #13
  br label %unregister_mdio

if.end42:                                         ; preds = %if.end36
  %81 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %83 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i157 = call i32 @__of_parse_phandle_with_args(ptr noundef %82, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %land.lhs.true47

of_parse_phandle.exit:                            ; preds = %if.end42
  %84 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %tobool46.not = icmp eq ptr %85, null
  br i1 %tobool46.not, label %of_parse_phandle.exit.land.lhs.true47_crit_edge, label %of_parse_phandle.exit.if.end61_crit_edge

of_parse_phandle.exit.if.end61_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

of_parse_phandle.exit.land.lhs.true47_crit_edge:  ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true47

land.lhs.true47:                                  ; preds = %of_parse_phandle.exit.land.lhs.true47_crit_edge, %of_parse_phandle.exit.thread
  %86 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_node.i, align 8
  %call50 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %87) #10
  br i1 %call50, label %if.then51, label %land.lhs.true47.if.end61_crit_edge

land.lhs.true47.if.end61_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then51:                                        ; preds = %land.lhs.true47
  %88 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %of_node.i, align 8
  %call54 = call i32 @of_phy_register_fixed_link(ptr noundef %89) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.9) #13
  br label %unregister_mdio

if.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %of_node.i, align 8
  %call60 = call ptr @of_node_get(ptr noundef %91) #10
  br label %if.end61

if.end61:                                         ; preds = %if.end57, %land.lhs.true47.if.end61_crit_edge, %of_parse_phandle.exit.if.end61_crit_edge
  %phy_node.0 = phi ptr [ %85, %of_parse_phandle.exit.if.end61_crit_edge ], [ %call60, %if.end57 ], [ null, %land.lhs.true47.if.end61_crit_edge ]
  %phy_node62 = getelementptr i8, ptr %call, i32 2540
  %92 = ptrtoint ptr %phy_node62 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %phy_node.0, ptr %phy_node62, align 4
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  %call64 = call i32 @register_netdev(ptr noundef %94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end61.cleanup_crit_edge, label %if.then66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then66:                                        ; preds = %if.end61
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.10, i32 noundef %call64) #13
  %95 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %of_node.i, align 8
  %call70 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %96) #10
  br i1 %call70, label %if.then71, label %if.then66.if.end74_crit_edge

if.then66.if.end74_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then71:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node.i, align 8
  call void @of_phy_deregister_fixed_link(ptr noundef %98) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.then66.if.end74_crit_edge
  call void @of_node_put(ptr noundef %phy_node.0) #10
  br label %unregister_mdio

unregister_mdio:                                  ; preds = %if.end74, %if.then56, %if.then41
  %err.0 = phi i32 [ %call39, %if.then41 ], [ %call64, %if.end74 ], [ %call54, %if.then56 ]
  %mii_bus = getelementptr i8, ptr %call, i32 2560
  %99 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mii_bus, align 8
  %tobool75.not = icmp eq ptr %100, null
  br i1 %tobool75.not, label %unregister_mdio.free_netdev_crit_edge, label %if.then76

unregister_mdio.free_netdev_crit_edge:            ; preds = %unregister_mdio
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_netdev

if.then76:                                        ; preds = %unregister_mdio
  call void @__sanitizer_cov_trace_pc() #12
  call void @mdiobus_unregister(ptr noundef nonnull %100) #10
  br label %free_netdev

free_netdev:                                      ; preds = %if.then76, %unregister_mdio.free_netdev_crit_edge, %if.then34, %if.then25, %if.then19, %nixge_of_get_resources.exit.free_netdev_crit_edge, %if.end7.free_netdev_crit_edge
  %err.1 = phi i32 [ %retval.0.i153, %nixge_of_get_resources.exit.free_netdev_crit_edge ], [ %55, %if.then19 ], [ %58, %if.then25 ], [ %retval.0.i156168, %if.then34 ], [ %err.0, %if.then76 ], [ %err.0, %unregister_mdio.free_netdev_crit_edge ], [ -19, %if.end7.free_netdev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %free_netdev, %if.end61.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_netdev ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #10
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  tail call void @of_phy_deregister_fixed_link(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_node = getelementptr i8, ptr %1, i32 2540
  %6 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %7) #10
  %mii_bus = getelementptr i8, ptr %1, i32 2560
  %8 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mii_bus, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mdiobus_unregister(ptr noundef nonnull %9) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @free_netdev(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %rx_bd_v.i = getelementptr i8, ptr %1, i32 2616
  %2 = ptrtoint ptr %rx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_bd_v.i, align 8
  %rx_bd_ci.i = getelementptr i8, ptr %1, i32 2632
  %4 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_bd_ci.i, align 8
  %status100.i = getelementptr %struct.nixge_hw_dma_bd, ptr %3, i32 %5, i32 7
  %6 = ptrtoint ptr %status100.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not101.i = icmp slt i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp102.i = icmp ne i32 %budget, 0
  %or.cond103.i = and i1 %cmp102.i, %tobool.not101.i
  br i1 %or.cond103.i, label %while.body.lr.ph.i, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %arrayidx.i = getelementptr %struct.nixge_hw_dma_bd, ptr %3, i32 %5
  %rx_bd_p.i = getelementptr i8, ptr %1, i32 2620
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %napi.i = getelementptr i8, ptr %1, i32 2312
  br label %while.body.i

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi i32 [ %7, %while.body.lr.ph.i ], [ %49, %if.end21.i.while.body.i_crit_edge ]
  %status107.i = phi ptr [ %status100.i, %while.body.lr.ph.i ], [ %status.i, %if.end21.i.while.body.i_crit_edge ]
  %size.0106.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add8.i, %if.end21.i.while.body.i_crit_edge ]
  %packets.0105.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end21.i.while.body.i_crit_edge ]
  %cur_p.0104.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %arrayidx32.i, %if.end21.i.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %rx_bd_p.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_bd_p.i, align 4
  %11 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_bd_ci.i, align 8
  %sw_id_offset_lo.i = getelementptr inbounds %struct.nixge_hw_dma_bd, ptr %cur_p.0104.i, i32 0, i32 13
  %13 = ptrtoint ptr %sw_id_offset_lo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sw_id_offset_lo.i, align 4
  %15 = inttoptr i32 %14 to ptr
  %and3.i = and i32 %8, 8388607
  %16 = tail call i32 @llvm.umin.i32(i32 %and3.i, i32 9018) #10
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %phys_lo.i = getelementptr inbounds %struct.nixge_hw_dma_bd, ptr %cur_p.0104.i, i32 0, i32 2
  %19 = ptrtoint ptr %phys_lo.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys_lo.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %20, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #10
  %call5.i = tail call ptr @skb_put(ptr noundef %15, i32 noundef %16) #10
  %call6.i = tail call zeroext i16 @eth_type_trans(ptr noundef %15, ptr noundef %1) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 15, i32 0, i32 18
  %21 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %call6.i, ptr %protocol.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %call7.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef %15) #10
  %add8.i = add i32 %16, %size.0106.i
  %inc.i = add nuw i32 %packets.0105.i, 1
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 9020, i32 noundef 2592) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.body.i.nixge_recv.exit_crit_edge, label %if.end12.i

while.body.i.nixge_recv.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_recv.exit

if.end12.i:                                       ; preds = %while.body.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %26, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end12.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !120

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %28) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i87.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i87.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %32, %if.end.i.i.i ], [ %30, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %34, i32 noundef -1) #10
  br label %if.then20.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end12.i
  tail call void @debug_dma_map_single(ptr noundef %28, ptr noundef %add.ptr.i.i.i.i, i32 noundef 9018) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i = add i32 %36, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i88.i = getelementptr %struct.page, ptr %35, i32 %shr.i.i
  %and.i.i = and i32 %36, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %28, ptr noundef %add.ptr.i88.i, i32 noundef %and.i.i, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #10
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then20.i_crit_edge, label %dma_map_single_attrs.exit.i.if.end21.i_crit_edge

dma_map_single_attrs.exit.i.if.end21.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

dma_map_single_attrs.exit.i.if.then20.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.then20.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then20.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %dma_map_single_attrs.exit.i.if.end21.i_crit_edge
  %retval.0.i9296.i = phi i32 [ -1, %if.then20.i ], [ %call41.i.i, %dma_map_single_attrs.exit.i.if.end21.i_crit_edge ]
  %39 = ptrtoint ptr %phys_lo.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i9296.i, ptr %phys_lo.i, align 4
  %cntrl.i = getelementptr inbounds %struct.nixge_hw_dma_bd, ptr %cur_p.0104.i, i32 0, i32 6
  %40 = ptrtoint ptr %cntrl.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 9018, ptr %cntrl.i, align 4
  %41 = ptrtoint ptr %status107.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status107.i, align 4
  %42 = ptrtoint ptr %call.i.i.i to i32
  %43 = ptrtoint ptr %sw_id_offset_lo.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sw_id_offset_lo.i, align 4
  %44 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_bd_ci.i, align 8
  %inc28.i = add i32 %45, 1
  %rem.i = and i32 %inc28.i, 127
  store i32 %rem.i, ptr %rx_bd_ci.i, align 8
  %46 = ptrtoint ptr %rx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_bd_v.i, align 8
  %arrayidx32.i = getelementptr %struct.nixge_hw_dma_bd, ptr %47, i32 %rem.i
  %status.i = getelementptr %struct.nixge_hw_dma_bd, ptr %47, i32 %rem.i, i32 7
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp slt i32 %49, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %budget)
  %cmp.i = icmp ult i32 %inc.i, %budget
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end21.i.while.body.i_crit_edge, label %while.cond.while.end_crit_edge.i

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.le.i = shl i32 %12, 6
  %add.le.i = add i32 %mul.le.i, %10
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end.i_crit_edge
  %tail_p.0.lcssa.i = phi i32 [ %add.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %packets.0.lcssa.i = phi i32 [ %inc.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %size.0.lcssa.i = phi i32 [ %add8.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %stats.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %50 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stats.i, align 8
  %add33.i = add i32 %51, %packets.0.lcssa.i
  store i32 %add33.i, ptr %stats.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %52 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_bytes.i, align 8
  %add35.i = add i32 %53, %size.0.lcssa.i
  store i32 %add35.i, ptr %rx_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tail_p.0.lcssa.i)
  %tobool36.not.i = icmp eq i32 %tail_p.0.lcssa.i, 0
  br i1 %tobool36.not.i, label %while.end.i.nixge_recv.exit_crit_edge, label %if.then37.i

while.end.i.nixge_recv.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_recv.exit

if.then37.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %tail_p.0.lcssa.i) #10
  %dma_regs.i.i = getelementptr i8, ptr %1, i32 2568
  %55 = ptrtoint ptr %dma_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_regs.i.i, align 8
  %add.ptr.i89.i = getelementptr i8, ptr %56, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %54) #10, !srcloc !119
  br label %nixge_recv.exit

nixge_recv.exit:                                  ; preds = %if.then37.i, %while.end.i.nixge_recv.exit_crit_edge, %while.body.i.nixge_recv.exit_crit_edge
  %retval.0.i = phi i32 [ %packets.0.lcssa.i, %if.then37.i ], [ %packets.0.lcssa.i, %while.end.i.nixge_recv.exit_crit_edge ], [ %inc.i, %while.body.i.nixge_recv.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %budget)
  %cmp = icmp slt i32 %retval.0.i, %budget
  br i1 %cmp, label %if.then, label %nixge_recv.exit.if.end6_crit_edge

nixge_recv.exit.if.end6_crit_edge:                ; preds = %nixge_recv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %nixge_recv.exit
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %retval.0.i) #10
  %dma_regs.i = getelementptr i8, ptr %napi, i32 256
  %57 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %58, i32 52
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %60 = and i32 %59, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not = icmp eq i32 %60, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %62, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %59) #10, !srcloc !119
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i, label %if.then.i, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %64, i32 48
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %66 = or i32 %65, 3145728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %68, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %66) #10, !srcloc !119
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then.i, %if.then3.if.end6_crit_edge, %nixge_recv.exit.if.end6_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call fastcc void @__nixge_device_reset(ptr noundef %add.ptr.i, i32 noundef 0) #10
  tail call fastcc void @__nixge_device_reset(ptr noundef %add.ptr.i, i32 noundef 48) #10
  %tx_bd_ci.i.i = getelementptr i8, ptr %ndev, i32 2624
  %0 = ptrtoint ptr %tx_bd_ci.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_bd_ci.i.i, align 8
  %tx_bd_tail.i.i = getelementptr i8, ptr %ndev, i32 2628
  %1 = ptrtoint ptr %tx_bd_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_bd_tail.i.i, align 4
  %rx_bd_ci.i.i = getelementptr i8, ptr %ndev, i32 2632
  %2 = ptrtoint ptr %rx_bd_ci.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rx_bd_ci.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i.i, align 8
  %tx_bd_p.i.i = getelementptr i8, ptr %ndev, i32 2612
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 4096, ptr noundef %tx_bd_p.i.i, i32 noundef 3264, i32 noundef 0) #10
  %tx_bd_v.i.i = getelementptr i8, ptr %ndev, i32 2604
  %5 = ptrtoint ptr %tx_bd_v.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %tx_bd_v.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 1024, i32 noundef 3520) #10
  %tx_skb.i.i = getelementptr i8, ptr %ndev, i32 2608
  %8 = ptrtoint ptr %tx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i.i.i, ptr %tx_skb.i.i, align 8
  %tobool7.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end9.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %9 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i, align 8
  %rx_bd_p.i.i = getelementptr i8, ptr %ndev, i32 2620
  %call.i134.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef 8192, ptr noundef %rx_bd_p.i.i, i32 noundef 3264, i32 noundef 0) #10
  %rx_bd_v.i.i = getelementptr i8, ptr %ndev, i32 2616
  %11 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i134.i.i, ptr %rx_bd_v.i.i, align 8
  %tobool14.not.i.i = icmp eq ptr %call.i134.i.i, null
  br i1 %tobool14.not.i.i, label %if.end9.i.i.if.then.i_crit_edge, label %if.end9.i.i.for.body.i.i_crit_edge

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  br label %for.body.i.i

if.end9.i.i.if.then.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end9.i.i.for.body.i.i_crit_edge
  %i.0155.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %tx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bd_p.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.0155.i.i, 1
  %rem.i.i = shl i32 %add.i.i, 6
  %mul.i.i = and i32 %rem.i.i, 4032
  %add18.i.i = add i32 %mul.i.i, %13
  %14 = ptrtoint ptr %tx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_bd_v.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.nixge_hw_dma_bd, ptr %15, i32 %i.0155.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add18.i.i, ptr %arrayidx.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %add.i.i, 64
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.body22.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.body22.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %dma_map_single_attrs.exit.i.i.for.body22.i.i_crit_edge, %for.body.i.i.for.body22.i.i_crit_edge
  %i.1156.i.i = phi i32 [ %add24.i.i, %dma_map_single_attrs.exit.i.i.for.body22.i.i_crit_edge ], [ 0, %for.body.i.i.for.body22.i.i_crit_edge ]
  %17 = ptrtoint ptr %rx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_bd_p.i.i, align 4
  %add24.i.i = add nuw nsw i32 %i.1156.i.i, 1
  %rem25.i.i = shl i32 %add24.i.i, 6
  %mul26.i.i = and i32 %rem25.i.i, 8128
  %add27.i.i = add i32 %mul26.i.i, %18
  %19 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_bd_v.i.i, align 8
  %arrayidx30.i.i = getelementptr %struct.nixge_hw_dma_bd, ptr %20, i32 %i.1156.i.i
  %21 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add27.i.i, ptr %arrayidx30.i.i, align 4
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 9020, i32 noundef 2592) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %for.body22.i.i.if.then.i_crit_edge, label %if.end35.i.i

for.body22.i.i.if.then.i_crit_edge:               ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end35.i.i:                                     ; preds = %for.body22.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %23, i32 2
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %25, i32 2
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %26 = ptrtoint ptr %call.i.i.i.i to i32
  %27 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_bd_v.i.i, align 8
  %sw_id_offset_lo.i.i = getelementptr %struct.nixge_hw_dma_bd, ptr %28, i32 %i.1156.i.i, i32 13
  %29 = ptrtoint ptr %sw_id_offset_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %sw_id_offset_lo.i.i, align 4
  %30 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i.i, align 8
  %32 = load ptr, ptr %data.i.i.i.i.i, align 4
  %call.i135.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %32) #10
  br i1 %call.i135.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end35.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !120

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %31) #10
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i136.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i136.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %31, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %36, %if.end.i.i.i.i ], [ %34, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #10
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %31, ptr noundef %32, i32 noundef 9018) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %32 to i32
  %sub.i.i.i = add i32 %38, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i137.i.i = getelementptr %struct.page, ptr %37, i32 %shr.i.i.i
  %and.i.i.i = and i32 %38, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %31, ptr noundef %add.ptr.i137.i.i, i32 noundef %and.i.i.i, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %39 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_bd_v.i.i, align 8
  %phys_lo.i.i = getelementptr %struct.nixge_hw_dma_bd, ptr %40, i32 %i.1156.i.i, i32 2
  %41 = ptrtoint ptr %phys_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i.i.i, ptr %phys_lo.i.i, align 4
  %42 = load ptr, ptr %rx_bd_v.i.i, align 8
  %cntrl.i.i = getelementptr %struct.nixge_hw_dma_bd, ptr %42, i32 %i.1156.i.i, i32 6
  %43 = ptrtoint ptr %cntrl.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 9018, ptr %cntrl.i.i, align 4
  %exitcond157.not.i.i = icmp eq i32 %add24.i.i, 128
  br i1 %exitcond157.not.i.i, label %nixge_hw_dma_bd_init.exit.thread.i, label %dma_map_single_attrs.exit.i.i.for.body22.i.i_crit_edge

dma_map_single_attrs.exit.i.i.for.body22.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22.i.i

nixge_hw_dma_bd_init.exit.thread.i:               ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_regs.i.i.i = getelementptr i8, ptr %ndev, i32 2568
  %44 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_regs.i.i.i, align 8
  %add.ptr.i138.i.i = getelementptr i8, ptr %45, i32 48
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.i.i) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %47 = and i32 %46, -7405568
  %coalesce_count_rx.i.i = getelementptr i8, ptr %ndev, i32 2636
  %48 = ptrtoint ptr %coalesce_count_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %coalesce_count_rx.i.i, align 4
  %shl.i.i = shl i32 %49, 16
  %shl.masked.i.i = and i32 %shl.i.i, 16711680
  %50 = or i32 %47, 7340286
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  %or54.i.i = or i32 %shl.masked.i.i, %51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %or54.i.i) #10
  %53 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_regs.i.i.i, align 8
  %add.ptr.i140.i.i = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i.i, i32 %52) #10, !srcloc !119
  %55 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_regs.i.i.i, align 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %58 = and i32 %57, -7405568
  %coalesce_count_tx.i.i = getelementptr i8, ptr %ndev, i32 2640
  %59 = ptrtoint ptr %coalesce_count_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %coalesce_count_tx.i.i, align 8
  %shl57.i.i = shl i32 %60, 16
  %shl57.masked.i.i = and i32 %shl57.i.i, 16711680
  %61 = or i32 %58, 7340286
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %or61.i.i = or i32 %shl57.masked.i.i, %62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %63 = tail call i32 @llvm.bswap.i32(i32 %or61.i.i) #10
  %64 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #10, !srcloc !119
  %66 = ptrtoint ptr %rx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_bd_p.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  %69 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_regs.i.i.i, align 8
  %add.ptr.i144.i.i = getelementptr i8, ptr %70, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i.i, i32 %68) #10, !srcloc !119
  %71 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dma_regs.i.i.i, align 8
  %add.ptr.i146.i.i = getelementptr i8, ptr %72, i32 48
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.i.i) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %74 = or i32 %73, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_regs.i.i.i, align 8
  %add.ptr.i148.i.i = getelementptr i8, ptr %76, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i.i, i32 %74) #10, !srcloc !119
  %77 = ptrtoint ptr %rx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_bd_p.i.i, align 4
  %add66.i.i = add i32 %78, 8128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %79 = tail call i32 @llvm.bswap.i32(i32 %add66.i.i) #10
  %80 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_regs.i.i.i, align 8
  %add.ptr.i150.i.i = getelementptr i8, ptr %81, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i.i, i32 %79) #10, !srcloc !119
  %82 = ptrtoint ptr %tx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_bd_p.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %85 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dma_regs.i.i.i, align 8
  %add.ptr.i152.i.i = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i.i, i32 %84) #10, !srcloc !119
  %87 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_regs.i.i.i, align 8
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %90 = or i32 %89, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %91 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_regs.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #10, !srcloc !119
  br label %if.end.i

if.then.i:                                        ; preds = %for.body22.i.i.if.then.i_crit_edge, %if.end9.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call fastcc void @nixge_hw_dma_bd_release(ptr noundef %ndev) #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.nixge_device_reset) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %nixge_hw_dma_bd_init.exit.thread.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %93 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %94, i32 0, i32 12
  %96 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %95)
  %cmp.not.i.i.i = icmp eq i32 %97, %95
  br i1 %cmp.not.i.i.i, label %if.end.i.nixge_device_reset.exit_crit_edge, label %do.body5.i.i.i

if.end.i.nixge_device_reset.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_device_reset.exit

do.body5.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 %95, ptr %trans_start.i.i.i, align 16
  br label %nixge_device_reset.exit

nixge_device_reset.exit:                          ; preds = %do.body5.i.i.i, %if.end.i.nixge_device_reset.exit_crit_edge
  %phy_node = getelementptr i8, ptr %ndev, i32 2540
  %99 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phy_node, align 4
  %phy_mode = getelementptr i8, ptr %ndev, i32 2544
  %101 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %phy_mode, align 8
  %call1 = tail call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef %100, ptr noundef nonnull @nixge_handle_link_change, i32 noundef 0, i32 noundef %102) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %nixge_device_reset.exit.cleanup_crit_edge, label %if.end

nixge_device_reset.exit.cleanup_crit_edge:        ; preds = %nixge_device_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %nixge_device_reset.exit
  tail call void @phy_start(ptr noundef nonnull %call1) #10
  %dma_err_tasklet = getelementptr i8, ptr %ndev, i32 2572
  tail call void @tasklet_setup(ptr noundef %dma_err_tasklet, ptr noundef nonnull @nixge_dma_err_handler) #10
  %napi = getelementptr i8, ptr %ndev, i32 2312
  tail call void @napi_enable(ptr noundef %napi) #10
  %tx_irq = getelementptr i8, ptr %ndev, i32 2596
  %103 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %104, ptr noundef nonnull @nixge_tx_irq, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_tx_irq_crit_edge

if.end.err_tx_irq_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_tx_irq

if.end5:                                          ; preds = %if.end
  %rx_irq = getelementptr i8, ptr %ndev, i32 2600
  %105 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_irq, align 8
  %call.i38 = tail call i32 @request_threaded_irq(i32 noundef %106, ptr noundef nonnull @nixge_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool9.not = icmp eq i32 %call.i38, 0
  br i1 %tobool9.not, label %if.end11, label %err_rx_irq

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %108, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

err_rx_irq:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_irq, align 4
  %call13 = tail call ptr @free_irq(i32 noundef %110, ptr noundef %ndev) #10
  br label %err_tx_irq

err_tx_irq:                                       ; preds = %err_rx_irq, %if.end.err_tx_irq_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.err_tx_irq_crit_edge ], [ %call.i38, %err_rx_irq ]
  tail call void @phy_stop(ptr noundef nonnull %call1) #10
  tail call void @phy_disconnect(ptr noundef nonnull %call1) #10
  tail call void @tasklet_kill(ptr noundef %dma_err_tasklet) #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

cleanup:                                          ; preds = %err_tx_irq, %if.end11, %nixge_device_reset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_tx_irq ], [ 0, %if.end11 ], [ -19, %nixge_device_reset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %napi = getelementptr i8, ptr %ndev, i32 2312
  tail call void @napi_disable(ptr noundef %napi) #10
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_stop(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_regs.i = getelementptr i8, ptr %ndev, i32 2568
  %6 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %9) #10, !srcloc !119
  %12 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs.i, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #10, !srcloc !119
  %dma_err_tasklet = getelementptr i8, ptr %ndev, i32 2572
  tail call void @tasklet_kill(ptr noundef %dma_err_tasklet) #10
  %tx_irq = getelementptr i8, ptr %ndev, i32 2596
  %18 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %ndev) #10
  %rx_irq = getelementptr i8, ptr %ndev, i32 2600
  %20 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_irq, align 8
  %call7 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %ndev) #10
  tail call fastcc void @nixge_hw_dma_bd_release(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_start_xmit(ptr noundef %skb, ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  %tx_bd_v = getelementptr i8, ptr %ndev, i32 2604
  %4 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_bd_v, align 4
  %tx_bd_tail = getelementptr i8, ptr %ndev, i32 2628
  %6 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bd_tail, align 4
  %arrayidx = getelementptr %struct.nixge_hw_dma_bd, ptr %5, i32 %7
  %tx_skb2 = getelementptr i8, ptr %ndev, i32 2608
  %8 = ptrtoint ptr %tx_skb2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_skb2, align 8
  %arrayidx4 = getelementptr %struct.nixge_tx_skb, ptr %9, i32 %7
  %add.i = add i32 %7, %conv
  %rem.i = and i32 %add.i, 63
  %status.i = getelementptr %struct.nixge_hw_dma_bd, ptr %5, i32 %rem.i, i32 7
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %11)
  %tobool.not.i = icmp ult i32 %11, 67108864
  br i1 %tobool.not.i, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %19) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end8
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !120

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %17) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %29, i32 noundef -1) #10
  br label %drop

dma_map_single_attrs.exit:                        ; preds = %if.end8
  %sub.i = sub i32 %21, %23
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %19, i32 noundef %sub.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %19 to i32
  %sub.i159 = add i32 %31, 1073741824
  %shr.i = lshr i32 %sub.i159, 12
  %add.ptr.i160 = getelementptr %struct.page, ptr %30, i32 %shr.i
  %and.i = and i32 %31, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i160, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #10
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %33, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.drop_crit_edge, label %if.end16

dma_map_single_attrs.exit.drop_crit_edge:         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end16:                                         ; preds = %dma_map_single_attrs.exit
  %phys_lo = getelementptr %struct.nixge_hw_dma_bd, ptr %5, i32 %7, i32 2
  %34 = ptrtoint ptr %phys_lo to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call41.i, ptr %phys_lo, align 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %37 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i, align 8
  %sub.i164 = sub i32 %36, %38
  %or = or i32 %sub.i164, 134217728
  %cntrl = getelementptr %struct.nixge_hw_dma_bd, ptr %5, i32 %7, i32 6
  %39 = ptrtoint ptr %cntrl to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %cntrl, align 4
  %40 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx4, align 4
  %mapping = getelementptr %struct.nixge_tx_skb, ptr %9, i32 %7, i32 1
  %41 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call41.i, ptr %mapping, align 4
  %42 = load i32, ptr %len.i, align 4
  %43 = load i32, ptr %data_len.i, align 8
  %sub.i167 = sub i32 %42, %43
  %size = getelementptr %struct.nixge_tx_skb, ptr %9, i32 %7, i32 2
  %44 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i167, ptr %size, align 4
  %mapped_as_page = getelementptr %struct.nixge_tx_skb, ptr %9, i32 %7, i32 3
  %45 = ptrtoint ptr %mapped_as_page to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %mapped_as_page, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp186.not = icmp eq i8 %3, 0
  br i1 %cmp186.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %if.end16.for.body_crit_edge
  %ii.0187 = phi i32 [ %inc50, %if.end40.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %46 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_bd_tail, align 4
  %inc = add i32 %47, 1
  %rem = and i32 %inc, 63
  store i32 %rem, ptr %tx_bd_tail, align 4
  %48 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_bd_v, align 4
  %50 = ptrtoint ptr %tx_skb2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_skb2, align 8
  %arrayidx28 = getelementptr %struct.nixge_tx_skb, ptr %51, i32 %rem
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %end.i, align 4
  %arrayidx30 = getelementptr %struct.skb_shared_info, ptr %53, i32 0, i32 12, i32 %ii.0187
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent, align 8
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %53, i32 0, i32 12, i32 %ii.0187, i32 1
  %56 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bv_len.i, align 4
  %58 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx30, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %53, i32 0, i32 12, i32 %ii.0187, i32 2
  %60 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %55, ptr noundef %59, i32 noundef %61, i32 noundef %57, i32 noundef 1, i32 noundef 0) #10
  %62 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i169.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i169.not, label %for.cond59.preheader, label %if.end40

for.cond59.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ii.0187)
  %cmp60.not189 = icmp eq i32 %ii.0187, 0
  br i1 %cmp60.not189, label %for.cond59.preheader.for.end77_crit_edge, label %for.cond59.preheader.for.body62_crit_edge

for.cond59.preheader.for.body62_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body62

for.cond59.preheader.for.end77_crit_edge:         ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end77

if.end40:                                         ; preds = %for.body
  %phys_lo42 = getelementptr %struct.nixge_hw_dma_bd, ptr %49, i32 %rem, i32 2
  %64 = ptrtoint ptr %phys_lo42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call2.i, ptr %phys_lo42, align 4
  %65 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bv_len.i, align 4
  %cntrl44 = getelementptr %struct.nixge_hw_dma_bd, ptr %49, i32 %rem, i32 6
  %67 = ptrtoint ptr %cntrl44 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %cntrl44, align 4
  %68 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx28, align 4
  %mapping46 = getelementptr %struct.nixge_tx_skb, ptr %51, i32 %rem, i32 1
  %69 = ptrtoint ptr %mapping46 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call2.i, ptr %mapping46, align 4
  %70 = load i32, ptr %bv_len.i, align 4
  %size48 = getelementptr %struct.nixge_tx_skb, ptr %51, i32 %rem, i32 2
  %71 = ptrtoint ptr %size48 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %size48, align 4
  %mapped_as_page49 = getelementptr %struct.nixge_tx_skb, ptr %51, i32 %rem, i32 3
  %72 = ptrtoint ptr %mapped_as_page49 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %mapped_as_page49, align 4
  %inc50 = add nuw nsw i32 %ii.0187, 1
  %exitcond.not = icmp eq i32 %inc50, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx25.le = getelementptr %struct.nixge_hw_dma_bd, ptr %49, i32 %rem
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end16.for.end_crit_edge
  %cur_p.0.lcssa = phi ptr [ %arrayidx25.le, %for.cond.for.end_crit_edge ], [ %arrayidx, %if.end16.for.end_crit_edge ]
  %tx_skb.0.lcssa = phi ptr [ %arrayidx28, %for.cond.for.end_crit_edge ], [ %arrayidx4, %if.end16.for.end_crit_edge ]
  %73 = ptrtoint ptr %tx_skb.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %skb, ptr %tx_skb.0.lcssa, align 4
  %cntrl52 = getelementptr inbounds %struct.nixge_hw_dma_bd, ptr %cur_p.0.lcssa, i32 0, i32 6
  %74 = ptrtoint ptr %cntrl52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cntrl52, align 4
  %or53 = or i32 %75, 67108864
  store i32 %or53, ptr %cntrl52, align 4
  %tx_bd_p = getelementptr i8, ptr %ndev, i32 2612
  %76 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_bd_p, align 4
  %78 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_bd_tail, align 4
  %mul = shl i32 %79, 6
  %add = add i32 %mul, %77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %80 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %dma_regs.i = getelementptr i8, ptr %ndev, i32 2568
  %81 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i173 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %80) #10, !srcloc !119
  %83 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_bd_tail, align 4
  %inc56 = add i32 %84, 1
  %rem58 = and i32 %inc56, 63
  store i32 %rem58, ptr %tx_bd_tail, align 4
  br label %cleanup

for.body62:                                       ; preds = %nixge_tx_skb_unmap.exit.for.body62_crit_edge, %for.cond59.preheader.for.body62_crit_edge
  %ii.1190 = phi i32 [ %dec76, %nixge_tx_skb_unmap.exit.for.body62_crit_edge ], [ %ii.0187, %for.cond59.preheader.for.body62_crit_edge ]
  %85 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_bd_tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool64.not = icmp eq i32 %86, 0
  %dec = add i32 %86, -1
  %storemerge = select i1 %tobool64.not, i32 63, i32 %dec
  %87 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %storemerge, ptr %tx_bd_tail, align 4
  %88 = ptrtoint ptr %tx_skb2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_skb2, align 8
  %arrayidx71 = getelementptr %struct.nixge_tx_skb, ptr %89, i32 %storemerge
  %mapping.i = getelementptr %struct.nixge_tx_skb, ptr %89, i32 %storemerge, i32 1
  %90 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mapping.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i174 = icmp eq i32 %91, 0
  br i1 %tobool.not.i174, label %for.body62.if.end10.i_crit_edge, label %if.then.i175

for.body62.if.end10.i_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i175:                                     ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 8
  %parent6.i = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 133, i32 1
  %94 = ptrtoint ptr %parent6.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %parent6.i, align 8
  %size8.i = getelementptr %struct.nixge_tx_skb, ptr %89, i32 %storemerge, i32 2
  %96 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size8.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %95, i32 noundef %91, i32 noundef %97, i32 noundef 1, i32 noundef 0) #10
  %98 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %mapping.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i175, %for.body62.if.end10.i_crit_edge
  %99 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx71, align 4
  %tobool11.not.i = icmp eq ptr %100, null
  br i1 %tobool11.not.i, label %if.end10.i.nixge_tx_skb_unmap.exit_crit_edge, label %if.then12.i

if.end10.i.nixge_tx_skb_unmap.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_tx_skb_unmap.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %100, i32 noundef 1) #10
  %101 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %arrayidx71, align 4
  br label %nixge_tx_skb_unmap.exit

nixge_tx_skb_unmap.exit:                          ; preds = %if.then12.i, %if.end10.i.nixge_tx_skb_unmap.exit_crit_edge
  %102 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_bd_v, align 4
  %104 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_bd_tail, align 4
  %status = getelementptr %struct.nixge_hw_dma_bd, ptr %103, i32 %105, i32 7
  %106 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %status, align 4
  %dec76 = add nsw i32 %ii.1190, -1
  %cmp60.not = icmp eq i32 %dec76, 0
  br i1 %cmp60.not, label %nixge_tx_skb_unmap.exit.for.end77_crit_edge, label %nixge_tx_skb_unmap.exit.for.body62_crit_edge

nixge_tx_skb_unmap.exit.for.body62_crit_edge:     ; preds = %nixge_tx_skb_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62

nixge_tx_skb_unmap.exit.for.end77_crit_edge:      ; preds = %nixge_tx_skb_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end77

for.end77:                                        ; preds = %nixge_tx_skb_unmap.exit.for.end77_crit_edge, %for.cond59.preheader.for.end77_crit_edge
  %tx_skb.1.lcssa = phi ptr [ %arrayidx28, %for.cond59.preheader.for.end77_crit_edge ], [ %arrayidx71, %nixge_tx_skb_unmap.exit.for.end77_crit_edge ]
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 8
  %parent80 = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 133, i32 1
  %109 = ptrtoint ptr %parent80 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %parent80, align 8
  %mapping81 = getelementptr inbounds %struct.nixge_tx_skb, ptr %tx_skb.1.lcssa, i32 0, i32 1
  %111 = ptrtoint ptr %mapping81 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mapping81, align 4
  %size82 = getelementptr inbounds %struct.nixge_tx_skb, ptr %tx_skb.1.lcssa, i32 0, i32 2
  %113 = ptrtoint ptr %size82 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %size82, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef 1, i32 noundef 0) #10
  br label %drop

drop:                                             ; preds = %for.end77, %dma_map_single_attrs.exit.drop_crit_edge, %dma_map_single_attrs.exit.thread
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %115 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_dropped, align 4
  %inc83 = add i32 %116, 1
  store i32 %inc83, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop, %for.end, %if.then7, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_net_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i = getelementptr i8, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %1, i32 3
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %5 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx6.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %7 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i, %shl8.i
  %arrayidx11.i = getelementptr i8, ptr %1, i32 5
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %9 to i32
  %or14.i = or i32 %or9.i, %conv12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #10
  %ctrl_regs.i.i = getelementptr i8, ptr %ndev, i32 2564
  %11 = ptrtoint ptr %ctrl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_regs.i.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %12, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %10) #10, !srcloc !119
  %13 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx16.i = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  %conv20.i = zext i8 %18 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 8
  %or22.i = or i32 %shl21.i, %conv17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #10
  %20 = ptrtoint ptr %ctrl_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %21, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %19) #10, !srcloc !119
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nixge_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %add1 = add i32 %new_mtu, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 9018, i32 %add1)
  %cmp = icmp sgt i32 %add1, 9018
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nixge_handle_link_change(ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %link2 = getelementptr i8, ptr %ndev, i32 2548
  %3 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bf.cast)
  %cmp.not = icmp eq i32 %4, %bf.cast
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  %speed3 = getelementptr i8, ptr %ndev, i32 2552
  %7 = ptrtoint ptr %speed3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.not = icmp eq i32 %6, %8
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %duplex, align 4
  %duplex6 = getelementptr i8, ptr %ndev, i32 2556
  %11 = ptrtoint ptr %duplex6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %duplex6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp7.not = icmp eq i32 %10, %12
  br i1 %cmp7.not, label %lor.lhs.false5.if.end_crit_edge, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false5.if.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %link2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.cast, ptr %link2, align 4
  %speed14 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %speed14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed14, align 8
  %speed15 = getelementptr i8, ptr %ndev, i32 2552
  %16 = ptrtoint ptr %speed15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %speed15, align 8
  %duplex16 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %duplex16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %duplex16, align 4
  %duplex17 = getelementptr i8, ptr %ndev, i32 2556
  %19 = ptrtoint ptr %duplex17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %duplex17, align 4
  tail call void @phy_print_status(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false5.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nixge_dma_err_handler(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -268
  tail call fastcc void @__nixge_device_reset(ptr noundef %add.ptr, i32 noundef 0)
  tail call fastcc void @__nixge_device_reset(ptr noundef %add.ptr, i32 noundef 48)
  %tx_bd_v = getelementptr i8, ptr %t, i32 32
  %tx_skb1 = getelementptr i8, ptr %t, i32 36
  br label %for.body

for.cond3.preheader:                              ; preds = %nixge_tx_skb_unmap.exit
  %rx_bd_v = getelementptr i8, ptr %t, i32 44
  br label %for.body5

for.body:                                         ; preds = %nixge_tx_skb_unmap.exit.for.body_crit_edge, %entry
  %i.082 = phi i32 [ 0, %entry ], [ %inc, %nixge_tx_skb_unmap.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_bd_v, align 4
  %2 = ptrtoint ptr %tx_skb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb1, align 8
  %arrayidx2 = getelementptr %struct.nixge_tx_skb, ptr %3, i32 %i.082
  %mapping.i = getelementptr %struct.nixge_tx_skb, ptr %3, i32 %i.082, i32 1
  %4 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapping.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.body.if.end10.i_crit_edge, label %if.then.i

for.body.if.end10.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %parent6.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent6.i, align 8
  %size8.i = getelementptr %struct.nixge_tx_skb, ptr %3, i32 %i.082, i32 2
  %10 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size8.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %5, i32 noundef %11, i32 noundef 1, i32 noundef 0) #10
  %12 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mapping.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %for.body.if.end10.i_crit_edge
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2, align 4
  %tobool11.not.i = icmp eq ptr %14, null
  br i1 %tobool11.not.i, label %if.end10.i.nixge_tx_skb_unmap.exit_crit_edge, label %if.then12.i

if.end10.i.nixge_tx_skb_unmap.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_tx_skb_unmap.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %14, i32 noundef 1) #10
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx2, align 4
  br label %nixge_tx_skb_unmap.exit

nixge_tx_skb_unmap.exit:                          ; preds = %if.then12.i, %if.end10.i.nixge_tx_skb_unmap.exit_crit_edge
  %phys_lo = getelementptr %struct.nixge_hw_dma_bd, ptr %1, i32 %i.082, i32 2
  %16 = ptrtoint ptr %phys_lo to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %phys_lo, align 4
  %cntrl = getelementptr %struct.nixge_hw_dma_bd, ptr %1, i32 %i.082, i32 6
  %17 = ptrtoint ptr %cntrl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cntrl, align 4
  %status = getelementptr %struct.nixge_hw_dma_bd, ptr %1, i32 %i.082, i32 7
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %status, align 4
  %sw_id_offset_lo = getelementptr %struct.nixge_hw_dma_bd, ptr %1, i32 %i.082, i32 13
  %19 = ptrtoint ptr %sw_id_offset_lo to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sw_id_offset_lo, align 4
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond3.preheader, label %nixge_tx_skb_unmap.exit.for.body_crit_edge

nixge_tx_skb_unmap.exit.for.body_crit_edge:       ; preds = %nixge_tx_skb_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond3.preheader
  %i.184 = phi i32 [ 0, %for.cond3.preheader ], [ %inc9, %for.body5.for.body5_crit_edge ]
  %20 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_bd_v, align 8
  %status7 = getelementptr %struct.nixge_hw_dma_bd, ptr %21, i32 %i.184, i32 7
  %22 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %status7, align 4
  %inc9 = add nuw nsw i32 %i.184, 1
  %exitcond85.not = icmp eq i32 %inc9, 128
  br i1 %exitcond85.not, label %for.end10, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.end10:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  %tx_bd_ci = getelementptr i8, ptr %t, i32 52
  %23 = ptrtoint ptr %tx_bd_ci to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tx_bd_ci, align 8
  %tx_bd_tail = getelementptr i8, ptr %t, i32 56
  %24 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx_bd_tail, align 4
  %rx_bd_ci = getelementptr i8, ptr %t, i32 60
  %25 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rx_bd_ci, align 8
  %dma_regs.i = getelementptr i8, ptr %t, i32 -4
  %26 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %29 = and i32 %28, -7405568
  %30 = or i32 %29, 7346430
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %30) #10, !srcloc !119
  %33 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_regs.i, align 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %36 = and i32 %35, -7405568
  %37 = or i32 %36, 7346430
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #10, !srcloc !119
  %rx_bd_p = getelementptr i8, ptr %t, i32 48
  %40 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_bd_p, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  %43 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %44, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %42) #10, !srcloc !119
  %45 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %46, i32 48
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %48 = or i32 %47, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i75 = getelementptr i8, ptr %50, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %48) #10, !srcloc !119
  %51 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_bd_p, align 4
  %add = add i32 %52, 8128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %add) #10
  %54 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i77 = getelementptr i8, ptr %55, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %53) #10, !srcloc !119
  %tx_bd_p = getelementptr i8, ptr %t, i32 40
  %56 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_bd_p, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %60, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %58) #10, !srcloc !119
  %61 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_regs.i, align 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %64 = or i32 %63, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #10, !srcloc !119
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_tx_irq(i32 noundef %irq, ptr noundef %_ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs.i = getelementptr i8, ptr %_ndev, i32 2568
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i40 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #10, !srcloc !122
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %and = and i32 %3, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %_ndev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %2) #10, !srcloc !119
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2304
  %tx_bd_v.i = getelementptr i8, ptr %7, i32 2604
  %8 = ptrtoint ptr %tx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_bd_v.i, align 4
  %tx_bd_ci.i = getelementptr i8, ptr %7, i32 2624
  %10 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bd_ci.i, align 8
  %tx_skb1.i = getelementptr i8, ptr %7, i32 2608
  %status4.i = getelementptr %struct.nixge_hw_dma_bd, ptr %9, i32 %11, i32 7
  %12 = ptrtoint ptr %status4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %status.040.i = load i32, ptr %status4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.040.i)
  %tobool.not41.i = icmp sgt i32 %status.040.i, -1
  br i1 %tobool.not41.i, label %if.then.while.end.i_crit_edge, label %while.body.preheader.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then
  %13 = ptrtoint ptr %tx_skb1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_skb1.i, align 8
  %arrayidx3.i = getelementptr %struct.nixge_tx_skb, ptr %14, i32 %11
  %arrayidx.i = getelementptr %struct.nixge_hw_dma_bd, ptr %9, i32 %11
  br label %while.body.i

while.body.i:                                     ; preds = %nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge, %while.body.preheader.i
  %status.046.i = phi i32 [ %status.0.i, %nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge ], [ %status.040.i, %while.body.preheader.i ]
  %size.045.i = phi i32 [ %add.i, %nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %packets.044.i = phi i32 [ %inc.i, %nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %tx_skb.043.i = phi ptr [ %arrayidx15.i, %nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge ], [ %arrayidx3.i, %while.body.preheader.i ]
  %cur_p.042.i = phi ptr [ %arrayidx12.i, %nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge ], [ %arrayidx.i, %while.body.preheader.i ]
  %mapping.i.i = getelementptr inbounds %struct.nixge_tx_skb, ptr %tx_skb.043.i, i32 0, i32 1
  %15 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mapping.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %while.body.i.if.end10.i.i_crit_edge, label %if.then.i.i

while.body.i.if.end10.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  %parent6.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 133, i32 1
  %19 = ptrtoint ptr %parent6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent6.i.i, align 8
  %size8.i.i = getelementptr inbounds %struct.nixge_tx_skb, ptr %tx_skb.043.i, i32 0, i32 2
  %21 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size8.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %16, i32 noundef %22, i32 noundef 1, i32 noundef 0) #10
  %23 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mapping.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then.i.i, %while.body.i.if.end10.i.i_crit_edge
  %24 = ptrtoint ptr %tx_skb.043.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_skb.043.i, align 4
  %tobool11.not.i.i = icmp eq ptr %25, null
  br i1 %tobool11.not.i.i, label %if.end10.i.i.nixge_tx_skb_unmap.exit.i_crit_edge, label %if.then12.i.i

if.end10.i.i.nixge_tx_skb_unmap.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nixge_tx_skb_unmap.exit.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %25, i32 noundef 1) #10
  %26 = ptrtoint ptr %tx_skb.043.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %tx_skb.043.i, align 4
  br label %nixge_tx_skb_unmap.exit.i

nixge_tx_skb_unmap.exit.i:                        ; preds = %if.then12.i.i, %if.end10.i.i.nixge_tx_skb_unmap.exit.i_crit_edge
  %status5.i = getelementptr inbounds %struct.nixge_hw_dma_bd, ptr %cur_p.042.i, i32 0, i32 7
  %27 = ptrtoint ptr %status5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %status5.i, align 4
  %and6.i = and i32 %status.046.i, 8388607
  %add.i = add i32 %and6.i, %size.045.i
  %inc.i = add i32 %packets.044.i, 1
  %28 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_bd_ci.i, align 8
  %inc8.i = add i32 %29, 1
  %rem.i = and i32 %inc8.i, 63
  store i32 %rem.i, ptr %tx_bd_ci.i, align 8
  %30 = ptrtoint ptr %tx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_bd_v.i, align 4
  %arrayidx12.i = getelementptr %struct.nixge_hw_dma_bd, ptr %31, i32 %rem.i
  %32 = ptrtoint ptr %tx_skb1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_skb1.i, align 8
  %arrayidx15.i = getelementptr %struct.nixge_tx_skb, ptr %33, i32 %rem.i
  %status16.i = getelementptr %struct.nixge_hw_dma_bd, ptr %31, i32 %rem.i, i32 7
  %34 = ptrtoint ptr %status16.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %status.0.i = load i32, ptr %status16.i, align 4
  %tobool.not.i = icmp sgt i32 %status.0.i, -1
  br i1 %tobool.not.i, label %nixge_tx_skb_unmap.exit.i.while.end.i_crit_edge, label %nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge

nixge_tx_skb_unmap.exit.i.while.body.i_crit_edge: ; preds = %nixge_tx_skb_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

nixge_tx_skb_unmap.exit.i.while.end.i_crit_edge:  ; preds = %nixge_tx_skb_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %nixge_tx_skb_unmap.exit.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %packets.0.lcssa.i = phi i32 [ 0, %if.then.while.end.i_crit_edge ], [ %inc.i, %nixge_tx_skb_unmap.exit.i.while.end.i_crit_edge ]
  %size.0.lcssa.i = phi i32 [ 0, %if.then.while.end.i_crit_edge ], [ %add.i, %nixge_tx_skb_unmap.exit.i.while.end.i_crit_edge ]
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 1
  %35 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_packets.i, align 4
  %add17.i = add i32 %36, %packets.0.lcssa.i
  store i32 %add17.i, ptr %tx_packets.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 3
  %37 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_bytes.i, align 4
  %add19.i = add i32 %38, %size.0.lcssa.i
  store i32 %add19.i, ptr %tx_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packets.0.lcssa.i)
  %tobool20.not.i = icmp eq i32 %packets.0.lcssa.i, 0
  br i1 %tobool20.not.i, label %while.end.i.cleanup_crit_edge, label %if.then.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %40) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %3, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %_ndev, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %tx_bd_v = getelementptr i8, ptr %_ndev, i32 2604
  %41 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_bd_v, align 4
  %tx_bd_ci = getelementptr i8, ptr %_ndev, i32 2624
  %43 = ptrtoint ptr %tx_bd_ci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_bd_ci, align 8
  %phys_lo = getelementptr %struct.nixge_hw_dma_bd, ptr %42, i32 %44, i32 2
  %45 = ptrtoint ptr %phys_lo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_lo, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %_ndev, ptr noundef nonnull @.str.18, i32 noundef %3) #13
  %conv = zext i32 %46 to i64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %_ndev, ptr noundef nonnull @.str.19, i64 noundef %conv) #13
  %47 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_regs.i, align 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %50 = and i32 %49, -7340033
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #10, !srcloc !119
  %53 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %54, i32 48
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %56 = and i32 %55, -7340033
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %58, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %56) #10, !srcloc !119
  %state.i = getelementptr i8, ptr %_ndev, i32 2576
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i49 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i49, label %if.then.i50, label %if.then9.tasklet_schedule.exit_crit_edge

if.then9.tasklet_schedule.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i50:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %dma_err_tasklet = getelementptr i8, ptr %_ndev, i32 2572
  tail call void @__tasklet_schedule(ptr noundef %dma_err_tasklet) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i50, %if.then9.tasklet_schedule.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i52 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %2) #10, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %tasklet_schedule.exit, %if.end6.cleanup_crit_edge, %if.then5, %if.then.i, %while.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %tasklet_schedule.exit ], [ 1, %while.end.i.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_rx_irq(i32 noundef %irq, ptr noundef %_ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs.i = getelementptr i8, ptr %_ndev, i32 2568
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #10, !srcloc !122
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %and = and i32 %3, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i52 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %2) #10, !srcloc !119
  %6 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %9 = and i32 %8, -3145729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %9) #10, !srcloc !119
  %napi = getelementptr i8, ptr %_ndev, i32 2312
  %call4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call4, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %and8 = and i32 %3, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %_ndev, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %and12 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  %rx_bd_v = getelementptr i8, ptr %_ndev, i32 2616
  %12 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_bd_v, align 8
  %rx_bd_ci = getelementptr i8, ptr %_ndev, i32 2632
  %14 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_bd_ci, align 8
  %phys_lo = getelementptr %struct.nixge_hw_dma_bd, ptr %13, i32 %15, i32 2
  %16 = ptrtoint ptr %phys_lo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_lo, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %_ndev, ptr noundef nonnull @.str.21, i32 noundef %3) #13
  %conv = zext i32 %17 to i64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %_ndev, ptr noundef nonnull @.str.19, i64 noundef %conv) #13
  %18 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_regs.i, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %21 = and i32 %20, -7340033
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !119
  %24 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %25, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %27 = and i32 %26, -7340033
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %27) #10, !srcloc !119
  %state.i = getelementptr i8, ptr %_ndev, i32 2576
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then14.tasklet_schedule.exit_crit_edge

if.then14.tasklet_schedule.exit_crit_edge:        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %dma_err_tasklet = getelementptr i8, ptr %_ndev, i32 2572
  tail call void @__tasklet_schedule(ptr noundef %dma_err_tasklet) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.then14.tasklet_schedule.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %31, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %2) #10, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %tasklet_schedule.exit, %if.end11.cleanup_crit_edge, %if.then10, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %tasklet_schedule.exit ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nixge_device_reset(ptr nocapture noundef readonly %priv, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %dma_regs.i = getelementptr inbounds %struct.nixge_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #10, !srcloc !119
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 406) #10
  %2 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr45 = getelementptr i8, ptr %3, i32 %offset
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not47 = icmp eq i32 %5, 0
  br i1 %tobool.not47, label %entry.if.end33_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %6 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %offset
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  %9 = and i32 %8, 67108864
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then26.if.end33_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 %offset
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  %13 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool30.not = icmp eq i32 %13, 0
  br i1 %tobool30.not, label %for.end.if.end33_crit_edge, label %if.then32

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.__nixge_device_reset) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end.if.end33_crit_edge, %if.then26.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nixge_hw_dma_bd_release(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_bd_v = getelementptr i8, ptr %ndev, i32 2616
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_bd_v, align 8
  %phys_lo = getelementptr %struct.nixge_hw_dma_bd, ptr %1, i32 %i.037, i32 2
  %2 = ptrtoint ptr %phys_lo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_lo, align 4
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %3, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #10
  %6 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_bd_v, align 8
  %sw_id_offset_lo = getelementptr %struct.nixge_hw_dma_bd, ptr %7, i32 %i.037, i32 13
  %8 = ptrtoint ptr %sw_id_offset_lo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sw_id_offset_lo, align 4
  %10 = inttoptr i32 %9 to ptr
  tail call void @consume_skb(ptr noundef %10) #10
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %11 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_bd_v, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %rx_bd_p = getelementptr i8, ptr %ndev, i32 2620
  %15 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_bd_p, align 4
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef 8192, ptr noundef nonnull %12, i32 noundef %16, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %tx_skb = getelementptr i8, ptr %ndev, i32 2608
  %17 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_skb, align 8
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  tail call void @devm_kfree(ptr noundef %20, ptr noundef nonnull %18) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %tx_bd_v = getelementptr i8, ptr %ndev, i32 2604
  %21 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_bd_v, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %if.end12.if.end18_crit_edge, label %if.then14

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %tx_bd_p = getelementptr i8, ptr %ndev, i32 2612
  %25 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bd_p, align 4
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef 4096, ptr noundef nonnull %22, i32 noundef %26, i32 noundef 0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nixge_ethtools_get_drvinfo(ptr nocapture noundef readnone %ndev, ptr noundef %ed) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %ed, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %ed, i32 0, i32 4
  %call2 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef nonnull @.str.22, i32 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_ethtools_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ecoalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs.i = getelementptr i8, ptr %ndev, i32 2568
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %3 = lshr i32 %2, 8
  %shr = and i32 %3, 255
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %rx_max_coalesced_frames, align 4
  %5 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_regs.i, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %8 = lshr i32 %7, 8
  %shr4 = and i32 %8, 255
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 6
  %9 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr4, ptr %tx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_ethtools_set_coalesce(ptr noundef %ndev, ptr nocapture noundef readonly %ecoalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.23) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 2
  %2 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %coalesce_count_rx = getelementptr i8, ptr %ndev, i32 2636
  %4 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %coalesce_count_rx, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 6
  %5 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %coalesce_count_tx = getelementptr i8, ptr %ndev, i32 2640
  %7 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %coalesce_count_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_ethtools_set_phys_id(ptr nocapture noundef readonly %ndev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_regs.i = getelementptr i8, ptr %ndev, i32 2564
  %0 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #10, !srcloc !122
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 0, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %6 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %5) #10, !srcloc !119
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or3 = or i32 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or3) #10
  %9 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %8) #10, !srcloc !119
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %3, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %12 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %11) #10, !srcloc !119
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and6 = and i32 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %and6) #10
  %15 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %14) #10, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = lshr i32 %reg, 16
  %conv = and i32 %2, 31
  %and3 = and i32 %reg, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %and3) #10
  %ctrl_regs.i = getelementptr inbounds %struct.nixge_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #10, !srcloc !119
  %and4 = shl i32 %phy_id, 5
  %shl = and i32 %and4, 992
  %or = or i32 %conv, %shl
  %or8 = or i32 %or, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %or8) #10
  %7 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %6) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 16777216) #10, !srcloc !119
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 1100) #10
  %11 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr184 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not185 = icmp eq i32 %13, 0
  br i1 %tobool21.not185, label %if.then.if.end49_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then39.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then29, label %if.then39

if.then29:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %phi.cmp168 = icmp eq i32 %16, 0
  br i1 %phi.cmp168, label %if.then29.if.end49_crit_edge, label %do.end48

if.then29.if.end49_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then39:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %17 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.then39.if.end49_crit_edge, label %if.then39.land.lhs.true_crit_edge

if.then39.land.lhs.true_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then39.if.end49_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end48:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.nixge_priv, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end49:                                         ; preds = %if.then39.if.end49_crit_edge, %if.then29.if.end49_crit_edge, %if.then.if.end49_crit_edge
  %or56 = or i32 %or, 7168
  br label %if.end66

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv58 = and i32 %reg, 31
  %and59 = shl i32 %phy_id, 5
  %shl60 = and i32 %and59, 992
  %or61 = or i32 %conv58, %shl60
  %or65 = or i32 %or61, 2048
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.end49
  %tmp.0 = phi i32 [ %or56, %if.end49 ], [ %or65, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #10
  %ctrl_regs.i173 = getelementptr inbounds %struct.nixge_priv, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %ctrl_regs.i173 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl_regs.i173, align 4
  %add.ptr.i174 = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %22) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %ctrl_regs.i173 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_regs.i173, align 4
  %add.ptr.i176 = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 16777216) #10, !srcloc !119
  %call70 = tail call i64 @ktime_get() #10
  %add.i177 = add i64 %call70, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 1119) #10
  %27 = ptrtoint ptr %ctrl_regs.i173 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_regs.i173, align 4
  %add.ptr89186 = getelementptr i8, ptr %28, i32 28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89186) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool93.not187 = icmp eq i32 %29, 0
  br i1 %tobool93.not187, label %if.end66.if.end127_crit_edge, label %if.end66.land.lhs.true97_crit_edge

if.end66.land.lhs.true97_crit_edge:               ; preds = %if.end66
  br label %land.lhs.true97

if.end66.if.end127_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true97:                                  ; preds = %if.then112.land.lhs.true97_crit_edge, %if.end66.land.lhs.true97_crit_edge
  %call98 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call98, i64 %add.i177)
  %cmp3.i179 = icmp sgt i64 %call98, %add.i177
  br i1 %cmp3.i179, label %if.then102, label %if.then112

if.then102:                                       ; preds = %land.lhs.true97
  %30 = ptrtoint ptr %ctrl_regs.i173 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_regs.i173, align 4
  %add.ptr106 = getelementptr i8, ptr %31, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %phi.cmp = icmp eq i32 %32, 0
  br i1 %phi.cmp, label %if.then102.if.end127_crit_edge, label %do.end125

if.then102.if.end127_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then112:                                       ; preds = %land.lhs.true97
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %33 = ptrtoint ptr %ctrl_regs.i173 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_regs.i173, align 4
  %add.ptr89 = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %tobool93.not = icmp eq i32 %35, 0
  br i1 %tobool93.not, label %if.then112.if.end127_crit_edge, label %if.then112.land.lhs.true97_crit_edge

if.then112.land.lhs.true97_crit_edge:             ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97

if.then112.if.end127_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

do.end125:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  %dev126 = getelementptr inbounds %struct.nixge_priv, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev126, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end127:                                        ; preds = %if.then112.if.end127_crit_edge, %if.then102.if.end127_crit_edge, %if.end66.if.end127_crit_edge
  %38 = ptrtoint ptr %ctrl_regs.i173 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrl_regs.i173, align 4
  %add.ptr.i183 = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #10, !srcloc !122
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %do.end125, %do.end48
  %retval.0 = phi i32 [ -110, %do.end48 ], [ -110, %do.end125 ], [ %41, %if.end127 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nixge_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = lshr i32 %reg, 16
  %conv = and i32 %2, 31
  %and3 = and i32 %reg, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %and3) #10
  %ctrl_regs.i = getelementptr inbounds %struct.nixge_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #10, !srcloc !119
  %and4 = shl i32 %phy_id, 5
  %shl = and i32 %and4, 992
  %or = or i32 %conv, %shl
  %or8 = or i32 %or, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %or8) #10
  %7 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i247 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %6) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i249 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 16777216) #10, !srcloc !119
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 1149) #10
  %11 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr280 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr280) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not281 = icmp eq i32 %13, 0
  br i1 %tobool21.not281, label %if.then.if.end49_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then39.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then29, label %if.then39

if.then29:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %phi.cmp244 = icmp eq i32 %16, 0
  br i1 %phi.cmp244, label %if.then29.if.end49_crit_edge, label %if.then29.cleanup.sink.split_crit_edge

if.then29.cleanup.sink.split_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then29.if.end49_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then39:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %17 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.then39.if.end49_crit_edge, label %if.then39.land.lhs.true_crit_edge

if.then39.land.lhs.true_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then39.if.end49_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %if.then39.if.end49_crit_edge, %if.then29.if.end49_crit_edge, %if.then.if.end49_crit_edge
  %or56 = or i32 %or, 5120
  %conv57 = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv57) #10
  %21 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %20) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %or56) #10
  %24 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr.i253 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253, i32 %23) #10, !srcloc !119
  %call61 = tail call i64 @ktime_get() #10
  %add.i254 = add i64 %call61, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 1161) #10
  %26 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr80282 = getelementptr i8, ptr %27, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80282) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool84.not283 = icmp eq i32 %28, 0
  br i1 %tobool84.not283, label %if.end49.cleanup_crit_edge, label %if.end49.land.lhs.true88_crit_edge

if.end49.land.lhs.true88_crit_edge:               ; preds = %if.end49
  br label %land.lhs.true88

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true88:                                  ; preds = %if.then103.land.lhs.true88_crit_edge, %if.end49.land.lhs.true88_crit_edge
  %call89 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call89, i64 %add.i254)
  %cmp3.i256 = icmp sgt i64 %call89, %add.i254
  br i1 %cmp3.i256, label %for.end107, label %if.then103

if.then103:                                       ; preds = %land.lhs.true88
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %29 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr80 = getelementptr i8, ptr %30, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  %tobool84.not = icmp eq i32 %31, 0
  br i1 %tobool84.not, label %if.then103.cleanup_crit_edge, label %if.then103.land.lhs.true88_crit_edge

if.then103.land.lhs.true88_crit_edge:             ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true88

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end107:                                       ; preds = %land.lhs.true88
  %32 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_regs.i, align 4
  %add.ptr97 = getelementptr i8, ptr %33, i32 28
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %phi.cmp245 = icmp eq i32 %34, 0
  br i1 %phi.cmp245, label %for.end107.cleanup_crit_edge, label %for.end107.cleanup.sink.split_crit_edge

for.end107.cleanup.sink.split_crit_edge:          ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.end107.cleanup_crit_edge:                     ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %conv120 = and i32 %reg, 31
  %and121 = shl i32 %phy_id, 5
  %shl122 = and i32 %and121, 992
  %or123 = or i32 %conv120, %shl122
  %or127 = or i32 %or123, 1024
  %conv128 = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv128) #10
  %ctrl_regs.i259 = getelementptr inbounds %struct.nixge_priv, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %ctrl_regs.i259 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl_regs.i259, align 4
  %add.ptr.i260 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 %35) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %38 = tail call i32 @llvm.bswap.i32(i32 %or127) #10
  %39 = ptrtoint ptr %ctrl_regs.i259 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl_regs.i259, align 4
  %add.ptr.i262 = getelementptr i8, ptr %40, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %38) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %ctrl_regs.i259 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl_regs.i259, align 4
  %add.ptr.i264 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264, i32 16777216) #10, !srcloc !119
  %call132 = tail call i64 @ktime_get() #10
  %add.i265 = add i64 %call132, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 1176) #10
  %43 = ptrtoint ptr %ctrl_regs.i259 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl_regs.i259, align 4
  %add.ptr151284 = getelementptr i8, ptr %44, i32 28
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151284) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool155.not285 = icmp eq i32 %45, 0
  br i1 %tobool155.not285, label %if.else.cleanup_crit_edge, label %if.else.land.lhs.true159_crit_edge

if.else.land.lhs.true159_crit_edge:               ; preds = %if.else
  br label %land.lhs.true159

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true159:                                 ; preds = %if.then174.land.lhs.true159_crit_edge, %if.else.land.lhs.true159_crit_edge
  %call160 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call160, i64 %add.i265)
  %cmp3.i267 = icmp sgt i64 %call160, %add.i265
  br i1 %cmp3.i267, label %for.end178, label %if.then174

if.then174:                                       ; preds = %land.lhs.true159
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %46 = ptrtoint ptr %ctrl_regs.i259 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl_regs.i259, align 4
  %add.ptr151 = getelementptr i8, ptr %47, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %tobool155.not = icmp eq i32 %48, 0
  br i1 %tobool155.not, label %if.then174.cleanup_crit_edge, label %if.then174.land.lhs.true159_crit_edge

if.then174.land.lhs.true159_crit_edge:            ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true159

if.then174.cleanup_crit_edge:                     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end178:                                       ; preds = %land.lhs.true159
  %49 = ptrtoint ptr %ctrl_regs.i259 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl_regs.i259, align 4
  %add.ptr168 = getelementptr i8, ptr %50, i32 28
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %phi.cmp = icmp eq i32 %51, 0
  br i1 %phi.cmp, label %for.end178.cleanup_crit_edge, label %for.end178.cleanup.sink.split_crit_edge

for.end178.cleanup.sink.split_crit_edge:          ; preds = %for.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.end178.cleanup_crit_edge:                     ; preds = %for.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end178.cleanup.sink.split_crit_edge, %for.end107.cleanup.sink.split_crit_edge, %if.then29.cleanup.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.32, %if.then29.cleanup.sink.split_crit_edge ], [ @.str.41, %for.end107.cleanup.sink.split_crit_edge ], [ @.str.41, %for.end178.cleanup.sink.split_crit_edge ]
  %dev117 = getelementptr inbounds %struct.nixge_priv, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev117, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull %.str.41.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end178.cleanup_crit_edge, %if.then174.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.end107.cleanup_crit_edge, %if.then103.cleanup_crit_edge, %if.end49.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end107.cleanup_crit_edge ], [ 0, %for.end178.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.then174.cleanup_crit_edge ], [ 0, %if.then103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_nixge__349_1396_nixge_driver_init6, !1, !"__initcall__kmod_nixge__349_1396_nixge_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1396, i32 1}
!2 = !{ptr @__exitcall_nixge_driver_exit, !1, !"__exitcall_nixge_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file350, !4, !"__UNIQUE_ID_file350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1398, i32 1}
!5 = !{ptr @__UNIQUE_ID_license351, !4, !"__UNIQUE_ID_license351", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description352, !7, !"__UNIQUE_ID_description352", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1399, i32 1}
!8 = !{ptr @__UNIQUE_ID_author353, !9, !"__UNIQUE_ID_author353", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1400, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1392, i32 12}
!12 = !{ptr @nixge_driver, !13, !"nixge_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1388, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1302, i32 47}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1304, i32 20}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1309, i32 47}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1311, i32 20}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1319, i32 47}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1324, i32 21}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1331, i32 20}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1335, i32 49}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1339, i32 21}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1348, i32 20}
!34 = !{ptr @nixge_netdev_ops, !35, !"nixge_netdev_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 980, i32 36}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 905, i32 19}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 419, i32 20}
!40 = !{ptr @__func__.nixge_device_reset, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 420, i32 7}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 404, i32 8}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 408, i32 26}
!46 = !{ptr @__func__.__nixge_device_reset, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 408, i32 54}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 712, i32 20}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 719, i32 20}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 720, i32 20}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 762, i32 20}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 768, i32 20}
!62 = !{ptr @nixge_ethtool_ops, !63, !"nixge_ethtool_ops", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1070, i32 33}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 993, i32 24}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1024, i32 7}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1210, i32 29}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 648, i32 21}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1245, i32 64}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1247, i32 20}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1253, i32 65}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1255, i32 20}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1192, i32 37}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1194, i32 14}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1102, i32 4}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @nixge_mdio_read._entry, !85, !"_entry", i1 false, i1 false}
!90 = !{ptr @nixge_mdio_read._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1121, i32 3}
!93 = !{ptr @nixge_mdio_read._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @nixge_mdio_read._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1151, i32 4}
!97 = !{ptr @nixge_mdio_write._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @nixge_mdio_write._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1163, i32 4}
!101 = !{ptr @nixge_mdio_write._entry.40, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @nixge_mdio_write._entry_ptr.42, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @nixge_mdio_write._entry.43, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1178, i32 4}
!105 = !{ptr @nixge_mdio_write._entry_ptr.44, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @nixge_dt_ids, !107, !"nixge_dt_ids", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/ni/nixge.c", i32 1221, i32 34}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i64 2156656643}
!119 = !{i64 6080057}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2156655650}
!122 = !{i64 6080475}
!123 = !{i64 2156656422}
!124 = !{i64 2156655191}
!125 = !{i64 2156661797}
!126 = !{i64 2156662339}
!127 = !{i64 2156657339}
!128 = !{i64 2156670667}
!129 = !{i64 2156671205}
!130 = !{i64 2156675230}
!131 = !{i64 2156675768}
!132 = !{i64 2156679444}
!133 = !{i64 2156679982}
!134 = !{i64 2156683701}
!135 = !{i64 2156684239}
!136 = !{i64 2156687935}
!137 = !{i64 2156688473}
