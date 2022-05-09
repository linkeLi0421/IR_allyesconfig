; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mediatek_dwmac_variant = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.mediatek_dwmac_plat_data = type { ptr, %struct.mac_delay_struct, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.mac_delay_struct = type { i32, i32, i8, i8 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_mediatek__474_451_mediatek_dwmac_driver_init6 = internal global ptr @mediatek_dwmac_driver_init, section ".initcall6.init", align 4
@mediatek_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mediatek_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mediatek_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mediatek_dwmac_driver_exit = internal global ptr @mediatek_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author475 = internal constant [59 x i8] c"dwmac_mediatek.author=Biao Huang <biao.huang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description476 = internal constant [62 x i8] c"dwmac_mediatek.description=MediaTek DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file477 = internal constant [71 x i8] c"dwmac_mediatek.file=drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek\00", section ".modinfo", align 1
@__UNIQUE_ID_license478 = internal constant [30 x i8] c"dwmac_mediatek.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwmac-mediatek\00", [17 x i8] zeroinitializer }, align 32
@mediatek_dwmac_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_gmac_variant }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@mediatek_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Missing dwmac-mediatek variant\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek_dwmac_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mediatek_dwmac_probe._entry_ptr = internal global ptr @mediatek_dwmac_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,pericfg\00", [47 x i8] zeroinitializer }, align 32
@mediatek_dwmac_config_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get pericfg syscon\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek_dwmac_config_dt\00", [39 x i8] zeroinitializer }, align 32
@mediatek_dwmac_config_dt._entry_ptr = internal global ptr @mediatek_dwmac_config_dt._entry, section ".printk_index", align 4
@mediatek_dwmac_config_dt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not find phy-mode\0A\00", [45 x i8] zeroinitializer }, align 32
@mediatek_dwmac_config_dt._entry_ptr.11 = internal global ptr @mediatek_dwmac_config_dt._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,tx-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@mediatek_dwmac_config_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid TX clock delay: %dps\0A\00", [34 x i8] zeroinitializer }, align 32
@mediatek_dwmac_config_dt._entry_ptr.15 = internal global ptr @mediatek_dwmac_config_dt._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,rx-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@mediatek_dwmac_config_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid RX clock delay: %dps\0A\00", [34 x i8] zeroinitializer }, align 32
@mediatek_dwmac_config_dt._entry_ptr.19 = internal global ptr @mediatek_dwmac_config_dt._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,txc-inverse\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,rxc-inverse\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,rmii-rxc\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mediatek,rmii-clk-from-mac\00", [37 x i8] zeroinitializer }, align 32
@mediatek_dwmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No suitable DMA available, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek_dwmac_init\00", [44 x i8] zeroinitializer }, align 32
@mediatek_dwmac_init._entry_ptr = internal global ptr @mediatek_dwmac_init._entry, section ".printk_index", align 4
@mediatek_dwmac_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set phy interface, err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mediatek_dwmac_init._entry_ptr.28 = internal global ptr @mediatek_dwmac_init._entry.26, section ".printk_index", align 4
@mediatek_dwmac_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set delay value, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mediatek_dwmac_init._entry_ptr.31 = internal global ptr @mediatek_dwmac_init._entry.29, section ".printk_index", align 4
@mediatek_dwmac_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable clks, err = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mediatek_dwmac_init._entry_ptr.34 = internal global ptr @mediatek_dwmac_init._entry.32, section ".printk_index", align 4
@mt2712_gmac_variant = internal constant { %struct.mediatek_dwmac_variant, [36 x i8] } { %struct.mediatek_dwmac_variant { ptr @mt2712_set_interface, ptr @mt2712_set_delay, ptr @mt2712_dwmac_clk_l, i32 5, i32 33, i32 17600, i32 17600 }, [36 x i8] zeroinitializer }, align 32
@mt2712_dwmac_clk_l = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [44 x i8] zeroinitializer }, align 32
@mt2712_set_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy interface not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt2712_set_interface\00", [43 x i8] zeroinitializer }, align 32
@mt2712_set_interface._entry_ptr = internal global ptr @mt2712_set_interface._entry, section ".printk_index", align 4
@mt2712_set_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.37, ptr @.str.3, i32 250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt2712_set_delay\00", [47 x i8] zeroinitializer }, align 32
@mt2712_set_delay._entry_ptr = internal global ptr @mt2712_set_delay._entry, section ".printk_index", align 4
@mt2712_delay_ps2stage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.38, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2712_delay_ps2stage\00", [42 x i8] zeroinitializer }, align 32
@mt2712_delay_ps2stage._entry_ptr = internal global ptr @mt2712_delay_ps2stage._entry, section ".printk_index", align 4
@mt2712_delay_stage2ps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.39, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2712_delay_stage2ps\00", [42 x i8] zeroinitializer }, align 32
@mt2712_delay_stage2ps._entry_ptr = internal global ptr @mt2712_delay_stage2ps._entry, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac_main\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptp_ref\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmii_internal\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 7, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"mediatek_dwmac_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 442, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 446, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"mediatek_dwmac_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 434, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 391, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 277, i32 64 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 279, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 285, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 289, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 293, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 298, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 302, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 307, i32 54 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 308, i32 54 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 309, i32 51 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 310, i32 60 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 340, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 346, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 352, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 358, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"mt2712_gmac_variant\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 261, i32 44 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"mt2712_dwmac_clk_l\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 77, i32 27 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 113, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 250, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 142, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 167, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 9 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 28 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [56 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 78, i32 39 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author475, ptr @__UNIQUE_ID_description476, ptr @__UNIQUE_ID_file477, ptr @__UNIQUE_ID_license478, ptr @__exitcall_mediatek_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_mediatek__474_451_mediatek_dwmac_driver_init6, ptr @mediatek_dwmac_config_dt._entry, ptr @mediatek_dwmac_config_dt._entry.13, ptr @mediatek_dwmac_config_dt._entry.17, ptr @mediatek_dwmac_config_dt._entry.9, ptr @mediatek_dwmac_config_dt._entry_ptr, ptr @mediatek_dwmac_config_dt._entry_ptr.11, ptr @mediatek_dwmac_config_dt._entry_ptr.15, ptr @mediatek_dwmac_config_dt._entry_ptr.19, ptr @mediatek_dwmac_driver_exit, ptr @mediatek_dwmac_init._entry, ptr @mediatek_dwmac_init._entry.26, ptr @mediatek_dwmac_init._entry.29, ptr @mediatek_dwmac_init._entry.32, ptr @mediatek_dwmac_init._entry_ptr, ptr @mediatek_dwmac_init._entry_ptr.28, ptr @mediatek_dwmac_init._entry_ptr.31, ptr @mediatek_dwmac_init._entry_ptr.34, ptr @mediatek_dwmac_probe._entry, ptr @mediatek_dwmac_probe._entry_ptr, ptr @mt2712_delay_ps2stage._entry, ptr @mt2712_delay_ps2stage._entry_ptr, ptr @mt2712_delay_stage2ps._entry, ptr @mt2712_delay_stage2ps._entry_ptr, ptr @mt2712_set_delay._entry, ptr @mt2712_set_delay._entry_ptr, ptr @mt2712_set_interface._entry, ptr @mt2712_set_interface._entry_ptr, ptr @mediatek_dwmac_driver, ptr @.str, ptr @mediatek_dwmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @mt2712_gmac_variant, ptr @mt2712_dwmac_clk_l, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_config_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_config_dt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_config_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_config_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_dwmac_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_gmac_variant to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_dwmac_clk_l to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_set_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_set_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_delay_ps2stage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_delay_stage2ps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mediatek_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mediatek_dwmac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mediatek_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mediatek_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mediatek_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tx_delay_ps.i = alloca i32, align 4
  %rx_delay_ps.i = alloca i32, align 4
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev9, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %np = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %np, align 4
  %mac_delay1.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_delay_ps.i) #6
  %6 = ptrtoint ptr %tx_delay_ps.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tx_delay_ps.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_delay_ps.i) #6
  %7 = ptrtoint ptr %rx_delay_ps.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rx_delay_ps.i, align 4, !annotation !112
  %call.i74 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  %peri_regmap.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %peri_regmap.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i74, ptr %peri_regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mediatek_dwmac_config_dt.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np, align 4
  %phy_mode.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 6
  %call7.i = tail call i32 @of_get_phy_mode(ptr noundef %10, ptr noundef %phy_mode.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10) #9
  br label %mediatek_dwmac_config_dt.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %np, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull %tx_delay_ps.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end13.i.if.end24.i_crit_edge

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end13.i
  %15 = ptrtoint ptr %tx_delay_ps.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_delay_ps.i, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %tx_delay_max.i = getelementptr inbounds %struct.mediatek_dwmac_variant, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %tx_delay_max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_delay_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp.i = icmp ult i32 %16, %20
  br i1 %cmp.i, label %if.then18.i, label %do.end21.i

