; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson8b_dwmac_data = type { ptr, i8 }
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
%struct.meson8b_dwmac = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.meson8b_dwmac_clk_configs = type { %struct.clk_mux, %struct.clk_divider, %struct.clk_fixed_factor, %struct.clk_gate }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__initcall__kmod_dwmac_meson8b__363_547_meson8b_dwmac_driver_init6 = internal global ptr @meson8b_dwmac_driver_init, section ".initcall6.init", align 4
@meson8b_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson8b_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson8b_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson8b_dwmac_driver_exit = internal global ptr @meson8b_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author364 = internal constant [78 x i8] c"dwmac_meson8b.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description365 = internal constant [78 x i8] c"dwmac_meson8b.description=Amlogic Meson8b, Meson8m2 and GXBB DWMAC glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file366 = internal constant [69 x i8] c"dwmac_meson8b.file=drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [29 x i8] c"dwmac_meson8b.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson8b-dwmac\00", [18 x i8] zeroinitializer }, align 32
@meson8b_dwmac_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_axg_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_g12a_dwmac_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@meson8b_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing phy-mode property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson8b_dwmac_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson8b_dwmac_probe._entry_ptr = internal global ptr @meson8b_dwmac_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amlogic,tx-delay-ns\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amlogic,rx-delay-ns\00", [44 x i8] zeroinitializer }, align 32
@meson8b_dwmac_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"The RGMII RX delay range is 0..3000ps in 200ps steps\00", [43 x i8] zeroinitializer }, align 32
@meson8b_dwmac_probe._entry_ptr.11 = internal global ptr @meson8b_dwmac_probe._entry.9, section ".printk_index", align 4
@meson8b_dwmac_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"The only allowed RGMII RX delays values are: 0ps, 2000ps\00", [39 x i8] zeroinitializer }, align 32
@meson8b_dwmac_probe._entry_ptr.14 = internal global ptr @meson8b_dwmac_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timing-adjustment\00", [46 x i8] zeroinitializer }, align 32
@meson8b_init_rgmii_delays._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported phy-mode %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"meson8b_init_rgmii_delays\00", [38 x i8] zeroinitializer }, align 32
@meson8b_init_rgmii_delays._entry_ptr = internal global ptr @meson8b_init_rgmii_delays._entry, section ".printk_index", align 4
@meson8b_init_rgmii_delays._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"The timing-adjustment clock is mandatory for the RX delay re-timing\0A\00", [59 x i8] zeroinitializer }, align 32
@meson8b_init_rgmii_delays._entry_ptr.20 = internal global ptr @meson8b_init_rgmii_delays._entry.18, section ".printk_index", align 4
@meson8b_init_rgmii_delays._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to enable the timing-adjustment clock\0A\00", [50 x i8] zeroinitializer }, align 32
@meson8b_init_rgmii_delays._entry_ptr.23 = internal global ptr @meson8b_init_rgmii_delays._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@meson8b_init_rgmii_tx_clk.mux_parents = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.55, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr null, ptr null, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkin0\00", [25 x i8] zeroinitializer }, align 32
@meson8b_init_rgmii_tx_clk.div_table = internal constant { [7 x %struct.clk_div_table], [40 x i8] } { [7 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 2 }, %struct.clk_div_table { i32 3, i32 3 }, %struct.clk_div_table { i32 4, i32 4 }, %struct.clk_div_table { i32 5, i32 5 }, %struct.clk_div_table { i32 6, i32 6 }, %struct.clk_div_table { i32 7, i32 7 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"m250_sel\00", [23 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"m250_div\00", [23 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fixed_div2\00", [21 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rgmii_tx_en\00", [20 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s#%s\00", [26 x i8] zeroinitializer }, align 32
@meson8b_init_prg_eth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set RGMII TX clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson8b_init_prg_eth\00", [43 x i8] zeroinitializer }, align 32
@meson8b_init_prg_eth._entry_ptr = internal global ptr @meson8b_init_prg_eth._entry, section ".printk_index", align 4
@meson8b_init_prg_eth._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable the RGMII TX clock\0A\00", [59 x i8] zeroinitializer }, align 32
@meson8b_init_prg_eth._entry_ptr.65 = internal global ptr @meson8b_init_prg_eth._entry.63, section ".printk_index", align 4
@meson8b_dwmac_data = internal constant { %struct.meson8b_dwmac_data, [24 x i8] } { %struct.meson8b_dwmac_data { ptr @meson8b_set_phy_mode, i8 0 }, [24 x i8] zeroinitializer }, align 32
@meson_axg_dwmac_data = internal constant { %struct.meson8b_dwmac_data, [24 x i8] } { %struct.meson8b_dwmac_data { ptr @meson_axg_set_phy_mode, i8 0 }, [24 x i8] zeroinitializer }, align 32
@meson_g12a_dwmac_data = internal constant { %struct.meson8b_dwmac_data, [24 x i8] } { %struct.meson8b_dwmac_data { ptr @meson_axg_set_phy_mode, i8 1 }, [24 x i8] zeroinitializer }, align 32
@meson8b_set_phy_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to set phy-mode %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson8b_set_phy_mode\00", [43 x i8] zeroinitializer }, align 32
@meson8b_set_phy_mode._entry_ptr = internal global ptr @meson8b_set_phy_mode._entry, section ".printk_index", align 4
@meson_axg_set_phy_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.68, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_axg_set_phy_mode\00", [41 x i8] zeroinitializer }, align 32
@meson_axg_set_phy_mode._entry_ptr = internal global ptr @meson_axg_set_phy_mode._entry, section ".printk_index", align 4
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.53, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2000]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"meson8b_dwmac_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 538, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 542, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"meson8b_dwmac_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 513, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 426, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 431, i32 46 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 436, i32 46 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 439, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 447, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 454, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 462, i32 13 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 315, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 322, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 331, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 211, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 213, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 215, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 217, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 219, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 221, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 223, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 225, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 227, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 229, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 231, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 233, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 235, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 237, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 239, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 241, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 243, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 245, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 247, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 249, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 251, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 253, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 255, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 257, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 259, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 261, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 263, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 265, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 267, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 269, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 271, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant [12 x i8] c"mux_parents\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 147, i32 38 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 148, i32 16 }
@___asan_gen_.243 = private unnamed_addr constant [10 x i8] c"div_table\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 151, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 171, i32 42 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 184, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 193, i32 42 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 202, i32 42 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 129, i32 39 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 364, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 372, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"meson8b_dwmac_data\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 498, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant [21 x i8] c"meson_axg_dwmac_data\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 503, i32 40 }
@___asan_gen_.282 = private unnamed_addr constant [22 x i8] c"meson_g12a_dwmac_data\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 508, i32 40 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 231, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [55 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 258, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_description365, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__exitcall_meson8b_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_meson8b__363_547_meson8b_dwmac_driver_init6, ptr @meson8b_dwmac_driver_exit, ptr @meson8b_dwmac_probe._entry, ptr @meson8b_dwmac_probe._entry.12, ptr @meson8b_dwmac_probe._entry.9, ptr @meson8b_dwmac_probe._entry_ptr, ptr @meson8b_dwmac_probe._entry_ptr.11, ptr @meson8b_dwmac_probe._entry_ptr.14, ptr @meson8b_init_prg_eth._entry, ptr @meson8b_init_prg_eth._entry.63, ptr @meson8b_init_prg_eth._entry_ptr, ptr @meson8b_init_prg_eth._entry_ptr.65, ptr @meson8b_init_rgmii_delays._entry, ptr @meson8b_init_rgmii_delays._entry.18, ptr @meson8b_init_rgmii_delays._entry.21, ptr @meson8b_init_rgmii_delays._entry_ptr, ptr @meson8b_init_rgmii_delays._entry_ptr.20, ptr @meson8b_init_rgmii_delays._entry_ptr.23, ptr @meson8b_set_phy_mode._entry, ptr @meson8b_set_phy_mode._entry_ptr, ptr @meson_axg_set_phy_mode._entry, ptr @meson_axg_set_phy_mode._entry_ptr, ptr @meson8b_dwmac_driver, ptr @.str, ptr @meson8b_dwmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @meson8b_init_rgmii_tx_clk.mux_parents, ptr @.str.55, ptr @meson8b_init_rgmii_tx_clk.div_table, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @meson8b_dwmac_data, ptr @meson_axg_dwmac_data, ptr @meson_g12a_dwmac_data, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @switch.table.phy_modes], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_dwmac_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_dwmac_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_dwmac_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_init_rgmii_delays._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_init_rgmii_delays._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_init_rgmii_delays._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_init_rgmii_tx_clk.mux_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_init_rgmii_tx_clk.div_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_init_prg_eth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_init_prg_eth._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_dwmac_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_axg_dwmac_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_g12a_dwmac_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_set_phy_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_axg_set_phy_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8b_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson8b_dwmac_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson8b_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson8b_dwmac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8b_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #9
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %call = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call1 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.err_remove_config_dt_crit_edge, label %if.end9

if.end5.err_remove_config_dt_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_config_dt

if.end9:                                          ; preds = %if.end5
  %call11 = call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %data = getelementptr inbounds %struct.meson8b_dwmac, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %data, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end9.err_remove_config_dt_crit_edge, label %if.end15

if.end9.err_remove_config_dt_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_config_dt

if.end15:                                         ; preds = %if.end9
  %call16 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #9
  %regs = getelementptr inbounds %struct.meson8b_dwmac, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call16, ptr %regs, align 4
  %cmp.i162 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call16 to i32
  br label %err_remove_config_dt

if.end22:                                         ; preds = %if.end15
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %phy_mode = getelementptr inbounds %struct.meson8b_dwmac, ptr %call.i, i32 0, i32 3
  %call26 = call i32 @of_get_phy_mode(ptr noundef %7, ptr noundef %phy_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %do.end

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %err_remove_config_dt

if.end30:                                         ; preds = %if.end22
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tx_delay_ns = getelementptr inbounds %struct.meson8b_dwmac, ptr %call.i, i32 0, i32 5
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef %tx_delay_ns, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool34.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %tx_delay_ns to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %tx_delay_ns, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %rx_delay_ps = getelementptr inbounds %struct.meson8b_dwmac, ptr %call.i, i32 0, i32 6
  %call.i.i163 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef %rx_delay_ps, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i163)
  %tobool41.not = icmp sgt i32 %call.i.i163, -1
  br i1 %tobool41.not, label %if.end37.if.end51_crit_edge, label %if.then42

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then42:                                        ; preds = %if.end37
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i.i164 = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef %rx_delay_ps, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i164)
  %tobool47.not = icmp sgt i32 %call.i.i164, -1
  br i1 %tobool47.not, label %if.then48, label %if.then42.if.end51_crit_edge

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %rx_delay_ps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_delay_ps, align 4
  %mul = mul i32 %16, 1000
  store i32 %mul, ptr %rx_delay_ps, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then42.if.end51_crit_edge, %if.end37.if.end51_crit_edge
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %has_prg_eth1_rgmii_rx_delay = getelementptr inbounds %struct.meson8b_dwmac_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %has_prg_eth1_rgmii_rx_delay to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_prg_eth1_rgmii_rx_delay, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool53.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %rx_delay_ps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_delay_ps, align 4
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3001, i32 %22)
  %cmp = icmp ult i32 %22, 3001
  %rem = urem i32 %22, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool57.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool57.not
  br i1 %or.cond, label %if.then54.if.end74_crit_edge, label %do.end61

if.then54.if.end74_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end61:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.10) #12
  br label %err_remove_config_dt

if.else:                                          ; preds = %if.end51
  %25 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end71 [
    i32 0, label %if.else.if.end74_crit_edge
    i32 2000, label %if.else.if.end74_crit_edge166
  ]

if.else.if.end74_crit_edge166:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end71:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.13) #12
  br label %err_remove_config_dt

