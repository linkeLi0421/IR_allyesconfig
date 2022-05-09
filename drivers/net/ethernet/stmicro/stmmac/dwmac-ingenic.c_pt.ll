; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ingenic_soc_info = type { i32, i32, ptr }
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
%struct.ingenic_mac = type { ptr, ptr, ptr, i32, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_ingenic__467_394_ingenic_mac_driver_init6 = internal global ptr @ingenic_mac_driver_init, section ".initcall6.init", align 4
@ingenic_mac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_mac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_mac_of_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_mac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ingenic_mac_driver_exit = internal global ptr @ingenic_mac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author468 = internal constant [73 x i8] c"dwmac_ingenic.author=\E5\91\A8\E7\90\B0\E6\9D\B0 (Zhou Yanjie) <zhouyanjie@wanyeetech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description469 = internal constant [65 x i8] c"dwmac_ingenic.description=Ingenic SoCs DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file470 = internal constant [69 x i8] c"dwmac_ingenic.file=drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic\00", section ".modinfo", align 1
@__UNIQUE_ID_license471 = internal constant [29 x i8] c"dwmac_ingenic.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic-mac\00", [20 x i8] zeroinitializer }, align 32
@ingenic_mac_of_matches = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4775-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4775_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1600-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1600_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1830-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1830_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x2000-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x2000_soc_info }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@ingenic_mac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ingenic_mac_suspend, ptr @ingenic_mac_resume, ptr @ingenic_mac_suspend, ptr @ingenic_mac_resume, ptr @ingenic_mac_suspend, ptr @ingenic_mac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No of match data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ingenic_mac_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry_ptr = internal global ptr @ingenic_mac_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode-reg\00", [23 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to get syscon regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry_ptr.9 = internal global ptr @ingenic_mac_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx-clk-delay-ps\00", [16 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid TX clock delay: %dps\0A\00", [34 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry_ptr.13 = internal global ptr @ingenic_mac_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx-clk-delay-ps\00", [16 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid RX clock delay: %dps\0A\00", [34 x i8] zeroinitializer }, align 32
@ingenic_mac_probe._entry_ptr.17 = internal global ptr @ingenic_mac_probe._entry.15, section ".printk_index", align 4
@jz4775_soc_info = internal global { %struct.ingenic_soc_info, [20 x i8] } { %struct.ingenic_soc_info { i32 0, i32 -2147483633, ptr @jz4775_mac_set_mode }, [20 x i8] zeroinitializer }, align 32
@x1000_soc_info = internal global { %struct.ingenic_soc_info, [20 x i8] } { %struct.ingenic_soc_info { i32 1, i32 8, ptr @x1000_mac_set_mode }, [20 x i8] zeroinitializer }, align 32
@x1600_soc_info = internal global { %struct.ingenic_soc_info, [20 x i8] } { %struct.ingenic_soc_info { i32 2, i32 15, ptr @x1600_mac_set_mode }, [20 x i8] zeroinitializer }, align 32
@x1830_soc_info = internal global { %struct.ingenic_soc_info, [20 x i8] } { %struct.ingenic_soc_info { i32 3, i32 -2147483633, ptr @x1830_mac_set_mode }, [20 x i8] zeroinitializer }, align 32
@x2000_soc_info = internal global { %struct.ingenic_soc_info, [20 x i8] } { %struct.ingenic_soc_info { i32 4, i32 1048575, ptr @x2000_mac_set_mode }, [20 x i8] zeroinitializer }, align 32
@jz4775_mac_set_mode.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwmac_ingenic\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jz4775_mac_set_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MAC PHY Control Register: PHY_INTERFACE_MODE_MII\0A\00", [46 x i8] zeroinitializer }, align 32
@jz4775_mac_set_mode.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MAC PHY Control Register: PHY_INTERFACE_MODE_GMII\0A\00", [45 x i8] zeroinitializer }, align 32
@jz4775_mac_set_mode.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.22, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MAC PHY Control Register: PHY_INTERFACE_MODE_RMII\0A\00", [45 x i8] zeroinitializer }, align 32
@jz4775_mac_set_mode.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.23, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MAC PHY Control Register: PHY_INTERFACE_MODE_RGMII\0A\00", [44 x i8] zeroinitializer }, align 32
@jz4775_mac_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported interface %d\00", [39 x i8] zeroinitializer }, align 32
@jz4775_mac_set_mode._entry_ptr = internal global ptr @jz4775_mac_set_mode._entry, section ".printk_index", align 4
@x1000_mac_set_mode.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.25, ptr @.str.3, ptr @.str.22, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x1000_mac_set_mode\00", [45 x i8] zeroinitializer }, align 32
@x1000_mac_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@x1000_mac_set_mode._entry_ptr = internal global ptr @x1000_mac_set_mode._entry, section ".printk_index", align 4
@x1600_mac_set_mode.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.26, ptr @.str.3, ptr @.str.22, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x1600_mac_set_mode\00", [45 x i8] zeroinitializer }, align 32
@x1600_mac_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@x1600_mac_set_mode._entry_ptr = internal global ptr @x1600_mac_set_mode._entry, section ".printk_index", align 4
@x1830_mac_set_mode.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.27, ptr @.str.3, ptr @.str.22, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x1830_mac_set_mode\00", [45 x i8] zeroinitializer }, align 32
@x1830_mac_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@x1830_mac_set_mode._entry_ptr = internal global ptr @x1830_mac_set_mode._entry, section ".printk_index", align 4
@x2000_mac_set_mode.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.28, ptr @.str.3, ptr @.str.22, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x2000_mac_set_mode\00", [45 x i8] zeroinitializer }, align 32
@x2000_mac_set_mode.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.28, ptr @.str.3, ptr @.str.23, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@x2000_mac_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.28, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@x2000_mac_set_mode._entry_ptr = internal global ptr @x2000_mac_set_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"ingenic_mac_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 385, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 389, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"ingenic_mac_of_matches\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 375, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"ingenic_mac_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 337, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 257, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 263, i32 67 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 265, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 270, i32 47 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 275, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 280, i32 47 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 285, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"jz4775_soc_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 339, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"x1000_soc_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 346, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"x1600_soc_info\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 353, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"x1830_soc_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 360, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"x2000_soc_info\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 367, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 97, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 103, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 109, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 118, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 122, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 136, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 140, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 156, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 160, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 177, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 181, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 199, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private constant [55 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 224, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author468, ptr @__UNIQUE_ID_description469, ptr @__UNIQUE_ID_file470, ptr @__UNIQUE_ID_license471, ptr @__exitcall_ingenic_mac_driver_exit, ptr @__initcall__kmod_dwmac_ingenic__467_394_ingenic_mac_driver_init6, ptr @ingenic_mac_driver_exit, ptr @ingenic_mac_probe._entry, ptr @ingenic_mac_probe._entry.11, ptr @ingenic_mac_probe._entry.15, ptr @ingenic_mac_probe._entry.7, ptr @ingenic_mac_probe._entry_ptr, ptr @ingenic_mac_probe._entry_ptr.13, ptr @ingenic_mac_probe._entry_ptr.17, ptr @ingenic_mac_probe._entry_ptr.9, ptr @jz4775_mac_set_mode._entry, ptr @jz4775_mac_set_mode._entry_ptr, ptr @x1000_mac_set_mode._entry, ptr @x1000_mac_set_mode._entry_ptr, ptr @x1600_mac_set_mode._entry, ptr @x1600_mac_set_mode._entry_ptr, ptr @x1830_mac_set_mode._entry, ptr @x1830_mac_set_mode._entry_ptr, ptr @x2000_mac_set_mode._entry, ptr @x2000_mac_set_mode._entry_ptr, ptr @ingenic_mac_driver, ptr @.str, ptr @ingenic_mac_of_matches, ptr @ingenic_mac_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @jz4775_soc_info, ptr @x1000_soc_info, ptr @x1600_soc_info, ptr @x1830_soc_info, ptr @x2000_soc_info, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_mac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_mac_of_matches to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_mac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_mac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_mac_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_mac_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_mac_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4775_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1600_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1830_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x2000_soc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4775_mac_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_mac_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1600_mac_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1830_mac_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x2000_mac_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_mac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ingenic_mac_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_mac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ingenic_mac_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_mac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  %tx_delay_ps = alloca i32, align 4
  %rx_delay_ps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #5
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_delay_ps) #5
  %1 = ptrtoint ptr %tx_delay_ps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tx_delay_ps, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_delay_ps) #5
  %2 = ptrtoint ptr %rx_delay_ps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rx_delay_ps, align 4, !annotation !107
  %call = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac1 = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call2 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac1) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.err_remove_config_dt_crit_edge, label %if.end10

