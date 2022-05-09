; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stm32_ops = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.stm32_dwmac = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_stm32__361_537_stm32_dwmac_driver_init6 = internal global ptr @stm32_dwmac_driver_init, section ".initcall6.init", align 4
@stm32_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_dwmac_probe, ptr @stm32_dwmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dwmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_dwmac_driver_exit = internal global ptr @stm32_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author362 = internal constant [65 x i8] c"dwmac_stm32.author=Alexandre Torgue <alexandre.torgue@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author363 = internal constant [68 x i8] c"dwmac_stm32.author=Christophe Roullier <christophe.roullier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description364 = internal constant [75 x i8] c"dwmac_stm32.description=STMicroelectronics STM32 DWMAC Specific Glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [65 x i8] c"dwmac_stm32.file=drivers/net/ethernet/stmicro/stmmac/dwmac-stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [27 x i8] c"dwmac_stm32.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32-dwmac\00", [20 x i8] zeroinitializer }, align 32
@stm32_dwmac_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mcu_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_dwmac_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_dwmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dwmac_suspend, ptr @stm32_dwmac_resume, ptr @stm32_dwmac_suspend, ptr @stm32_dwmac_resume, ptr @stm32_dwmac_suspend, ptr @stm32_dwmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no of match data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_dwmac_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_dwmac_probe._entry_ptr = internal global ptr @stm32_dwmac_probe._entry, section ".printk_index", align 4
@stm32_dwmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to parse OF data\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_dwmac_probe._entry_ptr.8 = internal global ptr @stm32_dwmac_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mac-clk-tx\00", [21 x i8] zeroinitializer }, align 32
@stm32_dwmac_parse_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No ETH Tx clock provided...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_dwmac_parse_data\00", [41 x i8] zeroinitializer }, align 32
@stm32_dwmac_parse_data._entry_ptr = internal global ptr @stm32_dwmac_parse_data._entry, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mac-clk-rx\00", [21 x i8] zeroinitializer }, align 32
@stm32_dwmac_parse_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No ETH Rx clock provided...\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_dwmac_parse_data._entry_ptr.15 = internal global ptr @stm32_dwmac_parse_data._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscon\00", [22 x i8] zeroinitializer }, align 32
@stm32_dwmac_parse_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't get sysconfig mode offset (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32_dwmac_parse_data._entry_ptr.19 = internal global ptr @stm32_dwmac_parse_data._entry.17, section ".printk_index", align 4
@stm32mcu_dwmac_data = internal global { %struct.stm32_ops, [40 x i8] } { %struct.stm32_ops { ptr @stm32mcu_set_mode, ptr null, ptr @stm32mcu_suspend, ptr null, ptr null, i32 8388608 }, [40 x i8] zeroinitializer }, align 32
@stm32mp1_dwmac_data = internal global { %struct.stm32_ops, [40 x i8] } { %struct.stm32_ops { ptr @stm32mp1_set_mode, ptr @stm32mp1_clk_prepare, ptr @stm32mp1_suspend, ptr @stm32mp1_resume, ptr @stm32mp1_parse_data, i32 16711680 }, [40 x i8] zeroinitializer }, align 32
@stm32mcu_set_mode.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dwmac_stm32\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32mcu_set_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_MII\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32mcu_set_mode.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_RMII\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32mcu_set_mode.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.24, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SYSCFG init :  Do not manage %d interface\0A\00", [53 x i8] zeroinitializer }, align 32
@stm32mp1_set_mode.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.3, ptr @.str.22, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32mp1_set_mode\00", [46 x i8] zeroinitializer }, align 32
@stm32mp1_set_mode.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_GMII\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32mp1_set_mode.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.3, ptr @.str.23, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@stm32mp1_set_mode.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SYSCFG init : PHY_INTERFACE_MODE_RGMII\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32mp1_set_mode.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.3, ptr @.str.24, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,ext-phyclk\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,eth-clk-sel\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,eth-ref-clk-sel\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eth-ck\00", [25 x i8] zeroinitializer }, align 32
@stm32mp1_parse_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 320, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No phy clock provided...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32mp1_parse_data\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32mp1_parse_data._entry_ptr = internal global ptr @stm32mp1_parse_data._entry, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ethstp\00", [25 x i8] zeroinitializer }, align 32
@stm32mp1_parse_data._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"No ETH peripheral clock provided for CStop mode ...\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32mp1_parse_data._entry_ptr.38 = internal global ptr @stm32mp1_parse_data._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syscfg-clk\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_pwr_wakeup\00", [47 x i8] zeroinitializer }, align 32
@stm32mp1_parse_data._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init wake up irq\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32mp1_parse_data._entry_ptr.43 = internal global ptr @stm32mp1_parse_data._entry.41, section ".printk_index", align 4
@stm32mp1_parse_data._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.33, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set wake up irq\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32mp1_parse_data._entry_ptr.46 = internal global ptr @stm32mp1_parse_data._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 25000000, i64 50000000]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 25000000, i64 125000000]
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"stm32_dwmac_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 528, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 532, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"stm32_dwmac_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 521, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"stm32_dwmac_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 503, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 386, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 396, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 270, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 272, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 276, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 278, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 289, i32 54 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 295, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"stm32mcu_dwmac_data\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 506, i32 25 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"stm32mp1_dwmac_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 512, i32 25 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 237, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 241, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 244, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 180, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 189, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 210, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 308, i32 48 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 311, i32 53 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 315, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 318, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 320, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 325, i32 40 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 327, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 333, i32 40 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 341, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 348, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [53 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 354, i32 4 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_author363, ptr @__UNIQUE_ID_description364, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_license366, ptr @__exitcall_stm32_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_stm32__361_537_stm32_dwmac_driver_init6, ptr @stm32_dwmac_driver_exit, ptr @stm32_dwmac_parse_data._entry, ptr @stm32_dwmac_parse_data._entry.13, ptr @stm32_dwmac_parse_data._entry.17, ptr @stm32_dwmac_parse_data._entry_ptr, ptr @stm32_dwmac_parse_data._entry_ptr.15, ptr @stm32_dwmac_parse_data._entry_ptr.19, ptr @stm32_dwmac_probe._entry, ptr @stm32_dwmac_probe._entry.6, ptr @stm32_dwmac_probe._entry_ptr, ptr @stm32_dwmac_probe._entry_ptr.8, ptr @stm32mp1_parse_data._entry, ptr @stm32mp1_parse_data._entry.36, ptr @stm32mp1_parse_data._entry.41, ptr @stm32mp1_parse_data._entry.44, ptr @stm32mp1_parse_data._entry_ptr, ptr @stm32mp1_parse_data._entry_ptr.38, ptr @stm32mp1_parse_data._entry_ptr.43, ptr @stm32mp1_parse_data._entry_ptr.46, ptr @stm32_dwmac_driver, ptr @.str, ptr @stm32_dwmac_match, ptr @stm32_dwmac_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @stm32mcu_dwmac_data, ptr @stm32mp1_dwmac_data, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_parse_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_parse_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dwmac_parse_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mcu_dwmac_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_dwmac_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_parse_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_parse_data._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_parse_data._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_parse_data._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dwmac_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dwmac_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #5
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %call = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call1 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.err_remove_config_dt_crit_edge, label %if.end9