if.end74:                                         ; preds = %if.else.if.end74_crit_edge, %if.else.if.end74_crit_edge166, %if.then54.if.end74_crit_edge
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call76 = call ptr @devm_clk_get_optional(ptr noundef %29, ptr noundef nonnull @.str.15) #9
  %timing_adj_clk = getelementptr inbounds %struct.meson8b_dwmac, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %timing_adj_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call76, ptr %timing_adj_clk, align 4
  %cmp.i165 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call76 to i32
  br label %err_remove_config_dt

if.end82:                                         ; preds = %if.end74
  %call83 = call fastcc i32 @meson8b_init_rgmii_delays(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.err_remove_config_dt_crit_edge

if.end82.err_remove_config_dt_crit_edge:          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_config_dt

if.end86:                                         ; preds = %if.end82
  %call87 = call fastcc i32 @meson8b_init_rgmii_tx_clk(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.err_remove_config_dt_crit_edge

if.end86.err_remove_config_dt_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_config_dt

if.end90:                                         ; preds = %if.end86
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call92 = call i32 %35(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end90.err_remove_config_dt_crit_edge

if.end90.err_remove_config_dt_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_config_dt

if.end95:                                         ; preds = %if.end90
  %call96 = call fastcc i32 @meson8b_init_prg_eth(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.err_remove_config_dt_crit_edge

if.end95.err_remove_config_dt_crit_edge:          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_config_dt

if.end99:                                         ; preds = %if.end95
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 46
  %36 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %bsp_priv, align 4
  %call101 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call1, ptr noundef nonnull %stmmac_res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end99.cleanup_crit_edge, label %if.end99.err_remove_config_dt_crit_edge

if.end99.err_remove_config_dt_crit_edge:          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_config_dt

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_remove_config_dt:                             ; preds = %if.end99.err_remove_config_dt_crit_edge, %if.end95.err_remove_config_dt_crit_edge, %if.end90.err_remove_config_dt_crit_edge, %if.end86.err_remove_config_dt_crit_edge, %if.end82.err_remove_config_dt_crit_edge, %if.then79, %do.end71, %do.end61, %do.end, %if.then19, %if.end9.err_remove_config_dt_crit_edge, %if.end5.err_remove_config_dt_crit_edge
  %ret.0 = phi i32 [ %4, %if.then19 ], [ %call26, %do.end ], [ -22, %do.end61 ], [ %31, %if.then79 ], [ %call83, %if.end82.err_remove_config_dt_crit_edge ], [ %call87, %if.end86.err_remove_config_dt_crit_edge ], [ %call92, %if.end90.err_remove_config_dt_crit_edge ], [ %call96, %if.end95.err_remove_config_dt_crit_edge ], [ %call101, %if.end99.err_remove_config_dt_crit_edge ], [ -22, %do.end71 ], [ -12, %if.end5.err_remove_config_dt_crit_edge ], [ -22, %if.end9.err_remove_config_dt_crit_edge ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end99.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %ret.0, %err_remove_config_dt ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson8b_init_rgmii_delays(ptr nocapture noundef readonly %dwmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_delay_ns = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 5
  %0 = ptrtoint ptr %tx_delay_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_delay_ns, align 4
  %2 = shl i32 %1, 4
  %and17 = and i32 %2, 96
  %data = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %has_prg_eth1_rgmii_rx_delay = getelementptr inbounds %struct.meson8b_dwmac_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %has_prg_eth1_rgmii_rx_delay to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_prg_eth1_rgmii_rx_delay, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool18.not = icmp eq i8 %6, 0
  %rx_delay_ps48 = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 6
  %7 = ptrtoint ptr %rx_delay_ps48 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_delay_ps48, align 4
  %div = udiv i32 %8, 200
  %shl46 = shl i32 %div, 16
  %and47 = and i32 %shl46, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %8)
  %cmp = icmp eq i32 %8, 2000
  %9 = select i1 %tobool18.not, i1 %cmp, i1 false
  %rx_adj_config.0 = select i1 %9, i32 24576, i32 0
  %cfg_rxclk_dly.0 = select i1 %tobool18.not, i32 0, i32 %and47
  %phy_mode = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 3
  %10 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_mode, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %11, label %do.end57 [
    i32 9, label %sw.bb
    i32 11, label %entry.sw.epilog_crit_edge
    i32 12, label %sw.bb53
    i32 10, label %entry.if.end78_crit_edge
    i32 7, label %entry.if.end78_crit_edge126
  ]

entry.if.end78_crit_edge126:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

entry.if.end78_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %rx_adj_config.0, %and17
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end57:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dwmac, align 4
  %call = tail call fastcc ptr @phy_modes(i32 noundef %11)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef nonnull %call) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb, %entry.sw.epilog_crit_edge
  %cfg_rxclk_dly.1 = phi i32 [ %cfg_rxclk_dly.0, %sw.bb53 ], [ %cfg_rxclk_dly.0, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %delay_config.0 = phi i32 [ %rx_adj_config.0, %sw.bb53 ], [ %or, %sw.bb ], [ %and17, %entry.sw.epilog_crit_edge ]
  %and59 = and i32 %delay_config.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %sw.epilog.if.end78_crit_edge, label %if.then61

sw.epilog.if.end78_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then61:                                        ; preds = %sw.epilog
  %timing_adj_clk = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 7
  %15 = ptrtoint ptr %timing_adj_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %timing_adj_clk, align 4
  %tobool62.not = icmp eq ptr %16, null
  br i1 %tobool62.not, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dwmac, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end68:                                         ; preds = %if.then61
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end68.do.end75_crit_edge

if.end68.do.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

if.end.i.i:                                       ; preds = %if.end68
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %meson8b_devm_clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end.i.i
  %19 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dwmac, align 4
  %rgmii_tx_clk.i = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 4
  %21 = ptrtoint ptr %rgmii_tx_clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rgmii_tx_clk.i, align 4
  %call.i4.i = tail call i32 @devm_add_action(ptr noundef %20, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.end.i.if.end78_crit_edge, label %meson8b_devm_clk_prepare_enable.exit.thread122

if.end.i.if.end78_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

meson8b_devm_clk_prepare_enable.exit.thread122:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  br label %if.end78

meson8b_devm_clk_prepare_enable.exit:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef nonnull %16) #9
  br label %do.end75

do.end75:                                         ; preds = %meson8b_devm_clk_prepare_enable.exit, %if.end68.do.end75_crit_edge
  %retval.0.i121 = phi i32 [ %call1.i.i, %meson8b_devm_clk_prepare_enable.exit ], [ %call.i.i, %if.end68.do.end75_crit_edge ]
  %23 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dwmac, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end78:                                         ; preds = %meson8b_devm_clk_prepare_enable.exit.thread122, %if.end.i.if.end78_crit_edge, %sw.epilog.if.end78_crit_edge, %entry.if.end78_crit_edge, %entry.if.end78_crit_edge126
  %delay_config.0115 = phi i32 [ %delay_config.0, %sw.epilog.if.end78_crit_edge ], [ %delay_config.0, %meson8b_devm_clk_prepare_enable.exit.thread122 ], [ 0, %entry.if.end78_crit_edge ], [ 0, %entry.if.end78_crit_edge126 ], [ %delay_config.0, %if.end.i.if.end78_crit_edge ]
  %cfg_rxclk_dly.1114 = phi i32 [ %cfg_rxclk_dly.1, %sw.epilog.if.end78_crit_edge ], [ %cfg_rxclk_dly.1, %meson8b_devm_clk_prepare_enable.exit.thread122 ], [ 0, %entry.if.end78_crit_edge ], [ 0, %entry.if.end78_crit_edge126 ], [ %cfg_rxclk_dly.1, %if.end.i.if.end78_crit_edge ]
  %regs.i = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %28 = and i32 %27, -1625358082
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %and2.i = and i32 %delay_config.0115, 33546336
  %or.i = or i32 %29, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !168
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %36 = and i32 %35, -3841
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %and2.i108 = and i32 %cfg_rxclk_dly.1114, 983040
  %or.i109 = or i32 %37, %and2.i108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i109) #9
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %38) #9, !srcloc !168
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end75, %do.end66, %do.end57
  %retval.0 = phi i32 [ -22, %do.end57 ], [ %retval.0.i121, %do.end75 ], [ 0, %if.end78 ], [ -22, %do.end66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson8b_init_rgmii_tx_clk(ptr nocapture noundef %dwmac) unnamed_addr #2 align 64 {
entry:
  %init.i245 = alloca %struct.clk_init_data, align 4
  %clk_name.i246 = alloca [32 x i8], align 1
  %init.i230 = alloca %struct.clk_init_data, align 4
  %clk_name.i231 = alloca [32 x i8], align 1
  %init.i215 = alloca %struct.clk_init_data, align 4
  %clk_name.i216 = alloca [32 x i8], align 1
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name.i = alloca [32 x i8], align 1
  %parent_data = alloca %struct.clk_parent_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwmac, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data) #9
  %2 = call ptr @memset(ptr %parent_data, i32 0, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 104, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %reg = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %shift, align 4
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %8 = getelementptr inbounds i8, ptr %init.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i) #9
  %10 = call ptr @memset(ptr %clk_name.i, i32 255, i32 32)
  %11 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dwmac, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.meson8b_dwmac_register_clk.exit_crit_edge

if.end.meson8b_dwmac_register_clk.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson8b_dwmac_register_clk.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %meson8b_dwmac_register_clk.exit

meson8b_dwmac_register_clk.exit:                  ; preds = %if.end.i.i, %if.end.meson8b_dwmac_register_clk.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.end.meson8b_dwmac_register_clk.exit_crit_edge ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.56) #9
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %clk_name.i, ptr %init.i, align 4
  %ops3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %18 = ptrtoint ptr %ops3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @clk_mux_ops, ptr %ops3.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %flags.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %20 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @meson8b_init_rgmii_tx_clk.mux_parents, ptr %parent_data.i, align 4
  %num_parents4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %num_parents4.i, align 4
  %init5.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %init5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %init.i, ptr %init5.i, align 4
  %23 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dwmac, align 4
  %call7.i = call ptr @devm_clk_register(ptr noundef %24, ptr noundef nonnull %call.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  %cmp.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end35, !prof !169

do.end:                                           ; preds = %meson8b_dwmac_register_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 174, i32 noundef 9, ptr noundef null) #9
  %25 = ptrtoint ptr %call7.i to i32
  br label %cleanup

if.end35:                                         ; preds = %meson8b_dwmac_register_clk.exit
  %26 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %parent_data, align 4
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %m250_div = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 1
  %reg41 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %reg41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %reg41, align 4
  %shift43 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %shift43 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %shift43, align 4
  %width = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %width, align 1
  %table = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @meson8b_init_rgmii_tx_clk.div_table, ptr %table, align 4
  %flags = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 20, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i215) #9
  %34 = getelementptr inbounds i8, ptr %init.i215, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i216) #9
  %36 = call ptr @memset(ptr %clk_name.i216, i32 255, i32 32)
  %37 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dwmac, align 4
  %init_name.i.i217 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i.i217 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i217, align 8
  %tobool.not.i.i218 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i218, label %if.end.i.i219, label %if.end35.meson8b_dwmac_register_clk.exit228_crit_edge

