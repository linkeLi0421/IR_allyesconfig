; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.emac_variant = type { i32, ptr, i8, i8, i8, i8, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sunxi_priv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.130, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.130 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.131, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%union.anon.131 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.135, %struct.anon.136 }
%struct.anon.135 = type { i32, i32, i32 }
%struct.anon.136 = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_dwmac_sun8i__385_1347_sun8i_dwmac_driver_init6 = internal global ptr @sun8i_dwmac_driver_init, section ".initcall6.init", align 4
@sun8i_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_dwmac_probe, ptr @sun8i_dwmac_remove, ptr @sun8i_dwmac_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun8i_dwmac_driver_exit = internal global ptr @sun8i_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author386 = internal constant [62 x i8] c"dwmac_sun8i.author=Corentin Labbe <clabbe.montjoie@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description387 = internal constant [66 x i8] c"dwmac_sun8i.description=Allwinner sun8i DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [65 x i8] c"dwmac_sun8i.file=drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [24 x i8] c"dwmac_sun8i.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dwmac-sun8i\00", [20 x i8] zeroinitializer }, align 32
@sun8i_dwmac_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_h3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_v3s }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_a83t }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_r40 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_a64 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_h6 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@sun8i_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing dwmac-sun8i variant\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_dwmac_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry_ptr = internal global ptr @sun8i_dwmac_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmmaceth\00", [22 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not get TX clock\0A\00", [40 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry_ptr.9 = internal global ptr @sun8i_dwmac_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1181, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No regulator found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry_ptr.14 = internal global ptr @sun8i_dwmac_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to map syscon: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry_ptr.18 = internal global ptr @sun8i_dwmac_probe._entry.16, section ".printk_index", align 4
@sun8i_dwmac_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to map syscon register: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry_ptr.21 = internal global ptr @sun8i_dwmac_probe._entry.19, section ".printk_index", align 4
@sun8i_dwmac_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to register mux\0A\00", [40 x i8] zeroinitializer }, align 32
@sun8i_dwmac_probe._entry_ptr.24 = internal global ptr @sun8i_dwmac_probe._entry.22, section ".printk_index", align 4
@sun8i_dwmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fail to enable regulator\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun8i_dwmac_init\00", [47 x i8] zeroinitializer }, align 32
@sun8i_dwmac_init._entry_ptr = internal global ptr @sun8i_dwmac_init._entry, section ".printk_index", align 4
@sun8i_dwmac_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not enable AHB clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_dwmac_init._entry_ptr.29 = internal global ptr @sun8i_dwmac_init._entry.27, section ".printk_index", align 4
@sun8i_dwmac_power_internal_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 817, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Internal PHY already powered\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sun8i_dwmac_power_internal_phy\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun8i_dwmac_power_internal_phy._entry_ptr = internal global ptr @sun8i_dwmac_power_internal_phy._entry, section ".printk_index", align 4
@sun8i_dwmac_power_internal_phy._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.3, i32 821, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Powering internal PHY\0A\00", [41 x i8] zeroinitializer }, align 32
@sun8i_dwmac_power_internal_phy._entry_ptr.35 = internal global ptr @sun8i_dwmac_power_internal_phy._entry.33, section ".printk_index", align 4
@sun8i_dwmac_power_internal_phy._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.3, i32 824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot enable internal PHY\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_dwmac_power_internal_phy._entry_ptr.38 = internal global ptr @sun8i_dwmac_power_internal_phy._entry.36, section ".printk_index", align 4
@sun8i_dwmac_power_internal_phy._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.31, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot reset internal PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@sun8i_dwmac_power_internal_phy._entry_ptr.41 = internal global ptr @sun8i_dwmac_power_internal_phy._entry.39, section ".printk_index", align 4
@sun8i_dwmac_ops = internal constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @sun8i_dwmac_core_init, ptr @sun8i_dwmac_set_mac, ptr @sun8i_dwmac_rx_ipc_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_dwmac_dump_mac_regs, ptr null, ptr null, ptr @sun8i_dwmac_set_filter, ptr @sun8i_dwmac_flow_ctrl, ptr null, ptr @sun8i_dwmac_set_umac_addr, ptr @sun8i_dwmac_get_umac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_dwmac_set_mac_loopback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sun8i_dwmac_dma_ops = internal constant { %struct.stmmac_dma_ops, [44 x i8] } { %struct.stmmac_dma_ops { ptr @sun8i_dwmac_dma_reset, ptr @sun8i_dwmac_dma_init, ptr null, ptr @sun8i_dwmac_dma_init_rx, ptr @sun8i_dwmac_dma_init_tx, ptr null, ptr @sun8i_dwmac_dump_regs, ptr @sun8i_dwmac_dma_operation_mode_rx, ptr @sun8i_dwmac_dma_operation_mode_tx, ptr null, ptr @sun8i_dwmac_enable_dma_transmission, ptr @sun8i_dwmac_enable_dma_irq, ptr @sun8i_dwmac_disable_dma_irq, ptr @sun8i_dwmac_dma_start_tx, ptr @sun8i_dwmac_dma_stop_tx, ptr @sun8i_dwmac_dma_start_rx, ptr @sun8i_dwmac_dma_stop_rx, ptr @sun8i_dwmac_dma_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Too many address, switching to promiscuous\0A\00", [52 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 932, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fail to read from regmap field.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun8i_dwmac_set_syscon\00", [41 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr = internal global ptr @sun8i_dwmac_set_syscon._entry, section ".printk_index", align 4
@sun8i_dwmac_set_syscon._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 940, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Current syscon value is not the default %x (expect %x)\0A\00", [40 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr.47 = internal global ptr @sun8i_dwmac_set_syscon._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"allwinner,leds-active-low\00", [38 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.3, i32 953, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not parse MDIO addr\0A\00", [37 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr.51 = internal global ptr @sun8i_dwmac_set_syscon._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allwinner,tx-delay-ps\00", [42 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.3, i32 969, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tx-delay must be a multiple of 100\0A\00", [60 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr.55 = internal global ptr @sun8i_dwmac_set_syscon._entry.53, section ".printk_index", align 4
@sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.44, ptr @.str.3, ptr @.str.57, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dwmac_sun8i\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set tx-delay to %x\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.44, ptr @.str.3, i32 980, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid TX clock delay: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr.60 = internal global ptr @sun8i_dwmac_set_syscon._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allwinner,rx-delay-ps\00", [42 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.44, ptr @.str.3, i32 987, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx-delay must be a multiple of 100\0A\00", [60 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr.64 = internal global ptr @sun8i_dwmac_set_syscon._entry.62, section ".printk_index", align 4
@sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.44, ptr @.str.3, ptr @.str.65, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set rx-delay to %x\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.44, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid RX clock delay: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr.68 = internal global ptr @sun8i_dwmac_set_syscon._entry.66, section ".printk_index", align 4
@sun8i_dwmac_set_syscon._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.44, ptr @.str.3, i32 1023, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported interface mode: %s\00", [33 x i8] zeroinitializer }, align 32
@sun8i_dwmac_set_syscon._entry_ptr.71 = internal global ptr @sun8i_dwmac_set_syscon._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.75, i32 45, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s has invalid PHY address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_mdio_parse_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/of_mdio.h\00", [40 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr = internal global ptr @of_mdio_parse_addr._entry, section ".printk_index", align 4
@of_mdio_parse_addr._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.75, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s PHY address %i is too large\0A\00", [32 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr.78 = internal global ptr @of_mdio_parse_addr._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdio-mux\00", [23 x i8] zeroinitializer }, align 32
@get_ephy_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 774, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot get mdio-mux node\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_ephy_nodes\00", [17 x i8] zeroinitializer }, align 32
@get_ephy_nodes._entry_ptr = internal global ptr @get_ephy_nodes._entry, section ".printk_index", align 4
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"allwinner,sun8i-h3-mdio-internal\00", [63 x i8] zeroinitializer }, align 32
@get_ephy_nodes._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.112, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot get internal_mdio node\0A\00", [33 x i8] zeroinitializer }, align 32
@get_ephy_nodes._entry_ptr.116 = internal global ptr @get_ephy_nodes._entry.114, section ".printk_index", align 4
@get_ephy_nodes._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.112, ptr @.str.3, i32 801, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Found internal PHY node\0A\00", [39 x i8] zeroinitializer }, align 32
@get_ephy_nodes._entry_ptr.119 = internal global ptr @get_ephy_nodes._entry.117, section ".printk_index", align 4
@mdio_mux_syscon_switch_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 877, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Switch mux to internal PHY\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mdio_mux_syscon_switch_fn\00", [38 x i8] zeroinitializer }, align 32
@mdio_mux_syscon_switch_fn._entry_ptr = internal global ptr @mdio_mux_syscon_switch_fn._entry, section ".printk_index", align 4
@mdio_mux_syscon_switch_fn._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.3, i32 882, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Switch mux to external PHY\00", [37 x i8] zeroinitializer }, align 32
@mdio_mux_syscon_switch_fn._entry_ptr.124 = internal global ptr @mdio_mux_syscon_switch_fn._entry.122, section ".printk_index", align 4
@mdio_mux_syscon_switch_fn._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid child ID %x\0A\00", [43 x i8] zeroinitializer }, align 32
@mdio_mux_syscon_switch_fn._entry_ptr.127 = internal global ptr @mdio_mux_syscon_switch_fn._entry.125, section ".printk_index", align 4
@sun8i_dwmac_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EMAC reset timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_dwmac_reset\00", [46 x i8] zeroinitializer }, align 32
@sun8i_dwmac_reset._entry_ptr = internal global ptr @sun8i_dwmac_reset._entry, section ".printk_index", align 4
@emac_variant_h3 = internal constant { %struct.emac_variant, [16 x i8] } { %struct.emac_variant { i32 360448, ptr @sun8i_syscon_reg_field, i8 1, i8 1, i8 1, i8 1, i8 31, i8 7 }, [16 x i8] zeroinitializer }, align 32
@emac_variant_v3s = internal constant { %struct.emac_variant, [16 x i8] } { %struct.emac_variant { i32 229376, ptr @sun8i_syscon_reg_field, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@emac_variant_a83t = internal constant { %struct.emac_variant, [16 x i8] } { %struct.emac_variant { i32 0, ptr @sun8i_syscon_reg_field, i8 0, i8 1, i8 0, i8 1, i8 31, i8 7 }, [16 x i8] zeroinitializer }, align 32
@emac_variant_r40 = internal constant { %struct.emac_variant, [16 x i8] } { %struct.emac_variant { i32 0, ptr @sun8i_ccu_reg_field, i8 0, i8 1, i8 0, i8 1, i8 7, i8 0 }, [16 x i8] zeroinitializer }, align 32
@emac_variant_a64 = internal constant { %struct.emac_variant, [16 x i8] } { %struct.emac_variant { i32 0, ptr @sun8i_syscon_reg_field, i8 0, i8 1, i8 1, i8 1, i8 31, i8 7 }, [16 x i8] zeroinitializer }, align 32
@emac_variant_h6 = internal constant { %struct.emac_variant, [16 x i8] } { %struct.emac_variant { i32 327680, ptr @sun8i_syscon_reg_field, i8 0, i8 1, i8 1, i8 1, i8 31, i8 7 }, [16 x i8] zeroinitializer }, align 32
@sun8i_syscon_reg_field = internal constant { %struct.reg_field, [44 x i8] } { %struct.reg_field { i32 48, i32 0, i32 31, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sun8i_ccu_reg_field = internal constant { %struct.reg_field, [44 x i8] } { %struct.reg_field { i32 356, i32 0, i32 31, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.108, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"sun8i_dwmac_driver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1337, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1342, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"sun8i_dwmac_match\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1320, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1166, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1170, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1172, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1177, i32 53 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1181, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1205, i32 9 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1208, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1216, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1266, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 577, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 584, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 817, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 821, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 824, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 835, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [16 x i8] c"sun8i_dwmac_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1064, i32 32 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"sun8i_dwmac_dma_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 548, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 710, i32 21 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 932, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 938, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 943, i32 35 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 953, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 967, i32 34 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 969, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 973, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 979, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 985, i32 34 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 987, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 991, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 997, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1022, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 43, i32 33 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 45, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [27 x i8] c"../include/linux/of_mdio.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 51, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 211, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 213, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 215, i32 10 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 217, i32 10 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 219, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 221, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 223, i32 10 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 225, i32 10 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 227, i32 10 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 229, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 231, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 233, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 235, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 237, i32 10 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 239, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 241, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 243, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 245, i32 10 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 247, i32 10 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 249, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 251, i32 10 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 253, i32 10 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 255, i32 10 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 257, i32 10 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 259, i32 10 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 261, i32 10 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 263, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 265, i32 10 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 267, i32 10 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 269, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 271, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 772, i32 57 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 774, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 779, i32 7 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 782, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 801, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 877, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 882, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 887, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 758, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [16 x i8] c"emac_variant_h3\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 96, i32 34 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"emac_variant_v3s\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 107, i32 34 }
@___asan_gen_.501 = private unnamed_addr constant [18 x i8] c"emac_variant_a83t\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 114, i32 34 }
@___asan_gen_.504 = private unnamed_addr constant [17 x i8] c"emac_variant_r40\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 124, i32 34 }
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"emac_variant_a64\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 132, i32 34 }
@___asan_gen_.510 = private unnamed_addr constant [16 x i8] c"emac_variant_h6\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 143, i32 34 }
@___asan_gen_.513 = private unnamed_addr constant [23 x i8] c"sun8i_syscon_reg_field\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 83, i32 31 }
@___asan_gen_.516 = private unnamed_addr constant [20 x i8] c"sun8i_ccu_reg_field\00", align 1
@___asan_gen_.517 = private constant [53 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 90, i32 31 }
@___asan_gen_.519 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@llvm.compiler.used = appending global [166 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description387, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__exitcall_sun8i_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_sun8i__385_1347_sun8i_dwmac_driver_init6, ptr @get_ephy_nodes._entry, ptr @get_ephy_nodes._entry.114, ptr @get_ephy_nodes._entry.117, ptr @get_ephy_nodes._entry_ptr, ptr @get_ephy_nodes._entry_ptr.116, ptr @get_ephy_nodes._entry_ptr.119, ptr @mdio_mux_syscon_switch_fn._entry, ptr @mdio_mux_syscon_switch_fn._entry.122, ptr @mdio_mux_syscon_switch_fn._entry.125, ptr @mdio_mux_syscon_switch_fn._entry_ptr, ptr @mdio_mux_syscon_switch_fn._entry_ptr.124, ptr @mdio_mux_syscon_switch_fn._entry_ptr.127, ptr @of_mdio_parse_addr._entry, ptr @of_mdio_parse_addr._entry.76, ptr @of_mdio_parse_addr._entry_ptr, ptr @of_mdio_parse_addr._entry_ptr.78, ptr @sun8i_dwmac_driver_exit, ptr @sun8i_dwmac_init._entry, ptr @sun8i_dwmac_init._entry.27, ptr @sun8i_dwmac_init._entry_ptr, ptr @sun8i_dwmac_init._entry_ptr.29, ptr @sun8i_dwmac_power_internal_phy._entry, ptr @sun8i_dwmac_power_internal_phy._entry.33, ptr @sun8i_dwmac_power_internal_phy._entry.36, ptr @sun8i_dwmac_power_internal_phy._entry.39, ptr @sun8i_dwmac_power_internal_phy._entry_ptr, ptr @sun8i_dwmac_power_internal_phy._entry_ptr.35, ptr @sun8i_dwmac_power_internal_phy._entry_ptr.38, ptr @sun8i_dwmac_power_internal_phy._entry_ptr.41, ptr @sun8i_dwmac_probe._entry, ptr @sun8i_dwmac_probe._entry.11, ptr @sun8i_dwmac_probe._entry.16, ptr @sun8i_dwmac_probe._entry.19, ptr @sun8i_dwmac_probe._entry.22, ptr @sun8i_dwmac_probe._entry.7, ptr @sun8i_dwmac_probe._entry_ptr, ptr @sun8i_dwmac_probe._entry_ptr.14, ptr @sun8i_dwmac_probe._entry_ptr.18, ptr @sun8i_dwmac_probe._entry_ptr.21, ptr @sun8i_dwmac_probe._entry_ptr.24, ptr @sun8i_dwmac_probe._entry_ptr.9, ptr @sun8i_dwmac_reset._entry, ptr @sun8i_dwmac_reset._entry_ptr, ptr @sun8i_dwmac_set_syscon._entry, ptr @sun8i_dwmac_set_syscon._entry.45, ptr @sun8i_dwmac_set_syscon._entry.49, ptr @sun8i_dwmac_set_syscon._entry.53, ptr @sun8i_dwmac_set_syscon._entry.58, ptr @sun8i_dwmac_set_syscon._entry.62, ptr @sun8i_dwmac_set_syscon._entry.66, ptr @sun8i_dwmac_set_syscon._entry.69, ptr @sun8i_dwmac_set_syscon._entry_ptr, ptr @sun8i_dwmac_set_syscon._entry_ptr.47, ptr @sun8i_dwmac_set_syscon._entry_ptr.51, ptr @sun8i_dwmac_set_syscon._entry_ptr.55, ptr @sun8i_dwmac_set_syscon._entry_ptr.60, ptr @sun8i_dwmac_set_syscon._entry_ptr.64, ptr @sun8i_dwmac_set_syscon._entry_ptr.68, ptr @sun8i_dwmac_set_syscon._entry_ptr.71, ptr @sun8i_dwmac_driver, ptr @.str, ptr @sun8i_dwmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @sun8i_dwmac_ops, ptr @sun8i_dwmac_dma_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @emac_variant_h3, ptr @emac_variant_v3s, ptr @emac_variant_a83t, ptr @emac_variant_r40, ptr @emac_variant_a64, ptr @emac_variant_h6, ptr @sun8i_syscon_reg_field, ptr @sun8i_ccu_reg_field, ptr @switch.table.phy_modes], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_power_internal_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_power_internal_phy._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_power_internal_phy._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_power_internal_phy._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_dma_ops to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_set_syscon._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ephy_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ephy_nodes._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ephy_nodes._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_syscon_switch_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_syscon_switch_fn._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_syscon_switch_fn._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dwmac_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_variant_h3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_variant_v3s to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_variant_a83t to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_variant_r40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_variant_a64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_variant_h6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_syscon_reg_field to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ccu_reg_field to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_dwmac_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_dwmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  %interface = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #7
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interface) #7
  %1 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %interface, align 4, !annotation !264
  %call = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %variant = getelementptr inbounds %struct.sunxi_priv_data, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %variant, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call23 = call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %regulator = getelementptr inbounds %struct.sunxi_priv_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %regulator, align 4
  %cmp.i204 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then26, label %if.end22.if.end35_crit_edge

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then26:                                        ; preds = %if.end22
  %cmp = icmp eq ptr %call23, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then26.cleanup_crit_edge, label %do.end33

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %regulator, align 4
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.end22.if.end35_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %11 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %if.then39

of_parse_phandle.exit.i:                          ; preds = %if.end35
  %12 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.if.then39_crit_edge, label %if.end.i

of_parse_phandle.exit.i.if.then39_crit_edge:      ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call ptr @of_find_device_by_node(ptr noundef nonnull %13) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.sun8i_dwmac_get_syscon_from_dev.exit.thread213_crit_edge, label %if.end6.i

if.end.i.sun8i_dwmac_get_syscon_from_dev.exit.thread213_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_dwmac_get_syscon_from_dev.exit.thread213

if.end6.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call2.i, i32 0, i32 3
  %call7.i = call ptr @dev_get_regmap(ptr noundef %dev.i, ptr noundef null) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  call void @platform_device_put(ptr noundef nonnull %call2.i) #7
  br i1 %tobool8.not.i, label %if.end6.i.sun8i_dwmac_get_syscon_from_dev.exit.thread213_crit_edge, label %sun8i_dwmac_get_syscon_from_dev.exit

if.end6.i.sun8i_dwmac_get_syscon_from_dev.exit.thread213_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_dwmac_get_syscon_from_dev.exit.thread213

sun8i_dwmac_get_syscon_from_dev.exit.thread213:   ; preds = %if.end6.i.sun8i_dwmac_get_syscon_from_dev.exit.thread213_crit_edge, %if.end.i.sun8i_dwmac_get_syscon_from_dev.exit.thread213_crit_edge
  call void @of_node_put(ptr noundef nonnull %13) #7
  br label %if.then39

sun8i_dwmac_get_syscon_from_dev.exit:             ; preds = %if.end6.i
  call void @of_node_put(ptr noundef nonnull %13) #7
  %cmp.i205 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %sun8i_dwmac_get_syscon_from_dev.exit.if.then39_crit_edge, label %sun8i_dwmac_get_syscon_from_dev.exit.if.end43_crit_edge

sun8i_dwmac_get_syscon_from_dev.exit.if.end43_crit_edge: ; preds = %sun8i_dwmac_get_syscon_from_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

sun8i_dwmac_get_syscon_from_dev.exit.if.then39_crit_edge: ; preds = %sun8i_dwmac_get_syscon_from_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then39:                                        ; preds = %sun8i_dwmac_get_syscon_from_dev.exit.if.then39_crit_edge, %sun8i_dwmac_get_syscon_from_dev.exit.thread213, %of_parse_phandle.exit.i.if.then39_crit_edge, %of_parse_phandle.exit.thread.i
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call42 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %15, ptr noundef nonnull @.str.15) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %sun8i_dwmac_get_syscon_from_dev.exit.if.end43_crit_edge
  %regmap.0 = phi ptr [ %call42, %if.then39 ], [ %call7.i, %sun8i_dwmac_get_syscon_from_dev.exit.if.end43_crit_edge ]
  %cmp.i206 = icmp ugt ptr %regmap.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regmap.0 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %16) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %17 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %variant, align 4
  %syscon_field = getelementptr inbounds %struct.emac_variant, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %syscon_field to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %syscon_field, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %20, align 4
  %22 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt196 = getelementptr inbounds [5 x i32], ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %.elt196 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack197 = load i32, ptr %.elt196, align 4
  %24 = insertvalue [5 x i32] %22, i32 %.unpack197, 1
  %.elt198 = getelementptr inbounds [5 x i32], ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %.elt198 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack199 = load i32, ptr %.elt198, align 4
  %26 = insertvalue [5 x i32] %24, i32 %.unpack199, 2
  %.elt200 = getelementptr inbounds [5 x i32], ptr %20, i32 0, i32 3
  %27 = ptrtoint ptr %.elt200 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack201 = load i32, ptr %.elt200, align 4
  %28 = insertvalue [5 x i32] %26, i32 %.unpack201, 3
  %.elt202 = getelementptr inbounds [5 x i32], ptr %20, i32 0, i32 4
  %29 = ptrtoint ptr %.elt202 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack203 = load i32, ptr %.elt202, align 4
  %30 = insertvalue [5 x i32] %28, i32 %.unpack203, 4
  %call53 = call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %regmap.0, [5 x i32] %30) #7
  %regmap_field = getelementptr inbounds %struct.sunxi_priv_data, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %regmap_field to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call53, ptr %regmap_field, align 4
  %cmp.i207 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %32) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call64 = call i32 @of_get_phy_mode(ptr noundef %34, ptr noundef nonnull %interface) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call68 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #7
  %cmp.i208 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call68 to i32
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %36 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %interface, align 4
  %interface73 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 2
  %38 = ptrtoint ptr %interface73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %interface73, align 4
  %rx_coe = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 16
  %39 = ptrtoint ptr %rx_coe to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %rx_coe, align 4
  %tx_coe = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 15
  %40 = ptrtoint ptr %tx_coe to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %tx_coe, align 4
  %has_sun8i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 59
  %41 = ptrtoint ptr %has_sun8i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %has_sun8i, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 46
  %42 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %bsp_priv, align 4
  %init = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 40
  %43 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @sun8i_dwmac_init, ptr %init, align 4
  %exit = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 41
  %44 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sun8i_dwmac_exit, ptr %exit, align 4
  %setup = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 42
  %45 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @sun8i_dwmac_setup, ptr %setup, align 4
  %tx_fifo_size = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 26
  %46 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4096, ptr %tx_fifo_size, align 4
  %rx_fifo_size = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call68, i32 0, i32 27
  %47 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16384, ptr %rx_fifo_size, align 4
  %call75 = call fastcc i32 @sun8i_dwmac_set_syscon(ptr noundef %dev1, ptr noundef %call68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end72.dwmac_deconfig_crit_edge

if.end72.dwmac_deconfig_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac_deconfig

if.end78:                                         ; preds = %if.end72
  %48 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bsp_priv, align 4
  %call80 = call i32 @sun8i_dwmac_init(ptr noundef %pdev, ptr noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end78.dwmac_syscon_crit_edge

if.end78.dwmac_syscon_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac_syscon

if.end83:                                         ; preds = %if.end78
  %call85 = call i32 @stmmac_dvr_probe(ptr noundef %dev1, ptr noundef %call68, ptr noundef nonnull %stmmac_res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.dwmac_exit_crit_edge

if.end83.dwmac_exit_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac_exit

if.end88:                                         ; preds = %if.end83
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 2304
  %52 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %variant, align 4
  %soc_has_internal_phy = getelementptr inbounds %struct.emac_variant, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %soc_has_internal_phy to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %soc_has_internal_phy, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool93.not = icmp eq i8 %55, 0
  br i1 %tobool93.not, label %if.else, label %if.then94

if.then94:                                        ; preds = %if.end88
  %call95 = call fastcc i32 @get_ephy_nodes(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then94.dwmac_remove_crit_edge

if.then94.dwmac_remove_crit_edge:                 ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac_remove

if.end98:                                         ; preds = %if.then94
  %call99 = call fastcc i32 @sun8i_dwmac_register_mdio_mux(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end98.cleanup_crit_edge, label %do.end104

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  %rst_ephy = getelementptr inbounds %struct.sunxi_priv_data, ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %rst_ephy to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rst_ephy, align 4
  call void @reset_control_put(ptr noundef %57) #7
  %ephy_clk = getelementptr inbounds %struct.sunxi_priv_data, ptr %call.i, i32 0, i32 1
  %58 = ptrtoint ptr %ephy_clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ephy_clk, align 4
  call void @clk_put(ptr noundef %59) #7
  br label %dwmac_remove

if.else:                                          ; preds = %if.end88
  %call107 = call fastcc i32 @sun8i_dwmac_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.else.cleanup_crit_edge, label %if.else.dwmac_remove_crit_edge

if.else.dwmac_remove_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac_remove

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dwmac_remove:                                     ; preds = %if.else.dwmac_remove_crit_edge, %do.end104, %if.then94.dwmac_remove_crit_edge
  %ret.0 = phi i32 [ %call95, %if.then94.dwmac_remove_crit_edge ], [ %call99, %do.end104 ], [ %call107, %if.else.dwmac_remove_crit_edge ]
  %call113 = call i32 @stmmac_dvr_remove(ptr noundef %dev1) #7
  br label %dwmac_exit

dwmac_exit:                                       ; preds = %dwmac_remove, %if.end83.dwmac_exit_crit_edge
  %ret.1 = phi i32 [ %call85, %if.end83.dwmac_exit_crit_edge ], [ %ret.0, %dwmac_remove ]
  call void @sun8i_dwmac_exit(ptr noundef %pdev, ptr noundef nonnull %call.i)
  br label %dwmac_syscon

dwmac_syscon:                                     ; preds = %dwmac_exit, %if.end78.dwmac_syscon_crit_edge
  %ret.2 = phi i32 [ %call80, %if.end78.dwmac_syscon_crit_edge ], [ %ret.1, %dwmac_exit ]
  %60 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %variant, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %64 = ptrtoint ptr %regmap_field to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap_field, align 4
  %call.i.i209 = call i32 @regmap_field_update_bits_base(ptr noundef %65, i32 noundef -1, i32 noundef %63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %dwmac_deconfig

dwmac_deconfig:                                   ; preds = %dwmac_syscon, %if.end72.dwmac_deconfig_crit_edge
  %ret.3 = phi i32 [ %call75, %if.end72.dwmac_deconfig_crit_edge ], [ %ret.2, %dwmac_syscon ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call68) #7
  br label %cleanup

cleanup:                                          ; preds = %dwmac_deconfig, %if.else.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.then70, %if.end62.cleanup_crit_edge, %if.then56, %if.then45, %if.then26.cleanup_crit_edge, %do.end19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end19 ], [ %16, %if.then45 ], [ %32, %if.then56 ], [ %35, %if.then70 ], [ %ret.3, %dwmac_deconfig ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.then26.cleanup_crit_edge ], [ -22, %if.end62.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv, align 4
  %variant = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %soc_has_internal_phy = getelementptr inbounds %struct.emac_variant, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %soc_has_internal_phy to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %soc_has_internal_phy, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mux_handle = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %mux_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mux_handle, align 4
  tail call void @mdio_mux_uninit(ptr noundef %11) #7
  %internal_phy_powered.i = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %internal_phy_powered.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %internal_phy_powered.i, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.sun8i_dwmac_unpower_internal_phy.exit_crit_edge, label %if.end.i

if.then.sun8i_dwmac_unpower_internal_phy.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_dwmac_unpower_internal_phy.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ephy_clk.i = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %ephy_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ephy_clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %rst_ephy.i = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %rst_ephy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst_ephy.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %17) #7
  %18 = ptrtoint ptr %internal_phy_powered.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %internal_phy_powered.i, align 4
  br label %sun8i_dwmac_unpower_internal_phy.exit

sun8i_dwmac_unpower_internal_phy.exit:            ; preds = %if.end.i, %if.then.sun8i_dwmac_unpower_internal_phy.exit_crit_edge
  %rst_ephy = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %rst_ephy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rst_ephy, align 4
  tail call void @reset_control_put(ptr noundef %20) #7
  %ephy_clk = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %ephy_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ephy_clk, align 4
  tail call void @clk_put(ptr noundef %22) #7
  br label %if.end

if.end:                                           ; preds = %sun8i_dwmac_unpower_internal_phy.exit, %entry.if.end_crit_edge
  %call2 = tail call i32 @stmmac_pltfr_remove(ptr noundef %pdev) #7
  %23 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %regmap_field.i = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %regmap_field.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_field.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %28, i32 noundef -1, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv, align 4
  tail call void @sun8i_dwmac_exit(ptr noundef %pdev, ptr noundef %5)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_init(ptr noundef %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regulator = getelementptr inbounds %struct.sunxi_priv_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulator, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.do.end11_crit_edge

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end.i:                                         ; preds = %if.end5
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i, %if.end5.do.end11_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end5.do.end11_crit_edge ]
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.28) #10
  br label %err_disable_regulator

if.end13:                                         ; preds = %if.end.i
  %use_internal_phy = getelementptr inbounds %struct.sunxi_priv_data, ptr %priv, i32 0, i32 7
  %6 = ptrtoint ptr %use_internal_phy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_internal_phy, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call17 = tail call fastcc i32 @sun8i_dwmac_power_internal_phy(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then15.cleanup_crit_edge, label %err_disable_clk

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_disable_clk:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %err_disable_regulator

err_disable_regulator:                            ; preds = %err_disable_clk, %do.end11
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end11 ], [ %call17, %err_disable_clk ]
  %10 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regulator, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %err_disable_regulator.cleanup_crit_edge, label %if.then25

err_disable_regulator.cleanup_crit_edge:          ; preds = %err_disable_regulator
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %err_disable_regulator
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %err_disable_regulator.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %ret.0, %if.then25 ], [ %ret.0, %err_disable_regulator.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_exit(ptr nocapture noundef readnone %pdev, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.sunxi_priv_data, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %soc_has_internal_phy = getelementptr inbounds %struct.emac_variant, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_has_internal_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %soc_has_internal_phy, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %internal_phy_powered.i = getelementptr inbounds %struct.sunxi_priv_data, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %internal_phy_powered.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %internal_phy_powered.i, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ephy_clk.i = getelementptr inbounds %struct.sunxi_priv_data, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %ephy_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ephy_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %rst_ephy.i = getelementptr inbounds %struct.sunxi_priv_data, ptr %priv, i32 0, i32 3
  %8 = ptrtoint ptr %rst_ephy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_ephy.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %9) #7
  %10 = ptrtoint ptr %internal_phy_powered.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %internal_phy_powered.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  %regulator = getelementptr inbounds %struct.sunxi_priv_data, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regulator, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %14) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @sun8i_dwmac_setup(ptr nocapture noundef %ppriv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %ppriv, i32 0, i32 15
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 292, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %ppriv, i32 0, i32 13
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 32
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %pcsr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pcsr, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sun8i_dwmac_ops, ptr %call.i, align 4
  %dma = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sun8i_dwmac_dma_ops, ptr %dma, align 4
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %ppriv, i32 0, i32 14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags, align 16
  %or = or i64 %10, 4096
  store i64 %or, ptr %priv_flags, align 16
  %link = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 14, ptr %link, align 4
  %speed10 = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %speed10, align 4
  %speed100 = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %speed100 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %speed100, align 4
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %speed1000 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %speed1000, align 4
  %duplex = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 9, i32 5
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %duplex, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 72, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 76, ptr %data, align 4
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %reg_shift, align 4
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8, i32 5
  %19 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 496, ptr %reg_mask, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %addr_shift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %addr_shift, align 4
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %addr_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 126976, ptr %addr_mask, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %clk_csr_shift, align 4
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 8, i32 7
  %23 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7340032, ptr %clk_csr_mask, align 4
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %call.i, i32 0, i32 12
  %24 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %unicast_filter_entries, align 4
  %synopsys_id = getelementptr inbounds %struct.stmmac_priv, ptr %ppriv, i32 0, i32 40
  %25 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %synopsys_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_set_syscon(ptr noundef %dev, ptr nocapture noundef readonly %plat) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !264
  %regmap_field = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regmap_field to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_field, align 4
  %call = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %variant = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %variant, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %do.end4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %12, i32 noundef %10) #10
  br label %if.end5

if.end5:                                          ; preds = %do.end4, %if.end.if.end5_crit_edge
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %variant, align 4
  %soc_has_internal_phy = getelementptr inbounds %struct.emac_variant, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %soc_has_internal_phy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %soc_has_internal_phy, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %if.else21, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call.i = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.48, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  %and = and i32 %10, -1441793
  %masksel = select i1 %tobool.i.not, i32 0, i32 131072
  %phy_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 5
  %17 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #7
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %addr.i, align 4, !annotation !264
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.72, ptr noundef nonnull %addr.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %full_name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef %21) #10
  br label %do.end18

if.end.i:                                         ; preds = %if.then8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %23)
  %cmp1.i = icmp ugt i32 %23, 31
  br i1 %cmp1.i, label %do.end5.i, label %if.end19

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %full_name6.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %full_name6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %full_name6.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %25, i32 noundef %23) #10
  br label %do.end18

do.end18:                                         ; preds = %do.end5.i, %do.end.i
  %retval.0.i173.ph = phi i32 [ -22, %do.end5.i ], [ %call.i.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %reg.0 = or i32 %and, %masksel
  %or20 = or i32 %reg.0, 1310720
  br label %if.end23

if.else21:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %and22 = and i32 %10, -32769
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.end19
  %reg.1 = phi i32 [ %or20, %if.end19 ], [ %and22, %if.else21 ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool25.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end57_crit_edge

if.end23.if.end57_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then26:                                        ; preds = %if.end23
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %.frozen = freeze i32 %27
  %div = udiv i32 %.frozen, 100
  %28 = mul i32 %div, 100
  %rem.decomposed = sub i32 %.frozen, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool27.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool27.not, label %if.end32, label %do.end31

do.end31:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.end32:                                         ; preds = %if.then26
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_dwmac_set_syscon, %if.then38)) #7
          to label %do.end41 [label %if.then38], !srcloc !266

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug383, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %31) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %if.end32
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %34 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %variant, align 4
  %tx_delay_max = getelementptr inbounds %struct.emac_variant, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %tx_delay_max to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_delay_max, align 1
  %conv = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv)
  %cmp43.not = icmp ugt i32 %33, %conv
  br i1 %cmp43.not, label %do.end55, label %if.then45

if.then45:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %conv, 10
  %neg = xor i32 %shl, -1
  %and49 = and i32 %reg.1, %neg
  %shl50 = shl i32 %33, 10
  %or51 = or i32 %and49, %shl50
  br label %if.end57

do.end55:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %33) #10
  br label %cleanup

if.end57:                                         ; preds = %if.then45, %if.end23.if.end57_crit_edge
  %reg.2 = phi i32 [ %reg.1, %if.end23.if.end57_crit_edge ], [ %or51, %if.then45 ]
  %call.i.i174 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.61, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i174)
  %tobool59.not = icmp sgt i32 %call.i.i174, -1
  br i1 %tobool59.not, label %if.then60, label %if.end57.if.end103_crit_edge

if.end57.if.end103_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then60:                                        ; preds = %if.end57
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %.frozen181 = freeze i32 %39
  %div68 = udiv i32 %.frozen181, 100
  %40 = mul i32 %div68, 100
  %rem61.decomposed = sub i32 %.frozen181, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem61.decomposed)
  %tobool62.not = icmp eq i32 %rem61.decomposed, 0
  br i1 %tobool62.not, label %if.end67, label %do.end66

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #10
  br label %cleanup

if.end67:                                         ; preds = %if.then60
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div68, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_dwmac_set_syscon, %if.then81)) #7
          to label %do.end84 [label %if.then81], !srcloc !266