if.then18.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %mac_delay1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %mac_delay1.i, align 4
  br label %if.end24.i

do.end21.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %16) #9
  br label %mediatek_dwmac_config_dt.exit.thread

if.end24.i:                                       ; preds = %if.then18.i, %if.end13.i.if.end24.i_crit_edge
  %24 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %np, align 4
  %call.i.i79.i = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.16, ptr noundef nonnull %rx_delay_ps.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i79.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i79.i, -1
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end24.i.mediatek_dwmac_config_dt.exit.thread81_crit_edge

if.end24.i.mediatek_dwmac_config_dt.exit.thread81_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mediatek_dwmac_config_dt.exit.thread81

if.then28.i:                                      ; preds = %if.end24.i
  %26 = ptrtoint ptr %rx_delay_ps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_delay_ps.i, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %rx_delay_max.i = getelementptr inbounds %struct.mediatek_dwmac_variant, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %rx_delay_max.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_delay_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp30.i = icmp ult i32 %27, %31
  br i1 %cmp30.i, label %if.then31.i, label %do.end35.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %rx_delay.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %rx_delay.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %rx_delay.i, align 4
  br label %mediatek_dwmac_config_dt.exit.thread81

do.end35.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.18, i32 noundef %27) #9
  br label %mediatek_dwmac_config_dt.exit.thread