if.end35.meson8b_dwmac_register_clk.exit228_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson8b_dwmac_register_clk.exit228

if.end.i.i219:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  br label %meson8b_dwmac_register_clk.exit228

meson8b_dwmac_register_clk.exit228:               ; preds = %if.end.i.i219, %if.end35.meson8b_dwmac_register_clk.exit228_crit_edge
  %retval.0.i.i220 = phi ptr [ %42, %if.end.i.i219 ], [ %40, %if.end35.meson8b_dwmac_register_clk.exit228_crit_edge ]
  %call1.i221 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i216, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i.i220, ptr noundef nonnull @.str.57) #9
  %43 = ptrtoint ptr %init.i215 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %clk_name.i216, ptr %init.i215, align 4
  %ops3.i222 = getelementptr inbounds %struct.clk_init_data, ptr %init.i215, i32 0, i32 1
  %44 = ptrtoint ptr %ops3.i222 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @clk_divider_ops, ptr %ops3.i222, align 4
  %flags.i223 = getelementptr inbounds %struct.clk_init_data, ptr %init.i215, i32 0, i32 6
  %45 = ptrtoint ptr %flags.i223 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %flags.i223, align 4
  %parent_data.i224 = getelementptr inbounds %struct.clk_init_data, ptr %init.i215, i32 0, i32 3
  %46 = ptrtoint ptr %parent_data.i224 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %parent_data, ptr %parent_data.i224, align 4
  %num_parents4.i225 = getelementptr inbounds %struct.clk_init_data, ptr %init.i215, i32 0, i32 5
  %47 = ptrtoint ptr %num_parents4.i225 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %num_parents4.i225, align 4
  %init5.i226 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %init5.i226 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %init.i215, ptr %init5.i226, align 4
  %49 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dwmac, align 4
  %call7.i227 = call ptr @devm_clk_register(ptr noundef %50, ptr noundef %m250_div) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i216) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i215) #9
  %cmp.i229 = icmp ugt ptr %call7.i227, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %do.end67, label %if.end84, !prof !169