if.then81:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug384, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %43) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %if.end67
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant, align 4
  %rx_delay_max = getelementptr inbounds %struct.emac_variant, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %rx_delay_max to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rx_delay_max, align 4
  %conv86 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv86)
  %cmp87.not = icmp ugt i32 %45, %conv86
  br i1 %cmp87.not, label %do.end101, label %if.then89

if.then89:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  %shl93 = shl nuw nsw i32 %conv86, 5
  %neg94 = xor i32 %shl93, -1
  %and95 = and i32 %reg.2, %neg94
  %shl96 = shl i32 %45, 5
  %or97 = or i32 %and95, %shl96
  br label %if.end103

do.end101:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %45) #10
  br label %cleanup

if.end103:                                        ; preds = %if.then89, %if.end57.if.end103_crit_edge
  %reg.3 = phi i32 [ %reg.2, %if.end57.if.end103_crit_edge ], [ %or97, %if.then89 ]
  %50 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %variant, align 4
  %support_rmii = getelementptr inbounds %struct.emac_variant, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %support_rmii to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %support_rmii, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool106.not = icmp eq i8 %53, 0
  %spec.select.v = select i1 %tobool106.not, i32 -8, i32 -8200
  %spec.select = and i32 %spec.select.v, %reg.3
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 2
  %54 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %interface, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %55, label %do.end115 [
    i32 2, label %if.end103.sw.epilog_crit_edge
    i32 9, label %if.end103.sw.bb_crit_edge
    i32 10, label %if.end103.sw.bb_crit_edge182
    i32 11, label %if.end103.sw.bb_crit_edge183
    i32 12, label %if.end103.sw.bb_crit_edge184
    i32 7, label %sw.bb111
  ]

