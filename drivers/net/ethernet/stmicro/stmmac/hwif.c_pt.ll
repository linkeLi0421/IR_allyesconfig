; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/hwif.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/hwif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_hwif_entry = type { i8, i8, i8, i32, i32, %struct.stmmac_regs_off, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_regs_off = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_hwtimestamp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_tc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.122, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.122 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.123, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.123 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.118, %struct.anon.119 }
%struct.anon.118 = type { i32, i32, i32 }
%struct.anon.119 = type { i32, i32, i32, i32 }

@stmmac_hw = internal constant { [8 x %struct.stmmac_hwif_entry], [96 x i8] } { [8 x %struct.stmmac_hwif_entry] [%struct.stmmac_hwif_entry { i8 0, i8 0, i8 0, i32 0, i32 0, %struct.stmmac_regs_off { i32 1792, i32 256 }, ptr null, ptr @dwmac100_dma_ops, ptr @dwmac100_ops, ptr @stmmac_ptp, ptr null, ptr null, ptr @dwmac_mmc_ops, ptr @dwmac100_setup, ptr @stmmac_dwmac1_quirks }, %struct.stmmac_hwif_entry { i8 1, i8 0, i8 0, i32 0, i32 0, %struct.stmmac_regs_off { i32 1792, i32 256 }, ptr null, ptr @dwmac1000_dma_ops, ptr @dwmac1000_ops, ptr @stmmac_ptp, ptr null, ptr null, ptr @dwmac_mmc_ops, ptr @dwmac1000_setup, ptr @stmmac_dwmac1_quirks }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 0, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac4_dma_ops, ptr @dwmac4_ops, ptr @stmmac_ptp, ptr null, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr @stmmac_dwmac4_quirks }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 64, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac4_dma_ops, ptr @dwmac410_ops, ptr @stmmac_ptp, ptr @dwmac4_ring_mode_ops, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 65, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac410_dma_ops, ptr @dwmac410_ops, ptr @stmmac_ptp, ptr @dwmac4_ring_mode_ops, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 81, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac410_dma_ops, ptr @dwmac510_ops, ptr @stmmac_ptp, ptr @dwmac4_ring_mode_ops, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 0, i8 1, i32 33, i32 118, %struct.stmmac_regs_off { i32 3328, i32 2048 }, ptr @dwxgmac210_desc_ops, ptr @dwxgmac210_dma_ops, ptr @dwxgmac210_ops, ptr @stmmac_ptp, ptr null, ptr @dwmac510_tc_ops, ptr @dwxgmac_mmc_ops, ptr @dwxgmac2_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 0, i8 1, i32 32, i32 39, %struct.stmmac_regs_off { i32 3328, i32 2048 }, ptr @dwxgmac210_desc_ops, ptr @dwxgmac210_dma_ops, ptr @dwxlgmac2_ops, ptr @stmmac_ptp, ptr null, ptr @dwmac510_tc_ops, ptr @dwxgmac_mmc_ops, ptr @dwxlgmac2_setup, ptr @stmmac_dwxlgmac_quirks }], [96 x i8] zeroinitializer }, align 32
@stmmac_hwif_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to find HW IF (id=0x%x, gmac=%d/%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stmmac_hwif_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/stmicro/stmmac/hwif.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmmac_hwif_init._entry_ptr = internal global ptr @stmmac_hwif_init._entry, section ".printk_index", align 4
@stmmac_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 16, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Version ID not available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stmmac_get_id\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stmmac_get_id._entry_ptr = internal global ptr @stmmac_get_id._entry, section ".printk_index", align 4
@stmmac_get_id._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 22, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"User ID: 0x%x, Synopsys ID: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@stmmac_get_id._entry_ptr.10 = internal global ptr @stmmac_get_id._entry.8, section ".printk_index", align 4
@stmmac_get_dev_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.11, ptr @.str.2, i32 31, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stmmac_get_dev_id\00", [46 x i8] zeroinitializer }, align 32
@stmmac_get_dev_id._entry_ptr = internal global ptr @stmmac_get_dev_id._entry, section ".printk_index", align 4
@dwmac100_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac100_ops = external dso_local constant %struct.stmmac_ops, align 4
@stmmac_ptp = external dso_local constant %struct.stmmac_hwtimestamp, align 4
@dwmac_mmc_ops = external dso_local constant %struct.stmmac_mmc_ops, align 4
@dwmac1000_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac1000_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwmac4_desc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@dwmac4_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac4_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwmac510_tc_ops = external dso_local constant %struct.stmmac_tc_ops, align 4
@dwmac410_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwmac4_ring_mode_ops = external dso_local constant %struct.stmmac_mode_ops, align 4
@dwmac410_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac510_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwxgmac210_desc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@dwxgmac210_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwxgmac210_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwxgmac_mmc_ops = external dso_local constant %struct.stmmac_mmc_ops, align 4
@dwxlgmac2_ops = external dso_local constant %struct.stmmac_ops, align 4
@stmmac_dwmac1_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 58, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enhanced/Alternate descriptors\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stmmac_dwmac1_quirks\00", [43 x i8] zeroinitializer }, align 32
@stmmac_dwmac1_quirks._entry_ptr = internal global ptr @stmmac_dwmac1_quirks._entry, section ".printk_index", align 4
@stmmac_dwmac1_quirks._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 62, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enabled extended descriptors\0A\00", [34 x i8] zeroinitializer }, align 32
@stmmac_dwmac1_quirks._entry_ptr.16 = internal global ptr @stmmac_dwmac1_quirks._entry.14, section ".printk_index", align 4
@stmmac_dwmac1_quirks._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 65, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Extended descriptors not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stmmac_dwmac1_quirks._entry_ptr.20 = internal global ptr @stmmac_dwmac1_quirks._entry.17, section ".printk_index", align 4
@enh_desc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@stmmac_dwmac1_quirks._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 70, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Normal descriptors\0A\00", [44 x i8] zeroinitializer }, align 32
@stmmac_dwmac1_quirks._entry_ptr.23 = internal global ptr @stmmac_dwmac1_quirks._entry.21, section ".printk_index", align 4
@ndesc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@stmmac_dwmac_mode_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 43, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain mode enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stmmac_dwmac_mode_quirk\00", [40 x i8] zeroinitializer }, align 32
@stmmac_dwmac_mode_quirk._entry_ptr = internal global ptr @stmmac_dwmac_mode_quirk._entry, section ".printk_index", align 4
@chain_mode_ops = external dso_local constant %struct.stmmac_mode_ops, align 4
@stmmac_dwmac_mode_quirk._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 47, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ring mode enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@stmmac_dwmac_mode_quirk._entry_ptr.28 = internal global ptr @stmmac_dwmac_mode_quirk._entry.26, section ".printk_index", align 4
@ring_mode_ops = external dso_local constant %struct.stmmac_mode_ops, align 4
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"stmmac_hw\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 106, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 339, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 16, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 20, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 31, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 58, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 62, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 65, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 70, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 43, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [46 x i8] c"../drivers/net/ethernet/stmicro/stmmac/hwif.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 47, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @stmmac_dwmac1_quirks._entry, ptr @stmmac_dwmac1_quirks._entry.14, ptr @stmmac_dwmac1_quirks._entry.17, ptr @stmmac_dwmac1_quirks._entry.21, ptr @stmmac_dwmac1_quirks._entry_ptr, ptr @stmmac_dwmac1_quirks._entry_ptr.16, ptr @stmmac_dwmac1_quirks._entry_ptr.20, ptr @stmmac_dwmac1_quirks._entry_ptr.23, ptr @stmmac_dwmac_mode_quirk._entry, ptr @stmmac_dwmac_mode_quirk._entry.26, ptr @stmmac_dwmac_mode_quirk._entry_ptr, ptr @stmmac_dwmac_mode_quirk._entry_ptr.28, ptr @stmmac_get_dev_id._entry, ptr @stmmac_get_dev_id._entry_ptr, ptr @stmmac_get_id._entry, ptr @stmmac_get_id._entry.8, ptr @stmmac_get_id._entry_ptr, ptr @stmmac_get_id._entry_ptr.10, ptr @stmmac_hwif_init._entry, ptr @stmmac_hwif_init._entry_ptr, ptr @stmmac_hw, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_hw to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_hwif_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_get_id._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_get_dev_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_dwmac1_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_dwmac1_quirks._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_dwmac1_quirks._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_dwmac1_quirks._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_dwmac_mode_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_dwmac_mode_quirk._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_hwif_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %has_xgmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %has_xgmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_xgmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2 = icmp ne i32 %5, 0
  %has_gmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %has_gmac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %has_gmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ioaddr.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 32
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.end4.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.5) #8
  br label %if.end18

