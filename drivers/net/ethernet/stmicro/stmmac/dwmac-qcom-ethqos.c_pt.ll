; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.ethqos_emac_driver_data = type { ptr, i32 }
%struct.ethqos_emac_por = type { i32, i32 }
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
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.qcom_ethqos = type { ptr, ptr, i32, ptr, i32, ptr, i32 }

@__initcall__kmod_dwmac_qcom_ethqos__363_574_qcom_ethqos_driver_init6 = internal global ptr @qcom_ethqos_driver_init, section ".initcall6.init", align 4
@qcom_ethqos_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_ethqos_probe, ptr @qcom_ethqos_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_ethqos_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_ethqos_driver_exit = internal global ptr @qcom_ethqos_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description364 = internal constant [53 x i8] c"dwmac_qcom_ethqos.description=Qualcomm ETHQOS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [77 x i8] c"dwmac_qcom_ethqos.file=drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [33 x i8] c"dwmac_qcom_ethqos.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom-ethqos\00", [20 x i8] zeroinitializer }, align 32
@qcom_ethqos_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-ethqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_v2_3_0_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@qcom_ethqos_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dt configuration failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_ethqos_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_ethqos_probe._entry_ptr = internal global ptr @qcom_ethqos_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snps,tso\00", [23 x i8] zeroinitializer }, align 32
@ethqos_clks_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rgmii_clk enable failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ethqos_clks_config\00", [45 x i8] zeroinitializer }, align 32
@ethqos_clks_config._entry_ptr = internal global ptr @ethqos_clks_config._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ethqos_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Timeout while waiting for DLL lock\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ethqos_configure\00", [47 x i8] zeroinitializer }, align 32
@ethqos_configure._entry_ptr = internal global ptr @ethqos_configure._entry, section ".printk_index", align 4
@ethqos_dll_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Clear CK_OUT_EN timedout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ethqos_dll_configure\00", [43 x i8] zeroinitializer }, align 32
@ethqos_dll_configure._entry_ptr = internal global ptr @ethqos_dll_configure._entry, section ".printk_index", align 4
@ethqos_dll_configure._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set CK_OUT_EN timedout\0A\00", [40 x i8] zeroinitializer }, align 32
@ethqos_dll_configure._entry_ptr.16 = internal global ptr @ethqos_dll_configure._entry.14, section ".printk_index", align 4
@ethqos_rgmii_macro_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid speed %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ethqos_rgmii_macro_init\00", [40 x i8] zeroinitializer }, align 32
@ethqos_rgmii_macro_init._entry_ptr = internal global ptr @ethqos_rgmii_macro_init._entry, section ".printk_index", align 4
@rgmii_dump.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwmac_qcom_ethqos\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii_dump\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rgmii register dump\0A\00", [43 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RGMII_IO_MACRO_CONFIG: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SDCC_HC_REG_DLL_CONFIG: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.24, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SDCC_HC_REG_DDR_CONFIG: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.25, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SDCC_HC_REG_DLL_CONFIG2: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.26, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SDC4_STATUS: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.27, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SDCC_USR_CTL: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.28, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RGMII_IO_MACRO_CONFIG2: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.29, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RGMII_IO_MACRO_DEBUG1: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@rgmii_dump.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.30, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EMAC_SYSTEM_LOW_POWER_DEBUG: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@emac_v2_3_0_data = internal constant { %struct.ethqos_emac_driver_data, [24 x i8] } { %struct.ethqos_emac_driver_data { ptr @emac_v2_3_0_por, i32 6 }, [24 x i8] zeroinitializer }, align 32
@emac_v2_3_0_por = internal constant { [6 x %struct.ethqos_emac_por], [48 x i8] } { [6 x %struct.ethqos_emac_por] [%struct.ethqos_emac_por { i32 0, i32 12587843 }, %struct.ethqos_emac_por { i32 4, i32 537158700 }, %struct.ethqos_emac_por { i32 12, i32 0 }, %struct.ethqos_emac_por { i32 16, i32 2097152 }, %struct.ethqos_emac_por { i32 24, i32 67584 }, %struct.ethqos_emac_por { i32 28, i32 8288 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"qcom_ethqos_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 565, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 569, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"qcom_ethqos_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 559, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 485, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 498, i32 67 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 527, i32 47 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 460, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 431, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 223, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 240, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 372, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 120, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 121, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 123, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 125, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 127, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 129, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 131, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 133, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 135, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 137, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"emac_v2_3_0_data\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 181, i32 45 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"emac_v2_3_0_por\00", align 1
@___asan_gen_.148 = private constant [59 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 172, i32 37 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_description364, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_license366, ptr @__exitcall_qcom_ethqos_driver_exit, ptr @__initcall__kmod_dwmac_qcom_ethqos__363_574_qcom_ethqos_driver_init6, ptr @ethqos_clks_config._entry, ptr @ethqos_clks_config._entry_ptr, ptr @ethqos_configure._entry, ptr @ethqos_configure._entry_ptr, ptr @ethqos_dll_configure._entry, ptr @ethqos_dll_configure._entry.14, ptr @ethqos_dll_configure._entry_ptr, ptr @ethqos_dll_configure._entry_ptr.16, ptr @ethqos_rgmii_macro_init._entry, ptr @ethqos_rgmii_macro_init._entry_ptr, ptr @qcom_ethqos_driver_exit, ptr @qcom_ethqos_probe._entry, ptr @qcom_ethqos_probe._entry_ptr, ptr @qcom_ethqos_driver, ptr @.str, ptr @qcom_ethqos_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @emac_v2_3_0_data, ptr @emac_v2_3_0_por], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ethqos_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ethqos_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ethqos_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethqos_clks_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethqos_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethqos_dll_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethqos_dll_configure._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethqos_rgmii_macro_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_v2_3_0_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_v2_3_0_por to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ethqos_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_ethqos_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_ethqos_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_ethqos_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ethqos_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %2 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
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
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %clks_config = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 43
  %4 = ptrtoint ptr %clks_config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ethqos_clks_config, ptr %clks_config, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.err_mem_crit_edge, label %if.end11

if.end6.err_mem_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mem

if.end11:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %call.i, align 4
  %call13 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #6
  %rgmii_base = getelementptr inbounds %struct.qcom_ethqos, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %rgmii_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %rgmii_base, align 4
  %cmp.i89 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call13 to i32
  br label %err_mem

if.end19:                                         ; preds = %if.end11
  %call21 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %8 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call21, align 4
  %por22 = getelementptr inbounds %struct.qcom_ethqos, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %por22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %por22, align 4
  %num_por = getelementptr inbounds %struct.ethqos_emac_driver_data, ptr %call21, i32 0, i32 1
  %11 = ptrtoint ptr %num_por to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_por, align 4
  %num_por23 = getelementptr inbounds %struct.qcom_ethqos, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %num_por23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %num_por23, align 4
  %call25 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %rgmii_clk = getelementptr inbounds %struct.qcom_ethqos, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %rgmii_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call25, ptr %rgmii_clk, align 4
  %cmp.i90 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call25 to i32
  br label %err_mem

if.end31:                                         ; preds = %if.end19
  %call.i.i = call i32 @clk_prepare(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end31.ethqos_clks_config.exit_crit_edge

if.end31.ethqos_clks_config.exit_crit_edge:       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethqos_clks_config.exit

if.end.i.i:                                       ; preds = %if.end31
  %call1.i.i = call i32 @clk_enable(ptr noundef %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end35, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call25) #6
  br label %ethqos_clks_config.exit

ethqos_clks_config.exit:                          ; preds = %if.then3.i.i, %if.end31.ethqos_clks_config.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end31.ethqos_clks_config.exit_crit_edge ]
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #9
  br label %err_mem

if.end35:                                         ; preds = %if.end.i.i
  %speed = getelementptr inbounds %struct.qcom_ethqos, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1000, ptr %speed, align 4
  %rgmii_clk_rate4.i = getelementptr inbounds %struct.qcom_ethqos, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %rgmii_clk_rate4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 250000000, ptr %rgmii_clk_rate4.i, align 4
  %20 = ptrtoint ptr %rgmii_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rgmii_clk, align 4
  %call.i92 = call i32 @clk_set_rate(ptr noundef %21, i32 noundef 250000000) #6
  %22 = ptrtoint ptr %rgmii_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rgmii_base, align 4
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %25 = or i32 %24, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #6, !srcloc !98
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 46
  %26 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %bsp_priv, align 4
  %fix_mac_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 35
  %27 = ptrtoint ptr %fix_mac_speed to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ethqos_fix_mac_speed, ptr %fix_mac_speed, align 4
  %dump_debug_regs = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 45
  %28 = ptrtoint ptr %dump_debug_regs to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rgmii_dump, ptr %dump_debug_regs, align 4
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 58
  %29 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %has_gmac4, align 4
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 18
  %30 = ptrtoint ptr %pmt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %pmt, align 4
  %call.i93 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i93, null
  %tso_en = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 60
  %frombool = zext i1 %tobool.i to i8
  %31 = ptrtoint ptr %tso_en to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %tso_en, align 1
  %call38 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call1, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end35.cleanup_crit_edge, label %err_clk

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_clk:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %rgmii_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rgmii_clk, align 4
  call void @clk_disable(ptr noundef %33) #6
  call void @clk_unprepare(ptr noundef %33) #6
  br label %err_mem

err_mem:                                          ; preds = %err_clk, %ethqos_clks_config.exit, %if.then28, %if.then16, %if.end6.err_mem_crit_edge
  %ret.0 = phi i32 [ %7, %if.then16 ], [ %15, %if.then28 ], [ %retval.0.i.ph.i, %ethqos_clks_config.exit ], [ %call38, %err_clk ], [ -12, %if.end6.err_mem_crit_edge ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_mem, %if.end35.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %ret.0, %err_mem ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ethqos_remove(ptr noundef %pdev) #2 align 64 {
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @stmmac_pltfr_remove(ptr noundef %pdev) #6
  %rgmii_clk.i = getelementptr inbounds %struct.qcom_ethqos, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rgmii_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rgmii_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethqos_clks_config(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rgmii_clk = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %rgmii_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgmii_clk, align 4
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.else ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethqos_fix_mac_speed(ptr noundef %priv, i32 noundef %speed) #2 align 64 {
entry:
  %dll_lock.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %speed1 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %speed, ptr %speed1, align 4
  %1 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %entry.ethqos_update_rgmii_clk.exit_crit_edge [
    i32 1000, label %entry.sw.epilog.sink.split.i_crit_edge
    i32 100, label %sw.bb1.i
    i32 10, label %sw.bb3.i
  ]

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

entry.ethqos_update_rgmii_clk.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethqos_update_rgmii_clk.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i, %sw.bb1.i, %entry.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 5000000, %sw.bb3.i ], [ 50000000, %sw.bb1.i ], [ 250000000, %entry.sw.epilog.sink.split.i_crit_edge ]
  %rgmii_clk_rate4.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %rgmii_clk_rate4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink.i, ptr %rgmii_clk_rate4.i, align 4
  br label %ethqos_update_rgmii_clk.exit

ethqos_update_rgmii_clk.exit:                     ; preds = %sw.epilog.sink.split.i, %entry.ethqos_update_rgmii_clk.exit_crit_edge
  %rgmii_clk.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %rgmii_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rgmii_clk.i, align 4
  %rgmii_clk_rate5.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %rgmii_clk_rate5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rgmii_clk_rate5.i, align 4
  %call.i = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dll_lock.i)
  %7 = ptrtoint ptr %dll_lock.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 -1, ptr %dll_lock.i, align 4
  %num_por.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %num_por.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_por.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp40.not.i = icmp eq i32 %9, 0
  br i1 %cmp40.not.i, label %ethqos_update_rgmii_clk.exit.for.end.i_crit_edge, label %for.body.lr.ph.i

ethqos_update_rgmii_clk.exit.for.end.i_crit_edge: ; preds = %ethqos_update_rgmii_clk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %ethqos_update_rgmii_clk.exit
  %por.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 5
  %rgmii_base.i.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %por.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %por.i, align 4
  %arrayidx.i = getelementptr %struct.ethqos_emac_por, ptr %11, i32 %i.041.i
  %value.i = getelementptr %struct.ethqos_emac_por, ptr %11, i32 %i.041.i, i32 1
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %17 = ptrtoint ptr %rgmii_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rgmii_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #6, !srcloc !98
  %inc.i = add nuw i32 %i.041.i, 1
  %19 = ptrtoint ptr %num_por.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_por.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %ethqos_update_rgmii_clk.exit.for.end.i_crit_edge
  %rgmii_base.i.i.i.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %21 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %24 = or i32 %23, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !98
  %27 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %30 = or i32 %29, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %30) #6, !srcloc !98
  %33 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %36 = or i32 %35, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i5.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i5.i, i32 %36) #6, !srcloc !98
  %39 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %42 = and i32 %41, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i9.i = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i9.i, i32 %42) #6, !srcloc !98
  %45 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %48 = and i32 %47, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i13.i = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i13.i, i32 %48) #6, !srcloc !98
  %51 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %speed1, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %52, label %if.then.i [
    i32 100, label %for.end.i.if.end19.i_crit_edge
    i32 10, label %for.end.i.if.end19.i_crit_edge5
  ]

