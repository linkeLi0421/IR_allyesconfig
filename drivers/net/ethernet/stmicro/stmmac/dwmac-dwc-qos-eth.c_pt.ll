; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dwc_eth_dwmac_data = type { ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.tegra_eqos = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }

@__initcall__kmod_dwmac_dwc_qos_eth__353_510_dwc_eth_dwmac_driver_init6 = internal global ptr @dwc_eth_dwmac_driver_init, section ".initcall6.init", align 4
@dwc_eth_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc_eth_dwmac_probe, ptr @dwc_eth_dwmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc_eth_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc_eth_dwmac_driver_exit = internal global ptr @dwc_eth_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author354 = internal constant [58 x i8] c"dwmac_dwc_qos_eth.author=Joao Pinto <jpinto@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [85 x i8] c"dwmac_dwc_qos_eth.description=Synopsys DWC Ethernet Quality-of-Service v4.10a driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [77 x i8] c"dwmac_dwc_qos_eth.file=drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [33 x i8] c"dwmac_dwc_qos_eth.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwc-eth-dwmac\00", [18 x i8] zeroinitializer }, align 32
@dwc_eth_dwmac_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc-qos-ethernet-4.10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc_qos_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-eqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_eqos_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@dwc_eth_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to probe subdriver: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc_eth_dwmac_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc_eth_dwmac_probe._entry_ptr = internal global ptr @dwc_eth_dwmac_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snps,en-lpi\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snps,write-requests\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,read-requests\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snps,burst-map\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dwc_eth_dwmac_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to remove platform: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc_eth_dwmac_remove\00", [43 x i8] zeroinitializer }, align 32
@dwc_eth_dwmac_remove._entry_ptr = internal global ptr @dwc_eth_dwmac_remove._entry, section ".printk_index", align 4
@dwc_eth_dwmac_remove._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to remove subdriver: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dwc_eth_dwmac_remove._entry_ptr.14 = internal global ptr @dwc_eth_dwmac_remove._entry.12, section ".printk_index", align 4
@dwc_qos_data = internal constant { %struct.dwc_eth_dwmac_data, [24 x i8] } { %struct.dwc_eth_dwmac_data { ptr @dwc_qos_probe, ptr @dwc_qos_remove }, [24 x i8] zeroinitializer }, align 32
@tegra_eqos_data = internal constant { %struct.dwc_eth_dwmac_data, [24 x i8] } { %struct.dwc_eth_dwmac_data { ptr @tegra_eqos_probe, ptr @tegra_eqos_remove }, [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apb_pclk\00", [23 x i8] zeroinitializer }, align 32
@dwc_qos_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"apb_pclk clock not found.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwc_qos_probe\00", [18 x i8] zeroinitializer }, align 32
@dwc_qos_probe._entry_ptr = internal global ptr @dwc_qos_probe._entry, section ".printk_index", align 4
@dwc_qos_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable apb_pclk clock: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dwc_qos_probe._entry_ptr.20 = internal global ptr @dwc_qos_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phy_ref_clk\00", [20 x i8] zeroinitializer }, align 32
@dwc_qos_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy_ref_clk clock not found.\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc_qos_probe._entry_ptr.24 = internal global ptr @dwc_qos_probe._entry.22, section ".printk_index", align 4
@dwc_qos_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable phy_ref clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dwc_qos_probe._entry_ptr.27 = internal global ptr @dwc_qos_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"master_bus\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slave_bus\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy-reset\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eqos\00", [27 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@tegra_eqos_fix_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid speed %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_eqos_fix_speed\00", [43 x i8] zeroinitializer }, align 32
@tegra_eqos_fix_speed._entry_ptr = internal global ptr @tegra_eqos_fix_speed._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_eqos_fix_speed._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"calibration did not start\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_eqos_fix_speed._entry_ptr.38 = internal global ptr @tegra_eqos_fix_speed._entry.36, section ".printk_index", align 4
@tegra_eqos_fix_speed._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"calibration didn't finish\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_eqos_fix_speed._entry_ptr.41 = internal global ptr @tegra_eqos_fix_speed._entry.39, section ".printk_index", align 4
@tegra_eqos_fix_speed._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set TX rate: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_eqos_fix_speed._entry_ptr.44 = internal global ptr @tegra_eqos_fix_speed._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"dwc_eth_dwmac_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 501, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 505, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"dwc_eth_dwmac_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 494, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 448, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 56, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 57, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 72, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 86, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 483, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 487, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"dwc_qos_data\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 407, i32 40 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"tegra_eqos_data\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 412, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 128, i32 50 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 130, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 136, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 141, i32 44 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 143, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 150, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 288, i32 46 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 298, i32 45 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 310, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 320, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 330, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 342, i32 49 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 207, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 228, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 237, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [59 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 253, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_dwc_eth_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_dwc_qos_eth__353_510_dwc_eth_dwmac_driver_init6, ptr @dwc_eth_dwmac_driver_exit, ptr @dwc_eth_dwmac_probe._entry, ptr @dwc_eth_dwmac_probe._entry_ptr, ptr @dwc_eth_dwmac_remove._entry, ptr @dwc_eth_dwmac_remove._entry.12, ptr @dwc_eth_dwmac_remove._entry_ptr, ptr @dwc_eth_dwmac_remove._entry_ptr.14, ptr @dwc_qos_probe._entry, ptr @dwc_qos_probe._entry.18, ptr @dwc_qos_probe._entry.22, ptr @dwc_qos_probe._entry.25, ptr @dwc_qos_probe._entry_ptr, ptr @dwc_qos_probe._entry_ptr.20, ptr @dwc_qos_probe._entry_ptr.24, ptr @dwc_qos_probe._entry_ptr.27, ptr @tegra_eqos_fix_speed._entry, ptr @tegra_eqos_fix_speed._entry.36, ptr @tegra_eqos_fix_speed._entry.39, ptr @tegra_eqos_fix_speed._entry.42, ptr @tegra_eqos_fix_speed._entry_ptr, ptr @tegra_eqos_fix_speed._entry_ptr.38, ptr @tegra_eqos_fix_speed._entry_ptr.41, ptr @tegra_eqos_fix_speed._entry_ptr.44, ptr @dwc_eth_dwmac_driver, ptr @.str, ptr @dwc_eth_dwmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @dwc_qos_data, ptr @tegra_eqos_data, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_eth_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_eth_dwmac_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_eth_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_eth_dwmac_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_eth_dwmac_remove._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_qos_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_eqos_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_qos_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_qos_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_qos_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_qos_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_eqos_fix_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_eqos_fix_speed._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_eqos_fix_speed._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_eqos_fix_speed._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_eth_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc_eth_dwmac_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc_eth_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc_eth_dwmac_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_eth_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %burst_map.i = alloca i32, align 4
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %0 = getelementptr inbounds i8, ptr %stmmac_res, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol_irq = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 2
  %3 = ptrtoint ptr %wol_irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %wol_irq, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %4 = ptrtoint ptr %stmmac_res to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %stmmac_res, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call12 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #8
  %cmp.i59 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call17 = call i32 %8(ptr noundef %pdev, ptr noundef %call12, ptr noundef nonnull %stmmac_res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call17)
  %cmp20.not = icmp eq i32 %call17, -517
  br i1 %cmp20.not, label %if.then19.remove_config_crit_edge, label %do.end

if.then19.remove_config_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_config

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call17) #11
  br label %remove_config

if.end24:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %burst_map.i) #8
  %9 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %burst_map.i, align 4
  %axi.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call12, i32 0, i32 57
  %10 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %axi.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end24.if.end6.i_crit_edge

if.end24.if.end6.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 48) #12
  %13 = ptrtoint ptr %axi.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %axi.i, align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %dwc_eth_dwmac_config_dt.exit, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %if.end24.if.end6.i_crit_edge
  %call.i.i = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %14 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %axi.i, align 4
  %frombool.i = zext i1 %call.i.i to i8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool.i, ptr %15, align 4
  %17 = load ptr, ptr %axi.i, align 4
  %axi_wr_osr_lmt.i = getelementptr inbounds %struct.stmmac_axi, ptr %17, i32 0, i32 2
  %call.i95.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %axi_wr_osr_lmt.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %tobool11.not.i = icmp eq i32 %call.i95.i, 0
  %18 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %axi.i, align 4
  %axi_wr_osr_lmt16.i = getelementptr inbounds %struct.stmmac_axi, ptr %19, i32 0, i32 2
  br i1 %tobool11.not.i, label %if.else.i, label %if.end6.i.if.end17.i_crit_edge