do.end4.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %device5.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %14 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device5.i, align 8
  %and.i = lshr i32 %13, 8
  %shr.i = and i32 %and.i, 255
  %and6.i = and i32 %13, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef %shr.i, i32 noundef %and6.i) #8
  br label %if.end18

if.else:                                          ; preds = %entry
  %brmerge = select i1 %tobool2, i1 true, i1 %tobool
  br i1 %brmerge, label %if.then11, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then11:                                        ; preds = %if.else
  %ioaddr.i220 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %16 = ptrtoint ptr %ioaddr.i220 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i220, align 32
  %add.ptr.i221 = getelementptr i8, ptr %17, i32 272
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i222 = icmp eq i32 %18, 0
  br i1 %tobool.not.i222, label %do.end.i224, label %do.end4.i229

do.end.i224:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %device.i223 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %19 = ptrtoint ptr %device.i223 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i223, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.5) #8
  br label %stmmac_get_id.exit231

do.end4.i229:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %device5.i225 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %22 = ptrtoint ptr %device5.i225 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device5.i225, align 8
  %and.i226 = lshr i32 %21, 8
  %shr.i227 = and i32 %and.i226, 255
  %and6.i228 = and i32 %21, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.9, i32 noundef %shr.i227, i32 noundef %and6.i228) #8
  br label %stmmac_get_id.exit231