if.end6.err_remove_config_dt_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_config_dt

if.end10:                                         ; preds = %if.end6
  %call12 = call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %err_remove_config_dt

if.end16:                                         ; preds = %if.end10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call18 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.ingenic_mac, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %regmap, align 4
  %cmp.i109 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %err_remove_config_dt

if.end28:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull %tx_delay_ps, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool32.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool32.not, label %if.then33, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then33:                                        ; preds = %if.end28
  %12 = ptrtoint ptr %tx_delay_ps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_delay_ps, align 4
  %14 = add i32 %13, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2477, i32 %14)
  %15 = icmp ult i32 %14, 2477
  br i1 %15, label %if.then35, label %do.end38

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul nuw nsw i32 %13, 1000
  %tx_delay = getelementptr inbounds %struct.ingenic_mac, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %tx_delay to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %tx_delay, align 4
  br label %if.end41

do.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %13) #8
  br label %cleanup

if.end41:                                         ; preds = %if.then35, %if.end28.if.end41_crit_edge
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i.i110 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.14, ptr noundef nonnull %rx_delay_ps, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i110)
  %tobool45.not = icmp sgt i32 %call.i.i110, -1
  br i1 %tobool45.not, label %if.then46, label %if.end41.if.end58_crit_edge

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then46:                                        ; preds = %if.end41
  %19 = ptrtoint ptr %rx_delay_ps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_delay_ps, align 4
  %21 = add i32 %20, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2477, i32 %21)
  %22 = icmp ult i32 %21, 2477
  br i1 %22, label %if.then50, label %do.end55

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %mul51 = mul nuw nsw i32 %20, 1000
  %rx_delay = getelementptr inbounds %struct.ingenic_mac, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %rx_delay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul51, ptr %rx_delay, align 4
  br label %if.end58