mediatek_dwmac_config_dt.exit.thread81:           ; preds = %if.then31.i, %if.end24.i.mediatek_dwmac_config_dt.exit.thread81_crit_edge
  %35 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %np, align 4
  %call.i.i = call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.20, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %tx_inv.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 1, i32 2
  %frombool.i = zext i1 %tobool.i.i to i8
  %37 = ptrtoint ptr %tx_inv.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i, ptr %tx_inv.i, align 4
  %38 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %np, align 4
  %call.i80.i = call ptr @of_find_property(ptr noundef %39, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool.i81.i = icmp ne ptr %call.i80.i, null
  %rx_inv.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 1, i32 3
  %frombool43.i = zext i1 %tobool.i81.i to i8
  %40 = ptrtoint ptr %rx_inv.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool43.i, ptr %rx_inv.i, align 1
  %41 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %np, align 4
  %call.i82.i = call ptr @of_find_property(ptr noundef %42, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %tobool.i83.i = icmp ne ptr %call.i82.i, null
  %rmii_rxc.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 9
  %frombool46.i = zext i1 %tobool.i83.i to i8
  %43 = ptrtoint ptr %rmii_rxc.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool46.i, ptr %rmii_rxc.i, align 1
  %44 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %np, align 4
  %call.i84.i = call ptr @of_find_property(ptr noundef %45, ptr noundef nonnull @.str.23, ptr noundef null) #6
  %tobool.i85.i = icmp ne ptr %call.i84.i, null
  %rmii_clk_from_mac.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 8
  %frombool49.i = zext i1 %tobool.i85.i to i8
  %46 = ptrtoint ptr %rmii_clk_from_mac.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool49.i, ptr %rmii_clk_from_mac.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_delay_ps.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_delay_ps.i) #6
  br label %if.end14

mediatek_dwmac_config_dt.exit.thread:             ; preds = %do.end35.i, %do.end21.i, %do.end11.i
  %retval.0.i.ph = phi i32 [ -22, %do.end21.i ], [ -22, %do.end35.i ], [ %call7.i, %do.end11.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_delay_ps.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_delay_ps.i) #6
  br label %cleanup

mediatek_dwmac_config_dt.exit:                    ; preds = %if.end7
  %47 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.7) #9
  %49 = ptrtoint ptr %peri_regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %peri_regmap.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_delay_ps.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_delay_ps.i) #6
  %tobool12.not = icmp eq ptr %50, null
  br i1 %tobool12.not, label %mediatek_dwmac_config_dt.exit.if.end14_crit_edge, label %mediatek_dwmac_config_dt.exit.cleanup_crit_edge