if.end5.err_remove_config_dt_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_config_dt

if.end9:                                          ; preds = %if.end5
  %call11 = call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %err_remove_config_dt

if.end15:                                         ; preds = %if.end9
  %ops = getelementptr inbounds %struct.stm32_dwmac, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %ops, align 4
  %dev17 = getelementptr inbounds %struct.stm32_dwmac, ptr %call.i, i32 0, i32 14
  %3 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev17, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i65 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i65, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end15.stm32_dwmac_parse_data.exit.sink.split_crit_edge, label %if.end.i

if.end15.stm32_dwmac_parse_data.exit.sink.split_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %stm32_dwmac_parse_data.exit.sink.split

if.end.i:                                         ; preds = %if.end15
  %call5.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #5
  %clk_rx.i = getelementptr inbounds %struct.stm32_dwmac, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %clk_rx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i, ptr %clk_rx.i, align 4
  %cmp.i61.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61.i, label %if.end.i.stm32_dwmac_parse_data.exit.sink.split_crit_edge, label %if.end14.i

if.end.i.stm32_dwmac_parse_data.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stm32_dwmac_parse_data.exit.sink.split

if.end14.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %parse_data.i = getelementptr inbounds %struct.stm32_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %parse_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parse_data.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end14.i.if.end22.i_crit_edge, label %if.then15.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end14.i
  %call18.i = call i32 %11(ptr noundef nonnull %call.i, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then15.i.if.end22.i_crit_edge, label %if.then15.i.do.end24_crit_edge

if.then15.i.do.end24_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

if.then15.i.if.end22.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i.if.end22.i_crit_edge, %if.end14.i.if.end22.i_crit_edge
  %call23.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.16) #5
  %regmap.i = getelementptr inbounds %struct.stm32_dwmac, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23.i, ptr %regmap.i, align 4
  %cmp.i62.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.end22.i.stm32_dwmac_parse_data.exit_crit_edge, label %if.end29.i