stmmac_get_id.exit231:                            ; preds = %do.end4.i229, %do.end.i224
  %retval.0.i230 = phi i32 [ %and6.i228, %do.end4.i229 ], [ 0, %do.end.i224 ]
  br i1 %tobool, label %if.then14, label %stmmac_get_id.exit231.if.end18_crit_edge

stmmac_get_id.exit231.if.end18_crit_edge:         ; preds = %stmmac_get_id.exit231
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %stmmac_get_id.exit231
  %24 = ptrtoint ptr %ioaddr.i220 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i220, align 32
  %add.ptr.i233 = getelementptr i8, ptr %25, i32 272
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i234 = icmp eq i32 %26, 0
  br i1 %tobool.not.i234, label %do.end.i236, label %if.end.i

do.end.i236:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %device.i235 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %27 = ptrtoint ptr %device.i235 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i235, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.5) #8
  br label %if.end18

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %29 = lshr i32 %26, 16
  %and.i237 = and i32 %29, 255
  br label %if.end18

if.end18:                                         ; preds = %if.end.i, %do.end.i236, %stmmac_get_id.exit231.if.end18_crit_edge, %if.else.if.end18_crit_edge, %do.end4.i, %do.end.i
  %id.0 = phi i32 [ %retval.0.i230, %stmmac_get_id.exit231.if.end18_crit_edge ], [ 0, %if.else.if.end18_crit_edge ], [ %and6.i, %do.end4.i ], [ 0, %do.end.i ], [ %retval.0.i230, %do.end.i236 ], [ %retval.0.i230, %if.end.i ]
  %dev_id.0 = phi i32 [ 0, %stmmac_get_id.exit231.if.end18_crit_edge ], [ 0, %if.else.if.end18_crit_edge ], [ 0, %do.end4.i ], [ 0, %do.end.i ], [ 0, %do.end.i236 ], [ %and.i237, %if.end.i ]
  %synopsys_id = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 40
  %30 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %id.0, ptr %synopsys_id, align 8
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 32
  %cond = select i1 %tobool2, i32 2816, i32 1792
  %add.ptr = getelementptr i8, ptr %32, i32 %cond
  %ptpaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 68
  %33 = ptrtoint ptr %ptpaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %ptpaddr, align 4
  %cond22 = select i1 %tobool2, i32 1792, i32 256
  %add.ptr23 = getelementptr i8, ptr %32, i32 %cond22
  %mmcaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 67
  %34 = ptrtoint ptr %mmcaddr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr23, ptr %mmcaddr, align 32
  %35 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %plat, align 128
  %setup = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %36, i32 0, i32 42
  %37 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %setup, align 4
  %tobool25.not = icmp eq ptr %38, null
  br i1 %tobool25.not, label %if.else30, label %if.then26

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call ptr %38(ptr noundef %priv) #5
  br label %if.end32