if.end103.sw.bb_crit_edge184:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end103.sw.bb_crit_edge183:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end103.sw.bb_crit_edge182:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end103.sw.bb_crit_edge:                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end103.sw.epilog_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end103.sw.bb_crit_edge, %if.end103.sw.bb_crit_edge182, %if.end103.sw.bb_crit_edge183, %if.end103.sw.bb_crit_edge184
  %or110 = or i32 %spec.select, 6
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %or112 = or i32 %spec.select, 8193
  br label %sw.epilog

do.end115:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %call117 = call fastcc ptr @phy_modes(i32 noundef %55)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull %call117) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb111, %sw.bb, %if.end103.sw.epilog_crit_edge
  %reg.5 = phi i32 [ %or112, %sw.bb111 ], [ %or110, %sw.bb ], [ %spec.select, %if.end103.sw.epilog_crit_edge ]
  %57 = ptrtoint ptr %regmap_field to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap_field, align 4
  %call.i175 = call i32 @regmap_field_update_bits_base(ptr noundef %58, i32 noundef -1, i32 noundef %reg.5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end115, %do.end101, %do.end66, %do.end55, %do.end31, %do.end18, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i173.ph, %do.end18 ], [ -22, %do.end115 ], [ 0, %sw.epilog ], [ -22, %do.end66 ], [ -22, %do.end101 ], [ -22, %do.end31 ], [ -22, %do.end55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_ephy_nodes(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %7, ptr noundef nonnull @.str.110) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.111) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_compatible_child(ptr noundef nonnull %call, ptr noundef nonnull @.str.113) #7
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.115) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @of_get_next_child(ptr noundef nonnull %call2, ptr noundef null) #7
  %cmp.not59 = icmp eq ptr %call10, null
  br i1 %cmp.not59, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %ephy_clk = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 1
  %rst_ephy = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %iphynode.060 = phi ptr [ %call10, %for.body.lr.ph ], [ %call30, %for.inc.for.body_crit_edge ]
  %call11 = tail call ptr @of_clk_get(ptr noundef nonnull %iphynode.060, i32 noundef 0) #7
  %12 = ptrtoint ptr %ephy_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %ephy_clk, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %call.i = tail call ptr @__of_reset_control_get(ptr noundef nonnull %iphynode.060, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %13 = ptrtoint ptr %rst_ephy to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %rst_ephy, align 4
  %cmp.i56 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.then19, label %do.end28

if.then19:                                        ; preds = %if.end15
  %cmp22 = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp22, label %if.then23, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %iphynode.060) #7
  tail call void @of_node_put(ptr noundef nonnull %call2) #7
  br label %cleanup