if.end22.i.stm32_dwmac_parse_data.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stm32_dwmac_parse_data.exit

if.end29.i:                                       ; preds = %if.end22.i
  %mode_reg.i = getelementptr inbounds %struct.stm32_dwmac, ptr %call.i, i32 0, i32 10
  %call30.i = call i32 @of_property_read_u32_index(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %mode_reg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end26_crit_edge, label %do.end35.i

if.end29.i.if.end26_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call30.i) #8
  br label %do.end24

stm32_dwmac_parse_data.exit.sink.split:           ; preds = %if.end.i.stm32_dwmac_parse_data.exit.sink.split_crit_edge, %if.end15.stm32_dwmac_parse_data.exit.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.10, %if.end15.stm32_dwmac_parse_data.exit.sink.split_crit_edge ], [ @.str.14, %if.end.i.stm32_dwmac_parse_data.exit.sink.split_crit_edge ]
  %call.i.sink = phi ptr [ %call.i, %if.end15.stm32_dwmac_parse_data.exit.sink.split_crit_edge ], [ %clk_rx.i, %if.end.i.stm32_dwmac_parse_data.exit.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.10.sink) #8
  %13 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i.sink, align 4
  br label %stm32_dwmac_parse_data.exit

stm32_dwmac_parse_data.exit:                      ; preds = %stm32_dwmac_parse_data.exit.sink.split, %if.end22.i.stm32_dwmac_parse_data.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call23.i, %if.end22.i.stm32_dwmac_parse_data.exit_crit_edge ], [ %14, %stm32_dwmac_parse_data.exit.sink.split ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool20.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool20.not, label %stm32_dwmac_parse_data.exit.if.end26_crit_edge, label %stm32_dwmac_parse_data.exit.do.end24_crit_edge

stm32_dwmac_parse_data.exit.do.end24_crit_edge:   ; preds = %stm32_dwmac_parse_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

stm32_dwmac_parse_data.exit.if.end26_crit_edge:   ; preds = %stm32_dwmac_parse_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end24:                                         ; preds = %stm32_dwmac_parse_data.exit.do.end24_crit_edge, %do.end35.i, %if.then15.i.do.end24_crit_edge
  %retval.0.i73 = phi i32 [ %retval.0.i, %stm32_dwmac_parse_data.exit.do.end24_crit_edge ], [ %call30.i, %do.end35.i ], [ %call18.i, %if.then15.i.do.end24_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %err_remove_config_dt

if.end26:                                         ; preds = %stm32_dwmac_parse_data.exit.if.end26_crit_edge, %if.end29.i.if.end26_crit_edge
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call1, i32 0, i32 46
  %15 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %bsp_priv, align 4
  %call27 = call fastcc i32 @stm32_dwmac_init(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_remove_config_dt_crit_edge

if.end26.err_remove_config_dt_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_config_dt

if.end30:                                         ; preds = %if.end26
  %call32 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call1, ptr noundef nonnull %stmmac_res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.cleanup_crit_edge, label %err_clk_disable

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_clk_disable:                                  ; preds = %if.end30
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  call void @clk_disable(ptr noundef %17) #5
  call void @clk_unprepare(ptr noundef %17) #5
  %clk_rx.i66 = getelementptr inbounds %struct.stm32_dwmac, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %clk_rx.i66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_rx.i66, align 4
  call void @clk_disable(ptr noundef %19) #5
  call void @clk_unprepare(ptr noundef %19) #5
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %clk_prepare.i = getelementptr inbounds %struct.stm32_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %clk_prepare.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_prepare.i, align 4
  %tobool.not.i68 = icmp eq ptr %23, null
  br i1 %tobool.not.i68, label %err_clk_disable.err_remove_config_dt_crit_edge, label %if.then.i

err_clk_disable.err_remove_config_dt_crit_edge:   ; preds = %err_clk_disable
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_config_dt

if.then.i:                                        ; preds = %err_clk_disable
  call void @__sanitizer_cov_trace_pc() #7
  %call.i69 = call i32 %23(ptr noundef nonnull %call.i, i1 noundef zeroext false) #5
  br label %err_remove_config_dt

err_remove_config_dt:                             ; preds = %if.then.i, %err_clk_disable.err_remove_config_dt_crit_edge, %if.end26.err_remove_config_dt_crit_edge, %do.end24, %do.end, %if.end5.err_remove_config_dt_crit_edge
  %ret.0 = phi i32 [ %retval.0.i73, %do.end24 ], [ %call27, %if.end26.err_remove_config_dt_crit_edge ], [ -22, %do.end ], [ -12, %if.end5.err_remove_config_dt_crit_edge ], [ %call32, %err_clk_disable.err_remove_config_dt_crit_edge ], [ %call32, %if.then.i ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end30.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %ret.0, %err_remove_config_dt ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @stmmac_dvr_remove(ptr noundef %dev) #5
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %clk_rx.i = getelementptr inbounds %struct.stm32_dwmac, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %clk_rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_rx.i, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  %ops.i = getelementptr inbounds %struct.stm32_dwmac, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %clk_prepare.i = getelementptr inbounds %struct.stm32_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %clk_prepare.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_prepare.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.stm32_dwmac_clk_disable.exit_crit_edge, label %if.then.i

entry.stm32_dwmac_clk_disable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stm32_dwmac_clk_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %13(ptr noundef %5, i1 noundef zeroext false) #5
  br label %stm32_dwmac_clk_disable.exit

stm32_dwmac_clk_disable.exit:                     ; preds = %if.then.i, %entry.stm32_dwmac_clk_disable.exit_crit_edge
  %irq_pwr_wakeup = getelementptr inbounds %struct.stm32_dwmac, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %irq_pwr_wakeup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_pwr_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %if.then, label %stm32_dwmac_clk_disable.exit.if.end_crit_edge

stm32_dwmac_clk_disable.exit.if.end_crit_edge:    ; preds = %stm32_dwmac_clk_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %stm32_dwmac_clk_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #5
  %call7 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32_dwmac_clk_disable.exit.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dwmac_init(ptr noundef %plat_dat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %ops = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %plat_dat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end.i
  %dev = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %is_suspended = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %is_suspended, align 4
  %11 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %bf.cast.not = icmp eq i16 %11, 0
  br i1 %bf.cast.not, label %if.then10, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then10:                                        ; preds = %if.end9
  %clk_rx = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %clk_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_rx, align 4
  %call.i49 = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i50, label %if.end.i53, label %if.then10.cleanup.sink.split.sink.split_crit_edge

if.then10.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end.i53:                                       ; preds = %if.then10
  %call1.i51 = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool2.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool2.not.i52, label %if.end.i53.if.end16_crit_edge, label %if.end.i53.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end.i53.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.sink.split

if.end.i53.if.end16_crit_edge:                    ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %if.end.i53.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %clk_prepare = getelementptr inbounds %struct.stm32_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_prepare, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  %call22 = tail call i32 %17(ptr noundef %1, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then19.cleanup_crit_edge, label %if.then24

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %clk_rx25 = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %clk_rx25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_rx25, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then24, %if.end.i53.cleanup.sink.split.sink.split.sink.split_crit_edge
  %.sink63 = phi ptr [ %19, %if.then24 ], [ %13, %if.end.i53.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %call22, %if.then24 ], [ %call1.i51, %if.end.i53.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink63) #5
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.then10.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %call.i49, %if.then10.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.end.i.cleanup.sink.split_crit_edge ], [ %21, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mcu_set_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %mode_reg = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_reg, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body20 [
    i32 2, label %sw.bb
    i32 7, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mcu_set_mode.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mcu_set_mode, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !120

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mcu_set_mode.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.22) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mcu_set_mode.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mcu_set_mode, %if.then16)) #5
          to label %sw.epilog [label %if.then16], !srcloc !120

if.then16:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mcu_set_mode.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.23) #5
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mcu_set_mode.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mcu_set_mode, %if.then32)) #5
          to label %cleanup [label %if.then32], !srcloc !120

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mcu_set_mode.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.24, i32 noundef %8) #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.then16, %sw.bb3, %if.then, %sw.bb
  %val.0 = phi i32 [ 8388608, %if.then16 ], [ 0, %if.then ], [ 0, %sw.bb ], [ 8388608, %sw.bb3 ]
  %regmap = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %ops = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %syscfg_eth_mask = getelementptr inbounds %struct.stm32_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %syscfg_eth_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %syscfg_eth_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %3, i32 noundef %14, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then32, %do.body20
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %if.then32 ], [ -22, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mcu_suspend(ptr nocapture noundef readonly %dwmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwmac, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %clk_rx = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 1
  %2 = ptrtoint ptr %clk_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_rx, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mp1_set_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %mode_reg = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_reg, align 4
  %clk_eth_ck = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk_eth_ck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_eth_ck, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %5) #5
  %enable_eth_ck = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %enable_eth_ck to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %enable_eth_ck, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %8, label %do.body92 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb8
    i32 7, label %sw.bb33
    i32 9, label %entry.sw.bb62_crit_edge
    i32 10, label %entry.sw.bb62_crit_edge162
    i32 11, label %entry.sw.bb62_crit_edge163
    i32 12, label %entry.sw.bb62_crit_edge164
  ]

