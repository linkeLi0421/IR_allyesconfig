; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.intel_dwmac_data = type { ptr, i32, i32, i8 }
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
%struct.intel_dwmac = type { ptr, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_intel_plat__353_192_intel_eth_plat_driver_init6 = internal global ptr @intel_eth_plat_driver_init, section ".initcall6.init", align 4
@intel_eth_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @intel_eth_plat_probe, ptr @intel_eth_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @intel_eth_plat_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intel_eth_plat_driver_exit = internal global ptr @intel_eth_plat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file354 = internal constant [75 x i8] c"dwmac_intel_plat.file=drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [32 x i8] c"dwmac_intel_plat.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description356 = internal constant [57 x i8] c"dwmac_intel_plat.description=Intel DWMAC platform driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel-eth-plat\00", [17 x i8] zeroinitializer }, align 32
@intel_eth_plat_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kmb_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@intel_eth_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dt configuration failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel_eth_plat_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_eth_plat_probe._entry_ptr = internal global ptr @intel_eth_plat_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_clk\00", [25 x i8] zeroinitializer }, align 32
@intel_eth_plat_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to set tx_clk\0A\00", [42 x i8] zeroinitializer }, align 32
@intel_eth_plat_probe._entry_ptr.9 = internal global ptr @intel_eth_plat_probe._entry.7, section ".printk_index", align 4
@intel_eth_plat_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set clk_ptp_ref\0A\00", [37 x i8] zeroinitializer }, align 32
@intel_eth_plat_probe._entry_ptr.12 = internal global ptr @intel_eth_plat_probe._entry.10, section ".printk_index", align 4
@kmb_data = internal constant { %struct.intel_dwmac_data, [16 x i8] } { %struct.intel_dwmac_data { ptr @kmb_eth_fix_mac_speed, i32 200000000, i32 125000000, i8 1 }, [16 x i8] zeroinitializer }, align 32
@kmb_eth_fix_mac_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid speed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmb_eth_fix_mac_speed\00", [42 x i8] zeroinitializer }, align 32
@kmb_eth_fix_mac_speed._entry_ptr = internal global ptr @kmb_eth_fix_mac_speed._entry, section ".printk_index", align 4
@kmb_eth_fix_mac_speed._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 59, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to configure tx clock rate\0A\00", [61 x i8] zeroinitializer }, align 32
@kmb_eth_fix_mac_speed._entry_ptr.17 = internal global ptr @kmb_eth_fix_mac_speed._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"intel_eth_plat_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 183, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 187, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"intel_eth_plat_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 69, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 90, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 112, i32 45 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 127, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 141, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"kmb_data\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 62, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 53, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [58 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 59, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_intel_eth_plat_driver_exit, ptr @__initcall__kmod_dwmac_intel_plat__353_192_intel_eth_plat_driver_init6, ptr @intel_eth_plat_driver_exit, ptr @intel_eth_plat_probe._entry, ptr @intel_eth_plat_probe._entry.10, ptr @intel_eth_plat_probe._entry.7, ptr @intel_eth_plat_probe._entry_ptr, ptr @intel_eth_plat_probe._entry_ptr.12, ptr @intel_eth_plat_probe._entry_ptr.9, ptr @kmb_eth_fix_mac_speed._entry, ptr @kmb_eth_fix_mac_speed._entry.15, ptr @kmb_eth_fix_mac_speed._entry_ptr, ptr @kmb_eth_fix_mac_speed._entry_ptr.17, ptr @intel_eth_plat_driver, ptr @.str, ptr @intel_eth_plat_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @kmb_data, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_eth_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_eth_plat_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_eth_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_eth_plat_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_eth_plat_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_eth_fix_mac_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_eth_fix_mac_speed._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_eth_plat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intel_eth_plat_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_eth_plat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @intel_eth_plat_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_eth_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %call = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call1 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp.i, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.err_remove_config_dt_crit_edge, label %if.end10