if.else30:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef 292, i32 noundef 3520) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then26
  %mac.0 = phi ptr [ %call29, %if.then26 ], [ %call.i, %if.else30 ]
  %tobool33.not = icmp eq ptr %mac.0, null
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %for.cond.preheader

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end32
  br i1 %tobool5, label %if.end41.6, label %if.end41

if.end41:                                         ; preds = %for.cond.preheader
  br i1 %tobool2, label %if.end49.2, label %if.end49

if.end49:                                         ; preds = %if.end41
  br i1 %tobool, label %if.end57, label %if.end49.if.end69_crit_edge

if.end49.if.end69_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end57:                                         ; preds = %if.end49
  %41 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %synopsys_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %42)
  %cmp59 = icmp ult i32 %42, 32
  br i1 %cmp59, label %if.end57.for.inc.7_crit_edge, label %land.lhs.true

if.end57.for.inc.7_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true:                                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %dev_id.0)
  %tobool67.not = icmp eq i32 %dev_id.0, 39
  br i1 %tobool67.not, label %land.lhs.true.if.end69_crit_edge, label %if.end57.1

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end69:                                         ; preds = %if.end41.6.if.end69_crit_edge, %if.end57.4, %if.end57.3.if.end69_crit_edge, %if.end57.2.if.end69_crit_edge, %if.end57.1.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge, %if.end49.if.end69_crit_edge
  %i.0241.lcssa = phi i32 [ 7, %land.lhs.true.if.end69_crit_edge ], [ 5, %if.end57.2.if.end69_crit_edge ], [ 4, %if.end57.3.if.end69_crit_edge ], [ 0, %if.end49.if.end69_crit_edge ], [ 6, %if.end57.1.if.end69_crit_edge ], [ %spec.select, %if.end57.4 ], [ 1, %if.end41.6.if.end69_crit_edge ]
  %desc = getelementptr inbounds %struct.mac_device_info, ptr %mac.0, i32 0, i32 1
  %43 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc, align 4
  %tobool70.not = icmp eq ptr %44, null
  br i1 %tobool70.not, label %cond.false, label %if.end69.cond.end_crit_edge

if.end69.cond.end_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %desc71 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 6
  %45 = ptrtoint ptr %desc71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc71, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end69.cond.end_crit_edge
  %cond72 = phi ptr [ %46, %cond.false ], [ %44, %if.end69.cond.end_crit_edge ]
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cond72, ptr %desc, align 4
  %dma = getelementptr inbounds %struct.mac_device_info, ptr %mac.0, i32 0, i32 2
  %48 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma, align 4
  %tobool74.not = icmp eq ptr %49, null
  br i1 %tobool74.not, label %cond.false76, label %cond.end.cond.end78_crit_edge

cond.end.cond.end78_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end78