entry.sw.bb62_crit_edge164:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb62

entry.sw.bb62_crit_edge163:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb62

entry.sw.bb62_crit_edge162:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb62

entry.sw.bb62_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb62

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %call)
  %cmp = icmp eq i32 %call, 25000000
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %ext_phyclk = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ext_phyclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ext_phyclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %enable_eth_ck to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %enable_eth_ck, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mp1_set_mode, %if.then6)) #5
          to label %sw.epilog [label %if.then6], !srcloc !120

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mp1_set_mode.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.22) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %call)
  %cmp9 = icmp eq i32 %call, 25000000
  br i1 %cmp9, label %land.lhs.true10, label %sw.bb8.do.body17_crit_edge

sw.bb8.do.body17_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

land.lhs.true10:                                  ; preds = %sw.bb8
  %eth_clk_sel_reg = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %eth_clk_sel_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eth_clk_sel_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %land.lhs.true10.if.then14_crit_edge

land.lhs.true10.if.then14_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %ext_phyclk12 = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %ext_phyclk12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ext_phyclk12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %lor.lhs.false.do.body17_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %land.lhs.true10.if.then14_crit_edge
  %17 = ptrtoint ptr %enable_eth_ck to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %enable_eth_ck, align 4
  br label %do.body17

do.body17:                                        ; preds = %if.then14, %lor.lhs.false.do.body17_crit_edge, %sw.bb8.do.body17_crit_edge
  %val.0 = phi i32 [ 65536, %if.then14 ], [ 0, %lor.lhs.false.do.body17_crit_edge ], [ 0, %sw.bb8.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mp1_set_mode, %if.then29)) #5
          to label %sw.epilog [label %if.then29], !srcloc !120

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mp1_set_mode.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.26) #5
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %18 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call, label %sw.bb33.do.body46_crit_edge [
    i32 25000000, label %sw.bb33.land.lhs.true37_crit_edge
    i32 50000000, label %sw.bb33.land.lhs.true37_crit_edge165
  ]