if.end5.err_remove_config_dt_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end10:                                         ; preds = %if.end5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %tx_clk = getelementptr inbounds %struct.intel_dwmac, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %tx_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tx_clk, align 4
  %call14 = call ptr @of_match_device(ptr noundef nonnull @intel_eth_plat_match, ptr noundef %dev) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end10.if.end82_crit_edge, label %land.lhs.true

if.end10.if.end82_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call14, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %land.lhs.true.if.end82_crit_edge, label %if.then17

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then17:                                        ; preds = %land.lhs.true
  %data19 = getelementptr inbounds %struct.intel_dwmac, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %data19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %data19, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %tobool21.not = icmp eq ptr %8, null
  br i1 %tobool21.not, label %if.then17.if.end26_crit_edge, label %if.then22

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %fix_mac_speed25 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 35
  %9 = ptrtoint ptr %fix_mac_speed25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %fix_mac_speed25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then17.if.end26_crit_edge
  %10 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data19, align 4
  %tx_clk_en = getelementptr inbounds %struct.intel_dwmac_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %tx_clk_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_clk_en, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %if.end26.if.end61_crit_edge, label %if.then29

if.end26.if.end61_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then29:                                        ; preds = %if.end26
  %call31 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %14 = ptrtoint ptr %tx_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %tx_clk, align 4
  %cmp.i158 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call31 to i32
  br label %err_remove_config_dt

if.end38:                                         ; preds = %if.then29
  %call.i159 = call i32 @clk_prepare(ptr noundef %call31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.clk_prepare_enable.exit_crit_edge

if.end38.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end38
  %call1.i = call i32 @clk_enable(ptr noundef %call31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call31) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end38.clk_prepare_enable.exit_crit_edge
  %16 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_clk, align 4
  %call42 = call i32 @clk_get_rate(ptr noundef %17) #6
  %18 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data19, align 4
  %tx_clk_rate = getelementptr inbounds %struct.intel_dwmac_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %tx_clk_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool44.not = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call42, i32 %21)
  %cmp.not = icmp eq i32 %call42, %21
  %or.cond = select i1 %tobool44.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %clk_prepare_enable.exit.if.end61_crit_edge, label %if.then48

clk_prepare_enable.exit.if.end61_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then48:                                        ; preds = %clk_prepare_enable.exit
  %22 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_clk, align 4
  %call52 = call i32 @clk_set_rate(ptr noundef %23, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then48.if.end61_crit_edge, label %do.end57

if.then48.if.end61_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.end57:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %err_remove_config_dt

if.end61:                                         ; preds = %if.then48.if.end61_crit_edge, %clk_prepare_enable.exit.if.end61_crit_edge, %if.end26.if.end61_crit_edge
  %clk_ptp_ref = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 49
  %24 = ptrtoint ptr %clk_ptp_ref to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_ptp_ref, align 4
  %call62 = call i32 @clk_get_rate(ptr noundef %25) #6
  %26 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data19, align 4
  %ptp_ref_clk_rate = getelementptr inbounds %struct.intel_dwmac_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ptp_ref_clk_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptp_ref_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool64.not = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %29)
  %cmp68.not = icmp eq i32 %call62, %29
  %or.cond157 = select i1 %tobool64.not, i1 true, i1 %cmp68.not
  br i1 %or.cond157, label %if.end61.if.end82_crit_edge, label %if.then69