for.end.i.if.end19.i_crit_edge5:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

for.end.i.if.end19.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then.i:                                        ; preds = %for.end.i
  %54 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i15.i = getelementptr i8, ptr %55, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %57 = or i32 %56, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i18.i = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i18.i, i32 %57) #6, !srcloc !98
  %60 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %61, i32 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %63 = or i32 %62, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i23.i = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i23.i, i32 %63) #6, !srcloc !98
  %66 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %67, i32 24
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %69 = and i32 %68, -8
  %70 = or i32 %69, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i28.i = getelementptr i8, ptr %72, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i28.i, i32 %70) #6, !srcloc !98
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.i
  %retry.0.i = phi i32 [ 1000, %if.then.i ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #6
  %74 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %75, i32 20
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #6, !srcloc !95
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %78 = ptrtoint ptr %dll_lock.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 %77, ptr %dll_lock.i, align 4
  %dll_lock.i.0.dll_lock.i.0.dll_lock.0.dll_lock.0.dll_lock.0..i = load volatile i32, ptr %dll_lock.i, align 4
  %and.i = and i32 %dll_lock.i.0.dll_lock.i.0.dll_lock.0.dll_lock.0.dll_lock.0..i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.if.end14.i_crit_edge

do.body.i.if.end14.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.end.i:                                         ; preds = %do.body.i
  %dec.i = add nsw i32 %retry.0.i, -1
  %cmp7.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.not.i, label %do.end12.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end12.i, %do.body.i.if.end14.i_crit_edge
  %81 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr.i = load i32, ptr %speed1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %.pr.i)
  %cmp16.i = icmp eq i32 %.pr.i, 1000
  br i1 %cmp16.i, label %if.then17.i, label %if.end14.i.if.end19.i_crit_edge

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  %82 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %83, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %85 = or i32 %84, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %87, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %85) #6, !srcloc !98
  %88 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %89, i32 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %91 = or i32 %90, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i5.i.i = getelementptr i8, ptr %93, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i5.i.i, i32 %91) #6, !srcloc !98
  %94 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %97 = and i32 %96, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i9.i.i = getelementptr i8, ptr %99, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i9.i.i, i32 %97) #6, !srcloc !98
  %100 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i11.i.i = getelementptr i8, ptr %101, i32 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %103 = or i32 %102, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i14.i.i = getelementptr i8, ptr %105, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i14.i.i, i32 %103) #6, !srcloc !98
  %106 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %107, i32 4
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %109 = and i32 %108, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i18.i.i = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i18.i.i, i32 %109) #6, !srcloc !98
  %112 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i20.i.i = getelementptr i8, ptr %113, i32 4
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %115 = and i32 %114, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i22.i.i = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i22.i.i, i32 %115) #6, !srcloc !98
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then17.i
  %retry.0.i.i = phi i32 [ 1000, %if.then17.i ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %118 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %119, i32 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %121 = and i32 %120, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end6.i.i_crit_edge, label %if.end.i.i

do.body.i.i.if.end6.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #6
  %dec.i.i = add nsw i32 %retry.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %do.end5.i.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %124, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12) #9
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %do.end5.i.i, %do.body.i.i.if.end6.i.i_crit_edge
  %125 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i24.i.i = getelementptr i8, ptr %126, i32 4
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %128 = or i32 %127, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %129 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i27.i.i = getelementptr i8, ptr %130, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i27.i.i, i32 %128) #6, !srcloc !98
  br label %do.body7.i.i