sw.bb33.land.lhs.true37_crit_edge165:             ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true37

sw.bb33.land.lhs.true37_crit_edge:                ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true37

sw.bb33.do.body46_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

land.lhs.true37:                                  ; preds = %sw.bb33.land.lhs.true37_crit_edge, %sw.bb33.land.lhs.true37_crit_edge165
  %eth_ref_clk_sel_reg = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %eth_ref_clk_sel_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eth_ref_clk_sel_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %land.lhs.true37.if.then42_crit_edge

land.lhs.true37.if.then42_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false39:                                  ; preds = %land.lhs.true37
  %ext_phyclk40 = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %ext_phyclk40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ext_phyclk40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  br i1 %tobool41.not, label %lor.lhs.false39.do.body46_crit_edge, label %lor.lhs.false39.if.then42_crit_edge

lor.lhs.false39.if.then42_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false39.do.body46_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

if.then42:                                        ; preds = %lor.lhs.false39.if.then42_crit_edge, %land.lhs.true37.if.then42_crit_edge
  %23 = ptrtoint ptr %enable_eth_ck to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %enable_eth_ck, align 4
  br label %do.body46

do.body46:                                        ; preds = %if.then42, %lor.lhs.false39.do.body46_crit_edge, %sw.bb33.do.body46_crit_edge
  %val.1 = phi i32 [ 8519680, %if.then42 ], [ 8388608, %lor.lhs.false39.do.body46_crit_edge ], [ 8388608, %sw.bb33.do.body46_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mp1_set_mode, %if.then58)) #5
          to label %sw.epilog [label %if.then58], !srcloc !120

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mp1_set_mode.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.23) #5
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry.sw.bb62_crit_edge, %entry.sw.bb62_crit_edge162, %entry.sw.bb62_crit_edge163, %entry.sw.bb62_crit_edge164
  %24 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call, label %sw.bb62.do.body76_crit_edge [
    i32 25000000, label %sw.bb62.land.lhs.true66_crit_edge
    i32 125000000, label %sw.bb62.land.lhs.true66_crit_edge166
  ]