mediatek_dwmac_config_dt.exit.cleanup_crit_edge:  ; preds = %mediatek_dwmac_config_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mediatek_dwmac_config_dt.exit.if.end14_crit_edge: ; preds = %mediatek_dwmac_config_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %mediatek_dwmac_config_dt.exit.if.end14_crit_edge, %mediatek_dwmac_config_dt.exit.thread81
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %num_clks.i = getelementptr inbounds %struct.mediatek_dwmac_variant, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_clks.i, align 4
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 8) #6
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !113

devm_kcalloc.exit.thread.i:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %clks26.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 2
  %58 = ptrtoint ptr %clks26.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %clks26.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end14
  %59 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev9, align 4
  %61 = extractvalue { i32, i1 } %56, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %60, i32 noundef %61, i32 noundef 3520) #6
  %clks.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 2
  %62 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call5.i.i.i, ptr %clks.i, align 4
  %tobool.not.i76 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i76, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp28.not.i = icmp eq i32 %55, 0
  br i1 %cmp28.not.i, label %for.cond.preheader.i.mediatek_dwmac_clk_init.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.mediatek_dwmac_clk_init.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mediatek_dwmac_clk_init.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %clk_list.i = getelementptr inbounds %struct.mediatek_dwmac_variant, ptr %53, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %63 = ptrtoint ptr %clk_list.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk_list.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %64, i32 %i.029.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 4
  %67 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clks.i, align 4
  %arrayidx4.i = getelementptr %struct.clk_bulk_data, ptr %68, i32 %i.029.i
  %69 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %55
  br i1 %exitcond.not.i, label %for.body.i.mediatek_dwmac_clk_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.mediatek_dwmac_clk_init.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mediatek_dwmac_clk_init.exit