do.body7.i.i:                                     ; preds = %if.end12.i.i.do.body7.i.i_crit_edge, %if.end6.i.i
  %retry.2.i.i = phi i32 [ 1000, %if.end6.i.i ], [ %dec13.i.i, %if.end12.i.i.do.body7.i.i_crit_edge ]
  %131 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %132, i32 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %134 = and i32 %133, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool10.not.i.i = icmp eq i32 %134, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %do.body7.i.i.ethqos_dll_configure.exit.i_crit_edge

do.body7.i.i.ethqos_dll_configure.exit.i_crit_edge: ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethqos_dll_configure.exit.i

if.end12.i.i:                                     ; preds = %do.body7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #6
  %dec13.i.i = add nsw i32 %retry.2.i.i, -1
  %cmp15.not.i.i = icmp eq i32 %dec13.i.i, 0
  br i1 %cmp15.not.i.i, label %do.end21.i.i, label %if.end12.i.i.do.body7.i.i_crit_edge

if.end12.i.i.do.body7.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i.i

do.end21.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %priv, align 4
  %dev23.i.i = getelementptr inbounds %struct.platform_device, ptr %137, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i.i, ptr noundef nonnull @.str.15) #9
  br label %ethqos_dll_configure.exit.i

ethqos_dll_configure.exit.i:                      ; preds = %do.end21.i.i, %do.body7.i.i.ethqos_dll_configure.exit.i_crit_edge
  %138 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i31.i.i = getelementptr i8, ptr %139, i32 16
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %141 = or i32 %140, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i34.i.i = getelementptr i8, ptr %143, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i34.i.i, i32 %141) #6, !srcloc !98
  %144 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i36.i.i = getelementptr i8, ptr %145, i32 16
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %147 = and i32 %146, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %148 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i38.i.i = getelementptr i8, ptr %149, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i38.i.i, i32 %147) #6, !srcloc !98
  %150 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i40.i.i = getelementptr i8, ptr %151, i32 16
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %153 = and i32 %152, -16515841
  %154 = or i32 %153, 6815744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i43.i.i = getelementptr i8, ptr %156, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i43.i.i, i32 %154) #6, !srcloc !98
  %157 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %158, i32 16
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %160 = and i32 %159, -201326593
  %161 = or i32 %160, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %162 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i48.i.i = getelementptr i8, ptr %163, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i48.i.i, i32 %161) #6, !srcloc !98
  %164 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i50.i.i = getelementptr i8, ptr %165, i32 16
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %167 = or i32 %166, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %168 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i53.i.i = getelementptr i8, ptr %169, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i53.i.i, i32 %167) #6, !srcloc !98
  br label %if.end19.i