cond.false76:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %dma77 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 7
  %50 = ptrtoint ptr %dma77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma77, align 4
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false76, %cond.end.cond.end78_crit_edge
  %cond79 = phi ptr [ %51, %cond.false76 ], [ %49, %cond.end.cond.end78_crit_edge ]
  %52 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cond79, ptr %dma, align 4
  %53 = ptrtoint ptr %mac.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac.0, align 4
  %tobool82.not = icmp eq ptr %54, null
  br i1 %tobool82.not, label %cond.false84, label %cond.end78.cond.end86_crit_edge

cond.end78.cond.end86_crit_edge:                  ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end86

cond.false84:                                     ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #7
  %mac85 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 8
  %55 = ptrtoint ptr %mac85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac85, align 4
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false84, %cond.end78.cond.end86_crit_edge
  %cond87 = phi ptr [ %56, %cond.false84 ], [ %54, %cond.end78.cond.end86_crit_edge ]
  %57 = ptrtoint ptr %mac.0 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %cond87, ptr %mac.0, align 4
  %ptp = getelementptr inbounds %struct.mac_device_info, ptr %mac.0, i32 0, i32 4
  %58 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ptp, align 4
  %tobool89.not = icmp eq ptr %59, null
  br i1 %tobool89.not, label %cond.false91, label %cond.end86.cond.end92_crit_edge

cond.end86.cond.end92_crit_edge:                  ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end92

cond.false91:                                     ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #7
  %hwtimestamp = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 9
  %60 = ptrtoint ptr %hwtimestamp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hwtimestamp, align 4
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false91, %cond.end86.cond.end92_crit_edge
  %cond93 = phi ptr [ %61, %cond.false91 ], [ %59, %cond.end86.cond.end92_crit_edge ]
  %62 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cond93, ptr %ptp, align 4
  %mode = getelementptr inbounds %struct.mac_device_info, ptr %mac.0, i32 0, i32 3
  %63 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mode, align 4
  %tobool95.not = icmp eq ptr %64, null
  br i1 %tobool95.not, label %cond.false97, label %cond.end92.cond.end99_crit_edge

cond.end92.cond.end99_crit_edge:                  ; preds = %cond.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end99

cond.false97:                                     ; preds = %cond.end92
  call void @__sanitizer_cov_trace_pc() #7
  %mode98 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 10
  %65 = ptrtoint ptr %mode98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mode98, align 4
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false97, %cond.end92.cond.end99_crit_edge
  %cond100 = phi ptr [ %66, %cond.false97 ], [ %64, %cond.end92.cond.end99_crit_edge ]
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cond100, ptr %mode, align 4
  %tc = getelementptr inbounds %struct.mac_device_info, ptr %mac.0, i32 0, i32 5
  %68 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tc, align 4
  %tobool102.not = icmp eq ptr %69, null
  br i1 %tobool102.not, label %cond.false104, label %cond.end99.cond.end106_crit_edge

cond.end99.cond.end106_crit_edge:                 ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end106

cond.false104:                                    ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #7
  %tc105 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 11
  %70 = ptrtoint ptr %tc105 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tc105, align 4
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false104, %cond.end99.cond.end106_crit_edge
  %cond107 = phi ptr [ %71, %cond.false104 ], [ %69, %cond.end99.cond.end106_crit_edge ]
  %72 = ptrtoint ptr %tc to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %cond107, ptr %tc, align 4
  %mmc = getelementptr inbounds %struct.mac_device_info, ptr %mac.0, i32 0, i32 6
  %73 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc, align 4
  %tobool109.not = icmp eq ptr %74, null
  br i1 %tobool109.not, label %cond.false111, label %cond.end106.cond.end113_crit_edge

cond.end106.cond.end113_crit_edge:                ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end113