do.end55:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %20) #8
  br label %cleanup

if.end58:                                         ; preds = %if.then50, %if.end41.if.end58_crit_edge
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call12, ptr %call.i, align 4
  %dev60 = getelementptr inbounds %struct.ingenic_mac, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %dev60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev60, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call2, i32 0, i32 46
  %26 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %bsp_priv, align 4
  %27 = load ptr, ptr %call.i, align 4
  %set_mode.i = getelementptr inbounds %struct.ingenic_soc_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_mode.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end58.if.end64_crit_edge, label %if.then.i

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then.i:                                        ; preds = %if.end58
  %call.i111 = call i32 %29(ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool3.not.i = icmp eq i32 %call.i111, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end64_crit_edge, label %if.then.i.err_remove_config_dt_crit_edge

if.then.i.err_remove_config_dt_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_config_dt

if.then.i.if.end64_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.end64:                                         ; preds = %if.then.i.if.end64_crit_edge, %if.end58.if.end64_crit_edge
  %call66 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call2, ptr noundef nonnull %stmmac_res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %if.end64.err_remove_config_dt_crit_edge

if.end64.err_remove_config_dt_crit_edge:          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_config_dt

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_remove_config_dt:                             ; preds = %if.end64.err_remove_config_dt_crit_edge, %if.then.i.err_remove_config_dt_crit_edge, %do.end24, %do.end, %if.end6.err_remove_config_dt_crit_edge
  %ret.0 = phi i32 [ %9, %do.end24 ], [ %call66, %if.end64.err_remove_config_dt_crit_edge ], [ -22, %do.end ], [ -12, %if.end6.err_remove_config_dt_crit_edge ], [ %call.i111, %if.then.i.err_remove_config_dt_crit_edge ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end64.cleanup_crit_edge, %do.end55, %do.end38, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %ret.0, %err_remove_config_dt ], [ -22, %do.end55 ], [ -22, %do.end38 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_delay_ps) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_delay_ps) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #5
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4775_mac_set_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end190 [
    i32 2, label %do.end12
    i32 3, label %do.end50
    i32 7, label %do.end101
    i32 9, label %entry.do.end152_crit_edge
    i32 10, label %entry.do.end152_crit_edge216
    i32 12, label %entry.do.end152_crit_edge217
    i32 11, label %entry.do.end152_crit_edge218
  ]