mediatek_dwmac_clk_init.exit:                     ; preds = %for.body.i.mediatek_dwmac_clk_init.exit_crit_edge, %for.cond.preheader.i.mediatek_dwmac_clk_init.exit_crit_edge
  %70 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_clks.i, align 4
  %num_clks_to_config.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 7
  %72 = ptrtoint ptr %num_clks_to_config.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %num_clks_to_config.i, align 4
  %73 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev9, align 4
  %75 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clks.i, align 4
  %call8.i = call i32 @devm_clk_bulk_get(ptr noundef %74, i32 noundef %55, ptr noundef %76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool16.not = icmp eq i32 %call8.i, 0
  br i1 %tobool16.not, label %if.end18, label %mediatek_dwmac_clk_init.exit.cleanup_crit_edge

mediatek_dwmac_clk_init.exit.cleanup_crit_edge:   ; preds = %mediatek_dwmac_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %mediatek_dwmac_clk_init.exit
  %call19 = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call23 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #6
  %cmp.i78 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %phy_mode = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %call.i, i32 0, i32 6
  %78 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %phy_mode, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 2
  %80 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %interface, align 4
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 58
  %81 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %has_gmac4, align 4
  %has_gmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 13
  %82 = ptrtoint ptr %has_gmac to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %has_gmac, align 4
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 18
  %83 = ptrtoint ptr %pmt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %pmt, align 4
  %riwt_off = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 21
  %84 = ptrtoint ptr %riwt_off to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %riwt_off, align 4
  %maxmtu = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 23
  %85 = ptrtoint ptr %maxmtu to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1500, ptr %maxmtu, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 46
  %86 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %bsp_priv, align 4
  %init = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 40
  %87 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @mediatek_dwmac_init, ptr %init, align 4
  %exit = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call23, i32 0, i32 41
  %88 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @mediatek_dwmac_exit, ptr %exit, align 4
  %call28 = call i32 @mediatek_dwmac_init(ptr noundef %pdev, ptr noundef nonnull %call.i)
  %call30 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call23, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.then32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call23) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27.cleanup_crit_edge, %if.then25, %if.end18.cleanup_crit_edge, %mediatek_dwmac_clk_init.exit.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %mediatek_dwmac_config_dt.exit.cleanup_crit_edge, %mediatek_dwmac_config_dt.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %77, %if.then25 ], [ %call30, %if.then32 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %51, %mediatek_dwmac_config_dt.exit.cleanup_crit_edge ], [ %call8.i, %mediatek_dwmac_clk_init.exit.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %retval.0.i.ph, %mediatek_dwmac_config_dt.exit.thread ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mediatek_dwmac_init(ptr noundef %pdev, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dma_bit_mask = getelementptr inbounds %struct.mediatek_dwmac_variant, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dma_bit_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_bit_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp = icmp eq i32 %5, 64
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sh_prom = zext i32 %5 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  %call.i = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef %cond) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call4 = tail call i32 %9(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef %call4) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %dwmac_set_delay = getelementptr inbounds %struct.mediatek_dwmac_variant, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dwmac_set_delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dwmac_set_delay, align 4
  %call12 = tail call i32 %13(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef %call12) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %num_clks_to_config = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %priv, i32 0, i32 7
  %16 = ptrtoint ptr %num_clks_to_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clks_to_config, align 4
  %clks = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks, align 4
  %call.i57 = tail call i32 @clk_bulk_prepare(i32 noundef %17, ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.do.end25_crit_edge

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

if.end.i:                                         ; preds = %if.end19
  %call1.i58 = tail call i32 @clk_bulk_enable(i32 noundef %17, ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool2.not.i = icmp eq i32 %call1.i58, 0
  br i1 %tobool2.not.i, label %if.end27, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %17, ptr noundef %19) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.end19.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i58, %if.then3.i ], [ %call.i57, %if.end19.do.end25_crit_edge ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev28) #6
  %call.i59 = tail call i32 @__pm_runtime_resume(ptr noundef %dev28, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end25, %do.end17, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call4, %do.end9 ], [ %call12, %do.end17 ], [ %retval.0.i.ph, %do.end25 ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mediatek_dwmac_exit(ptr noundef %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_clks_to_config = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %num_clks_to_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_clks_to_config, align 4
  %clks = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %1, ptr noundef %3) #6
  tail call void @clk_bulk_unprepare(i32 noundef %1, ptr noundef %3) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2712_set_interface(ptr nocapture noundef %plat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmii_clk_from_mac1 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 8
  %0 = ptrtoint ptr %rmii_clk_from_mac1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rmii_clk_from_mac1, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 32
  %rmii_rxc2 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 9
  %2 = ptrtoint ptr %rmii_rxc2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rmii_rxc2, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat, align 4
  %num_clks = getelementptr inbounds %struct.mediatek_dwmac_variant, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clks, align 4
  %sub = add i32 %7, -1
  %num_clks_to_config = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 7
  %8 = ptrtoint ptr %num_clks_to_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %num_clks_to_config, align 4
  %phy_mode = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 6
  %9 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 7, label %sw.bb5
    i32 9, label %entry.sw.bb12_crit_edge
    i32 12, label %entry.sw.bb12_crit_edge27
    i32 11, label %entry.sw.bb12_crit_edge28
    i32 10, label %entry.sw.bb12_crit_edge29
  ]

entry.sw.bb12_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

entry.sw.bb12_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

entry.sw.bb12_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br i1 %tobool.not, label %sw.bb5.if.end_crit_edge, label %if.then

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %num_clks_to_config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %num_clks_to_config, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5.if.end_crit_edge
  %or9 = select i1 %tobool3.not, i32 4, i32 20
  %or10 = or i32 %or9, %cond
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge27, %entry.sw.bb12_crit_edge28, %entry.sw.bb12_crit_edge29
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.35) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb12, %if.end, %entry.sw.epilog_crit_edge
  %intf_val.0 = phi i32 [ 1, %sw.bb12 ], [ %or10, %if.end ], [ 0, %entry.sw.epilog_crit_edge ]
  %peri_regmap = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 4
  %15 = ptrtoint ptr %peri_regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peri_regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 1048, i32 noundef %intf_val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2712_set_delay(ptr noundef %plat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_delay1 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1
  %phy_mode.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 6
  %0 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %do.end.i [
    i32 2, label %entry.sw.bb.i_crit_edge
    i32 7, label %entry.sw.bb.i_crit_edge967
    i32 9, label %entry.sw.bb3.i_crit_edge
    i32 12, label %entry.sw.bb3.i_crit_edge968
    i32 11, label %entry.sw.bb3.i_crit_edge969
    i32 10, label %entry.sw.bb3.i_crit_edge970
  ]

entry.sw.bb3.i_crit_edge970:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge969:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge968:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

entry.sw.bb.i_crit_edge967:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge967
  %3 = ptrtoint ptr %mac_delay1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_delay1, align 4
  %div.i = udiv i32 %4, 550
  store i32 %div.i, ptr %mac_delay1, align 4
  %rx_delay.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %rx_delay.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_delay.i, align 4
  %div2.i = udiv i32 %6, 550
  store i32 %div2.i, ptr %rx_delay.i, align 4
  br label %mt2712_delay_ps2stage.exit

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge968, %entry.sw.bb3.i_crit_edge969, %entry.sw.bb3.i_crit_edge970
  %7 = ptrtoint ptr %mac_delay1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_delay1, align 4
  %div5.i = udiv i32 %8, 170
  store i32 %div5.i, ptr %mac_delay1, align 4
  %rx_delay6.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %rx_delay6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_delay6.i, align 4
  %div7.i = udiv i32 %10, 170
  store i32 %div7.i, ptr %rx_delay6.i, align 4
  br label %mt2712_delay_ps2stage.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.35) #9
  br label %mt2712_delay_ps2stage.exit

mt2712_delay_ps2stage.exit:                       ; preds = %do.end.i, %sw.bb3.i, %sw.bb.i
  %13 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_mode.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %14, label %do.end829 [
    i32 2, label %do.body5
    i32 7, label %sw.bb190
    i32 9, label %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge
    i32 12, label %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge971
    i32 11, label %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge972
    i32 10, label %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge973
  ]

mt2712_delay_ps2stage.exit.sw.bb618_crit_edge973: ; preds = %mt2712_delay_ps2stage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

mt2712_delay_ps2stage.exit.sw.bb618_crit_edge972: ; preds = %mt2712_delay_ps2stage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

mt2712_delay_ps2stage.exit.sw.bb618_crit_edge971: ; preds = %mt2712_delay_ps2stage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

mt2712_delay_ps2stage.exit.sw.bb618_crit_edge:    ; preds = %mt2712_delay_ps2stage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb618

do.body5:                                         ; preds = %mt2712_delay_ps2stage.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %mac_delay1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_delay1, align 4
  %rx_delay = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %rx_delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  %shl = select i1 %tobool23.not, i32 0, i32 524288
  %shl54 = shl i32 %17, 14
  %and55 = and i32 %shl54, 507904
  %or56 = or i32 %shl, %and55
  %tx_inv = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %tx_inv to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_inv, align 4, !range !114
  %22 = zext i8 %21 to i32
  %shl85 = shl nuw nsw i32 %22, 20
  %or87 = or i32 %shl85, %or56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool122.not = icmp eq i32 %19, 0
  %shl127 = select i1 %tobool122.not, i32 0, i32 4096
  %or129 = or i32 %or87, %shl127
  %shl155 = shl i32 %19, 7
  %and156 = and i32 %shl155, 3968
  %or157 = or i32 %or129, %and156
  %rx_inv = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %rx_inv to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rx_inv, align 1, !range !114
  %25 = zext i8 %24 to i32
  %shl187 = shl nuw nsw i32 %25, 13
  %or189 = or i32 %or157, %shl187
  br label %sw.epilog

sw.bb190:                                         ; preds = %mt2712_delay_ps2stage.exit
  %rmii_clk_from_mac = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 8
  %26 = ptrtoint ptr %rmii_clk_from_mac to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rmii_clk_from_mac, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool191.not = icmp eq i8 %27, 0
  br i1 %tobool191.not, label %if.else, label %do.body199

do.body199:                                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #8
  %rx_delay200 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %rx_delay200 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_delay200, align 4
  %30 = ptrtoint ptr %mac_delay1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mac_delay1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool228.not = icmp eq i32 %29, 0
  %shl233 = select i1 %tobool228.not, i32 0, i32 524288
  %shl261 = shl i32 %29, 14
  %and262 = and i32 %shl261, 507904
  %or263 = or i32 %shl233, %and262
  %rx_inv271 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %rx_inv271 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rx_inv271, align 1, !range !114
  %34 = zext i8 %33 to i32
  %shl294 = shl nuw nsw i32 %34, 20
  %or296 = or i32 %shl294, %or263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool332.not = icmp eq i32 %31, 0
  %shl337 = select i1 %tobool332.not, i32 0, i32 32
  %or339 = or i32 %or296, %shl337
  %and366 = and i32 %31, 31
  %or367 = or i32 %or339, %and366
  %tx_inv375 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %tx_inv375 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_inv375, align 4, !range !114
  %37 = shl nuw nsw i8 %36, 6
  %shl398 = zext i8 %37 to i32
  %or400 = or i32 %or367, %shl398
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #8
  %rmii_rxc = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 9
  %38 = ptrtoint ptr %rmii_rxc to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rmii_rxc, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool401.not = icmp eq i8 %39, 0
  %rx_delay515 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %rx_delay515 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_delay515, align 4
  %. = select i1 %tobool401.not, i32 524288, i32 4096
  %.964 = select i1 %tobool401.not, i32 14, i32 7
  %.965 = select i1 %tobool401.not, i32 507904, i32 3968
  %.966 = select i1 %tobool401.not, i32 20, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool543.not = icmp eq i32 %41, 0
  %shl548 = select i1 %tobool543.not, i32 0, i32 %.
  %shl576 = shl i32 %41, %.964
  %and577 = and i32 %shl576, %.965
  %or578 = or i32 %shl548, %and577
  %rx_inv586 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %rx_inv586 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rx_inv586, align 1, !range !114
  %44 = zext i8 %43 to i32
  %shl609 = shl nuw nsw i32 %44, %.966
  %or611 = or i32 %shl609, %or578
  %tx_inv613 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %tx_inv613 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_inv613, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool614.not = icmp eq i8 %46, 0
  %spec.select = select i1 %tobool614.not, i32 0, i32 4
  br label %sw.epilog

sw.bb618:                                         ; preds = %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge, %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge971, %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge972, %mt2712_delay_ps2stage.exit.sw.bb618_crit_edge973
  %47 = ptrtoint ptr %mac_delay1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mac_delay1, align 4
  %rx_delay730 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %rx_delay730 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_delay730, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool654.not = icmp eq i32 %48, 0
  %shl659 = select i1 %tobool654.not, i32 0, i32 32
  %and688 = and i32 %48, 31
  %tx_inv697 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %tx_inv697 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tx_inv697, align 4, !range !114
  %53 = shl nuw nsw i8 %52, 6
  %shl720 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool758.not = icmp eq i32 %50, 0
  %shl763 = select i1 %tobool758.not, i32 0, i32 4096
  %shl791 = shl i32 %50, 7
  %and792 = and i32 %shl791, 3968
  %rx_inv801 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %rx_inv801 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rx_inv801, align 1, !range !114
  %56 = zext i8 %55 to i32
  %shl824 = shl nuw nsw i32 %56, 13
  %or793 = or i32 %shl659, %and688
  %or689 = or i32 %or793, %shl763
  %or722 = or i32 %or689, %and792
  %or765 = or i32 %or722, %shl720
  %or826 = or i32 %or765, %shl824
  br label %sw.epilog

do.end829:                                        ; preds = %mt2712_delay_ps2stage.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 5
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.35) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb618, %if.else, %do.body199, %do.body5
  %fine_val.0 = phi i32 [ 3, %sw.bb618 ], [ 0, %do.body199 ], [ 0, %do.body5 ], [ %spec.select, %if.else ]
  %delay_val.1 = phi i32 [ %or826, %sw.bb618 ], [ %or400, %do.body199 ], [ %or189, %do.body5 ], [ %or611, %if.else ]
  %peri_regmap = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 4
  %59 = ptrtoint ptr %peri_regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %peri_regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 1064, i32 noundef %delay_val.1) #6
  %61 = ptrtoint ptr %peri_regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %peri_regmap, align 4
  %call831 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 2048, i32 noundef %fine_val.0) #6
  %63 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy_mode.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %64, label %do.end.i959 [
    i32 2, label %sw.epilog.sw.bb.i955_crit_edge
    i32 7, label %sw.epilog.sw.bb.i955_crit_edge974
    i32 9, label %sw.epilog.sw.bb3.i957_crit_edge
    i32 12, label %sw.epilog.sw.bb3.i957_crit_edge975
    i32 11, label %sw.epilog.sw.bb3.i957_crit_edge976
    i32 10, label %sw.epilog.sw.bb3.i957_crit_edge977
  ]