do.end67:                                         ; preds = %meson8b_dwmac_register_clk.exit228
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 187, i32 noundef 9, ptr noundef null) #9
  %51 = ptrtoint ptr %call7.i227 to i32
  br label %cleanup

if.end84:                                         ; preds = %meson8b_dwmac_register_clk.exit228
  %52 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %m250_div, ptr %parent_data, align 4
  %fixed_div2 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 2
  %mult = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %mult, align 4
  %div = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %div, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i230) #9
  %55 = getelementptr inbounds i8, ptr %init.i230, i32 8
  %56 = call ptr @memset(ptr %55, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i231) #9
  %57 = call ptr @memset(ptr %clk_name.i231, i32 255, i32 32)
  %58 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dwmac, align 4
  %init_name.i.i232 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %init_name.i.i232 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i.i232, align 8
  %tobool.not.i.i233 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i233, label %if.end.i.i234, label %if.end84.meson8b_dwmac_register_clk.exit243_crit_edge

if.end84.meson8b_dwmac_register_clk.exit243_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson8b_dwmac_register_clk.exit243

if.end.i.i234:                                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  br label %meson8b_dwmac_register_clk.exit243

meson8b_dwmac_register_clk.exit243:               ; preds = %if.end.i.i234, %if.end84.meson8b_dwmac_register_clk.exit243_crit_edge
  %retval.0.i.i235 = phi ptr [ %63, %if.end.i.i234 ], [ %61, %if.end84.meson8b_dwmac_register_clk.exit243_crit_edge ]
  %call1.i236 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i231, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i.i235, ptr noundef nonnull @.str.58) #9
  %64 = ptrtoint ptr %init.i230 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %clk_name.i231, ptr %init.i230, align 4
  %ops3.i237 = getelementptr inbounds %struct.clk_init_data, ptr %init.i230, i32 0, i32 1
  %65 = ptrtoint ptr %ops3.i237 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @clk_fixed_factor_ops, ptr %ops3.i237, align 4
  %flags.i238 = getelementptr inbounds %struct.clk_init_data, ptr %init.i230, i32 0, i32 6
  %66 = ptrtoint ptr %flags.i238 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %flags.i238, align 4
  %parent_data.i239 = getelementptr inbounds %struct.clk_init_data, ptr %init.i230, i32 0, i32 3
  %67 = ptrtoint ptr %parent_data.i239 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %parent_data, ptr %parent_data.i239, align 4
  %num_parents4.i240 = getelementptr inbounds %struct.clk_init_data, ptr %init.i230, i32 0, i32 5
  %68 = ptrtoint ptr %num_parents4.i240 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %num_parents4.i240, align 4
  %init5.i241 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %69 = ptrtoint ptr %init5.i241 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %init.i230, ptr %init5.i241, align 4
  %70 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dwmac, align 4
  %call7.i242 = call ptr @devm_clk_register(ptr noundef %71, ptr noundef %fixed_div2) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i231) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i230) #9
  %cmp.i244 = icmp ugt ptr %call7.i242, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %do.end109, label %if.end126, !prof !169

