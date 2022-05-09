; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ipq806x_gmac = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_ipq806x__353_383_ipq806x_gmac_dwmac_driver_init6 = internal global ptr @ipq806x_gmac_dwmac_driver_init, section ".initcall6.init", align 4
@ipq806x_gmac_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ipq806x_gmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ipq806x_gmac_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ipq806x_gmac_dwmac_driver_exit = internal global ptr @ipq806x_gmac_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author354 = internal constant [62 x i8] c"dwmac_ipq806x.author=Mathieu Olivari <mathieu@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [77 x i8] c"dwmac_ipq806x.description=Qualcomm Atheros IPQ806x DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [69 x i8] c"dwmac_ipq806x.file=drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [35 x i8] c"dwmac_ipq806x.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipq806x-gmac-dwmac\00", [45 x i8] zeroinitializer }, align 32
@ipq806x_gmac_dwmac_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq806x-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@ipq806x_gmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device tree parsing error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipq806x_gmac_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipq806x_gmac_probe._entry_ptr = internal global ptr @ipq806x_gmac_probe._entry, section ".printk_index", align 4
@ipq806x_gmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported PHY mode: \22%s\22\0A\00", [36 x i8] zeroinitializer }, align 32
@ipq806x_gmac_probe._entry_ptr.8 = internal global ptr @ipq806x_gmac_probe._entry.6, section ".printk_index", align 4
@ipq806x_gmac_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing phy mode property\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipq806x_gmac_of_parse\00", [42 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry_ptr = internal global ptr @ipq806x_gmac_of_parse._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcom,id\00", [24 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing qcom id property\0A\00", [38 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry_ptr.14 = internal global ptr @ipq806x_gmac_of_parse._entry.12, section ".printk_index", align 4
@ipq806x_gmac_of_parse._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid gmac id\0A\00", [47 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry_ptr.17 = internal global ptr @ipq806x_gmac_of_parse._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmmaceth\00", [22 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"missing stmmaceth clk property\0A\00", [32 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry_ptr.21 = internal global ptr @ipq806x_gmac_of_parse._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,nss-common\00", [16 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing nss-common node\0A\00", [39 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry_ptr.25 = internal global ptr @ipq806x_gmac_of_parse._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,qsgmii-csr\00", [16 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing qsgmii-csr node\0A\00", [39 x i8] zeroinitializer }, align 32
@ipq806x_gmac_of_parse._entry_ptr.29 = internal global ptr @ipq806x_gmac_of_parse._entry.27, section ".printk_index", align 4
@ipq806x_gmac_set_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.30, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipq806x_gmac_set_speed\00", [41 x i8] zeroinitializer }, align 32
@ipq806x_gmac_set_speed._entry_ptr = internal global ptr @ipq806x_gmac_set_speed._entry, section ".printk_index", align 4
@get_clk_div_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Speed %dMbps not supported in RGMII\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_clk_div_rgmii\00", [46 x i8] zeroinitializer }, align 32
@get_clk_div_rgmii._entry_ptr = internal global ptr @get_clk_div_rgmii._entry, section ".printk_index", align 4
@get_clk_div_sgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Speed %dMbps not supported in SGMII\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_clk_div_sgmii\00", [46 x i8] zeroinitializer }, align 32
@get_clk_div_sgmii._entry_ptr = internal global ptr @get_clk_div_sgmii._entry, section ".printk_index", align 4
@.str.35 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@switch.table.ipq806x_gmac_fix_mac_speed = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.65, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.65, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.64, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [40 x i8] zeroinitializer }, align 32
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.64, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"ipq806x_gmac_dwmac_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 374, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 378, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"ipq806x_gmac_dwmac_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 368, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 272, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 358, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 196, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 200, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 201, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 210, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 214, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 216, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 223, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 225, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 231, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 233, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 164, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 138, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private constant [55 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 112, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 211, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 213, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 215, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 217, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 219, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 221, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 223, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 225, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 227, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 229, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 231, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 233, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 235, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 237, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 239, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 241, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 243, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 245, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 247, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 249, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 251, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 253, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 255, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 257, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 259, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 261, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 263, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 265, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 267, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 269, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 271, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant [40 x i8] c"switch.table.ipq806x_gmac_fix_mac_speed\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_ipq806x_gmac_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_ipq806x__353_383_ipq806x_gmac_dwmac_driver_init6, ptr @get_clk_div_rgmii._entry, ptr @get_clk_div_rgmii._entry_ptr, ptr @get_clk_div_sgmii._entry, ptr @get_clk_div_sgmii._entry_ptr, ptr @ipq806x_gmac_dwmac_driver_exit, ptr @ipq806x_gmac_of_parse._entry, ptr @ipq806x_gmac_of_parse._entry.12, ptr @ipq806x_gmac_of_parse._entry.15, ptr @ipq806x_gmac_of_parse._entry.19, ptr @ipq806x_gmac_of_parse._entry.23, ptr @ipq806x_gmac_of_parse._entry.27, ptr @ipq806x_gmac_of_parse._entry_ptr, ptr @ipq806x_gmac_of_parse._entry_ptr.14, ptr @ipq806x_gmac_of_parse._entry_ptr.17, ptr @ipq806x_gmac_of_parse._entry_ptr.21, ptr @ipq806x_gmac_of_parse._entry_ptr.25, ptr @ipq806x_gmac_of_parse._entry_ptr.29, ptr @ipq806x_gmac_probe._entry, ptr @ipq806x_gmac_probe._entry.6, ptr @ipq806x_gmac_probe._entry_ptr, ptr @ipq806x_gmac_probe._entry_ptr.8, ptr @ipq806x_gmac_set_speed._entry, ptr @ipq806x_gmac_set_speed._entry_ptr, ptr @ipq806x_gmac_dwmac_driver, ptr @.str, ptr @ipq806x_gmac_dwmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @switch.table.ipq806x_gmac_fix_mac_speed, ptr @switch.table.phy_modes], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_dwmac_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_of_parse._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_of_parse._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_of_parse._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_of_parse._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_of_parse._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_gmac_set_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_clk_div_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_clk_div_sgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipq806x_gmac_fix_mac_speed to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipq806x_gmac_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ipq806x_gmac_dwmac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipq806x_gmac_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ipq806x_gmac_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipq806x_gmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %call = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call2 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.err_remove_config_dt_crit_edge, label %if.end10

if.end6.err_remove_config_dt_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end10:                                         ; preds = %if.end6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %phy_mode.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %call.i, i32 0, i32 5
  %call.i144 = call i32 @of_get_phy_mode(ptr noundef %5, ptr noundef %phy_mode.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.do.end.sink.split_crit_edge

if.end10.do.end.sink.split_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

if.end.i:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %id.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %call.i, i32 0, i32 3
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef %id.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i145 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i145, label %if.end.i.do.end.sink.split_crit_edge, label %if.end8.i

if.end.i.do.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

if.end8.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp10.i = icmp ugt i32 %9, 3
  br i1 %cmp10.i, label %if.end8.i.do.end.sink.split_crit_edge, label %if.end15.i

if.end8.i.do.end.sink.split_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

if.end15.i:                                       ; preds = %if.end8.i
  %call16.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.18) #6
  %core_clk.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16.i, ptr %core_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end15.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge, label %if.end25.i

if.end15.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipq806x_gmac_of_parse.exit.sink.split

if.end25.i:                                       ; preds = %if.end15.i
  %call27.i = call i32 @clk_set_rate(ptr noundef %call16.i, i32 noundef 266000000) #6
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call29.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %12, ptr noundef nonnull @.str.22) #6
  %nss_common.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %nss_common.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29.i, ptr %nss_common.i, align 4
  %cmp.i74.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i, label %if.end25.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge, label %if.end38.i

if.end25.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipq806x_gmac_of_parse.exit.sink.split

if.end38.i:                                       ; preds = %if.end25.i
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call40.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %15, ptr noundef nonnull @.str.26) #6
  %qsgmii_csr.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %qsgmii_csr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40.i, ptr %qsgmii_csr.i, align 4
  %cmp.i75.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75.i, label %do.end46.i, label %if.end38.i.if.end47.i_crit_edge

if.end38.i.if.end47.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

do.end46.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #9
  %17 = ptrtoint ptr %qsgmii_csr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %qsgmii_csr.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end46.i, %if.end38.i.if.end47.i_crit_edge
  %18 = phi ptr [ %.pr, %do.end46.i ], [ %call40.i, %if.end38.i.if.end47.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end47.i.ipq806x_gmac_of_parse.exit_crit_edge, label %if.end47.i.if.end15_crit_edge

if.end47.i.if.end15_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end47.i.ipq806x_gmac_of_parse.exit_crit_edge:  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipq806x_gmac_of_parse.exit

ipq806x_gmac_of_parse.exit.sink.split:            ; preds = %if.end25.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge, %if.end15.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.20, %if.end15.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge ], [ @.str.24, %if.end25.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge ]
  %core_clk.i.sink = phi ptr [ %core_clk.i, %if.end15.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge ], [ %nss_common.i, %if.end25.i.ipq806x_gmac_of_parse.exit.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.20.sink) #9
  %19 = ptrtoint ptr %core_clk.i.sink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core_clk.i.sink, align 4
  br label %ipq806x_gmac_of_parse.exit

ipq806x_gmac_of_parse.exit:                       ; preds = %ipq806x_gmac_of_parse.exit.sink.split, %if.end47.i.ipq806x_gmac_of_parse.exit_crit_edge
  %retval.0.i.in = phi ptr [ %18, %if.end47.i.ipq806x_gmac_of_parse.exit_crit_edge ], [ %20, %ipq806x_gmac_of_parse.exit.sink.split ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool13.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool13.not, label %ipq806x_gmac_of_parse.exit.if.end15_crit_edge, label %ipq806x_gmac_of_parse.exit.do.end_crit_edge

ipq806x_gmac_of_parse.exit.do.end_crit_edge:      ; preds = %ipq806x_gmac_of_parse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

ipq806x_gmac_of_parse.exit.if.end15_crit_edge:    ; preds = %ipq806x_gmac_of_parse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end.sink.split:                                ; preds = %if.end8.i.do.end.sink.split_crit_edge, %if.end.i.do.end.sink.split_crit_edge, %if.end10.do.end.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.9, %if.end10.do.end.sink.split_crit_edge ], [ @.str.13, %if.end.i.do.end.sink.split_crit_edge ], [ @.str.16, %if.end8.i.do.end.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.16.sink) #9
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %ipq806x_gmac_of_parse.exit.do.end_crit_edge
  %retval.0.i148 = phi i32 [ %retval.0.i, %ipq806x_gmac_of_parse.exit.do.end_crit_edge ], [ -22, %do.end.sink.split ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %err_remove_config_dt

if.end15:                                         ; preds = %ipq806x_gmac_of_parse.exit.if.end15_crit_edge, %if.end47.i.if.end15_crit_edge
  %qsgmii_csr = getelementptr inbounds %struct.ipq806x_gmac, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %qsgmii_csr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qsgmii_csr, align 4
  %call16 = call i32 @regmap_write(ptr noundef %22, i32 noundef 288, i32 noundef 524288) #6
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 527372, ptr %val, align 4
  %24 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_mode.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end15.do.end88_crit_edge [
    i32 9, label %if.end15.sw.epilog_crit_edge
    i32 4, label %sw.bb18
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end15.do.end88_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

sw.bb18:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %if.end15.sw.epilog_crit_edge
  %storemerge = phi i32 [ 527372, %sw.bb18 ], [ 592908, %if.end15.sw.epilog_crit_edge ]
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %val, align 4
  %nss_common = getelementptr inbounds %struct.ipq806x_gmac, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %nss_common to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nss_common, align 4
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i, align 4
  %mul = shl i32 %31, 2
  %add = add i32 %mul, 48
  %call19 = call i32 @regmap_write(ptr noundef %29, i32 noundef %add, i32 noundef %storemerge) #6
  %32 = ptrtoint ptr %nss_common to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nss_common, align 4
  %call21 = call i32 @regmap_read(ptr noundef %33, i32 noundef 20, ptr noundef nonnull %val) #6
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i, align 4
  %shl = shl nuw i32 1, %35
  %neg = xor i32 %shl, -1
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %and23 = and i32 %37, %neg
  store i32 %and23, ptr %val, align 4
  %38 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phy_mode.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %39, label %sw.epilog.do.end88_crit_edge [
    i32 9, label %sw.epilog.sw.epilog35_crit_edge
    i32 4, label %sw.bb29
  ]

sw.epilog.sw.epilog35_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog35

sw.epilog.do.end88_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp = icmp ugt i32 %35, 1
  %cond = zext i1 %cmp to i32
  %shl32 = shl nuw i32 %cond, %35
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %sw.bb29, %sw.epilog.sw.epilog35_crit_edge
  %shl32.pn = phi i32 [ %shl32, %sw.bb29 ], [ %shl, %sw.epilog.sw.epilog35_crit_edge ]
  %storemerge142 = or i32 %shl32.pn, %and23
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge142, ptr %val, align 4
  %42 = ptrtoint ptr %nss_common to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nss_common, align 4
  %call37 = call i32 @regmap_write(ptr noundef %43, i32 noundef 20, i32 noundef %storemerge142) #6
  %44 = ptrtoint ptr %nss_common to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nss_common, align 4
  %call39 = call i32 @regmap_read(ptr noundef %45, i32 noundef 8, ptr noundef nonnull %val) #6
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id.i, align 4
  %add41 = add i32 %47, 16
  %shl42 = shl nuw i32 1, %add41
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %or43 = or i32 %shl42, %49
  store i32 %or43, ptr %val, align 4
  %50 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_mode.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %51, label %sw.epilog35.do.end88_crit_edge [
    i32 9, label %sw.bb45
    i32 4, label %sw.bb56
  ]

sw.epilog35.do.end88_crit_edge:                   ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

sw.bb45:                                          ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #8
  %mul47 = shl i32 %47, 1
  %add48 = add i32 %mul47, 9
  %add52 = add i32 %mul47, 8
  br label %sw.epilog66

sw.bb56:                                          ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #8
  %add58 = add i32 %47, 4
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %sw.bb56, %sw.bb45
  %.sink = phi i32 [ %47, %sw.bb56 ], [ %add52, %sw.bb45 ]
  %add58.pn = phi i32 [ %add58, %sw.bb56 ], [ %add48, %sw.bb45 ]
  %shl59.sink = shl nuw i32 1, %add58.pn
  %shl62 = shl nuw i32 1, %.sink
  %or63 = or i32 %shl59.sink, %shl62
  %storemerge143 = or i32 %or63, %or43
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge143, ptr %val, align 4
  %54 = ptrtoint ptr %nss_common to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nss_common, align 4
  %call68 = call i32 @regmap_write(ptr noundef %55, i32 noundef 8, i32 noundef %storemerge143) #6
  %56 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phy_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp70 = icmp eq i32 %57, 4
  br i1 %cmp70, label %if.then71, label %sw.epilog66.if.end80_crit_edge

sw.epilog66.if.end80_crit_edge:                   ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then71:                                        ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %qsgmii_csr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %qsgmii_csr, align 4
  %60 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp74 = icmp eq i32 %61, 1
  %sub = shl i32 %61, 2
  %add77 = add i32 %sub, 308
  %cond78 = select i1 %cmp74, i32 308, i32 %add77
  %call79 = call i32 @regmap_write(ptr noundef %59, i32 noundef %cond78, i32 noundef -1063501681) #6
  br label %if.end80

if.end80:                                         ; preds = %if.then71, %sw.epilog66.if.end80_crit_edge
  %has_gmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call2, i32 0, i32 13
  %62 = ptrtoint ptr %has_gmac to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %has_gmac, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call2, i32 0, i32 46
  %63 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %bsp_priv, align 4
  %fix_mac_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call2, i32 0, i32 35
  %64 = ptrtoint ptr %fix_mac_speed to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ipq806x_gmac_fix_mac_speed, ptr %fix_mac_speed, align 4
  %multicast_filter_bins = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call2, i32 0, i32 24
  %65 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %multicast_filter_bins, align 4
  %tx_fifo_size = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call2, i32 0, i32 26
  %66 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8192, ptr %tx_fifo_size, align 4
  %rx_fifo_size = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call2, i32 0, i32 27
  %67 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8192, ptr %rx_fifo_size, align 4
  %call82 = call i32 @stmmac_dvr_probe(ptr noundef %dev1, ptr noundef %call2, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end80.cleanup_crit_edge, label %if.end80.err_remove_config_dt_crit_edge

if.end80.err_remove_config_dt_crit_edge:          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end88:                                         ; preds = %sw.epilog35.do.end88_crit_edge, %sw.epilog.do.end88_crit_edge, %if.end15.do.end88_crit_edge
  %68 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %phy_mode.i, align 4
  %call91 = call fastcc ptr @phy_modes(i32 noundef %69)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull %call91) #9
  br label %err_remove_config_dt

err_remove_config_dt:                             ; preds = %do.end88, %if.end80.err_remove_config_dt_crit_edge, %do.end, %if.end6.err_remove_config_dt_crit_edge
  %err.0 = phi i32 [ %retval.0.i148, %do.end ], [ -22, %do.end88 ], [ %call82, %if.end80.err_remove_config_dt_crit_edge ], [ -12, %if.end6.err_remove_config_dt_crit_edge ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end80.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %err.0, %err_remove_config_dt ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipq806x_gmac_fix_mac_speed(ptr nocapture noundef readonly %priv, i32 noundef %speed) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !146
  %phy_mode.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %priv, i32 0, i32 5
  %1 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phy_mode.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %2, label %do.end.i [
    i32 9, label %sw.bb.i
    i32 4, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %speed, label %do.end.i.i [
    i32 1000, label %sw.bb.i.get_clk_div_rgmii.exit.i_crit_edge
    i32 100, label %sw.bb2.i.i
    i32 10, label %sw.bb3.i.i
  ]

sw.bb.i.get_clk_div_rgmii.exit.i_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_clk_div_rgmii.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_clk_div_rgmii.exit.i

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_clk_div_rgmii.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.31, i32 noundef %speed) #9
  br label %get_clk_div_rgmii.exit.i

get_clk_div_rgmii.exit.i:                         ; preds = %do.end.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb.i.get_clk_div_rgmii.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ 99, %sw.bb3.i.i ], [ 9, %sw.bb2.i.i ], [ 1, %sw.bb.i.get_clk_div_rgmii.exit.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %priv, i32 0, i32 3
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %8, 1
  %add.i = add i32 %mul.i, 9
  %add3.i = add i32 %mul.i, 8
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  %9 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %speed, label %do.end.i4.i [
    i32 1000, label %sw.bb5.i.get_clk_div_sgmii.exit.i_crit_edge
    i32 100, label %sw.bb2.i1.i
    i32 10, label %sw.bb3.i2.i
  ]

sw.bb5.i.get_clk_div_sgmii.exit.i_crit_edge:      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_clk_div_sgmii.exit.i

sw.bb2.i1.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_clk_div_sgmii.exit.i

sw.bb3.i2.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_clk_div_sgmii.exit.i

do.end.i4.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %dev1.i3.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i3.i, ptr noundef nonnull @.str.33, i32 noundef %speed) #9
  br label %get_clk_div_sgmii.exit.i

get_clk_div_sgmii.exit.i:                         ; preds = %do.end.i4.i, %sw.bb3.i2.i, %sw.bb2.i1.i, %sw.bb5.i.get_clk_div_sgmii.exit.i_crit_edge
  %retval.0.i5.i = phi i32 [ -22, %do.end.i4.i ], [ 49, %sw.bb3.i2.i ], [ 4, %sw.bb2.i1.i ], [ 0, %sw.bb5.i.get_clk_div_sgmii.exit.i_crit_edge ]
  %id7.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %id7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id7.i, align 4
  %add8.i = add i32 %13, 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %entry
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %2)
  %16 = icmp ult i32 %2, 30
  br i1 %16, label %switch.lookup, label %do.end.i.phy_modes.exit.i_crit_edge

do.end.i.phy_modes.exit.i_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.ipq806x_gmac_fix_mac_speed, i32 0, i32 %2
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit.i

phy_modes.exit.i:                                 ; preds = %switch.lookup, %do.end.i.phy_modes.exit.i_crit_edge
  %retval.0.i8.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.65, %do.end.i.phy_modes.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %retval.0.i8.i) #9
  br label %ipq806x_gmac_set_speed.exit

sw.epilog.i:                                      ; preds = %get_clk_div_sgmii.exit.i, %get_clk_div_rgmii.exit.i
  %.sink.i = phi i32 [ %13, %get_clk_div_sgmii.exit.i ], [ %add3.i, %get_clk_div_rgmii.exit.i ]
  %add8.pn.i = phi i32 [ %add8.i, %get_clk_div_sgmii.exit.i ], [ %add.i, %get_clk_div_rgmii.exit.i ]
  %div.0.i = phi i32 [ %retval.0.i5.i, %get_clk_div_sgmii.exit.i ], [ %retval.0.i.i, %get_clk_div_rgmii.exit.i ]
  %shl9.sink.i = shl nuw i32 1, %add8.pn.i
  %shl12.i = shl nuw i32 1, %.sink.i
  %or13.i = or i32 %shl9.sink.i, %shl12.i
  %nss_common.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %nss_common.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nss_common.i, align 4
  %call16.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 8, ptr noundef nonnull %val.i) #6
  %neg.i = xor i32 %or13.i, -1
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %and.i = and i32 %21, %neg.i
  store i32 %and.i, ptr %val.i, align 4
  %22 = ptrtoint ptr %nss_common.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nss_common.i, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 8, i32 noundef %and.i) #6
  %24 = ptrtoint ptr %nss_common.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nss_common.i, align 4
  %call20.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 12, ptr noundef nonnull %val.i) #6
  %id21.i = getelementptr inbounds %struct.ipq806x_gmac, ptr %priv, i32 0, i32 3
  %26 = ptrtoint ptr %id21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id21.i, align 4
  %mul22.i = shl i32 %27, 3
  %shl23.i = shl i32 127, %mul22.i
  %neg24.i = xor i32 %shl23.i, -1
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  %and25.i = and i32 %29, %neg24.i
  %shl28.i = shl i32 %div.0.i, %mul22.i
  %or29.i = or i32 %and25.i, %shl28.i
  store i32 %or29.i, ptr %val.i, align 4
  %30 = ptrtoint ptr %nss_common.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nss_common.i, align 4
  %call31.i = call i32 @regmap_write(ptr noundef %31, i32 noundef 12, i32 noundef %or29.i) #6
  %32 = ptrtoint ptr %nss_common.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nss_common.i, align 4
  %call33.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 8, ptr noundef nonnull %val.i) #6
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %or34.i = or i32 %35, %or13.i
  store i32 %or34.i, ptr %val.i, align 4
  %36 = ptrtoint ptr %nss_common.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nss_common.i, align 4
  %call36.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 8, i32 noundef %or34.i) #6
  br label %ipq806x_gmac_set_speed.exit