sw.bb62.land.lhs.true66_crit_edge166:             ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true66

sw.bb62.land.lhs.true66_crit_edge:                ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true66

sw.bb62.do.body76_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

land.lhs.true66:                                  ; preds = %sw.bb62.land.lhs.true66_crit_edge, %sw.bb62.land.lhs.true66_crit_edge166
  %eth_clk_sel_reg67 = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %eth_clk_sel_reg67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eth_clk_sel_reg67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool68.not = icmp eq i32 %26, 0
  br i1 %tobool68.not, label %lor.lhs.false69, label %land.lhs.true66.if.then72_crit_edge

land.lhs.true66.if.then72_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then72

lor.lhs.false69:                                  ; preds = %land.lhs.true66
  %ext_phyclk70 = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %ext_phyclk70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ext_phyclk70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool71.not = icmp eq i32 %28, 0
  br i1 %tobool71.not, label %lor.lhs.false69.do.body76_crit_edge, label %lor.lhs.false69.if.then72_crit_edge

lor.lhs.false69.if.then72_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then72

lor.lhs.false69.do.body76_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

if.then72:                                        ; preds = %lor.lhs.false69.if.then72_crit_edge, %land.lhs.true66.if.then72_crit_edge
  %29 = ptrtoint ptr %enable_eth_ck to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %enable_eth_ck, align 4
  br label %do.body76

do.body76:                                        ; preds = %if.then72, %lor.lhs.false69.do.body76_crit_edge, %sw.bb62.do.body76_crit_edge
  %val.2 = phi i32 [ 2162688, %if.then72 ], [ 2097152, %lor.lhs.false69.do.body76_crit_edge ], [ 2097152, %sw.bb62.do.body76_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mp1_set_mode, %if.then88)) #5
          to label %sw.epilog [label %if.then88], !srcloc !120

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mp1_set_mode.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.27) #5
  br label %sw.epilog