entry.do.end152_crit_edge218:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end152

entry.do.end152_crit_edge217:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end152

entry.do.end152_crit_edge216:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end152

entry.do.end152_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end152

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jz4775_mac_set_mode, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !108

if.then:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4775_mac_set_mode.__UNIQUE_ID_ddebug363, ptr noundef %6, ptr noundef nonnull @.str.20) #5
  br label %sw.epilog

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jz4775_mac_set_mode, %if.then81)) #5
          to label %sw.epilog [label %if.then81], !srcloc !108

if.then81:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  %dev82 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev82, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4775_mac_set_mode.__UNIQUE_ID_ddebug374, ptr noundef %8, ptr noundef nonnull @.str.21) #5
  br label %sw.epilog

do.end101:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jz4775_mac_set_mode, %if.then132)) #5
          to label %sw.epilog [label %if.then132], !srcloc !108

if.then132:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #7
  %dev133 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev133, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4775_mac_set_mode.__UNIQUE_ID_ddebug385, ptr noundef %10, ptr noundef nonnull @.str.22) #5
  br label %sw.epilog

do.end152:                                        ; preds = %entry.do.end152_crit_edge, %entry.do.end152_crit_edge216, %entry.do.end152_crit_edge217, %entry.do.end152_crit_edge218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jz4775_mac_set_mode, %if.then183)) #5
          to label %sw.epilog [label %if.then183], !srcloc !108

if.then183:                                       ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #7
  %dev184 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev184 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev184, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4775_mac_set_mode.__UNIQUE_ID_ddebug396, ptr noundef %12, ptr noundef nonnull @.str.23) #5
  br label %sw.epilog

do.end190:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev191 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev191, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.24, i32 noundef %3) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then183, %do.end152, %if.then132, %do.end101, %if.then81, %do.end50, %if.then, %do.end12
  %val.0 = phi i32 [ 1, %if.then183 ], [ 4, %if.then132 ], [ 0, %if.then81 ], [ 0, %if.then ], [ 0, %do.end12 ], [ 0, %do.end50 ], [ 4, %do.end101 ], [ 1, %do.end152 ]
  %regmap = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %mask = getelementptr inbounds %struct.ingenic_soc_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef %20, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end190
  %retval.0 = phi i32 [ -22, %do.end190 ], [ %call.i, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1000_mac_set_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cond = icmp eq i32 %3, 7
  br i1 %cond, label %do.body, label %do.end5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1000_mac_set_mode.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x1000_mac_set_mode, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !108

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1000_mac_set_mode.__UNIQUE_ID_ddebug397, ptr noundef %5, ptr noundef nonnull @.str.22) #5
  br label %sw.epilog

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev6 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %3) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %do.body
  %regmap = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %mask = getelementptr inbounds %struct.ingenic_soc_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef %13, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end5
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1600_mac_set_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cond = icmp eq i32 %3, 7
  br i1 %cond, label %do.end12, label %do.end21

do.end12:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1600_mac_set_mode.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x1600_mac_set_mode, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !108

if.then:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1600_mac_set_mode.__UNIQUE_ID_ddebug403, ptr noundef %5, ptr noundef nonnull @.str.22) #5
  br label %sw.epilog

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev22 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %3) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %do.end12
  %regmap = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %mask = getelementptr inbounds %struct.ingenic_soc_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef %13, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end21
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1830_mac_set_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cond = icmp eq i32 %3, 7
  br i1 %cond, label %do.end12, label %do.end37