if.end19.i:                                       ; preds = %ethqos_dll_configure.exit.i, %if.end14.i.if.end19.i_crit_edge, %for.end.i.if.end19.i_crit_edge, %for.end.i.if.end19.i_crit_edge5
  %170 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i.i34.i = getelementptr i8, ptr %171, i32 28
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i34.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %173 = and i32 %172, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %174 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i.i35.i = getelementptr i8, ptr %175, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i35.i, i32 %173) #6, !srcloc !98
  %176 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %179 = and i32 %178, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %180 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #6, !srcloc !98
  %182 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %speed1, align 4
  %184 = zext i32 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %183, label %do.end.i.i [
    i32 1000, label %sw.bb.i.i
    i32 100, label %sw.bb1.i.i
    i32 10, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %185 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %188 = or i32 %187, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %189 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #6, !srcloc !98
  %191 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %194 = and i32 %193, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %195 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #6, !srcloc !98
  %197 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %200 = or i32 %199, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %201 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #6, !srcloc !98
  %203 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %206 = or i32 %205, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %207 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #6, !srcloc !98
  %209 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %210, i32 28
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %212 = and i32 %211, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %213 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i16.i.i = getelementptr i8, ptr %214, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i16.i.i, i32 %212) #6, !srcloc !98
  %215 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %216, i32 28
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %218 = or i32 %217, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %219 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i21.i.i = getelementptr i8, ptr %220, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i21.i.i, i32 %218) #6, !srcloc !98
  %221 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %222, i32 28
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %224 = and i32 %223, -65280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %225 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i25.i.i = getelementptr i8, ptr %226, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i25.i.i, i32 %224) #6, !srcloc !98
  %227 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i27.i.i = getelementptr i8, ptr %228, i32 28
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %230 = or i32 %229, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %231 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i30.i.i = getelementptr i8, ptr %232, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i30.i.i, i32 %230) #6, !srcloc !98
  %233 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i32.i.i = getelementptr i8, ptr %234, i32 12
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %236 = and i32 %235, 16711679
  %237 = or i32 %236, 956301312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %238 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i35.i.i = getelementptr i8, ptr %239, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i35.i.i, i32 %237) #6, !srcloc !98
  %240 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i37.i.i = getelementptr i8, ptr %241, i32 12
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %243 = or i32 %242, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %244 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i40.i.i = getelementptr i8, ptr %245, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i40.i.i, i32 %243) #6, !srcloc !98
  %246 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %249 = or i32 %248, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %250 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %249) #6, !srcloc !98
  br label %ethqos_configure.exit