sw.epilog.sw.bb3.i957_crit_edge977:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i957

sw.epilog.sw.bb3.i957_crit_edge976:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i957

sw.epilog.sw.bb3.i957_crit_edge975:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i957

sw.epilog.sw.bb3.i957_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i957

sw.epilog.sw.bb.i955_crit_edge974:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i955

sw.epilog.sw.bb.i955_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i955

sw.bb.i955:                                       ; preds = %sw.epilog.sw.bb.i955_crit_edge, %sw.epilog.sw.bb.i955_crit_edge974
  %66 = ptrtoint ptr %mac_delay1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mac_delay1, align 4
  %mul.i = mul i32 %67, 550
  store i32 %mul.i, ptr %mac_delay1, align 4
  %rx_delay.i954 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %rx_delay.i954 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_delay.i954, align 4
  %mul2.i = mul i32 %69, 550
  store i32 %mul2.i, ptr %rx_delay.i954, align 4
  br label %cleanup

sw.bb3.i957:                                      ; preds = %sw.epilog.sw.bb3.i957_crit_edge, %sw.epilog.sw.bb3.i957_crit_edge975, %sw.epilog.sw.bb3.i957_crit_edge976, %sw.epilog.sw.bb3.i957_crit_edge977
  %70 = ptrtoint ptr %mac_delay1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mac_delay1, align 4
  %mul5.i = mul i32 %71, 170
  store i32 %mul5.i, ptr %mac_delay1, align 4
  %rx_delay6.i956 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %rx_delay6.i956 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_delay6.i956, align 4
  %mul7.i = mul i32 %73, 170
  store i32 %mul7.i, ptr %rx_delay6.i956, align 4
  br label %cleanup