do.end12:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x1830_mac_set_mode.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x1830_mac_set_mode, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !108

if.then:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x1830_mac_set_mode.__UNIQUE_ID_ddebug414, ptr noundef %5, ptr noundef nonnull @.str.22) #5
  br label %sw.epilog

do.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev38 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %3) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %do.end12
  %regmap = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %mask = getelementptr inbounds %struct.ingenic_soc_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef %13, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end37
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %do.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x2000_mac_set_mode(ptr nocapture noundef readonly %plat_dat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 46
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat_dat, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %3, label %do.end229 [
    i32 7, label %do.end12
    i32 9, label %entry.do.end67_crit_edge
    i32 10, label %entry.do.end67_crit_edge260
    i32 12, label %entry.do.end67_crit_edge261
    i32 11, label %entry.do.end67_crit_edge262
  ]

entry.do.end67_crit_edge262:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

entry.do.end67_crit_edge261:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

entry.do.end67_crit_edge260:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

entry.do.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x2000_mac_set_mode.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x2000_mac_set_mode, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !108

if.then:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x2000_mac_set_mode.__UNIQUE_ID_ddebug430, ptr noundef %6, ptr noundef nonnull @.str.22) #5
  br label %sw.epilog

do.end67:                                         ; preds = %entry.do.end67_crit_edge, %entry.do.end67_crit_edge260, %entry.do.end67_crit_edge261, %entry.do.end67_crit_edge262
  %tx_delay = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %tx_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %do.end67.if.end134_crit_edge, label %do.end125

do.end67.if.end134_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end134

do.end125:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %8, 9750
  %div = sdiv i32 %add, 19500
  %sub130 = shl nsw i32 %div, 12
  %shl = add nsw i32 %sub130, 520192
  %and131 = and i32 %shl, 520192
  %or133 = or i32 %and131, 524289
  br label %if.end134

if.end134:                                        ; preds = %do.end125, %do.end67.if.end134_crit_edge
  %val.0 = phi i32 [ %or133, %do.end125 ], [ 1, %do.end67.if.end134_crit_edge ]
  %rx_delay = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %rx_delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp135 = icmp eq i32 %10, 0
  br i1 %cmp135, label %if.end134.do.body210_crit_edge, label %do.end199

if.end134.do.body210_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body210

do.end199:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  %add179 = add i32 %10, 9750
  %div180 = sdiv i32 %add179, 19500
  %sub204 = shl nsw i32 %div180, 4
  %shl205 = add nsw i32 %sub204, 2032
  %and206 = and i32 %shl205, 2032
  %or207 = or i32 %val.0, %and206
  %or208 = or i32 %or207, 2048
  br label %do.body210

do.body210:                                       ; preds = %do.end199, %if.end134.do.body210_crit_edge
  %val.1 = phi i32 [ %or208, %do.end199 ], [ %val.0, %if.end134.do.body210_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x2000_mac_set_mode.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x2000_mac_set_mode, %if.then222)) #5
          to label %sw.epilog [label %if.then222], !srcloc !108

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #7
  %dev223 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev223 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev223, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @x2000_mac_set_mode.__UNIQUE_ID_ddebug466, ptr noundef %12, ptr noundef nonnull @.str.23) #5
  br label %sw.epilog