do.body92:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32mp1_set_mode, %if.then104)) #5
          to label %cleanup [label %if.then104], !srcloc !120

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %interface, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stm32mp1_set_mode.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.24, i32 noundef %31) #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.then88, %do.body76, %if.then58, %do.body46, %if.then29, %do.body17, %if.then6, %if.end
  %val.3 = phi i32 [ %val.2, %if.then88 ], [ %val.1, %if.then58 ], [ %val.0, %if.then29 ], [ 1048576, %if.then6 ], [ 1048576, %if.end ], [ %val.0, %do.body17 ], [ %val.1, %do.body46 ], [ %val.2, %do.body76 ]
  %regmap = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %add = add i32 %3, 64
  %ops = getelementptr inbounds %struct.stm32_dwmac, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %syscfg_eth_mask = getelementptr inbounds %struct.stm32_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %syscfg_eth_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syscfg_eth_mask, align 4
  %call109 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %add, i32 noundef %37) #5
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %syscfg_eth_mask112 = getelementptr inbounds %struct.stm32_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %syscfg_eth_mask112 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %syscfg_eth_mask112, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %3, i32 noundef %43, i32 noundef %val.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then104, %do.body92
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %if.then104 ], [ -22, %do.body92 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mp1_clk_prepare(ptr nocapture noundef readonly %dwmac, i1 noundef zeroext %prepare) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %syscfg_clk = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 4
  %0 = ptrtoint ptr %syscfg_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %syscfg_clk, align 4
  br i1 %prepare, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %enable_eth_ck = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 6
  %2 = ptrtoint ptr %enable_eth_ck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_eth_ck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %clk_eth_ck = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 2
  %4 = ptrtoint ptr %clk_eth_ck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_eth_ck, align 4
  %call.i28 = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i32, label %if.then4.cleanup.sink.split.sink.split_crit_edge

if.then4.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end.i32:                                       ; preds = %if.then4
  %call1.i30 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool2.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool2.not.i31, label %if.end.i32.cleanup_crit_edge, label %if.then3.i33

if.end.i32.cleanup_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i33:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %entry
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %enable_eth_ck12 = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 6
  %6 = ptrtoint ptr %enable_eth_ck12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_eth_ck12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %if.then14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %clk_eth_ck15 = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 2
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then14, %if.then3.i33, %if.then4.cleanup.sink.split.sink.split_crit_edge
  %clk_eth_ck15.sink = phi ptr [ %clk_eth_ck15, %if.then14 ], [ %syscfg_clk, %if.then4.cleanup.sink.split.sink.split_crit_edge ], [ %syscfg_clk, %if.then3.i33 ]
  %retval.0.ph.ph = phi i32 [ 0, %if.then14 ], [ %call.i28, %if.then4.cleanup.sink.split.sink.split_crit_edge ], [ %call1.i30, %if.then3.i33 ]
  %8 = ptrtoint ptr %clk_eth_ck15.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_eth_ck15.sink, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %1, %if.end.i.cleanup.sink.split_crit_edge ], [ %9, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end.i32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i32.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mp1_suspend(ptr nocapture noundef readonly %dwmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_ethstp = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 3
  %0 = ptrtoint ptr %clk_ethstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_ethstp, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %2 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwmac, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %syscfg_clk = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 4
  %4 = ptrtoint ptr %syscfg_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscfg_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %enable_eth_ck = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 6
  %6 = ptrtoint ptr %enable_eth_ck to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_eth_ck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %clk_eth_ck = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 2
  %8 = ptrtoint ptr %clk_eth_ck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_eth_ck, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.then2 ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.i12.ph = phi i32 [ 0, %if.then2 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i12 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i12.ph, %cleanup.sink.split ]
  ret i32 %retval.0.i12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32mp1_resume(ptr nocapture noundef readonly %dwmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_ethstp = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 3
  %0 = ptrtoint ptr %clk_ethstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_ethstp, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mp1_parse_data(ptr nocapture noundef %dwmac, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i, null
  %conv = zext i1 %tobool.i to i32
  %ext_phyclk = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 5
  %2 = ptrtoint ptr %ext_phyclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %ext_phyclk, align 4
  %call.i94 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef null) #5
  %tobool.i95 = icmp ne ptr %call.i94, null
  %conv2 = zext i1 %tobool.i95 to i32
  %eth_clk_sel_reg = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 7
  %3 = ptrtoint ptr %eth_clk_sel_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv2, ptr %eth_clk_sel_reg, align 4
  %call.i96 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef null) #5
  %tobool.i97 = icmp ne ptr %call.i96, null
  %conv4 = zext i1 %tobool.i97 to i32
  %eth_ref_clk_sel_reg = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 8
  %4 = ptrtoint ptr %eth_ref_clk_sel_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4, ptr %eth_ref_clk_sel_reg, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.31) #5
  %clk_eth_ck = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 2
  %5 = ptrtoint ptr %clk_eth_ck to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %clk_eth_ck, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32) #8
  %6 = ptrtoint ptr %clk_eth_ck to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %clk_eth_ck, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.35) #5
  %clk_ethstp = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 3
  %7 = ptrtoint ptr %clk_ethstp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %clk_ethstp, align 4
  %cmp.i98 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #8
  %8 = ptrtoint ptr %clk_ethstp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ethstp, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.39) #5
  %syscfg_clk = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 4
  %cmp.i99 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i99, ptr null, ptr %call19
  %11 = ptrtoint ptr %syscfg_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.store.select, ptr %syscfg_clk, align 4
  %call25 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr, ptr noundef nonnull @.str.40) #5
  %irq_pwr_wakeup = getelementptr inbounds %struct.stm32_dwmac, ptr %dwmac, i32 0, i32 9
  %12 = ptrtoint ptr %irq_pwr_wakeup to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call25, ptr %irq_pwr_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call25)
  %cmp = icmp eq i32 %call25, -517
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end29

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %clk_eth_ck to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_eth_ck, align 4
  %tobool.not = icmp eq ptr %14, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp32 = icmp sgt i32 %call25, -1
  %or.cond = select i1 %tobool.not, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.then34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then34:                                        ; preds = %if.end29
  %call36 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #8
  br label %cleanup

if.end43:                                         ; preds = %if.then34
  %15 = ptrtoint ptr %irq_pwr_wakeup to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_pwr_wakeup, align 4
  %call46 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end43.if.end55_crit_edge, label %do.end51

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #8
  %call54 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #5
  br label %if.end55