if.end6.i.if.end17.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %axi_wr_osr_lmt16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %axi_wr_osr_lmt16.i, align 4
  %dec.i = add i32 %21, -1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.end6.i.if.end17.i_crit_edge
  %dec.sink.i = phi i32 [ %dec.i, %if.else.i ], [ 1, %if.end6.i.if.end17.i_crit_edge ]
  %22 = ptrtoint ptr %axi_wr_osr_lmt16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec.sink.i, ptr %axi_wr_osr_lmt16.i, align 4
  %23 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %axi.i, align 4
  %axi_rd_osr_lmt.i = getelementptr inbounds %struct.stmmac_axi, ptr %24, i32 0, i32 3
  %call.i96.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %axi_rd_osr_lmt.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool20.not.i = icmp eq i32 %call.i96.i, 0
  %25 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %axi.i, align 4
  %axi_rd_osr_lmt26.i = getelementptr inbounds %struct.stmmac_axi, ptr %26, i32 0, i32 3
  br i1 %tobool20.not.i, label %if.else24.i, label %if.end17.i.if.end28.i_crit_edge

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.else24.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %axi_rd_osr_lmt26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %axi_rd_osr_lmt26.i, align 4
  %dec27.i = add i32 %28, -1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else24.i, %if.end17.i.if.end28.i_crit_edge
  %dec27.sink.i = phi i32 [ %dec27.i, %if.else24.i ], [ 1, %if.end17.i.if.end28.i_crit_edge ]
  %29 = ptrtoint ptr %axi_rd_osr_lmt26.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dec27.sink.i, ptr %axi_rd_osr_lmt26.i, align 4
  %call.i97.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %burst_map.i, i32 noundef 1) #8
  %30 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %burst_map.i, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.for.inc.i_crit_edge, label %sw.epilog.i

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %axi.i, align 4
  %arrayidx.i = getelementptr %struct.stmmac_axi, ptr %33, i32 0, i32 5, i32 0
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i, %if.end28.i.for.inc.i_crit_edge
  %a_index.1.i = phi i32 [ 1, %sw.epilog.i ], [ 0, %if.end28.i.for.inc.i_crit_edge ]
  %35 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %burst_map.i, align 4
  %and.1.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool30.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool30.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %sw.epilog.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