do.end229:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev230 = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev230 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev230, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.24, i32 noundef %3) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then222, %do.body210, %if.then, %do.end12
  %val.2 = phi i32 [ %val.1, %if.then222 ], [ 4, %if.then ], [ 4, %do.end12 ], [ %val.1, %do.body210 ]
  %regmap = getelementptr inbounds %struct.ingenic_mac, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %mask = getelementptr inbounds %struct.ingenic_soc_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef %20, i32 noundef %val.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end229
  %retval.0 = phi i32 [ -22, %do.end229 ], [ %call.i, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_mac_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stmmac_suspend(ptr noundef %dev) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_mac_resume(ptr noundef %dev) #2 align 64 {
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
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %set_mode.i = getelementptr inbounds %struct.ingenic_soc_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_mode.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 %9(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @stmmac_resume(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !66, !67, !69, !70, !72, !74, !75, !77, !78, !80, !82, !83, !85, !86, !88, !90, !91, !93, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_dwmac_ingenic__467_394_ingenic_mac_driver_init6, !1, !"__initcall__kmod_dwmac_ingenic__467_394_ingenic_mac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 394, i32 1}
!2 = !{ptr @__exitcall_ingenic_mac_driver_exit, !1, !"__exitcall_ingenic_mac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author468, !4, !"__UNIQUE_ID_author468", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 396, i32 1}
!5 = !{ptr @__UNIQUE_ID_description469, !6, !"__UNIQUE_ID_description469", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 397, i32 1}
!7 = !{ptr @__UNIQUE_ID_file470, !8, !"__UNIQUE_ID_file470", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 398, i32 1}
!9 = !{ptr @__UNIQUE_ID_license471, !8, !"__UNIQUE_ID_license471", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 389, i32 11}
!12 = !{ptr @ingenic_mac_driver, !13, !"ingenic_mac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 385, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 257, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ingenic_mac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ingenic_mac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 263, i32 67}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 265, i32 3}
!26 = !{ptr @ingenic_mac_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ingenic_mac_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 270, i32 47}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 275, i32 4}
!32 = !{ptr @ingenic_mac_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ingenic_mac_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 280, i32 47}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 285, i32 4}
!38 = !{ptr @ingenic_mac_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ingenic_mac_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ingenic_mac_of_matches, !41, !"ingenic_mac_of_matches", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 375, i32 34}
!42 = !{ptr @jz4775_soc_info, !43, !"jz4775_soc_info", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 339, i32 32}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 97, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug363, !45, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 103, i32 3}
!51 = !{ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug374, !50, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 109, i32 3}
!54 = !{ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug385, !53, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 118, i32 3}
!57 = !{ptr @jz4775_mac_set_mode.__UNIQUE_ID_ddebug396, !56, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 122, i32 3}
!60 = !{ptr @jz4775_mac_set_mode._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @jz4775_mac_set_mode._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @x1000_soc_info, !63, !"x1000_soc_info", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 346, i32 32}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 136, i32 3}
!66 = !{ptr @x1000_mac_set_mode.__UNIQUE_ID_ddebug397, !65, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!67 = !{ptr @x1000_mac_set_mode._entry, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 140, i32 3}
!69 = !{ptr @x1000_mac_set_mode._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @x1600_soc_info, !71, !"x1600_soc_info", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 353, i32 32}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 156, i32 3}
!74 = !{ptr @x1600_mac_set_mode.__UNIQUE_ID_ddebug403, !73, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!75 = !{ptr @x1600_mac_set_mode._entry, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 160, i32 3}
!77 = !{ptr @x1600_mac_set_mode._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @x1830_soc_info, !79, !"x1830_soc_info", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 360, i32 32}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 177, i32 3}
!82 = !{ptr @x1830_mac_set_mode.__UNIQUE_ID_ddebug414, !81, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!83 = !{ptr @x1830_mac_set_mode._entry, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 181, i32 3}
!85 = !{ptr @x1830_mac_set_mode._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @x2000_soc_info, !87, !"x2000_soc_info", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 367, i32 32}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 199, i32 3}
!90 = !{ptr @x2000_mac_set_mode.__UNIQUE_ID_ddebug430, !89, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!91 = !{ptr @x2000_mac_set_mode.__UNIQUE_ID_ddebug466, !92, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 220, i32 3}
!93 = !{ptr @x2000_mac_set_mode._entry, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 224, i32 3}
!95 = !{ptr @x2000_mac_set_mode._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ingenic_mac_pm_ops, !97, !"ingenic_mac_pm_ops", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-ingenic.c", i32 337, i32 8}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 2148762355, i64 2148762360, i64 2148762373, i64 2148762417, i64 2148762451, i64 2148762472}