if.end61.if.end82_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then69:                                        ; preds = %if.end61
  %30 = ptrtoint ptr %clk_ptp_ref to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_ptp_ref, align 4
  %call73 = call i32 @clk_set_rate(ptr noundef %31, i32 noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then69.if.end82_crit_edge, label %do.end78

if.then69.if.end82_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

do.end78:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %err_remove_config_dt

if.end82:                                         ; preds = %if.then69.if.end82_crit_edge, %if.end61.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %if.end10.if.end82_crit_edge
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 46
  %32 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %bsp_priv, align 4
  %clk_ptp_rate = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 50
  %33 = ptrtoint ptr %clk_ptp_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_ptp_rate, align 4
  %eee_usecs_rate = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 67
  %35 = ptrtoint ptr %eee_usecs_rate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %eee_usecs_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp84.not = icmp eq i32 %34, 0
  br i1 %cmp84.not, label %if.end82.if.end90_crit_edge, label %if.then85

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %34, 1000000
  %sub = add nsw i32 %div, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void @arm_heavy_mb() #6
  %36 = call i32 @llvm.bswap.i32(i32 %sub)
  %37 = ptrtoint ptr %stmmac_res to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stmmac_res, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #6, !srcloc !54
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end82.if.end90_crit_edge
  %call92 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call1, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end90.cleanup_crit_edge, label %if.then94

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_clk, align 4
  call void @clk_disable(ptr noundef %40) #6
  call void @clk_unprepare(ptr noundef %40) #6
  br label %err_remove_config_dt

err_remove_config_dt:                             ; preds = %if.then94, %do.end78, %do.end57, %if.then35, %if.end5.err_remove_config_dt_crit_edge
  %ret.0 = phi i32 [ %15, %if.then35 ], [ %call52, %do.end57 ], [ %call73, %do.end78 ], [ %call92, %if.then94 ], [ -12, %if.end5.err_remove_config_dt_crit_edge ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end90.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ %ret.0, %err_remove_config_dt ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end90.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_eth_plat_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call1 = tail call i32 @stmmac_pltfr_remove(ptr noundef %pdev) #6
  %tx_clk = getelementptr inbounds %struct.intel_dwmac, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_eth_fix_mac_speed(ptr nocapture noundef readonly %priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_clk = getelementptr inbounds %struct.intel_dwmac, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %2 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %do.end [
    i32 1000, label %entry.sw.epilog_crit_edge
    i32 100, label %sw.bb1
    i32 10, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %rate.0 = phi i32 [ %call, %do.end ], [ 2500000, %sw.bb2 ], [ 25000000, %sw.bb1 ], [ 125000000, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %tx_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_clk, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %6, i32 noundef %rate.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.end7

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16) #9
  br label %if.end

if.end:                                           ; preds = %do.end7, %sw.epilog.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_dwmac_intel_plat__353_192_intel_eth_plat_driver_init6, !1, !"__initcall__kmod_dwmac_intel_plat__353_192_intel_eth_plat_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 192, i32 1}
!2 = !{ptr @__exitcall_intel_eth_plat_driver_exit, !1, !"__exitcall_intel_eth_plat_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file354, !4, !"__UNIQUE_ID_file354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 194, i32 1}
!5 = !{ptr @__UNIQUE_ID_license355, !4, !"__UNIQUE_ID_license355", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description356, !7, !"__UNIQUE_ID_description356", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 195, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 187, i32 12}
!10 = !{ptr @intel_eth_plat_driver, !11, !"intel_eth_plat_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 183, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 90, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @intel_eth_plat_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @intel_eth_plat_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 112, i32 45}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 127, i32 6}
!24 = !{ptr @intel_eth_plat_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @intel_eth_plat_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 141, i32 5}
!28 = !{ptr @intel_eth_plat_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @intel_eth_plat_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @intel_eth_plat_match, !31, !"intel_eth_plat_match", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 69, i32 34}
!32 = !{ptr @kmb_data, !33, !"kmb_data", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 62, i32 38}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 53, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @kmb_eth_fix_mac_speed._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @kmb_eth_fix_mac_speed._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-intel-plat.c", i32 59, i32 3}
!41 = !{ptr @kmb_eth_fix_mac_speed._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @kmb_eth_fix_mac_speed._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{i64 2157464504}
!54 = !{i64 6174312}