sw.bb1.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %252 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %255 = or i32 %254, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %256 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %255) #6, !srcloc !98
  %258 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %261 = or i32 %260, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %262 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %261) #6, !srcloc !98
  %264 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %267 = and i32 %266, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %268 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #6, !srcloc !98
  %270 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %273 = and i32 %272, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %274 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #6, !srcloc !98
  %276 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i55.i.i = getelementptr i8, ptr %277, i32 28
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %279 = and i32 %278, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %280 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i57.i.i = getelementptr i8, ptr %281, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i57.i.i, i32 %279) #6, !srcloc !98
  %282 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i59.i.i = getelementptr i8, ptr %283, i32 28
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %285 = or i32 %284, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %286 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i62.i.i = getelementptr i8, ptr %287, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i62.i.i, i32 %285) #6, !srcloc !98
  %288 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %289) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %291 = and i32 %290, 1073741823
  %292 = or i32 %291, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %293 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %292) #6, !srcloc !98
  %295 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i67.i.i = getelementptr i8, ptr %296, i32 28
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %298 = and i32 %297, -65280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %299 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i69.i.i = getelementptr i8, ptr %300, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i69.i.i, i32 %298) #6, !srcloc !98
  %301 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i71.i.i = getelementptr i8, ptr %302, i32 28
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %304 = and i32 %303, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %305 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i73.i.i = getelementptr i8, ptr %306, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i73.i.i, i32 %304) #6, !srcloc !98
  %307 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i75.i.i = getelementptr i8, ptr %308, i32 12
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %310 = and i32 %309, -57
  %311 = or i32 %310, 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %312 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i78.i.i = getelementptr i8, ptr %313, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i78.i.i, i32 %311) #6, !srcloc !98
  %314 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i80.i.i = getelementptr i8, ptr %315, i32 12
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %317 = or i32 %316, 57351
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %318 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i83.i.i = getelementptr i8, ptr %319, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i83.i.i, i32 %317) #6, !srcloc !98
  %320 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i85.i.i = getelementptr i8, ptr %321, i32 12
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %323 = or i32 %322, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %324 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i88.i.i = getelementptr i8, ptr %325, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i88.i.i, i32 %323) #6, !srcloc !98
  %326 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %327) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %329 = or i32 %328, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %330 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 %329) #6, !srcloc !98
  br label %ethqos_configure.exit