sw.epilog.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %axi.i, align 4
  %arrayidx36.1.i = getelementptr %struct.stmmac_axi, ptr %38, i32 0, i32 5, i32 %a_index.1.i
  %39 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %arrayidx36.1.i, align 4
  %inc.1.i = add nuw nsw i32 %a_index.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.epilog.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %a_index.1.1.i = phi i32 [ %inc.1.i, %sw.epilog.1.i ], [ %a_index.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %40 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %burst_map.i, align 4
  %and.2.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool30.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool30.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %sw.epilog.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

sw.epilog.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %axi.i, align 4
  %arrayidx40.2.i = getelementptr %struct.stmmac_axi, ptr %43, i32 0, i32 5, i32 %a_index.1.1.i
  %44 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %arrayidx40.2.i, align 4
  %inc.2.i = add nuw nsw i32 %a_index.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.epilog.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %a_index.1.2.i = phi i32 [ %inc.2.i, %sw.epilog.2.i ], [ %a_index.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %45 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %burst_map.i, align 4
  %and.3.i = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool30.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool30.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %sw.epilog.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

sw.epilog.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %axi.i, align 4
  %arrayidx44.3.i = getelementptr %struct.stmmac_axi, ptr %48, i32 0, i32 5, i32 %a_index.1.2.i
  %49 = ptrtoint ptr %arrayidx44.3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32, ptr %arrayidx44.3.i, align 4
  %inc.3.i = add nuw nsw i32 %a_index.1.2.i, 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %sw.epilog.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %a_index.1.3.i = phi i32 [ %inc.3.i, %sw.epilog.3.i ], [ %a_index.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %50 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %burst_map.i, align 4
  %and.4.i = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool30.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool30.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %sw.epilog.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

sw.epilog.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %axi.i, align 4
  %arrayidx48.4.i = getelementptr %struct.stmmac_axi, ptr %53, i32 0, i32 5, i32 %a_index.1.3.i
  %54 = ptrtoint ptr %arrayidx48.4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 64, ptr %arrayidx48.4.i, align 4
  %inc.4.i = add nuw nsw i32 %a_index.1.3.i, 1
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %sw.epilog.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %a_index.1.4.i = phi i32 [ %inc.4.i, %sw.epilog.4.i ], [ %a_index.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %55 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %burst_map.i, align 4
  %and.5.i = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool30.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool30.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %sw.epilog.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i

sw.epilog.5.i:                                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %axi.i, align 4
  %arrayidx52.5.i = getelementptr %struct.stmmac_axi, ptr %58, i32 0, i32 5, i32 %a_index.1.4.i
  %59 = ptrtoint ptr %arrayidx52.5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %arrayidx52.5.i, align 4
  %inc.5.i = add nuw nsw i32 %a_index.1.4.i, 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %sw.epilog.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %a_index.1.5.i = phi i32 [ %inc.5.i, %sw.epilog.5.i ], [ %a_index.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %60 = ptrtoint ptr %burst_map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %burst_map.i, align 4
  %and.6.i = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool30.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool30.not.6.i, label %for.inc.5.i.if.end27_crit_edge, label %sw.epilog.6.i

for.inc.5.i.if.end27_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

sw.epilog.6.i:                                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %axi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %axi.i, align 4
  %arrayidx56.6.i = getelementptr %struct.stmmac_axi, ptr %63, i32 0, i32 5, i32 %a_index.1.5.i
  %64 = ptrtoint ptr %arrayidx56.6.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 256, ptr %arrayidx56.6.i, align 4
  br label %if.end27

dwc_eth_dwmac_config_dt.exit:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %burst_map.i) #8
  br label %remove

if.end27:                                         ; preds = %sw.epilog.6.i, %for.inc.5.i.if.end27_crit_edge
  %has_gmac4.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call12, i32 0, i32 58
  %65 = ptrtoint ptr %has_gmac4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %has_gmac4.i, align 4
  %dma_cfg.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call12, i32 0, i32 8
  %66 = ptrtoint ptr %dma_cfg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_cfg.i, align 4
  %aal.i = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %aal.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %aal.i, align 4
  %tso_en.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call12, i32 0, i32 60
  %69 = ptrtoint ptr %tso_en.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %tso_en.i, align 1
  %pmt.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call12, i32 0, i32 18
  %70 = ptrtoint ptr %pmt.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %pmt.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %burst_map.i) #8
  %call29 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call12, ptr noundef nonnull %stmmac_res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end27.remove_crit_edge

if.end27.remove_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

remove:                                           ; preds = %if.end27.remove_crit_edge, %dwc_eth_dwmac_config_dt.exit
  %ret.0 = phi i32 [ -12, %dwc_eth_dwmac_config_dt.exit ], [ %call29, %if.end27.remove_crit_edge ]
  %remove33 = getelementptr inbounds %struct.dwc_eth_dwmac_data, ptr %call, i32 0, i32 1
  %71 = ptrtoint ptr %remove33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %remove33, align 4
  %call34 = call i32 %72(ptr noundef %pdev) #8
  br label %remove_config

remove_config:                                    ; preds = %remove, %do.end, %if.then19.remove_config_crit_edge
  %ret.1 = phi i32 [ %call17, %do.end ], [ -517, %if.then19.remove_config_crit_edge ], [ %ret.0, %remove ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call12) #8
  br label %cleanup

cleanup:                                          ; preds = %remove_config, %if.end27.cleanup_crit_edge, %if.then14, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %6, %if.then14 ], [ %ret.1, %remove_config ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_eth_dwmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %call4 = tail call i32 @stmmac_dvr_remove(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call4) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %remove = getelementptr inbounds %struct.dwc_eth_dwmac_data, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %call6 = tail call i32 %3(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call6) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %if.end.if.end13_crit_edge
  %plat = getelementptr i8, ptr %1, i32 17408
  %4 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat, align 128
  tail call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %5) #8
  ret i32 %call6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_qos_probe(ptr noundef %pdev, ptr nocapture noundef %plat_dat, ptr nocapture noundef readnone %stmmac_res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  %stmmac_clk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 47
  %0 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %stmmac_clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  %1 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stmmac_clk, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end13_crit_edge, label %if.then3.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end11, label %clk_prepare_enable.exit.if.end13_crit_edge

clk_prepare_enable.exit.if.end13_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end11:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i) #11
  br label %cleanup

if.end13:                                         ; preds = %clk_prepare_enable.exit.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  %pclk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 48
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call15, ptr %pclk, align 4
  %cmp.i54 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  %5 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pclk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %disable

if.end25:                                         ; preds = %if.end13
  %call.i55 = tail call i32 @clk_prepare(ptr noundef %call15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i59, label %if.end25.clk_prepare_enable.exit62_crit_edge

if.end25.clk_prepare_enable.exit62_crit_edge:     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit62

if.end.i59:                                       ; preds = %if.end25
  %call1.i57 = tail call i32 @clk_enable(ptr noundef %call15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool2.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool2.not.i58, label %if.end.i59.cleanup_crit_edge, label %if.then3.i60

if.end.i59.cleanup_crit_edge:                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i60:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call15) #8
  br label %clk_prepare_enable.exit62

clk_prepare_enable.exit62:                        ; preds = %if.then3.i60, %if.end25.clk_prepare_enable.exit62_crit_edge
  %retval.0.i61 = phi i32 [ %call.i55, %if.end25.clk_prepare_enable.exit62_crit_edge ], [ %call1.i57, %if.then3.i60 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i61)
  %cmp28 = icmp slt i32 %retval.0.i61, 0
  br i1 %cmp28, label %do.end32, label %clk_prepare_enable.exit62.cleanup_crit_edge

clk_prepare_enable.exit62.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end32:                                         ; preds = %clk_prepare_enable.exit62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i61) #11
  br label %disable

disable:                                          ; preds = %do.end32, %do.end21
  %err.0 = phi i32 [ %7, %do.end21 ], [ %retval.0.i61, %do.end32 ]
  %8 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stmmac_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %disable, %clk_prepare_enable.exit62.cleanup_crit_edge, %if.end.i59.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ %retval.0.i, %do.end11 ], [ %err.0, %disable ], [ 0, %clk_prepare_enable.exit62.cleanup_crit_edge ], [ 0, %if.end.i59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_qos_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %pclk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat, align 128
  %stmmac_clk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stmmac_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_eqos_probe(ptr noundef %pdev, ptr nocapture noundef %data, ptr nocapture noundef readonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res, align 4
  %regs = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %regs, align 4
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %4 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwnode, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.bypass_clk_reset_gpio_crit_edge, label %is_of_node.exit

if.end.bypass_clk_reset_gpio_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bypass_clk_reset_gpio

is_of_node.exit:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %7, @of_fwnode_ops
  br i1 %cmp.i, label %if.end7, label %is_of_node.exit.bypass_clk_reset_gpio_crit_edge

is_of_node.exit.bypass_clk_reset_gpio_crit_edge:  ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bypass_clk_reset_gpio

if.end7:                                          ; preds = %is_of_node.exit
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #8
  %clk_master = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %clk_master to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %clk_master, align 4
  %cmp.i157 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call.i158 = tail call i32 @clk_prepare(ptr noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.clk_prepare_enable.exit_crit_edge

if.end15.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end19_crit_edge, label %if.then3.i

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call9) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end15.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i158, %if.end15.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end19_crit_edge

clk_prepare_enable.exit.if.end19_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %clk_prepare_enable.exit.if.end19_crit_edge, %if.end.i.if.end19_crit_edge
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.29) #8
  %clk_slave = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %clk_slave to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %clk_slave, align 4
  %cmp.i159 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call21 to i32
  br label %disable_master

if.end27:                                         ; preds = %if.end19
  %stmmac_clk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %data, i32 0, i32 47
  %12 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %stmmac_clk, align 4
  %call.i160 = tail call i32 @clk_prepare(ptr noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i161 = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i161, label %if.end.i164, label %if.end27.clk_prepare_enable.exit167_crit_edge

if.end27.clk_prepare_enable.exit167_crit_edge:    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit167

if.end.i164:                                      ; preds = %if.end27
  %call1.i162 = tail call i32 @clk_enable(ptr noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i162)
  %tobool2.not.i163 = icmp eq i32 %call1.i162, 0
  br i1 %tobool2.not.i163, label %if.end.i164.if.end33_crit_edge, label %if.then3.i165

if.end.i164.if.end33_crit_edge:                   ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then3.i165:                                    ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call21) #8
  br label %clk_prepare_enable.exit167

clk_prepare_enable.exit167:                       ; preds = %if.then3.i165, %if.end27.clk_prepare_enable.exit167_crit_edge
  %retval.0.i166 = phi i32 [ %call.i160, %if.end27.clk_prepare_enable.exit167_crit_edge ], [ %call1.i162, %if.then3.i165 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i166)
  %cmp31 = icmp slt i32 %retval.0.i166, 0
  br i1 %cmp31, label %clk_prepare_enable.exit167.disable_master_crit_edge, label %clk_prepare_enable.exit167.if.end33_crit_edge

clk_prepare_enable.exit167.if.end33_crit_edge:    ; preds = %clk_prepare_enable.exit167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

clk_prepare_enable.exit167.disable_master_crit_edge: ; preds = %clk_prepare_enable.exit167
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_master

if.end33:                                         ; preds = %clk_prepare_enable.exit167.if.end33_crit_edge, %if.end.i164.if.end33_crit_edge
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.30) #8
  %clk_rx = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %clk_rx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call35, ptr %clk_rx, align 4
  %cmp.i168 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call35 to i32
  br label %disable_slave

if.end41:                                         ; preds = %if.end33
  %call43 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.disable_slave_crit_edge, label %if.end46

if.end41.disable_slave_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_slave

if.end46:                                         ; preds = %if.end41
  %call48 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.31) #8
  %clk_tx = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %clk_tx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call48, ptr %clk_tx, align 4
  %cmp.i169 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call48 to i32
  br label %disable_rx