cond.false111:                                    ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #7
  %mmc112 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 12
  %75 = ptrtoint ptr %mmc112 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmc112, align 4
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.end106.cond.end113_crit_edge
  %cond114 = phi ptr [ %76, %cond.false111 ], [ %74, %cond.end106.cond.end113_crit_edge ]
  %77 = ptrtoint ptr %mmc to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %cond114, ptr %mmc, align 4
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %mac.0, ptr %hw, align 4
  %79 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioaddr, align 32
  %regs = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 5
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %regs, align 4
  %add.ptr117 = getelementptr i8, ptr %80, i32 %82
  %83 = ptrtoint ptr %ptpaddr to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr117, ptr %ptpaddr, align 4
  %mmc_off = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 5, i32 1
  %84 = ptrtoint ptr %mmc_off to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mmc_off, align 4
  %add.ptr121 = getelementptr i8, ptr %80, i32 %85
  %86 = ptrtoint ptr %mmcaddr to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr121, ptr %mmcaddr, align 32
  br i1 %tobool25.not, label %if.then124, label %cond.end113.if.end130_crit_edge

cond.end113.if.end130_crit_edge:                  ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

if.then124:                                       ; preds = %cond.end113
  %setup125 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 13
  %87 = ptrtoint ptr %setup125 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %setup125, align 4
  %call126 = tail call i32 %88(ptr noundef %priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then124.if.end130_crit_edge, label %if.then124.cleanup_crit_edge

if.then124.cleanup_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then124.if.end130_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

if.end130:                                        ; preds = %if.then124.if.end130_crit_edge, %cond.end113.if.end130_crit_edge
  %quirks = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %i.0241.lcssa, i32 14
  %89 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %quirks, align 4
  %hwif_quirks = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 17
  %91 = ptrtoint ptr %hwif_quirks to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %hwif_quirks, align 16
  br label %cleanup

if.end57.1:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %42)
  %cmp59.1 = icmp ugt i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 118, i32 %dev_id.0)
  %tobool67.not.1 = icmp eq i32 %dev_id.0, 118
  %or.cond = select i1 %cmp59.1, i1 %tobool67.not.1, i1 false
  br i1 %or.cond, label %if.end57.1.if.end69_crit_edge, label %if.end57.1.for.inc.7_crit_edge

if.end57.1.for.inc.7_crit_edge:                   ; preds = %if.end57.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.end57.1.if.end69_crit_edge:                    ; preds = %if.end57.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end49.2:                                       ; preds = %if.end41
  br i1 %tobool, label %if.end49.2.for.inc.7_crit_edge, label %if.end57.2

if.end49.2.for.inc.7_crit_edge:                   ; preds = %if.end49.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.end57.2:                                       ; preds = %if.end49.2
  %92 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %synopsys_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %93)
  %cmp59.2 = icmp ult i32 %93, 81
  br i1 %cmp59.2, label %if.end57.3, label %if.end57.2.if.end69_crit_edge

if.end57.2.if.end69_crit_edge:                    ; preds = %if.end57.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end57.3:                                       ; preds = %if.end57.2
  %94 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %synopsys_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %95)
  %cmp59.3 = icmp ult i32 %95, 65
  br i1 %cmp59.3, label %if.end57.4, label %if.end57.3.if.end69_crit_edge

if.end57.3.if.end69_crit_edge:                    ; preds = %if.end57.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end57.4:                                       ; preds = %if.end57.3
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %synopsys_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %97)
  %cmp59.4 = icmp ult i32 %97, 64
  %spec.select = select i1 %cmp59.4, i32 2, i32 3
  br label %if.end69

if.end41.6:                                       ; preds = %for.cond.preheader
  %brmerge245 = select i1 %tobool2, i1 true, i1 %tobool
  br i1 %brmerge245, label %if.end41.6.for.inc.7_crit_edge, label %if.end41.6.if.end69_crit_edge