sw.bb2.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %332 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %335 = or i32 %334, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %336 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %335) #6, !srcloc !98
  %338 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %340 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %339) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %341 = or i32 %340, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %342 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %341) #6, !srcloc !98
  %344 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %345) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %347 = and i32 %346, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %348 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 %347) #6, !srcloc !98
  %350 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %351) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %353 = and i32 %352, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %354 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %353) #6, !srcloc !98
  %356 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i103.i.i = getelementptr i8, ptr %357, i32 28
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %359 = and i32 %358, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %360 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i105.i.i = getelementptr i8, ptr %361, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i105.i.i, i32 %359) #6, !srcloc !98
  %362 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i107.i.i = getelementptr i8, ptr %363, i32 28
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %365 = and i32 %364, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %366 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i109.i.i = getelementptr i8, ptr %367, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i109.i.i, i32 %365) #6, !srcloc !98
  %368 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %369) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %371 = and i32 %370, -16711937
  %372 = or i32 %371, 1245184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %373 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %372) #6, !srcloc !98
  %375 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i114.i.i = getelementptr i8, ptr %376, i32 28
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i114.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %378 = and i32 %377, -65280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %379 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i116.i.i = getelementptr i8, ptr %380, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i116.i.i, i32 %378) #6, !srcloc !98
  %381 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i118.i.i = getelementptr i8, ptr %382, i32 28
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %384 = and i32 %383, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %385 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i120.i.i = getelementptr i8, ptr %386, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i120.i.i, i32 %384) #6, !srcloc !98
  %387 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i122.i.i = getelementptr i8, ptr %388, i32 12
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %390 = and i32 %389, -57
  %391 = or i32 %390, 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %392 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i125.i.i = getelementptr i8, ptr %393, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i125.i.i, i32 %391) #6, !srcloc !98
  %394 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i127.i.i = getelementptr i8, ptr %395, i32 12
  %396 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %397 = or i32 %396, 57351
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %398 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i130.i.i = getelementptr i8, ptr %399, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i130.i.i, i32 %397) #6, !srcloc !98
  %400 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i.i132.i.i = getelementptr i8, ptr %401, i32 12
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i132.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %403 = or i32 %402, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %404 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %add.ptr.i5.i135.i.i = getelementptr i8, ptr %405, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i135.i.i, i32 %403) #6, !srcloc !98
  %406 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  %408 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %409 = or i32 %408, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %410 = ptrtoint ptr %rgmii_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %rgmii_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 %409) #6, !srcloc !98
  br label %ethqos_configure.exit