if.end54:                                         ; preds = %if.end46
  %call56 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.disable_rx_crit_edge, label %if.end59

if.end54.disable_rx_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_rx

if.end59:                                         ; preds = %if.end54
  %call61 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef 7) #8
  %reset = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call61, ptr %reset, align 4
  %cmp.i170 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call61 to i32
  br label %disable_tx

if.end67:                                         ; preds = %if.end59
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %20, i32 noundef 0) #8
  %mdio_bus_data = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %data, i32 0, i32 4
  %21 = ptrtoint ptr %mdio_bus_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_bus_data, align 4
  %needs_reset = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %needs_reset, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i171 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call.i.i to i32
  br label %reset_phy

if.end76:                                         ; preds = %if.end67
  %call78 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end76.reset_phy_crit_edge, label %if.end81

if.end76.reset_phy_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_phy

if.end81:                                         ; preds = %if.end76
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %26 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rst, align 4
  %call83 = tail call i32 @reset_control_deassert(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end81.reset_phy_crit_edge, label %if.end86

if.end81.reset_phy_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_phy

if.end86:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  br label %bypass_clk_reset_gpio

bypass_clk_reset_gpio:                            ; preds = %if.end86, %is_of_node.exit.bypass_clk_reset_gpio_crit_edge, %if.end.bypass_clk_reset_gpio_crit_edge
  %fix_mac_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %data, i32 0, i32 35
  %28 = ptrtoint ptr %fix_mac_speed to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tegra_eqos_fix_speed, ptr %fix_mac_speed, align 4
  %init = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %data, i32 0, i32 40
  %29 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tegra_eqos_init, ptr %init, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %data, i32 0, i32 46
  %30 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %bsp_priv, align 4
  %clk_slave.i = getelementptr inbounds %struct.tegra_eqos, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %clk_slave.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_slave.i, align 4
  %call.i172 = tail call i32 @clk_get_rate(ptr noundef %32) #8
  %div.i = udiv i32 %call.i172, 1000000
  %sub.i = add nsw i32 %div.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #8, !srcloc !105
  br label %cleanup

reset_phy:                                        ; preds = %if.end81.reset_phy_crit_edge, %if.end76.reset_phy_crit_edge, %if.then73
  %err.0 = phi i32 [ %25, %if.then73 ], [ %call78, %if.end76.reset_phy_crit_edge ], [ %call83, %if.end81.reset_phy_crit_edge ]
  %36 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %37, i32 noundef 1) #8
  br label %disable_tx