do.end28:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.118) #10
  tail call void @of_node_put(ptr noundef nonnull %iphynode.060) #7
  tail call void @of_node_put(ptr noundef nonnull %call2) #7
  br label %cleanup

for.inc:                                          ; preds = %if.then19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call30 = tail call ptr @of_get_next_child(ptr noundef nonnull %call2, ptr noundef nonnull %iphynode.060) #7
  %cmp.not = icmp eq ptr %call30, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end28, %if.then23, %do.end7, %do.end
  %retval.0 = phi i32 [ -517, %if.then23 ], [ 0, %do.end28 ], [ -19, %for.end ], [ -19, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_register_mdio_mux(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %7, ptr noundef nonnull @.str.110) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %mux_handle = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 8
  %mii = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 30
  %10 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mii, align 4
  %call2 = tail call i32 @mdio_mux_init(ptr noundef %9, ptr noundef nonnull %call, ptr noundef nonnull @mdio_mux_syscon_switch_fn, ptr noundef %mux_handle, ptr noundef %priv, ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_reset(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !269
  tail call void @arm_heavy_mb() #7
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 32
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #7, !srcloc !270
  %call4 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call4, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 755) #7
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 32
  %add.ptr1862 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1862) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !271
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not64 = icmp eq i32 %9, 0
  br i1 %tobool.not64, label %entry.cleanup_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then38.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then38

if.then38:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 32
  %add.ptr18 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !271
  %13 = and i32 %12, 16777216
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then38.cleanup_crit_edge, label %if.then38.land.lhs.true_crit_edge

if.then38.land.lhs.true_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 32
  %add.ptr32 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !272
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool42.not = icmp eq i32 %17, 0
  br i1 %tobool42.not, label %for.end.cleanup_crit_edge, label %do.end47

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.128) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %for.end.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end47 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_power_internal_phy(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %internal_phy_powered = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %internal_phy_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %internal_phy_powered, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %device4 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %6 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device4, align 8
  br i1 %tobool.not, label %do.end3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.30) #10
  br label %cleanup