do.end109:                                        ; preds = %meson8b_dwmac_register_clk.exit243
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  %72 = ptrtoint ptr %call7.i242 to i32
  br label %cleanup

if.end126:                                        ; preds = %meson8b_dwmac_register_clk.exit243
  %73 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fixed_div2, ptr %parent_data, align 4
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %rgmii_tx_en = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 3
  %reg132 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 3, i32 1
  %76 = ptrtoint ptr %reg132 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %reg132, align 4
  %bit_idx = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 10, ptr %bit_idx, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i245) #9
  %78 = getelementptr inbounds i8, ptr %init.i245, i32 8
  %79 = call ptr @memset(ptr %78, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i246) #9
  %80 = call ptr @memset(ptr %clk_name.i246, i32 255, i32 32)
  %81 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dwmac, align 4
  %init_name.i.i247 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %init_name.i.i247 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i247, align 8
  %tobool.not.i.i248 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i248, label %if.end.i.i249, label %if.end126.meson8b_dwmac_register_clk.exit258_crit_edge

if.end126.meson8b_dwmac_register_clk.exit258_crit_edge: ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson8b_dwmac_register_clk.exit258

if.end.i.i249:                                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  br label %meson8b_dwmac_register_clk.exit258

meson8b_dwmac_register_clk.exit258:               ; preds = %if.end.i.i249, %if.end126.meson8b_dwmac_register_clk.exit258_crit_edge
  %retval.0.i.i250 = phi ptr [ %86, %if.end.i.i249 ], [ %84, %if.end126.meson8b_dwmac_register_clk.exit258_crit_edge ]
  %call1.i251 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i246, i32 noundef 32, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i.i250, ptr noundef nonnull @.str.59) #9
  %87 = ptrtoint ptr %init.i245 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %clk_name.i246, ptr %init.i245, align 4
  %ops3.i252 = getelementptr inbounds %struct.clk_init_data, ptr %init.i245, i32 0, i32 1
  %88 = ptrtoint ptr %ops3.i252 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @clk_gate_ops, ptr %ops3.i252, align 4
  %flags.i253 = getelementptr inbounds %struct.clk_init_data, ptr %init.i245, i32 0, i32 6
  %89 = ptrtoint ptr %flags.i253 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %flags.i253, align 4
  %parent_data.i254 = getelementptr inbounds %struct.clk_init_data, ptr %init.i245, i32 0, i32 3
  %90 = ptrtoint ptr %parent_data.i254 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %parent_data, ptr %parent_data.i254, align 4
  %num_parents4.i255 = getelementptr inbounds %struct.clk_init_data, ptr %init.i245, i32 0, i32 5
  %91 = ptrtoint ptr %num_parents4.i255 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %num_parents4.i255, align 4
  %init5.i256 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %92 = ptrtoint ptr %init5.i256 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %init.i245, ptr %init5.i256, align 4
  %93 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dwmac, align 4
  %call7.i257 = call ptr @devm_clk_register(ptr noundef %94, ptr noundef %rgmii_tx_en) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i246) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i245) #9
  %cmp.i259 = icmp ugt ptr %call7.i257, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %do.end154, label %if.end171, !prof !169