disable_tx:                                       ; preds = %reset_phy, %if.then64
  %err.1 = phi i32 [ %18, %if.then64 ], [ %err.0, %reset_phy ]
  %38 = ptrtoint ptr %clk_tx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_tx, align 4
  tail call void @clk_disable(ptr noundef %39) #8
  tail call void @clk_unprepare(ptr noundef %39) #8
  br label %disable_rx

disable_rx:                                       ; preds = %disable_tx, %if.end54.disable_rx_crit_edge, %if.then51
  %err.2 = phi i32 [ %16, %if.then51 ], [ %call56, %if.end54.disable_rx_crit_edge ], [ %err.1, %disable_tx ]
  %40 = ptrtoint ptr %clk_rx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_rx, align 4
  tail call void @clk_disable(ptr noundef %41) #8
  tail call void @clk_unprepare(ptr noundef %41) #8
  br label %disable_slave

disable_slave:                                    ; preds = %disable_rx, %if.end41.disable_slave_crit_edge, %if.then38
  %err.3 = phi i32 [ %14, %if.then38 ], [ %call43, %if.end41.disable_slave_crit_edge ], [ %err.2, %disable_rx ]
  %42 = ptrtoint ptr %clk_slave to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_slave, align 4
  tail call void @clk_disable(ptr noundef %43) #8
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %disable_master