do.end3:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.34) #10
  %ephy_clk = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ephy_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ephy_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end3.do.end9_crit_edge

do.end3.do.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

if.end.i:                                         ; preds = %do.end3
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %do.end3.do.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %do.end3.do.end9_crit_edge ]
  %10 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %rst_ephy = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %rst_ephy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rst_ephy, align 4
  %call12 = tail call i32 @reset_control_reset(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.40) #10
  %16 = ptrtoint ptr %ephy_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ephy_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %internal_phy_powered to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %internal_phy_powered, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %retval.0.i.ph, %do.end9 ], [ %call12, %do.end17 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun8i_dwmac_unpower_internal_phy(ptr nocapture noundef %gmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_phy_powered = getelementptr inbounds %struct.sunxi_priv_data, ptr %gmac, i32 0, i32 6
  %0 = ptrtoint ptr %internal_phy_powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %internal_phy_powered, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ephy_clk = getelementptr inbounds %struct.sunxi_priv_data, ptr %gmac, i32 0, i32 1
  %2 = ptrtoint ptr %ephy_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ephy_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %rst_ephy = getelementptr inbounds %struct.sunxi_priv_data, ptr %gmac, i32 0, i32 3
  %4 = ptrtoint ptr %rst_ephy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst_ephy, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %6 = ptrtoint ptr %internal_phy_powered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %internal_phy_powered, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_core_init(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !273
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_mac(ptr noundef %ioaddr, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 16
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !274
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 36
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !275
  %2 = and i32 %0, -129
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = and i32 %1, -129
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %enable, i32 -2147483648, i32 0
  %r.0 = or i32 %5, %masksel
  %t.0 = or i32 %3, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !276
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %t.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !277
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %r.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_rx_ipc_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !278
  %3 = or i32 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !279
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !270
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dump_mac_regs(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %reg_space) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.inc.lor.lhs.false_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %add, %for.inc.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %i.010)
  %cmp2 = icmp eq i32 %i.010, 60
  br i1 %cmp2, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 %i.010
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !280
  %div9 = lshr exact i32 %i.010, 2
  %arrayidx = getelementptr i32, ptr %reg_space, i32 %div9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge
  %add = add nuw nsw i32 %i.010, 4
  %cmp = icmp ult i32 %i.010, 196
  br i1 %cmp, label %for.inc.lor.lhs.false_crit_edge, label %for.end

for.inc.lor.lhs.false_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_filter(ptr nocapture noundef readonly %hw, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %uc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count1, align 8
  %add = add i32 %3, 1
  %add2 = add i32 %add, %5
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end61_crit_edge

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.else:                                          ; preds = %entry
  %and4 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else7, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.else7:                                         ; preds = %if.else
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 12
  %8 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unicast_filter_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %9)
  %cmp.not = icmp ugt i32 %add2, %9
  br i1 %cmp.not, label %if.else51, label %if.then8

if.then8:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11 = icmp eq i32 %5, 0
  br i1 %cmp11, label %if.then8.if.end_crit_edge, label %for.cond.preheader

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %if.then8
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.0112 = load ptr, ptr %mc, align 4
  %cmp17.not113 = icmp eq ptr %ha.0112, %mc
  br i1 %cmp17.not113, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body:                                         ; preds = %sun8i_dwmac_set_umac_addr.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.0116 = phi ptr [ %ha.0, %sun8i_dwmac_set_umac_addr.exit.for.body_crit_edge ], [ %ha.0112, %for.cond.preheader.for.body_crit_edge ]
  %i.0114 = phi i32 [ %inc, %sun8i_dwmac_set_umac_addr.exit.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0116, i32 0, i32 2
  %11 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcsr, align 4
  %tobool.not.i = icmp eq ptr %addr, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !281
  tail call void @arm_heavy_mb() #7
  %mul.i = shl i32 %i.0114, 3
  %add.i = add i32 %mul.i, 80
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !270
  br label %sun8i_dwmac_set_umac_addr.exit

if.end.i:                                         ; preds = %for.body
  %mul1.i = shl i32 %i.0114, 3
  %add2.i = add i32 %mul1.i, 80
  %add4.i = add i32 %mul1.i, 84
  tail call void @stmmac_set_mac_addr(ptr noundef %12, ptr noundef nonnull %addr, i32 noundef %add2.i, i32 noundef %add4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0114)
  %cmp.not.i = icmp eq i32 %i.0114, 0
  br i1 %cmp.not.i, label %if.end.i.sun8i_dwmac_set_umac_addr.exit_crit_edge, label %if.then5.i

if.end.i.sun8i_dwmac_set_umac_addr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_dwmac_set_umac_addr.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr8.i = getelementptr i8, ptr %12, i32 %add2.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  %14 = or i32 %13, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %14) #7, !srcloc !270
  br label %sun8i_dwmac_set_umac_addr.exit

sun8i_dwmac_set_umac_addr.exit:                   ; preds = %if.then5.i, %if.end.i.sun8i_dwmac_set_umac_addr.exit_crit_edge, %do.body.i
  %inc = add i32 %i.0114, 1
  %15 = ptrtoint ptr %ha.0116 to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.0 = load ptr, ptr %ha.0116, align 4
  %cmp17.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp17.not, label %sun8i_dwmac_set_umac_addr.exit.if.end_crit_edge, label %sun8i_dwmac_set_umac_addr.exit.for.body_crit_edge

sun8i_dwmac_set_umac_addr.exit.for.body_crit_edge: ; preds = %sun8i_dwmac_set_umac_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

sun8i_dwmac_set_umac_addr.exit.if.end_crit_edge:  ; preds = %sun8i_dwmac_set_umac_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sun8i_dwmac_set_umac_addr.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %if.then8.if.end_crit_edge
  %i.1 = phi i32 [ 1, %if.then8.if.end_crit_edge ], [ 1, %for.cond.preheader.if.end_crit_edge ], [ %inc, %sun8i_dwmac_set_umac_addr.exit.if.end_crit_edge ]
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp25 = icmp eq i32 %17, 0
  br i1 %cmp25, label %if.end.if.end61_crit_edge, label %for.cond33.preheader

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

for.cond33.preheader:                             ; preds = %if.end
  %18 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %18)
  %ha.1117 = load ptr, ptr %uc, align 4
  %cmp37.not118 = icmp eq ptr %ha.1117, %uc
  br i1 %cmp37.not118, label %for.cond33.preheader.if.end61_crit_edge, label %for.cond33.preheader.for.body39_crit_edge

for.cond33.preheader.for.body39_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body39

for.cond33.preheader.if.end61_crit_edge:          ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

for.body39:                                       ; preds = %sun8i_dwmac_set_umac_addr.exit106.for.body39_crit_edge, %for.cond33.preheader.for.body39_crit_edge
  %ha.1121 = phi ptr [ %ha.1, %sun8i_dwmac_set_umac_addr.exit106.for.body39_crit_edge ], [ %ha.1117, %for.cond33.preheader.for.body39_crit_edge ]
  %i.2119 = phi i32 [ %inc42, %sun8i_dwmac_set_umac_addr.exit106.for.body39_crit_edge ], [ %i.1, %for.cond33.preheader.for.body39_crit_edge ]
  %addr40 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1121, i32 0, i32 2
  %19 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcsr, align 4
  %tobool.not.i94 = icmp eq ptr %addr40, null
  br i1 %tobool.not.i94, label %do.body.i98, label %if.end.i103

do.body.i98:                                      ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !281
  tail call void @arm_heavy_mb() #7
  %mul.i95 = shl i32 %i.2119, 3
  %add.i96 = add i32 %mul.i95, 80
  %add.ptr.i97 = getelementptr i8, ptr %20, i32 %add.i96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 0) #7, !srcloc !270
  br label %sun8i_dwmac_set_umac_addr.exit106

if.end.i103:                                      ; preds = %for.body39
  %mul1.i99 = shl i32 %i.2119, 3
  %add2.i100 = add i32 %mul1.i99, 80
  %add4.i101 = add i32 %mul1.i99, 84
  tail call void @stmmac_set_mac_addr(ptr noundef %20, ptr noundef nonnull %addr40, i32 noundef %add2.i100, i32 noundef %add4.i101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2119)
  %cmp.not.i102 = icmp eq i32 %i.2119, 0
  br i1 %cmp.not.i102, label %if.end.i103.sun8i_dwmac_set_umac_addr.exit106_crit_edge, label %if.then5.i105

if.end.i103.sun8i_dwmac_set_umac_addr.exit106_crit_edge: ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_dwmac_set_umac_addr.exit106

if.then5.i105:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr8.i104 = getelementptr i8, ptr %20, i32 %add2.i100
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i104) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  %22 = or i32 %21, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i104, i32 %22) #7, !srcloc !270
  br label %sun8i_dwmac_set_umac_addr.exit106