if.end41.6.if.end69_crit_edge:                    ; preds = %if.end41.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end41.6.for.inc.7_crit_edge:                   ; preds = %if.end41.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end41.6.for.inc.7_crit_edge, %if.end49.2.for.inc.7_crit_edge, %if.end57.1.for.inc.7_crit_edge, %if.end57.for.inc.7_crit_edge
  %device131 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %98 = ptrtoint ptr %device131 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device131, align 8
  %conv133 = zext i1 %tobool5 to i32
  %conv135 = zext i1 %tobool2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str, i32 noundef %id.0, i32 noundef %conv133, i32 noundef %conv135) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %if.end130, %if.then124.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end130 ], [ -22, %for.inc.7 ], [ -12, %if.end32.cleanup_crit_edge ], [ %call126, %if.then124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac100_setup(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_dwmac1_quirks(ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %enh_desc = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %enh_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enh_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %device14 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %6 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device14, align 8
  br i1 %tobool.not, label %do.end13, label %do.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  %synopsys_id = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 40
  %8 = ptrtoint ptr %synopsys_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %synopsys_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %9)
  %cmp = icmp sgt i32 %9, 52
  %10 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device14, align 8
  br i1 %cmp, label %do.end4, label %do.end8

do.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.15) #8
  %extend_desc = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 55
  %12 = ptrtoint ptr %extend_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %extend_desc, align 128
  br label %if.end16

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.18) #8
  br label %if.end16

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.22) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %do.end8, %do.end4
  %ndesc_ops.sink = phi ptr [ @ndesc_ops, %do.end13 ], [ @enh_desc_ops, %do.end8 ], [ @enh_desc_ops, %do.end4 ]
  %desc15 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %desc15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ndesc_ops.sink, ptr %desc15, align 4
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %chain_mode.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 54
  %16 = ptrtoint ptr %chain_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chain_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  %device5.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %18 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device5.i, align 8
  %.str.27..str.24.i = select i1 %tobool.not.i, ptr @.str.27, ptr @.str.24
  %..i = select i1 %tobool.not.i, i32 2, i32 1
  %ring_mode_ops.chain_mode_ops.i = select i1 %tobool.not.i, ptr @ring_mode_ops, ptr @chain_mode_ops
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull %.str.27..str.24.i) #8
  %20 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 53
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %..i, ptr %20, align 8
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ring_mode_ops.chain_mode_ops.i, ptr %22, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac1000_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac4_setup(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_dwmac4_quirks(ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 4
  %chain_mode.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 54
  %2 = ptrtoint ptr %chain_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chain_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %device5.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device5.i, align 8
  %.str.27..str.24.i = select i1 %tobool.not.i, ptr @.str.27, ptr @.str.24
  %..i = select i1 %tobool.not.i, i32 2, i32 1
  %ring_mode_ops.chain_mode_ops.i = select i1 %tobool.not.i, ptr @ring_mode_ops, ptr @chain_mode_ops
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull %.str.27..str.24.i) #8
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 53
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %..i, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ring_mode_ops.chain_mode_ops.i, ptr %8, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwxgmac2_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwxlgmac2_setup(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_dwxlgmac_quirks(ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %xlgmac = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %xlgmac to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %xlgmac, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 339, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @stmmac_hwif_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @stmmac_hwif_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 16, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @stmmac_get_id._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @stmmac_get_id._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 20, i32 2}
!16 = !{ptr @stmmac_get_id._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @stmmac_get_id._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 31, i32 3}
!20 = !{ptr @stmmac_get_dev_id._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @stmmac_get_dev_id._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @stmmac_hw, !23, !"stmmac_hw", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 106, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 58, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stmmac_dwmac1_quirks._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @stmmac_dwmac1_quirks._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 62, i32 4}
!31 = !{ptr @stmmac_dwmac1_quirks._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stmmac_dwmac1_quirks._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 65, i32 4}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stmmac_dwmac1_quirks._entry.17, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @stmmac_dwmac1_quirks._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 70, i32 3}
!40 = !{ptr @stmmac_dwmac1_quirks._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @stmmac_dwmac1_quirks._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 43, i32 3}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stmmac_dwmac_mode_quirk._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @stmmac_dwmac_mode_quirk._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/hwif.c", i32 47, i32 3}
!49 = !{ptr @stmmac_dwmac_mode_quirk._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stmmac_dwmac_mode_quirk._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 6065919}
!61 = !{i64 2157317766}
!62 = !{i64 2157323760}