ipq806x_gmac_set_speed.exit:                      ; preds = %sw.epilog.i, %phy_modes.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.65, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_dwmac_ipq806x__353_383_ipq806x_gmac_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_ipq806x__353_383_ipq806x_gmac_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 383, i32 1}
!2 = !{ptr @__exitcall_ipq806x_gmac_dwmac_driver_exit, !1, !"__exitcall_ipq806x_gmac_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author354, !4, !"__UNIQUE_ID_author354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 385, i32 1}
!5 = !{ptr @__UNIQUE_ID_description355, !6, !"__UNIQUE_ID_description355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 386, i32 1}
!7 = !{ptr @__UNIQUE_ID_file356, !8, !"__UNIQUE_ID_file356", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 387, i32 1}
!9 = !{ptr @__UNIQUE_ID_license357, !8, !"__UNIQUE_ID_license357", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 378, i32 12}
!12 = !{ptr @ipq806x_gmac_dwmac_driver, !13, !"ipq806x_gmac_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 374, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 272, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ipq806x_gmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ipq806x_gmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 358, i32 2}
!24 = !{ptr @ipq806x_gmac_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ipq806x_gmac_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 196, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ipq806x_gmac_of_parse._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ipq806x_gmac_of_parse._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 200, i32 41}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 201, i32 3}
!35 = !{ptr @ipq806x_gmac_of_parse._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ipq806x_gmac_of_parse._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 210, i32 3}
!39 = !{ptr @ipq806x_gmac_of_parse._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ipq806x_gmac_of_parse._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 214, i32 37}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 216, i32 3}
!45 = !{ptr @ipq806x_gmac_of_parse._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ipq806x_gmac_of_parse._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 223, i32 11}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 225, i32 3}
!51 = !{ptr @ipq806x_gmac_of_parse._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ipq806x_gmac_of_parse._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 231, i32 11}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 233, i32 3}
!57 = !{ptr @ipq806x_gmac_of_parse._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ipq806x_gmac_of_parse._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 164, i32 3}
!61 = !{ptr @ipq806x_gmac_set_speed._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ipq806x_gmac_set_speed._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 138, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @get_clk_div_rgmii._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @get_clk_div_rgmii._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 112, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @get_clk_div_sgmii._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @get_clk_div_sgmii._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/phy.h", i32 211, i32 10}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/phy.h", i32 213, i32 10}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/phy.h", i32 215, i32 10}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/phy.h", i32 217, i32 10}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/phy.h", i32 219, i32 10}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/phy.h", i32 221, i32 10}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/phy.h", i32 223, i32 10}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/phy.h", i32 225, i32 10}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/phy.h", i32 227, i32 10}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/phy.h", i32 229, i32 10}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/phy.h", i32 231, i32 10}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/phy.h", i32 233, i32 10}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/phy.h", i32 235, i32 10}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/phy.h", i32 237, i32 10}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/phy.h", i32 239, i32 10}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/phy.h", i32 241, i32 10}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/phy.h", i32 243, i32 10}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/phy.h", i32 245, i32 10}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/phy.h", i32 247, i32 10}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/phy.h", i32 249, i32 10}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/phy.h", i32 251, i32 10}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/phy.h", i32 253, i32 10}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/phy.h", i32 255, i32 10}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/phy.h", i32 257, i32 10}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/phy.h", i32 259, i32 10}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/phy.h", i32 261, i32 10}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/phy.h", i32 263, i32 10}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/phy.h", i32 265, i32 10}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/phy.h", i32 267, i32 10}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/phy.h", i32 269, i32 10}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/phy.h", i32 271, i32 10}
!135 = !{ptr @ipq806x_gmac_dwmac_match, !136, !"ipq806x_gmac_dwmac_match", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c", i32 368, i32 34}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