sun8i_dwmac_set_umac_addr.exit106:                ; preds = %if.then5.i105, %if.end.i103.sun8i_dwmac_set_umac_addr.exit106_crit_edge, %do.body.i98
  %inc42 = add i32 %i.2119, 1
  %23 = ptrtoint ptr %ha.1121 to i32
  call void @__asan_load4_noabort(i32 %23)
  %ha.1 = load ptr, ptr %ha.1121, align 4
  %cmp37.not = icmp eq ptr %ha.1, %uc
  br i1 %cmp37.not, label %sun8i_dwmac_set_umac_addr.exit106.if.end61_crit_edge, label %sun8i_dwmac_set_umac_addr.exit106.for.body39_crit_edge

sun8i_dwmac_set_umac_addr.exit106.for.body39_crit_edge: ; preds = %sun8i_dwmac_set_umac_addr.exit106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39

sun8i_dwmac_set_umac_addr.exit106.if.end61_crit_edge: ; preds = %sun8i_dwmac_set_umac_addr.exit106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.else51:                                        ; preds = %if.else7
  %add.ptr52 = getelementptr i8, ptr %1, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !284
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool56.not = icmp eq i32 %25, 0
  br i1 %tobool56.not, label %if.then57, label %if.else51.if.end61_crit_edge

if.else51.if.end61_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then57:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.else51.if.end61_crit_edge, %sun8i_dwmac_set_umac_addr.exit106.if.end61_crit_edge, %for.cond33.preheader.if.end61_crit_edge, %if.end.if.end61_crit_edge, %if.else.if.end61_crit_edge, %entry.if.end61_crit_edge
  %i.3 = phi i32 [ %i.1, %if.end.if.end61_crit_edge ], [ 1, %entry.if.end61_crit_edge ], [ 1, %if.else.if.end61_crit_edge ], [ 1, %if.then57 ], [ 1, %if.else51.if.end61_crit_edge ], [ %i.1, %for.cond33.preheader.if.end61_crit_edge ], [ %inc42, %sun8i_dwmac_set_umac_addr.exit106.if.end61_crit_edge ]
  %v.0 = phi i32 [ 8192, %if.end.if.end61_crit_edge ], [ 1, %entry.if.end61_crit_edge ], [ 73728, %if.else.if.end61_crit_edge ], [ 1, %if.then57 ], [ 1, %if.else51.if.end61_crit_edge ], [ 8192, %for.cond33.preheader.if.end61_crit_edge ], [ 8192, %sun8i_dwmac_set_umac_addr.exit106.if.end61_crit_edge ]
  %unicast_filter_entries62 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 12
  %26 = ptrtoint ptr %unicast_filter_entries62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %unicast_filter_entries62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3, i32 %27)
  %cmp63123 = icmp ult i32 %i.3, %27
  br i1 %cmp63123, label %if.end61.while.body_crit_edge, label %if.end61.do.body_crit_edge

if.end61.do.body_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end61.while.body_crit_edge
  %i.4124 = phi i32 [ %inc64, %while.body.while.body_crit_edge ], [ %i.3, %if.end61.while.body_crit_edge ]
  %inc64 = add nuw i32 %i.4124, 1
  %28 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !281
  tail call void @arm_heavy_mb() #7
  %mul.i108 = shl i32 %i.4124, 3
  %add.i109 = add i32 %mul.i108, 80
  %add.ptr.i110 = getelementptr i8, ptr %29, i32 %add.i109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 0) #7, !srcloc !270
  %30 = ptrtoint ptr %unicast_filter_entries62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unicast_filter_entries62, align 4
  %cmp63 = icmp ult i32 %inc64, %31
  br i1 %cmp63, label %while.body.while.body_crit_edge, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body:                                          ; preds = %while.body.do.body_crit_edge, %if.end61.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !285
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %v.0)
  %add.ptr65 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %32) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_flow_ctrl(ptr nocapture noundef readonly %hw, i32 noundef %duplex, i32 noundef %fc, i32 noundef %pause_time, i32 noundef %tx_cnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !286
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fc)
  %cmp = icmp eq i32 %fc, 3
  %3 = and i32 %2, -257
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %cmp, i32 65536, i32 0
  %v.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !287
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %v.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !270
  %add.ptr5 = getelementptr i8, ptr %1, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !288
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel28 = zext i1 %cmp to i32
  %v.1 = or i32 %8, %masksel28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !289
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %v.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !281
  tail call void @arm_heavy_mb() #7
  %mul = shl i32 %reg_n, 3
  %add = add i32 %mul, 80
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !270
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul1 = shl i32 %reg_n, 3
  %add2 = add i32 %mul1, 80
  %add4 = add i32 %mul1, 84
  tail call void @stmmac_set_mac_addr(ptr noundef %1, ptr noundef nonnull %addr, i32 noundef %add2, i32 noundef %add4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_n)
  %cmp.not = icmp eq i32 %reg_n, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr8 = getelementptr i8, ptr %1, i32 %add2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  %3 = or i32 %2, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %3) #7, !srcloc !270
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_get_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %mul = shl i32 %reg_n, 3
  %add = add i32 %mul, 80
  %add2 = add i32 %mul, 84
  tail call void @stmmac_get_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef %add, i32 noundef %add2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_mac_loopback(ptr noundef %ioaddr, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !290
  %1 = and i32 %0, -33554433
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %enable, i32 2, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !291
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #7, !srcloc !270
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_get_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_dma_reset(ptr noundef %ioaddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !292
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !293
  tail call void @arm_heavy_mb() #7
  %add.ptr3 = getelementptr i8, ptr %ioaddr, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  tail call void @arm_heavy_mb() #7
  %add.ptr6 = getelementptr i8, ptr %ioaddr, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !295
  tail call void @arm_heavy_mb() #7
  %add.ptr9 = getelementptr i8, ptr %ioaddr, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !296
  tail call void @arm_heavy_mb() #7
  %add.ptr12 = getelementptr i8, ptr %ioaddr, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !297
  tail call void @arm_heavy_mb() #7
  %add.ptr15 = getelementptr i8, ptr %ioaddr, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !298
  tail call void @arm_heavy_mb() #7
  %add.ptr18 = getelementptr i8, ptr %ioaddr, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -255) #7, !srcloc !270
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_init(ptr noundef %ioaddr, ptr nocapture noundef readnone %dma_cfg, i32 noundef %atds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !299
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16842752) #7, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !300
  tail call void @arm_heavy_mb() #7
  %add.ptr3 = getelementptr i8, ptr %ioaddr, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -255) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_init_rx(ptr noundef %ioaddr, ptr nocapture noundef readnone %dma_cfg, i32 noundef %dma_rx_phy, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !301
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %dma_rx_phy)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_init_tx(ptr noundef %ioaddr, ptr nocapture noundef readnone %dma_cfg, i32 noundef %dma_tx_phy, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !302
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %dma_tx_phy)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dump_regs(ptr noundef %ioaddr, ptr nocapture noundef writeonly %reg_space) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.inc.lor.lhs.false_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %add, %for.inc.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %i.010)
  %cmp2 = icmp eq i32 %i.010, 60
  br i1 %cmp2, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %i.010
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !303
  %div9 = lshr exact i32 %i.010, 2
  %arrayidx = getelementptr i32, ptr %reg_space, i32 %div9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge
  %add = add nuw nsw i32 %i.010, 4
  %cmp = icmp ult i32 %i.010, 196
  br i1 %cmp, label %for.inc.lor.lhs.false_crit_edge, label %for.end