if.end55:                                         ; preds = %do.end51, %if.end43.if.end55_crit_edge
  %call57 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end41, %if.end29.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end15
  %retval.0 = phi i32 [ %10, %do.end15 ], [ %call36, %do.end41 ], [ -517, %if.end18.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ %call46, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv, align 4
  %call2 = tail call i32 @stmmac_suspend(ptr noundef %dev) #5
  %ops = getelementptr inbounds %struct.stm32_dwmac, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %suspend = getelementptr inbounds %struct.stm32_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 %9(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv, align 4
  %ops = getelementptr inbounds %struct.stm32_dwmac, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %resume = getelementptr inbounds %struct.stm32_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plat, align 128
  %call5 = tail call fastcc i32 @stm32_dwmac_init(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @stmmac_resume(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !66, !67, !69, !70, !72, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !93, !95, !96, !97, !99, !101, !103, !104, !105, !107, !108, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_dwmac_stm32__361_537_stm32_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_stm32__361_537_stm32_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 537, i32 1}
!2 = !{ptr @__exitcall_stm32_dwmac_driver_exit, !1, !"__exitcall_stm32_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author362, !4, !"__UNIQUE_ID_author362", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 539, i32 1}
!5 = !{ptr @__UNIQUE_ID_author363, !6, !"__UNIQUE_ID_author363", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 540, i32 1}
!7 = !{ptr @__UNIQUE_ID_description364, !8, !"__UNIQUE_ID_description364", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 541, i32 1}
!9 = !{ptr @__UNIQUE_ID_file365, !10, !"__UNIQUE_ID_file365", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 542, i32 1}
!11 = !{ptr @__UNIQUE_ID_license366, !10, !"__UNIQUE_ID_license366", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 532, i32 21}
!14 = !{ptr @stm32_dwmac_driver, !15, !"stm32_dwmac_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 528, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 386, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_dwmac_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32_dwmac_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 396, i32 3}
!26 = !{ptr @stm32_dwmac_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stm32_dwmac_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 270, i32 36}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 272, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stm32_dwmac_parse_data._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @stm32_dwmac_parse_data._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 276, i32 36}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 278, i32 3}
!39 = !{ptr @stm32_dwmac_parse_data._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @stm32_dwmac_parse_data._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 289, i32 54}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 295, i32 3}
!45 = !{ptr @stm32_dwmac_parse_data._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stm32_dwmac_parse_data._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @stm32_dwmac_match, !48, !"stm32_dwmac_match", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 521, i32 34}
!49 = !{ptr @stm32mcu_dwmac_data, !50, !"stm32mcu_dwmac_data", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 506, i32 25}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 237, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @stm32mcu_set_mode.__UNIQUE_ID_ddebug358, !52, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 241, i32 3}
!58 = !{ptr @stm32mcu_set_mode.__UNIQUE_ID_ddebug359, !57, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 244, i32 3}
!61 = !{ptr @stm32mcu_set_mode.__UNIQUE_ID_ddebug360, !60, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!62 = !{ptr @stm32mp1_dwmac_data, !63, !"stm32mp1_dwmac_data", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 512, i32 25}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 180, i32 3}
!66 = !{ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug353, !65, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 189, i32 3}
!69 = !{ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug354, !68, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!70 = !{ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug355, !71, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 198, i32 3}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 210, i32 3}
!74 = !{ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug356, !73, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!75 = !{ptr @stm32mp1_set_mode.__UNIQUE_ID_ddebug357, !76, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 213, i32 3}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 308, i32 48}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 311, i32 53}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 315, i32 29}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 318, i32 40}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 320, i32 3}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @stm32mp1_parse_data._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @stm32mp1_parse_data._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 325, i32 40}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 327, i32 3}
!95 = !{ptr @stm32mp1_parse_data._entry.36, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @stm32mp1_parse_data._entry_ptr.38, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 333, i32 40}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 341, i32 8}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 348, i32 4}
!103 = !{ptr @stm32mp1_parse_data._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @stm32mp1_parse_data._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 354, i32 4}
!107 = !{ptr @stm32mp1_parse_data._entry.44, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @stm32mp1_parse_data._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @stm32_dwmac_pm_ops, !110, !"stm32_dwmac_pm_ops", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c", i32 503, i32 8}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148734896, i64 2148734901, i64 2148734914, i64 2148734958, i64 2148734992, i64 2148735013}