do.end154:                                        ; preds = %meson8b_dwmac_register_clk.exit258
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 205, i32 noundef 9, ptr noundef null) #9
  %95 = ptrtoint ptr %call7.i257 to i32
  br label %cleanup

if.end171:                                        ; preds = %meson8b_dwmac_register_clk.exit258
  call void @__sanitizer_cov_trace_pc() #11
  %rgmii_tx_clk = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 4
  %96 = ptrtoint ptr %rgmii_tx_clk to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i257, ptr %rgmii_tx_clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %do.end154, %do.end109, %do.end67, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %do.end ], [ %51, %do.end67 ], [ %72, %do.end109 ], [ %95, %do.end154 ], [ 0, %if.end171 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson8b_init_prg_eth(ptr nocapture noundef readonly %dwmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_mode = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 3
  %0 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  %regs.i = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = and i32 %6, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !168
  %rgmii_tx_clk = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 4
  %10 = ptrtoint ptr %rgmii_tx_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rgmii_tx_clk, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 125000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dwmac, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = ptrtoint ptr %rgmii_tx_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rgmii_tx_clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %meson8b_devm_clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end.i.i
  %16 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dwmac, align 4
  %18 = ptrtoint ptr %rgmii_tx_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rgmii_tx_clk, align 4
  %call.i4.i = tail call i32 @devm_add_action(ptr noundef %17, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.end.i.if.end12_crit_edge, label %meson8b_devm_clk_prepare_enable.exit.thread35

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

meson8b_devm_clk_prepare_enable.exit.thread35:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %if.end12

meson8b_devm_clk_prepare_enable.exit:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %do.end9

do.end9:                                          ; preds = %meson8b_devm_clk_prepare_enable.exit, %if.end.do.end9_crit_edge
  %retval.0.i34 = phi i32 [ %call1.i.i, %meson8b_devm_clk_prepare_enable.exit ], [ %call.i.i, %if.end.do.end9_crit_edge ]
  %20 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dwmac, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.64) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = or i32 %6, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !168
  br label %if.end12

if.end12:                                         ; preds = %if.else, %meson8b_devm_clk_prepare_enable.exit.thread35, %if.end.i.if.end12_crit_edge
  %regs.i26 = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %25 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i26, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %28 = or i32 %27, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !168
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %retval.0.i34, %do.end9 ], [ 0, %if.end12 ]
  ret i32 %retval.0
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
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.54, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %clk) #9
  tail call void @clk_unprepare(ptr noundef %clk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8b_set_phy_mode(ptr nocapture noundef readonly %dwmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_mode = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 3
  %0 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %1, label %do.end [
    i32 9, label %entry.sw.bb_crit_edge
    i32 11, label %entry.sw.bb_crit_edge9
    i32 10, label %entry.sw.bb_crit_edge10
    i32 12, label %entry.sw.bb_crit_edge11
    i32 7, label %sw.bb1
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  %regs.i = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %6 = or i32 %5, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !168
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i7 = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i7, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %12 = and i32 %11, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !168
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dwmac, align 4
  %call = tail call fastcc ptr @phy_modes(i32 noundef %1)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.66, ptr noundef nonnull %call) #12
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_axg_set_phy_mode(ptr nocapture noundef readonly %dwmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_mode = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 3
  %0 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %do.end [
    i32 9, label %entry.sw.bb_crit_edge
    i32 11, label %entry.sw.bb_crit_edge10
    i32 10, label %entry.sw.bb_crit_edge11
    i32 12, label %entry.sw.bb_crit_edge12
    i32 7, label %sw.bb1
  ]

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12
  %regs.i = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %6 = and i32 %5, -117440513
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !168
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i7 = getelementptr inbounds %struct.meson8b_dwmac, ptr %dwmac, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i7, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %13 = and i32 %12, -117440513
  %14 = or i32 %13, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !168
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dwmac, align 4
  %call = tail call fastcc ptr @phy_modes(i32 noundef %1)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.66, ptr noundef nonnull %call) #12
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !144, !145, !146, !147, !149, !151, !152, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_dwmac_meson8b__363_547_meson8b_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_meson8b__363_547_meson8b_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 547, i32 1}
!2 = !{ptr @__exitcall_meson8b_dwmac_driver_exit, !1, !"__exitcall_meson8b_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author364, !4, !"__UNIQUE_ID_author364", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 549, i32 1}
!5 = !{ptr @__UNIQUE_ID_description365, !6, !"__UNIQUE_ID_description365", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 550, i32 1}
!7 = !{ptr @__UNIQUE_ID_file366, !8, !"__UNIQUE_ID_file366", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 551, i32 1}
!9 = !{ptr @__UNIQUE_ID_license367, !8, !"__UNIQUE_ID_license367", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 542, i32 21}
!12 = !{ptr @meson8b_dwmac_driver, !13, !"meson8b_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 538, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 426, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @meson8b_dwmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson8b_dwmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 431, i32 46}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 436, i32 46}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 439, i32 8}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 447, i32 4}
!30 = !{ptr @meson8b_dwmac_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson8b_dwmac_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 454, i32 4}
!34 = !{ptr @meson8b_dwmac_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @meson8b_dwmac_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 462, i32 13}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 315, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @meson8b_init_rgmii_delays._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @meson8b_init_rgmii_delays._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 322, i32 4}
!45 = !{ptr @meson8b_init_rgmii_delays._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @meson8b_init_rgmii_delays._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 331, i32 4}
!49 = !{ptr @meson8b_init_rgmii_delays._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @meson8b_init_rgmii_delays._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/phy.h", i32 211, i32 10}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/phy.h", i32 213, i32 10}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/phy.h", i32 215, i32 10}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/phy.h", i32 217, i32 10}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/phy.h", i32 219, i32 10}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/phy.h", i32 221, i32 10}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/phy.h", i32 223, i32 10}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/phy.h", i32 225, i32 10}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/phy.h", i32 227, i32 10}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/phy.h", i32 229, i32 10}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/phy.h", i32 231, i32 10}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/phy.h", i32 233, i32 10}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/phy.h", i32 235, i32 10}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/phy.h", i32 237, i32 10}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/phy.h", i32 239, i32 10}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/phy.h", i32 241, i32 10}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/phy.h", i32 243, i32 10}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/phy.h", i32 245, i32 10}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/phy.h", i32 247, i32 10}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/phy.h", i32 249, i32 10}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/phy.h", i32 251, i32 10}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/phy.h", i32 253, i32 10}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/phy.h", i32 255, i32 10}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/phy.h", i32 257, i32 10}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/phy.h", i32 259, i32 10}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/phy.h", i32 261, i32 10}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/phy.h", i32 263, i32 10}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/phy.h", i32 265, i32 10}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/phy.h", i32 267, i32 10}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/phy.h", i32 269, i32 10}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/phy.h", i32 271, i32 10}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 148, i32 16}
!115 = !{ptr @meson8b_init_rgmii_tx_clk.mux_parents, !116, !"mux_parents", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 147, i32 38}
!117 = !{ptr @meson8b_init_rgmii_tx_clk.div_table, !118, !"div_table", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 151, i32 36}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 171, i32 42}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 184, i32 42}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 193, i32 42}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 202, i32 42}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 129, i32 39}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 364, i32 4}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @meson8b_init_prg_eth._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @meson8b_init_prg_eth._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 372, i32 4}
!136 = !{ptr @meson8b_init_prg_eth._entry.63, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @meson8b_init_prg_eth._entry_ptr.65, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @meson8b_dwmac_match, !139, !"meson8b_dwmac_match", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 513, i32 34}
!140 = !{ptr @meson8b_dwmac_data, !141, !"meson8b_dwmac_data", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 498, i32 40}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 231, i32 3}
!144 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @meson8b_set_phy_mode._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @meson8b_set_phy_mode._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @meson_axg_dwmac_data, !148, !"meson_axg_dwmac_data", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 503, i32 40}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 258, i32 3}
!151 = !{ptr @meson_axg_set_phy_mode._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @meson_axg_set_phy_mode._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @meson_g12a_dwmac_data, !154, !"meson_g12a_dwmac_data", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c", i32 508, i32 40}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i8 0, i8 2}
!165 = !{i64 6829007}
!166 = !{i64 2157512779}
!167 = !{i64 2157512994}
!168 = !{i64 6828589}
!169 = !{!"branch_weights", i32 1, i32 2000}