for.inc.lor.lhs.false_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_operation_mode_rx(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %1, 2
  br label %do.body

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mode)
  %cmp3 = icmp slt i32 %mode, 32
  br i1 %cmp3, label %if.else.do.body_crit_edge, label %if.else6

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mode)
  %cmp7 = icmp ult i32 %mode, 64
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %and2, 16
  br label %do.body

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %mode)
  %cmp11 = icmp ult i32 %mode, 96
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %and2, 32
  br label %do.body

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mode)
  %cmp15 = icmp ult i32 %mode, 128
  %or17 = or i32 %and2, 48
  %spec.select = select i1 %cmp15, i32 %or17, i32 %and2
  br label %do.body

do.body:                                          ; preds = %if.else14, %if.then12, %if.then8, %if.else.do.body_crit_edge, %if.then
  %v.0 = phi i32 [ %or, %if.then ], [ %or9, %if.then8 ], [ %or13, %if.then12 ], [ %and2, %if.else.do.body_crit_edge ], [ %spec.select, %if.else14 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !305
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %v.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_operation_mode_tx(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 20
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or2 = or i32 %1, 6
  br label %do.body

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, -1795
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mode)
  %cmp4 = icmp slt i32 %mode, 64
  br i1 %cmp4, label %if.else.do.body_crit_edge, label %if.else7

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mode)
  %cmp8 = icmp ult i32 %mode, 128
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %and3, 256
  br label %do.body

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %mode)
  %cmp12 = icmp ult i32 %mode, 192
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  %or14 = or i32 %and3, 512
  br label %do.body

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %mode)
  %cmp16 = icmp ult i32 %mode, 256
  %or18 = or i32 %and3, 768
  %spec.select = select i1 %cmp16, i32 %or18, i32 %and3
  br label %do.body