disable_master:                                   ; preds = %disable_slave, %clk_prepare_enable.exit167.disable_master_crit_edge, %if.then24
  %err.4 = phi i32 [ %11, %if.then24 ], [ %retval.0.i166, %clk_prepare_enable.exit167.disable_master_crit_edge ], [ %err.3, %disable_slave ]
  %44 = ptrtoint ptr %clk_master to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk_master, align 4
  tail call void @clk_disable(ptr noundef %45) #8
  tail call void @clk_unprepare(ptr noundef %45) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_master, %bypass_clk_reset_gpio, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bypass_clk_reset_gpio ], [ -12, %entry.cleanup_crit_edge ], [ %9, %if.then12 ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %err.4, %disable_master ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_eqos_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %rst = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  %reset = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #8
  %clk_tx = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %clk_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_tx, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %clk_rx = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %clk_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_rx, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  %clk_slave = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %clk_slave to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_slave, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  %clk_master = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %clk_master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_master, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_eqos_fix_speed(ptr nocapture noundef readonly %priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %do.end [
    i32 1000, label %entry.if.then_crit_edge
    i32 100, label %sw.bb1
    i32 10, label %entry.if.else_crit_edge
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef %speed) #11
  br label %if.else

if.then:                                          ; preds = %sw.bb1, %entry.if.then_crit_edge
  %rate.0.ph = phi i32 [ 125000000, %entry.if.then_crit_edge ], [ 25000000, %sw.bb1 ]
  %regs = getelementptr inbounds %struct.tegra_eqos, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 34816
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %6 = or i32 %5, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #8, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #8
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 34820
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %13 = or i32 %12, 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 34820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %13) #8, !srcloc !105
  %call22 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call22, 10000
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr27208 = getelementptr i8, ptr %17, i32 34828
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27208) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %.mask209 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask209)
  %tobool31.not210 = icmp eq i32 %.mask209, 0
  br i1 %tobool31.not210, label %if.then.land.lhs.true_crit_edge, label %if.then.if.end61_crit_edge