do.end.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %412 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %priv, align 4
  %dev.i36.i = getelementptr inbounds %struct.platform_device, ptr %413, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i36.i, ptr noundef nonnull @.str.17, i32 noundef %183) #9
  br label %ethqos_configure.exit

ethqos_configure.exit:                            ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dll_lock.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rgmii_dump(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.21) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then15)) #6
          to label %do.body22 [label %if.then15], !srcloc !99

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %rgmii_base.i = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %rgmii_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rgmii_base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !95
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug354, ptr noundef %dev17, ptr noundef nonnull @.str.22, i32 noundef %7) #6
  br label %do.body22

do.body22:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then34)) #6
          to label %do.body41 [label %if.then34], !srcloc !99

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %rgmii_base.i219 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %rgmii_base.i219 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rgmii_base.i219, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !95
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug355, ptr noundef %dev36, ptr noundef nonnull @.str.23, i32 noundef %13) #6
  br label %do.body41

do.body41:                                        ; preds = %if.then34, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then53)) #6
          to label %do.body60 [label %if.then53], !srcloc !99

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %rgmii_base.i220 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %rgmii_base.i220 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rgmii_base.i220, align 4
  %add.ptr.i221 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #6, !srcloc !95
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug356, ptr noundef %dev55, ptr noundef nonnull @.str.24, i32 noundef %19) #6
  br label %do.body60

do.body60:                                        ; preds = %if.then53, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then72)) #6
          to label %do.body79 [label %if.then72], !srcloc !99

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %dev74 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %rgmii_base.i222 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %rgmii_base.i222 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rgmii_base.i222, align 4
  %add.ptr.i223 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #6, !srcloc !95
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug357, ptr noundef %dev74, ptr noundef nonnull @.str.25, i32 noundef %25) #6
  br label %do.body79

do.body79:                                        ; preds = %if.then72, %do.body60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then91)) #6
          to label %do.body98 [label %if.then91], !srcloc !99

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %dev93 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %rgmii_base.i224 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %rgmii_base.i224 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rgmii_base.i224, align 4
  %add.ptr.i225 = getelementptr i8, ptr %29, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #6, !srcloc !95
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug358, ptr noundef %dev93, ptr noundef nonnull @.str.26, i32 noundef %31) #6
  br label %do.body98

do.body98:                                        ; preds = %if.then91, %do.body79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then110)) #6
          to label %do.body117 [label %if.then110], !srcloc !99

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %dev112 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %rgmii_base.i226 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %34 = ptrtoint ptr %rgmii_base.i226 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rgmii_base.i226, align 4
  %add.ptr.i227 = getelementptr i8, ptr %35, i32 24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #6, !srcloc !95
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug359, ptr noundef %dev112, ptr noundef nonnull @.str.27, i32 noundef %37) #6
  br label %do.body117