do.body:                                          ; preds = %if.else15, %if.then13, %if.then9, %if.else.do.body_crit_edge, %if.then
  %v.0 = phi i32 [ %or2, %if.then ], [ %or10, %if.then9 ], [ %or14, %if.then13 ], [ %and3, %if.else.do.body_crit_edge ], [ %spec.select, %if.else15 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !307
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %v.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_enable_dma_transmission(ptr noundef %ioaddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 20
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !308
  %1 = or i32 %0, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !309
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_enable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !310
  %or = or i32 %1, 256
  %spec.select = select i1 %rx, i32 %or, i32 %1
  %or5 = zext i1 %tx to i32
  %value.1 = or i32 %spec.select, %or5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_disable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  %and = and i32 %1, -257
  %spec.select = select i1 %rx, i32 %and, i32 %1
  %and5 = and i32 %spec.select, -2
  %value.1 = select i1 %tx, i32 %and5, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !313
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_start_tx(ptr noundef %ioaddr, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 20
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !314
  %1 = or i32 %0, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !315
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_stop_tx(ptr noundef %ioaddr, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 20
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !316
  %1 = and i32 %0, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !317
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_start_rx(ptr noundef %ioaddr, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !318
  %1 = or i32 %0, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !319
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_stop_rx(ptr noundef %ioaddr, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !320
  %1 = and i32 %0, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !321
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !270
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_dma_interrupt(ptr noundef %ioaddr, ptr nocapture noundef %x, i32 noundef %chan, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !267
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !322
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %dir, label %entry.if.end5_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %1, 81664
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %1, 65599
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then, %entry.if.end5_crit_edge
  %v.0 = phi i32 [ %and, %if.then ], [ %and4, %if.then3 ], [ %1, %entry.if.end5_crit_edge ]
  %and6 = and i32 %v.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %tx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 44
  %3 = ptrtoint ptr %tx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_normal_irq_n, align 16
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_normal_irq_n, align 16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %ret.0 = phi i32 [ 8, %if.then7 ], [ 0, %if.end5.if.end8_crit_edge ]
  %and9 = and i32 %v.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %tx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 29
  %5 = ptrtoint ptr %tx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_process_stopped_irq, align 4
  %inc12 = add i32 %6, 1
  store i32 %inc12, ptr %tx_process_stopped_irq, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %and14 = and i32 %v.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %tx_process_stopped_irq17 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 29
  %7 = ptrtoint ptr %tx_process_stopped_irq17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_process_stopped_irq17, align 4
  %inc18 = add i32 %8, 1
  store i32 %inc18, ptr %tx_process_stopped_irq17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %and20 = lshr i32 %v.0, 3
  %9 = and i32 %and20, 1
  %10 = or i32 %ret.0, %9
  %and25 = and i32 %v.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end19.if.end30_crit_edge, label %if.then27

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %or23 = or i32 %ret.0, 1
  %tx_undeflow_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 28
  %11 = ptrtoint ptr %tx_undeflow_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_undeflow_irq, align 16
  %inc29 = add i32 %12, 1
  store i32 %inc29, ptr %tx_undeflow_irq, align 16
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end19.if.end30_crit_edge
  %ret.2 = phi i32 [ %or23, %if.then27 ], [ %10, %if.end19.if.end30_crit_edge ]
  %and31 = and i32 %v.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %tx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 35
  %13 = ptrtoint ptr %tx_early_irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_early_irq, align 4
  %inc34 = add i32 %14, 1
  store i32 %inc34, ptr %tx_early_irq, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %and36 = and i32 %v.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %or39 = or i32 %ret.2, 4
  %rx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 42
  %15 = ptrtoint ptr %rx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_normal_irq_n, align 8
  %inc40 = add i32 %16, 1
  store i32 %inc40, ptr %rx_normal_irq_n, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %ret.3 = phi i32 [ %or39, %if.then38 ], [ %ret.2, %if.end35.if.end41_crit_edge ]
  %and42 = and i32 %v.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end46_crit_edge, label %if.then44

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf_unav_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 32
  %17 = ptrtoint ptr %rx_buf_unav_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_buf_unav_irq, align 128
  %inc45 = add i32 %18, 1
  store i32 %inc45, ptr %rx_buf_unav_irq, align 128
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  %and47 = and i32 %v.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %rx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 33
  %19 = ptrtoint ptr %rx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_process_stopped_irq, align 4
  %inc50 = add i32 %20, 1
  store i32 %inc50, ptr %rx_process_stopped_irq, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %and52 = lshr i32 %v.0, 11
  %21 = and i32 %and52, 1
  %22 = or i32 %ret.3, %21
  %and57 = and i32 %v.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end51.if.end62_crit_edge, label %if.then59

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %or55 = or i32 %ret.3, 1
  %rx_overflow_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 31
  %23 = ptrtoint ptr %rx_overflow_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_overflow_irq, align 4
  %inc61 = add i32 %24, 1
  store i32 %inc61, ptr %rx_overflow_irq, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end51.if.end62_crit_edge
  %ret.5 = phi i32 [ %or55, %if.then59 ], [ %22, %if.end51.if.end62_crit_edge ]
  %and63 = and i32 %v.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end67_crit_edge, label %if.then65

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %rx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 37
  %25 = ptrtoint ptr %rx_early_irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_early_irq, align 4
  %inc66 = add i32 %26, 1
  store i32 %inc66, ptr %rx_early_irq, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  %and68 = and i32 %v.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.do.body_crit_edge, label %if.then70

if.end67.do.body_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %irq_rgmii_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 83
  %27 = ptrtoint ptr %irq_rgmii_n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_rgmii_n, align 4
  %inc71 = add i32 %28, 1
  store i32 %inc71, ptr %irq_rgmii_n, align 4
  br label %do.body

do.body:                                          ; preds = %if.then70, %if.end67.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !323
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %v.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #7, !srcloc !270
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.109, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mux_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_mux_syscon_switch_fn(i32 noundef %current_child, i32 noundef %desired_child, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %data, i32 0, i32 36
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !264
  call void @__sanitizer_cov_trace_cmp4(i32 %current_child, i32 %desired_child)
  %tobool.not = icmp eq i32 %current_child, %desired_child
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %regmap_field = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %regmap_field to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_field, align 4
  %call = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %reg) #7
  %7 = zext i32 %desired_child to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %desired_child, label %do.end11 [
    i32 1, label %if.then.sw.epilog_crit_edge
    i32 2, label %do.end4
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end4:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %device12 = getelementptr inbounds %struct.stmmac_priv, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.126, i32 noundef %desired_child) #10
  br label %cleanup

sw.epilog:                                        ; preds = %do.end4, %if.then.sw.epilog_crit_edge
  %.str.123.sink = phi ptr [ @.str.123, %do.end4 ], [ @.str.120, %if.then.sw.epilog_crit_edge ]
  %.sink42 = phi i32 [ 65536, %do.end4 ], [ 32768, %if.then.sw.epilog_crit_edge ]
  %.sink = phi i8 [ 0, %do.end4 ], [ 1, %if.then.sw.epilog_crit_edge ]
  %device5 = getelementptr inbounds %struct.stmmac_priv, ptr %data, i32 0, i32 15
  %10 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device5, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull %.str.123.sink) #10
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %.sink43 = load i32, ptr %reg, align 4
  %and6 = and i32 %.sink43, -98305
  %or7 = or i32 %and6, %.sink42
  %use_internal_phy8 = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %use_internal_phy8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %use_internal_phy8, align 1
  %14 = ptrtoint ptr %regmap_field to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap_field, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef %or7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %use_internal_phy15 = getelementptr inbounds %struct.sunxi_priv_data, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %use_internal_phy15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_internal_phy15, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not = icmp eq i8 %17, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %sw.epilog
  %call18 = call fastcc i32 @sun8i_dwmac_power_internal_phy(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end21_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @sun8i_dwmac_unpower_internal_phy(ptr noundef %3)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17.if.end21_crit_edge
  %call22 = call fastcc i32 @sun8i_dwmac_reset(ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then17.cleanup_crit_edge, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ %call18, %if.then17.cleanup_crit_edge ], [ %call22, %if.end21 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_mux_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !128, !130, !132, !133, !134, !135, !136, !138, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !207, !208, !209, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !241, !243, !245, !247, !249, !251, !253}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @__initcall__kmod_dwmac_sun8i__385_1347_sun8i_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_sun8i__385_1347_sun8i_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1347, i32 1}
!2 = !{ptr @__exitcall_sun8i_dwmac_driver_exit, !1, !"__exitcall_sun8i_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author386, !4, !"__UNIQUE_ID_author386", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1349, i32 1}
!5 = !{ptr @__UNIQUE_ID_description387, !6, !"__UNIQUE_ID_description387", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1350, i32 1}
!7 = !{ptr @__UNIQUE_ID_file388, !8, !"__UNIQUE_ID_file388", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1351, i32 1}
!9 = !{ptr @__UNIQUE_ID_license389, !8, !"__UNIQUE_ID_license389", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1342, i32 21}
!12 = !{ptr @sun8i_dwmac_driver, !13, !"sun8i_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1337, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1166, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun8i_dwmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun8i_dwmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1170, i32 35}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1172, i32 3}
!26 = !{ptr @sun8i_dwmac_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun8i_dwmac_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1177, i32 53}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1181, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sun8i_dwmac_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sun8i_dwmac_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1205, i32 9}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1208, i32 3}
!39 = !{ptr @sun8i_dwmac_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sun8i_dwmac_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1216, i32 3}
!43 = !{ptr @sun8i_dwmac_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sun8i_dwmac_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1266, i32 4}
!47 = !{ptr @sun8i_dwmac_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sun8i_dwmac_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 577, i32 4}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sun8i_dwmac_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sun8i_dwmac_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 584, i32 3}
!56 = !{ptr @sun8i_dwmac_init._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sun8i_dwmac_init._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 817, i32 3}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sun8i_dwmac_power_internal_phy._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @sun8i_dwmac_power_internal_phy._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 821, i32 2}
!66 = !{ptr @sun8i_dwmac_power_internal_phy._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sun8i_dwmac_power_internal_phy._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 824, i32 3}
!70 = !{ptr @sun8i_dwmac_power_internal_phy._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @sun8i_dwmac_power_internal_phy._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 835, i32 3}
!74 = !{ptr @sun8i_dwmac_power_internal_phy._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sun8i_dwmac_power_internal_phy._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @sun8i_dwmac_ops, !77, !"sun8i_dwmac_ops", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1064, i32 32}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 710, i32 21}
!80 = !{ptr @sun8i_dwmac_dma_ops, !81, !"sun8i_dwmac_dma_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 548, i32 36}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 932, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sun8i_dwmac_set_syscon._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 938, i32 3}
!89 = !{ptr @sun8i_dwmac_set_syscon._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 943, i32 35}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 953, i32 4}
!95 = !{ptr @sun8i_dwmac_set_syscon._entry.49, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr.51, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 967, i32 34}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 969, i32 4}
!101 = !{ptr @sun8i_dwmac_set_syscon._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 973, i32 3}
!105 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug383, !104, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 979, i32 4}
!109 = !{ptr @sun8i_dwmac_set_syscon._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 985, i32 34}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 987, i32 4}
!115 = !{ptr @sun8i_dwmac_set_syscon._entry.62, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr.64, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 991, i32 3}
!119 = !{ptr @sun8i_dwmac_set_syscon.__UNIQUE_ID_ddebug384, !118, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 997, i32 4}
!122 = !{ptr @sun8i_dwmac_set_syscon._entry.66, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr.68, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1022, i32 3}
!126 = !{ptr @sun8i_dwmac_set_syscon._entry.69, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @sun8i_dwmac_set_syscon._entry_ptr.71, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/of_mdio.h", i32 43, i32 33}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/of_mdio.h", i32 45, i32 3}
!132 = !{ptr @.str.74, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @of_mdio_parse_addr._entry, !131, !"_entry", i1 false, i1 false}
!135 = !{ptr @of_mdio_parse_addr._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/of_mdio.h", i32 51, i32 3}
!138 = !{ptr @of_mdio_parse_addr._entry.76, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @of_mdio_parse_addr._entry_ptr.78, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/phy.h", i32 211, i32 10}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/phy.h", i32 213, i32 10}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/phy.h", i32 215, i32 10}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/phy.h", i32 217, i32 10}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/phy.h", i32 219, i32 10}
!150 = !{ptr @.str.84, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/phy.h", i32 221, i32 10}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/phy.h", i32 223, i32 10}
!154 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/phy.h", i32 225, i32 10}
!156 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/phy.h", i32 227, i32 10}
!158 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../include/linux/phy.h", i32 229, i32 10}
!160 = !{ptr @.str.89, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/linux/phy.h", i32 231, i32 10}
!162 = !{ptr @.str.90, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../include/linux/phy.h", i32 233, i32 10}
!164 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../include/linux/phy.h", i32 235, i32 10}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../include/linux/phy.h", i32 237, i32 10}
!168 = !{ptr @.str.93, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/linux/phy.h", i32 239, i32 10}
!170 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/linux/phy.h", i32 241, i32 10}
!172 = !{ptr @.str.95, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/phy.h", i32 243, i32 10}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/phy.h", i32 245, i32 10}
!176 = !{ptr @.str.97, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/phy.h", i32 247, i32 10}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/phy.h", i32 249, i32 10}
!180 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/linux/phy.h", i32 251, i32 10}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../include/linux/phy.h", i32 253, i32 10}
!184 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../include/linux/phy.h", i32 255, i32 10}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../include/linux/phy.h", i32 257, i32 10}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../include/linux/phy.h", i32 259, i32 10}
!190 = !{ptr @.str.104, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../include/linux/phy.h", i32 261, i32 10}
!192 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/linux/phy.h", i32 263, i32 10}
!194 = !{ptr @.str.106, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../include/linux/phy.h", i32 265, i32 10}
!196 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../include/linux/phy.h", i32 267, i32 10}
!198 = !{ptr @.str.108, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../include/linux/phy.h", i32 269, i32 10}
!200 = !{ptr @.str.109, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../include/linux/phy.h", i32 271, i32 10}
!202 = !{ptr @.str.110, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 772, i32 57}
!204 = !{ptr @.str.111, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 774, i32 3}
!206 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @get_ephy_nodes._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @get_ephy_nodes._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 779, i32 7}
!211 = !{ptr @.str.115, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 782, i32 3}
!213 = !{ptr @get_ephy_nodes._entry.114, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @get_ephy_nodes._entry_ptr.116, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.118, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 801, i32 3}
!217 = !{ptr @get_ephy_nodes._entry.117, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @get_ephy_nodes._entry_ptr.119, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.120, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 877, i32 4}
!221 = !{ptr @.str.121, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @mdio_mux_syscon_switch_fn._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @mdio_mux_syscon_switch_fn._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.123, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 882, i32 4}
!226 = !{ptr @mdio_mux_syscon_switch_fn._entry.122, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @mdio_mux_syscon_switch_fn._entry_ptr.124, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.126, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 887, i32 4}
!230 = !{ptr @mdio_mux_syscon_switch_fn._entry.125, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @mdio_mux_syscon_switch_fn._entry_ptr.127, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.128, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 758, i32 3}
!234 = !{ptr @.str.129, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @sun8i_dwmac_reset._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @sun8i_dwmac_reset._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @sun8i_dwmac_match, !238, !"sun8i_dwmac_match", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 1320, i32 34}
!239 = !{ptr @emac_variant_h3, !240, !"emac_variant_h3", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 96, i32 34}
!241 = !{ptr @sun8i_syscon_reg_field, !242, !"sun8i_syscon_reg_field", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 83, i32 31}
!243 = !{ptr @emac_variant_v3s, !244, !"emac_variant_v3s", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 107, i32 34}
!245 = !{ptr @emac_variant_a83t, !246, !"emac_variant_a83t", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 114, i32 34}
!247 = !{ptr @emac_variant_r40, !248, !"emac_variant_r40", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 124, i32 34}
!249 = !{ptr @sun8i_ccu_reg_field, !250, !"sun8i_ccu_reg_field", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 90, i32 31}
!251 = !{ptr @emac_variant_a64, !252, !"emac_variant_a64", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 132, i32 34}
!253 = !{ptr @emac_variant_h6, !254, !"emac_variant_h6", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c", i32 143, i32 34}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{!"auto-init"}
!265 = !{i8 0, i8 2}
!266 = !{i64 2148755482, i64 2148755487, i64 2148755500, i64 2148755544, i64 2148755578, i64 2148755599}
!267 = !{i64 2062990}
!268 = !{i64 2158032429}
!269 = !{i64 2158032655}
!270 = !{i64 2062572}
!271 = !{i64 2158034444}
!272 = !{i64 2158034938}
!273 = !{i64 2158016555}
!274 = !{i64 2158017195}
!275 = !{i64 2158017670}
!276 = !{i64 2158018219}
!277 = !{i64 2158018597}
!278 = !{i64 2158020856}
!279 = !{i64 2158021153}
!280 = !{i64 2157999000}
!281 = !{i64 2158019013}
!282 = !{i64 2158019813}
!283 = !{i64 2158020148}
!284 = !{i64 2158029290}
!285 = !{i64 2158029679}
!286 = !{i64 2158030319}
!287 = !{i64 2158030724}
!288 = !{i64 2158031364}
!289 = !{i64 2158031765}
!290 = !{i64 2158077843}
!291 = !{i64 2158078224}
!292 = !{i64 2157993333}
!293 = !{i64 2157993711}
!294 = !{i64 2157994089}
!295 = !{i64 2157994467}
!296 = !{i64 2157994845}
!297 = !{i64 2157995223}
!298 = !{i64 2157995609}
!299 = !{i64 2157996231}
!300 = !{i64 2157996785}
!301 = !{i64 2157997259}
!302 = !{i64 2157997814}
!303 = !{i64 2157998542}
!304 = !{i64 2158009979}
!305 = !{i64 2158011067}
!306 = !{i64 2158011707}
!307 = !{i64 2158012886}
!308 = !{i64 2158002562}
!309 = !{i64 2158002943}
!310 = !{i64 2157999475}
!311 = !{i64 2157999856}
!312 = !{i64 2158000508}
!313 = !{i64 2158000889}
!314 = !{i64 2158001541}
!315 = !{i64 2158001922}
!316 = !{i64 2158003583}
!317 = !{i64 2158003880}
!318 = !{i64 2158004520}
!319 = !{i64 2158004901}
!320 = !{i64 2158005541}
!321 = !{i64 2158005838}
!322 = !{i64 2158006478}
!323 = !{i64 2158009339}