if.then.if.end61_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call34 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call34, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call34, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %21, i32 34828
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %.mask = and i32 %22, 128
  %tobool31.not = icmp eq i32 %.mask, 0
  br i1 %tobool31.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.if.end61_crit_edge

cond.false.if.end61_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr40 = getelementptr i8, ptr %24, i32 34828
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %.mask207 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask207)
  %cmp55 = icmp eq i32 %.mask207, 0
  br i1 %cmp55, label %for.end.failed.sink.split_crit_edge, label %for.end.if.end61_crit_edge

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

for.end.failed.sink.split_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

if.end61:                                         ; preds = %for.end.if.end61_crit_edge, %cond.false.if.end61_crit_edge, %if.then.if.end61_crit_edge
  %call65 = tail call i64 @ktime_get() #8
  %add.i192 = add i64 %call65, 200000
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr71211 = getelementptr i8, ptr %27, i32 34828
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71211) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %.mask205212 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask205212)
  %cmp76213 = icmp eq i32 %.mask205212, 0
  br i1 %cmp76213, label %if.end61.failed_crit_edge, label %if.end61.land.lhs.true80_crit_edge

if.end61.land.lhs.true80_crit_edge:               ; preds = %if.end61
  br label %land.lhs.true80

if.end61.failed_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

land.lhs.true80:                                  ; preds = %cond.false98.land.lhs.true80_crit_edge, %if.end61.land.lhs.true80_crit_edge
  %call81 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call81, i64 %add.i192)
  %cmp3.i194 = icmp sgt i64 %call81, %add.i192
  br i1 %cmp3.i194, label %for.end104, label %cond.false98

cond.false98:                                     ; preds = %land.lhs.true80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 4294960) #8
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %31, i32 34828
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %.mask205 = and i32 %32, 128
  %cmp76 = icmp eq i32 %.mask205, 0
  br i1 %cmp76, label %cond.false98.failed_crit_edge, label %cond.false98.land.lhs.true80_crit_edge

cond.false98.land.lhs.true80_crit_edge:           ; preds = %cond.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true80

cond.false98.failed_crit_edge:                    ; preds = %cond.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

for.end104:                                       ; preds = %land.lhs.true80
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr88 = getelementptr i8, ptr %34, i32 34828
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %.mask206 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask206)
  %cmp107.inv.not = icmp eq i32 %.mask206, 0
  br i1 %cmp107.inv.not, label %for.end104.failed_crit_edge, label %for.end104.failed.sink.split_crit_edge

for.end104.failed.sink.split_crit_edge:           ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.sink.split

for.end104.failed_crit_edge:                      ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

failed.sink.split:                                ; preds = %for.end104.failed.sink.split_crit_edge, %for.end.failed.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.37, %for.end.failed.sink.split_crit_edge ], [ @.str.40, %for.end104.failed.sink.split_crit_edge ]
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull %.str.40.sink) #11
  br label %failed

failed:                                           ; preds = %failed.sink.split, %for.end104.failed_crit_edge, %cond.false98.failed_crit_edge, %if.end61.failed_crit_edge
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr119 = getelementptr i8, ptr %39, i32 34816
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %41 = and i32 %40, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr128 = getelementptr i8, ptr %43, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %41) #8, !srcloc !105
  br label %if.end142