do.end.i959:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i958 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, ptr %plat, i32 0, i32 5
  %74 = ptrtoint ptr %dev.i958 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i958, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.35) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i959, %sw.bb3.i957, %sw.bb.i955, %do.end829
  %retval.0 = phi i32 [ -22, %do.end829 ], [ 0, %sw.bb.i955 ], [ 0, %sw.bb3.i957 ], [ 0, %do.end.i959 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_dwmac_mediatek__474_451_mediatek_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_mediatek__474_451_mediatek_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 451, i32 1}
!2 = !{ptr @__exitcall_mediatek_dwmac_driver_exit, !1, !"__exitcall_mediatek_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author475, !4, !"__UNIQUE_ID_author475", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 453, i32 1}
!5 = !{ptr @__UNIQUE_ID_description476, !6, !"__UNIQUE_ID_description476", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 454, i32 1}
!7 = !{ptr @__UNIQUE_ID_file477, !8, !"__UNIQUE_ID_file477", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 455, i32 1}
!9 = !{ptr @__UNIQUE_ID_license478, !8, !"__UNIQUE_ID_license478", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 446, i32 21}
!12 = !{ptr @mediatek_dwmac_driver, !13, !"mediatek_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 442, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 391, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mediatek_dwmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mediatek_dwmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 277, i32 64}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 279, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mediatek_dwmac_config_dt._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mediatek_dwmac_config_dt._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 285, i32 3}
!31 = !{ptr @mediatek_dwmac_config_dt._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mediatek_dwmac_config_dt._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 289, i32 38}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 293, i32 4}
!37 = !{ptr @mediatek_dwmac_config_dt._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mediatek_dwmac_config_dt._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 298, i32 38}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 302, i32 4}
!43 = !{ptr @mediatek_dwmac_config_dt._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mediatek_dwmac_config_dt._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 307, i32 54}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 308, i32 54}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 309, i32 51}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 310, i32 60}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 340, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mediatek_dwmac_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mediatek_dwmac_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 346, i32 3}
!60 = !{ptr @mediatek_dwmac_init._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mediatek_dwmac_init._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 352, i32 3}
!64 = !{ptr @mediatek_dwmac_init._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mediatek_dwmac_init._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 358, i32 3}
!68 = !{ptr @mediatek_dwmac_init._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mediatek_dwmac_init._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @mediatek_dwmac_match, !71, !"mediatek_dwmac_match", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 434, i32 34}
!72 = !{ptr @mt2712_gmac_variant, !73, !"mt2712_gmac_variant", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 261, i32 44}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 113, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mt2712_set_interface._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @mt2712_set_interface._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 250, i32 3}
!81 = !{ptr @mt2712_set_delay._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mt2712_set_delay._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 142, i32 3}
!85 = !{ptr @mt2712_delay_ps2stage._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mt2712_delay_ps2stage._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 167, i32 3}
!89 = !{ptr @mt2712_delay_stage2ps._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mt2712_delay_stage2ps._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 78, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 78, i32 9}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 78, i32 16}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 78, i32 28}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 78, i32 39}
!101 = !{ptr @mt2712_dwmac_clk_l, !102, !"mt2712_dwmac_clk_l", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c", i32 77, i32 27}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i8 0, i8 2}