do.body117:                                       ; preds = %if.then110, %do.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then129)) #6
          to label %do.body136 [label %if.then129], !srcloc !99

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 4
  %dev131 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %rgmii_base.i228 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %40 = ptrtoint ptr %rgmii_base.i228 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rgmii_base.i228, align 4
  %add.ptr.i229 = getelementptr i8, ptr %41, i32 28
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #6, !srcloc !95
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug360, ptr noundef %dev131, ptr noundef nonnull @.str.28, i32 noundef %43) #6
  br label %do.body136

do.body136:                                       ; preds = %if.then129, %do.body117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then148)) #6
          to label %do.body155 [label %if.then148], !srcloc !99

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %dev150 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  %rgmii_base.i230 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %46 = ptrtoint ptr %rgmii_base.i230 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rgmii_base.i230, align 4
  %add.ptr.i231 = getelementptr i8, ptr %47, i32 32
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #6, !srcloc !95
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug361, ptr noundef %dev150, ptr noundef nonnull @.str.29, i32 noundef %49) #6
  br label %do.body155

do.body155:                                       ; preds = %if.then148, %do.body136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rgmii_dump.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rgmii_dump, %if.then167)) #6
          to label %do.end173 [label %if.then167], !srcloc !99

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 4
  %dev169 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %rgmii_base.i232 = getelementptr inbounds %struct.qcom_ethqos, ptr %priv, i32 0, i32 1
  %52 = ptrtoint ptr %rgmii_base.i232 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rgmii_base.i232, align 4
  %add.ptr.i233 = getelementptr i8, ptr %53, i32 40
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #6, !srcloc !95
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rgmii_dump.__UNIQUE_ID_ddebug362, ptr noundef %dev169, ptr noundef nonnull @.str.30, i32 noundef %55) #6
  br label %do.end173

do.end173:                                        ; preds = %if.then167, %do.body155
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_dwmac_qcom_ethqos__363_574_qcom_ethqos_driver_init6, !1, !"__initcall__kmod_dwmac_qcom_ethqos__363_574_qcom_ethqos_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 574, i32 1}
!2 = !{ptr @__exitcall_qcom_ethqos_driver_exit, !1, !"__exitcall_qcom_ethqos_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description364, !4, !"__UNIQUE_ID_description364", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 576, i32 1}
!5 = !{ptr @__UNIQUE_ID_file365, !6, !"__UNIQUE_ID_file365", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 577, i32 1}
!7 = !{ptr @__UNIQUE_ID_license366, !6, !"__UNIQUE_ID_license366", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 569, i32 21}
!10 = !{ptr @qcom_ethqos_driver, !11, !"qcom_ethqos_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 565, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 485, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qcom_ethqos_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @qcom_ethqos_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 498, i32 67}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 527, i32 47}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 460, i32 4}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ethqos_clks_config._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ethqos_clks_config._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 431, i32 4}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ethqos_configure._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ethqos_configure._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 223, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ethqos_dll_configure._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ethqos_dll_configure._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 240, i32 3}
!41 = !{ptr @ethqos_dll_configure._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ethqos_dll_configure._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 372, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ethqos_rgmii_macro_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ethqos_rgmii_macro_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 120, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug353, !49, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 121, i32 2}
!55 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug354, !54, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 123, i32 2}
!58 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug355, !57, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 125, i32 2}
!61 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug356, !60, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 127, i32 2}
!64 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug357, !63, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 129, i32 2}
!67 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug358, !66, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 131, i32 2}
!70 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug359, !69, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 133, i32 2}
!73 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug360, !72, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 135, i32 2}
!76 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug361, !75, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 137, i32 2}
!79 = !{ptr @rgmii_dump.__UNIQUE_ID_ddebug362, !78, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!80 = !{ptr @qcom_ethqos_match, !81, !"qcom_ethqos_match", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 559, i32 34}
!82 = !{ptr @emac_v2_3_0_data, !83, !"emac_v2_3_0_data", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 181, i32 45}
!84 = !{ptr @emac_v2_3_0_por, !85, !"emac_v2_3_0_por", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c", i32 172, i32 37}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 6827965}
!96 = !{i64 2157451909}
!97 = !{i64 2157452135}
!98 = !{i64 6827547}
!99 = !{i64 2148968926, i64 2148968931, i64 2148968944, i64 2148968988, i64 2148969022, i64 2148969043}