if.else:                                          ; preds = %do.end, %entry.if.else_crit_edge
  %rate.0 = phi i32 [ 125000000, %do.end ], [ 2500000, %entry.if.else_crit_edge ]
  %regs131 = getelementptr inbounds %struct.tegra_eqos, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %regs131 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs131, align 4
  %add.ptr132 = getelementptr i8, ptr %45, i32 34820
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %47 = and i32 %46, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %regs131 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs131, align 4
  %add.ptr141 = getelementptr i8, ptr %49, i32 34820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %47) #8, !srcloc !105
  br label %if.end142

if.end142:                                        ; preds = %if.else, %failed
  %rate.0199 = phi i32 [ %rate.0, %if.else ], [ %rate.0.ph, %failed ]
  %clk_tx = getelementptr inbounds %struct.tegra_eqos, ptr %priv, i32 0, i32 5
  %50 = ptrtoint ptr %clk_tx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_tx, align 4
  %call143 = tail call i32 @clk_set_rate(ptr noundef %51, i32 noundef %rate.0199) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %do.end148, label %if.end142.if.end150_crit_edge

if.end142.if.end150_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

do.end148:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.43, i32 noundef %call143) #11
  br label %if.end150

if.end150:                                        ; preds = %do.end148, %if.end142.if.end150_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_eqos_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_slave = getelementptr inbounds %struct.tegra_eqos, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %clk_slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_slave, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %div = udiv i32 %call, 1000000
  %sub = add nsw i32 %div, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %regs = getelementptr inbounds %struct.tegra_eqos, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !105
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_dwmac_dwc_qos_eth__353_510_dwc_eth_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_dwc_qos_eth__353_510_dwc_eth_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 510, i32 1}
!2 = !{ptr @__exitcall_dwc_eth_dwmac_driver_exit, !1, !"__exitcall_dwc_eth_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author354, !4, !"__UNIQUE_ID_author354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 512, i32 1}
!5 = !{ptr @__UNIQUE_ID_description355, !6, !"__UNIQUE_ID_description355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 513, i32 1}
!7 = !{ptr @__UNIQUE_ID_file356, !8, !"__UNIQUE_ID_file356", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 514, i32 1}
!9 = !{ptr @__UNIQUE_ID_license357, !8, !"__UNIQUE_ID_license357", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 505, i32 21}
!12 = !{ptr @dwc_eth_dwmac_driver, !13, !"dwc_eth_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 501, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 448, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dwc_eth_dwmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dwc_eth_dwmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 56, i32 14}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 57, i32 36}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 72, i32 36}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 86, i32 32}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 483, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dwc_eth_dwmac_remove._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dwc_eth_dwmac_remove._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 487, i32 3}
!37 = !{ptr @dwc_eth_dwmac_remove._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dwc_eth_dwmac_remove._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dwc_eth_dwmac_match, !40, !"dwc_eth_dwmac_match", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 494, i32 34}
!41 = !{ptr @dwc_qos_data, !42, !"dwc_qos_data", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 407, i32 40}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 128, i32 50}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 130, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dwc_qos_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @dwc_qos_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 136, i32 3}
!52 = !{ptr @dwc_qos_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dwc_qos_probe._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 141, i32 44}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 143, i32 3}
!58 = !{ptr @dwc_qos_probe._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dwc_qos_probe._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 150, i32 3}
!62 = !{ptr @dwc_qos_probe._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dwc_qos_probe._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @tegra_eqos_data, !65, !"tegra_eqos_data", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 412, i32 40}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 288, i32 46}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 298, i32 45}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 310, i32 42}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 320, i32 42}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 330, i32 43}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 342, i32 49}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 207, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tegra_eqos_fix_speed._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_eqos_fix_speed._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 228, i32 4}
!85 = !{ptr @tegra_eqos_fix_speed._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tegra_eqos_fix_speed._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 237, i32 4}
!89 = !{ptr @tegra_eqos_fix_speed._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tegra_eqos_fix_speed._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c", i32 253, i32 3}
!93 = !{ptr @tegra_eqos_fix_speed._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tegra_eqos_fix_speed._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2157577754}
!105 = !{i64 6820512}
!106 = !{i64 6820930}
!107 = !{i64 2157562090}
!108 = !{i64 2157562399}
!109 = !{i64 2157563619}
!110 = !{i64 2157564012}
!111 = !{i64 2157566282}
!112 = !{i64 2157566776}
!113 = !{i64 2157571143}
!114 = !{i64 2157571637}
!115 = !{i64 2157574380}
!116 = !{i64 2157574689}
!117 = !{i64 2157575373}
!118 = !{i64 2157575682}
