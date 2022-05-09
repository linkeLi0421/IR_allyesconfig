; ModuleID = '/llk/IR_all_yes/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c_pt.bc'
source_filename = "../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mixel_dphy_devdata = type { i8, i8, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mixel_dphy_priv = type { %struct.mixel_dphy_cfg, ptr, ptr, ptr }
%struct.mixel_dphy_cfg = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__initcall__kmod_phy_fsl_imx8_mipi_dphy__294_491_mixel_dphy_driver_init6 = internal global ptr @mixel_dphy_driver_init, section ".initcall6.init", align 4
@mixel_dphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mixel_dphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mixel_dphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mixel_dphy_driver_exit = internal global ptr @mixel_dphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [48 x i8] c"phy_fsl_imx8_mipi_dphy.author=NXP Semiconductor\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [61 x i8] c"phy_fsl_imx8_mipi_dphy.description=Mixel MIPI-DSI PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [73 x i8] c"phy_fsl_imx8_mipi_dphy.file=drivers/phy/freescale/phy-fsl-imx8-mipi-dphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [35 x i8] c"phy_fsl_imx8_mipi_dphy.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mixel-mipi-dphy\00", [16 x i8] zeroinitializer }, align 32
@mixel_dphy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-mipi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mixel_dphy_devdata }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mixel_dphy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mixel_dphy_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.16, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 76, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"phy_fsl_imx8_mipi_dphy:456:(&mixel_dphy_regmap_config)->lock\00", [35 x i8] zeroinitializer }, align 32
@mixel_dphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't create the DPHY regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mixel_dphy_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mixel_dphy_probe._entry_ptr = internal global ptr @mixel_dphy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_ref\00", [24 x i8] zeroinitializer }, align 32
@mixel_dphy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 464, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No phy_ref clock found\0A\00", [40 x i8] zeroinitializer }, align 32
@mixel_dphy_probe._entry_ptr.10 = internal global ptr @mixel_dphy_probe._entry.8, section ".printk_index", align 4
@mixel_dphy_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_fsl_imx8_mipi_dphy\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy_ref clock rate: %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@mixel_dphy_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @mixel_dphy_init, ptr @mixel_dphy_exit, ptr @mixel_dphy_power_on, ptr @mixel_dphy_power_off, ptr null, ptr null, ptr null, ptr @mixel_dphy_configure, ptr @mixel_dphy_validate, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mixel_dphy_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to create phy %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@mixel_dphy_probe._entry_ptr.15 = internal global ptr @mixel_dphy_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mipi-dphy\00", [22 x i8] zeroinitializer }, align 32
@phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write DPHY reg %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy_write\00", [22 x i8] zeroinitializer }, align 32
@phy_write._entry_ptr = internal global ptr @phy_write._entry, section ".printk_index", align 4
@mixel_dphy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not get DPHY lock (%d)!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mixel_dphy_power_on\00", [44 x i8] zeroinitializer }, align 32
@mixel_dphy_power_on._entry_ptr = internal global ptr @mixel_dphy_power_on._entry, section ".printk_index", align 4
@mixel_dphy_config_from_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid %d/%d for %ld/%ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mixel_dphy_config_from_opts\00", [36 x i8] zeroinitializer }, align 32
@mixel_dphy_config_from_opts._entry_ptr = internal global ptr @mixel_dphy_config_from_opts._entry, section ".printk_index", align 4
@mixel_dphy_config_from_opts._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid CM/CN/CO values: %u/%u/%u\0A\00", [61 x i8] zeroinitializer }, align 32
@mixel_dphy_config_from_opts._entry_ptr.25 = internal global ptr @mixel_dphy_config_from_opts._entry.23, section ".printk_index", align 4
@mixel_dphy_config_from_opts._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"for hs_clk/ref_clk=%ld/%ld ~ %d/%d\0A\00", [60 x i8] zeroinitializer }, align 32
@mixel_dphy_config_from_opts._entry_ptr.28 = internal global ptr @mixel_dphy_config_from_opts._entry.26, section ".printk_index", align 4
@mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.22, ptr @.str.4, ptr @.str.29, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hs_clk/ref_clk=%ld/%ld ~ %d/%d\0A\00", [32 x i8] zeroinitializer }, align 32
@mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.22, ptr @.str.4, ptr @.str.30, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LP clock %lu, period: %u ps\0A\00", [35 x i8] zeroinitializer }, align 32
@mixel_dphy_config_from_opts._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hs_prepare (%u) > 2.5 * lp clock period (%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@mixel_dphy_config_from_opts._entry_ptr.33 = internal global ptr @mixel_dphy_config_from_opts._entry.31, section ".printk_index", align 4
@mixel_dphy_config_from_opts._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"clk_prepare (%u) > 1.5 * lp clock period (%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@mixel_dphy_config_from_opts._entry_ptr.36 = internal global ptr @mixel_dphy_config_from_opts._entry.34, section ".printk_index", align 4
@mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.22, ptr @.str.4, ptr @.str.37, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy_config: %u %u %u %u %u %u %u\0A\00", [62 x i8] zeroinitializer }, align 32
@mixel_dphy_set_pll_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid CM/CN/CO values! (%u/%u/%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mixel_dphy_set_pll_params\00", [38 x i8] zeroinitializer }, align 32
@mixel_dphy_set_pll_params._entry_ptr = internal global ptr @mixel_dphy_set_pll_params._entry, section ".printk_index", align 4
@mixel_dphy_set_pll_params.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Using CM:%u CN:%u CO:%u\0A\00", [39 x i8] zeroinitializer }, align 32
@mixel_dphy_devdata = internal constant { [1 x %struct.mixel_dphy_devdata], [27 x i8] } { [1 x %struct.mixel_dphy_devdata] [%struct.mixel_dphy_devdata { i8 56, i8 60, i8 64, i8 68, i8 72 }], [27 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"mixel_dphy_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 484, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 487, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"mixel_dphy_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 424, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"mixel_dphy_regmap_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 102, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 455, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 458, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 462, i32 47 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 464, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 467, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"mixel_dphy_phy_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 414, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 474, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 107, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 117, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 391, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 173, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 198, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 200, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 206, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 216, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 221, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 238, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 279, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 308, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 312, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [19 x i8] c"mixel_dphy_devdata\00", align 1
@___asan_gen_.177 = private constant [50 x i8] c"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 70, i32 40 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_mixel_dphy_driver_exit, ptr @__initcall__kmod_phy_fsl_imx8_mipi_dphy__294_491_mixel_dphy_driver_init6, ptr @mixel_dphy_config_from_opts._entry, ptr @mixel_dphy_config_from_opts._entry.23, ptr @mixel_dphy_config_from_opts._entry.26, ptr @mixel_dphy_config_from_opts._entry.31, ptr @mixel_dphy_config_from_opts._entry.34, ptr @mixel_dphy_config_from_opts._entry_ptr, ptr @mixel_dphy_config_from_opts._entry_ptr.25, ptr @mixel_dphy_config_from_opts._entry_ptr.28, ptr @mixel_dphy_config_from_opts._entry_ptr.33, ptr @mixel_dphy_config_from_opts._entry_ptr.36, ptr @mixel_dphy_driver_exit, ptr @mixel_dphy_power_on._entry, ptr @mixel_dphy_power_on._entry_ptr, ptr @mixel_dphy_probe._entry, ptr @mixel_dphy_probe._entry.13, ptr @mixel_dphy_probe._entry.8, ptr @mixel_dphy_probe._entry_ptr, ptr @mixel_dphy_probe._entry_ptr.10, ptr @mixel_dphy_probe._entry_ptr.15, ptr @mixel_dphy_set_pll_params._entry, ptr @mixel_dphy_set_pll_params._entry_ptr, ptr @phy_write._entry, ptr @phy_write._entry_ptr, ptr @mixel_dphy_driver, ptr @.str, ptr @mixel_dphy_of_match, ptr @mixel_dphy_probe._key, ptr @mixel_dphy_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @mixel_dphy_phy_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @mixel_dphy_devdata], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_config_from_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_config_from_opts._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_config_from_opts._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_config_from_opts._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_config_from_opts._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_set_pll_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixel_dphy_devdata to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mixel_dphy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mixel_dphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mixel_dphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %devdata = getelementptr inbounds %struct.mixel_dphy_priv, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %devdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %devdata, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call17 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call11, ptr noundef nonnull @mixel_dphy_regmap_config, ptr noundef nonnull @mixel_dphy_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.mixel_dphy_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call17, ptr %regmap, align 4
  %cmp.i92 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %phy_ref_clk = getelementptr inbounds %struct.mixel_dphy_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %phy_ref_clk, align 4
  %cmp.i93 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %do.end31, label %do.body35

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %9 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_ref_clk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

do.body35:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixel_dphy_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixel_dphy_probe, %if.then41)) #6
          to label %do.end46 [label %if.then41], !srcloc !106

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_ref_clk, align 4
  %call43 = tail call i32 @clk_get_rate(ptr noundef %13) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixel_dphy_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call43) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.body35
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call47 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %1, ptr noundef nonnull @mixel_dphy_phy_ops) #6
  %cmp.i94 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %do.end52, label %if.end55

do.end52:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %15) #9
  br label %cleanup

if.end55:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call47, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call56 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %call56 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %17, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end52, %do.end31, %do.end, %if.then13, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then13 ], [ %7, %do.end ], [ %11, %do.end31 ], [ %15, %do.end52 ], [ %spec.select.i, %if.end55 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_init(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 28, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.phy_write.exit_crit_edge

entry.phy_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 28, i32 noundef %call1.i) #9
  br label %phy_write.exit

phy_write.exit:                                   ; preds = %do.end.i, %entry.phy_write.exit_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i4 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i4, align 4
  %call1.i5 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %cmp.i6 = icmp slt i32 %call1.i5, 0
  br i1 %cmp.i6, label %do.end.i7, label %phy_write.exit.phy_write.exit8_crit_edge

phy_write.exit.phy_write.exit8_crit_edge:         ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit8

do.end.i7:                                        ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call1.i5) #9
  br label %phy_write.exit8

phy_write.exit8:                                  ; preds = %do.end.i7, %phy_write.exit.phy_write.exit8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_exit(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 40, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.phy_write.exit_crit_edge

entry.phy_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 40, i32 noundef %call1.i) #9
  br label %phy_write.exit

phy_write.exit:                                   ; preds = %do.end.i, %entry.phy_write.exit_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i6 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i6, align 4
  %call1.i7 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %cmp.i8 = icmp slt i32 %call1.i7, 0
  br i1 %cmp.i8, label %do.end.i9, label %phy_write.exit.phy_write.exit10_crit_edge

phy_write.exit.phy_write.exit10_crit_edge:        ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit10

do.end.i9:                                        ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 36, i32 noundef %call1.i7) #9
  br label %phy_write.exit10

phy_write.exit10:                                 ; preds = %do.end.i9, %phy_write.exit.phy_write.exit10_crit_edge
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i12 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i12, align 4
  %call1.i13 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %cmp.i14 = icmp slt i32 %call1.i13, 0
  br i1 %cmp.i14, label %do.end.i15, label %phy_write.exit10.phy_write.exit16_crit_edge

phy_write.exit10.phy_write.exit16_crit_edge:      ; preds = %phy_write.exit10
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit16

do.end.i15:                                       ; preds = %phy_write.exit10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 44, i32 noundef %call1.i13) #9
  br label %phy_write.exit16

phy_write.exit16:                                 ; preds = %do.end.i15, %phy_write.exit10.phy_write.exit16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_power_on(ptr noundef %phy) #2 align 64 {
entry:
  %locked = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked) #6
  %2 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %locked, align 4, !annotation !107
  %phy_ref_clk = getelementptr inbounds %struct.mixel_dphy_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %4) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call1.i60 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 28, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %cmp.i = icmp slt i32 %call1.i60, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.phy_write.exit_crit_edge

if.end.phy_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 28, i32 noundef %call1.i60) #9
  br label %phy_write.exit

phy_write.exit:                                   ; preds = %do.end.i, %if.end.phy_write.exit_crit_edge
  %call3 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call3, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 389) #6
  %regmap = getelementptr inbounds %struct.mixel_dphy_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1486 = call i32 @regmap_read(ptr noundef %10, i32 noundef 48, ptr noundef nonnull %locked) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1486)
  %tobool.not87 = icmp eq i32 %call1486, 0
  br i1 %tobool.not87, label %phy_write.exit.lor.lhs.false_crit_edge, label %phy_write.exit.lor.end_crit_edge

phy_write.exit.lor.end_crit_edge:                 ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

phy_write.exit.lor.lhs.false_crit_edge:           ; preds = %phy_write.exit
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then27.lor.lhs.false_crit_edge, %phy_write.exit.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %land.lhs.true, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call19 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %14, i32 noundef 48, ptr noundef nonnull %locked) #6
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then27.lor.lhs.false_crit_edge, label %if.then27.lor.end_crit_edge

if.then27.lor.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

if.then27.lor.lhs.false_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_read(ptr noundef %16, i32 noundef 48, ptr noundef nonnull %locked) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool29.not = icmp eq i32 %call24, 0
  br i1 %tobool29.not, label %lor.rhs, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %for.end
  %17 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool30.not = icmp eq i32 %.pr, 0
  br i1 %tobool30.not, label %lor.rhs.do.end38_crit_edge, label %lor.rhs.if.end39_crit_edge

lor.rhs.if.end39_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

lor.rhs.do.end38_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then27.lor.end_crit_edge, %phy_write.exit.lor.end_crit_edge
  %tobool29.not77 = phi i32 [ %call24, %for.end.lor.end_crit_edge ], [ %call1486, %phy_write.exit.lor.end_crit_edge ], [ %call14, %if.then27.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool29.not77)
  %cmp34 = icmp slt i32 %tobool29.not77, 0
  br i1 %cmp34, label %lor.end.do.end38_crit_edge, label %lor.end.if.end39_crit_edge

lor.end.if.end39_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

lor.end.do.end38_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.end38:                                         ; preds = %lor.end.do.end38_crit_edge, %lor.rhs.do.end38_crit_edge
  %tobool29.not7790 = phi i32 [ %tobool29.not77, %lor.end.do.end38_crit_edge ], [ -110, %lor.rhs.do.end38_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.19, i32 noundef %tobool29.not7790) #9
  %18 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_ref_clk, align 4
  call void @clk_disable(ptr noundef %19) #6
  call void @clk_unprepare(ptr noundef %19) #6
  br label %cleanup

if.end39:                                         ; preds = %lor.end.if.end39_crit_edge, %lor.rhs.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i65 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i65, align 4
  %call1.i66 = call i32 @regmap_write(ptr noundef %23, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %cmp.i67 = icmp slt i32 %call1.i66, 0
  br i1 %cmp.i67, label %do.end.i68, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i68:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call1.i66) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i68, %if.end39.cleanup_crit_edge, %do.end38, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool29.not7790, %do.end38 ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %do.end.i68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_power_off(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 28, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.phy_write.exit_crit_edge

entry.phy_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 28, i32 noundef %call1.i) #9
  br label %phy_write.exit

phy_write.exit:                                   ; preds = %do.end.i, %entry.phy_write.exit_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i6 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i6, align 4
  %call1.i7 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %cmp.i8 = icmp slt i32 %call1.i7, 0
  br i1 %cmp.i8, label %do.end.i9, label %phy_write.exit.phy_write.exit10_crit_edge

phy_write.exit.phy_write.exit10_crit_edge:        ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit10

do.end.i9:                                        ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call1.i7) #9
  br label %phy_write.exit10

phy_write.exit10:                                 ; preds = %do.end.i9, %phy_write.exit.phy_write.exit10_crit_edge
  %phy_ref_clk = getelementptr inbounds %struct.mixel_dphy_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_ref_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_configure(ptr noundef %phy, ptr nocapture noundef readonly %opts) #2 align 64 {
entry:
  %cfg = alloca %struct.mixel_dphy_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #6
  %2 = call ptr @memset(ptr %cfg, i32 0, i32 20)
  %call1 = call fastcc i32 @mixel_dphy_config_from_opts(ptr noundef %phy, ptr noundef %opts, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memcpy(ptr %1, ptr %cfg, i32 20)
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 52, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.phy_write.exit_crit_edge

if.end.phy_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 52, i32 noundef %call1.i) #9
  br label %phy_write.exit

phy_write.exit:                                   ; preds = %do.end.i, %if.end.phy_write.exit_crit_edge
  %devdata = getelementptr inbounds %struct.mixel_dphy_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devdata, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i38 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i38, align 4
  %call1.i39 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %conv, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %cmp.i40 = icmp slt i32 %call1.i39, 0
  br i1 %cmp.i40, label %do.end.i41, label %phy_write.exit.phy_write.exit42_crit_edge

phy_write.exit.phy_write.exit42_crit_edge:        ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit42

do.end.i41:                                       ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %call1.i39) #9
  br label %phy_write.exit42

phy_write.exit42:                                 ; preds = %do.end.i41, %phy_write.exit.phy_write.exit42_crit_edge
  %16 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devdata, align 4
  %reg_auto_pd_en = getelementptr inbounds %struct.mixel_dphy_devdata, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %reg_auto_pd_en to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg_auto_pd_en, align 1
  %conv6 = zext i8 %19 to i32
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i44 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i44, align 4
  %call1.i45 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %conv6, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %cmp.i46 = icmp slt i32 %call1.i45, 0
  br i1 %cmp.i46, label %do.end.i47, label %phy_write.exit42.phy_write.exit48_crit_edge

phy_write.exit42.phy_write.exit48_crit_edge:      ; preds = %phy_write.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit48

do.end.i47:                                       ; preds = %phy_write.exit42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef %conv6, i32 noundef %call1.i45) #9
  br label %phy_write.exit48

phy_write.exit48:                                 ; preds = %do.end.i47, %phy_write.exit42.phy_write.exit48_crit_edge
  %24 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devdata, align 4
  %reg_rxlprp = getelementptr inbounds %struct.mixel_dphy_devdata, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %reg_rxlprp to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_rxlprp, align 1
  %conv9 = zext i8 %27 to i32
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i50 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i50, align 4
  %call1.i51 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %conv9, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %cmp.i52 = icmp slt i32 %call1.i51, 0
  br i1 %cmp.i52, label %do.end.i53, label %phy_write.exit48.phy_write.exit54_crit_edge

phy_write.exit48.phy_write.exit54_crit_edge:      ; preds = %phy_write.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit54

do.end.i53:                                       ; preds = %phy_write.exit48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef %conv9, i32 noundef %call1.i51) #9
  br label %phy_write.exit54

phy_write.exit54:                                 ; preds = %do.end.i53, %phy_write.exit48.phy_write.exit54_crit_edge
  %32 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %devdata, align 4
  %reg_rxcdrp = getelementptr inbounds %struct.mixel_dphy_devdata, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %reg_rxcdrp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reg_rxcdrp, align 1
  %conv12 = zext i8 %35 to i32
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i56 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %regmap.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i56, align 4
  %call1.i57 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %conv12, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %cmp.i58 = icmp slt i32 %call1.i57, 0
  br i1 %cmp.i58, label %do.end.i59, label %phy_write.exit54.phy_write.exit60_crit_edge

phy_write.exit54.phy_write.exit60_crit_edge:      ; preds = %phy_write.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit60

do.end.i59:                                       ; preds = %phy_write.exit54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef %conv12, i32 noundef %call1.i57) #9
  br label %phy_write.exit60

phy_write.exit60:                                 ; preds = %do.end.i59, %phy_write.exit54.phy_write.exit60_crit_edge
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i62 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap.i62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i62, align 4
  %call1.i63 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 32, i32 noundef 37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %cmp.i64 = icmp slt i32 %call1.i63, 0
  br i1 %cmp.i64, label %do.end.i65, label %phy_write.exit60.phy_write.exit66_crit_edge

phy_write.exit60.phy_write.exit66_crit_edge:      ; preds = %phy_write.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit66

do.end.i65:                                       ; preds = %phy_write.exit60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 32, i32 noundef %call1.i63) #9
  br label %phy_write.exit66

phy_write.exit66:                                 ; preds = %do.end.i65, %phy_write.exit60.phy_write.exit66_crit_edge
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %m_prg_hs_prepare.i = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %m_prg_hs_prepare.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %m_prg_hs_prepare.i, align 1
  %conv.i = zext i8 %47 to i32
  %regmap.i.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 4, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %phy_write.exit66.phy_write.exit.i_crit_edge

phy_write.exit66.phy_write.exit.i_crit_edge:      ; preds = %phy_write.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit.i

do.end.i.i:                                       ; preds = %phy_write.exit66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef %call1.i.i) #9
  br label %phy_write.exit.i

phy_write.exit.i:                                 ; preds = %do.end.i.i, %phy_write.exit66.phy_write.exit.i_crit_edge
  %mc_prg_hs_prepare.i = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %mc_prg_hs_prepare.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mc_prg_hs_prepare.i, align 4
  %conv3.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i36.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %regmap.i36.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i36.i, align 4
  %call1.i37.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 8, i32 noundef %conv3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %cmp.i38.i = icmp slt i32 %call1.i37.i, 0
  br i1 %cmp.i38.i, label %do.end.i39.i, label %phy_write.exit.i.phy_write.exit40.i_crit_edge

phy_write.exit.i.phy_write.exit40.i_crit_edge:    ; preds = %phy_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit40.i

do.end.i39.i:                                     ; preds = %phy_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef %call1.i37.i) #9
  br label %phy_write.exit40.i

phy_write.exit40.i:                               ; preds = %do.end.i39.i, %phy_write.exit.i.phy_write.exit40.i_crit_edge
  %m_prg_hs_zero.i = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %45, i32 0, i32 6
  %56 = ptrtoint ptr %m_prg_hs_zero.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %m_prg_hs_zero.i, align 1
  %conv6.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i42.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %regmap.i42.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i42.i, align 4
  %call1.i43.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 12, i32 noundef %conv6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.i)
  %cmp.i44.i = icmp slt i32 %call1.i43.i, 0
  br i1 %cmp.i44.i, label %do.end.i45.i, label %phy_write.exit40.i.phy_write.exit46.i_crit_edge

phy_write.exit40.i.phy_write.exit46.i_crit_edge:  ; preds = %phy_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit46.i

do.end.i45.i:                                     ; preds = %phy_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 12, i32 noundef %call1.i43.i) #9
  br label %phy_write.exit46.i

phy_write.exit46.i:                               ; preds = %do.end.i45.i, %phy_write.exit40.i.phy_write.exit46.i_crit_edge
  %mc_prg_hs_zero.i = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %45, i32 0, i32 5
  %62 = ptrtoint ptr %mc_prg_hs_zero.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mc_prg_hs_zero.i, align 2
  %conv9.i = zext i8 %63 to i32
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i48.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %regmap.i48.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i48.i, align 4
  %call1.i49.i = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 16, i32 noundef %conv9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %cmp.i50.i = icmp slt i32 %call1.i49.i, 0
  br i1 %cmp.i50.i, label %do.end.i51.i, label %phy_write.exit46.i.phy_write.exit52.i_crit_edge

phy_write.exit46.i.phy_write.exit52.i_crit_edge:  ; preds = %phy_write.exit46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit52.i

do.end.i51.i:                                     ; preds = %phy_write.exit46.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 16, i32 noundef %call1.i49.i) #9
  br label %phy_write.exit52.i

phy_write.exit52.i:                               ; preds = %do.end.i51.i, %phy_write.exit46.i.phy_write.exit52.i_crit_edge
  %m_prg_hs_trail.i = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %45, i32 0, i32 8
  %68 = ptrtoint ptr %m_prg_hs_trail.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %m_prg_hs_trail.i, align 1
  %conv12.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i54.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %regmap.i54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i54.i, align 4
  %call1.i55.i = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 20, i32 noundef %conv12.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55.i)
  %cmp.i56.i = icmp slt i32 %call1.i55.i, 0
  br i1 %cmp.i56.i, label %do.end.i57.i, label %phy_write.exit52.i.phy_write.exit58.i_crit_edge

phy_write.exit52.i.phy_write.exit58.i_crit_edge:  ; preds = %phy_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit58.i

do.end.i57.i:                                     ; preds = %phy_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 20, i32 noundef %call1.i55.i) #9
  br label %phy_write.exit58.i

phy_write.exit58.i:                               ; preds = %do.end.i57.i, %phy_write.exit52.i.phy_write.exit58.i_crit_edge
  %mc_prg_hs_trail.i = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %45, i32 0, i32 7
  %74 = ptrtoint ptr %mc_prg_hs_trail.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mc_prg_hs_trail.i, align 4
  %conv15.i = zext i8 %75 to i32
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i60.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %regmap.i60.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i60.i, align 4
  %call1.i61.i = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 24, i32 noundef %conv15.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61.i)
  %cmp.i62.i = icmp slt i32 %call1.i61.i, 0
  br i1 %cmp.i62.i, label %do.end.i63.i, label %phy_write.exit58.i.phy_write.exit64.i_crit_edge

phy_write.exit58.i.phy_write.exit64.i_crit_edge:  ; preds = %phy_write.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit64.i

do.end.i63.i:                                     ; preds = %phy_write.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 24, i32 noundef %call1.i61.i) #9
  br label %phy_write.exit64.i

phy_write.exit64.i:                               ; preds = %do.end.i63.i, %phy_write.exit58.i.phy_write.exit64.i_crit_edge
  %rxhs_settle.i = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %45, i32 0, i32 9
  %80 = ptrtoint ptr %rxhs_settle.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rxhs_settle.i, align 2
  %conv18.i = zext i8 %81 to i32
  %devdata.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %45, i32 0, i32 3
  %82 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %devdata.i, align 4
  %reg_rxhs_settle.i = getelementptr inbounds %struct.mixel_dphy_devdata, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %reg_rxhs_settle.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %reg_rxhs_settle.i, align 1
  %conv19.i = zext i8 %85 to i32
  %86 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i66.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %regmap.i66.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i66.i, align 4
  %call1.i67.i = tail call i32 @regmap_write(ptr noundef %89, i32 noundef %conv19.i, i32 noundef %conv18.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i)
  %cmp.i68.i = icmp slt i32 %call1.i67.i, 0
  br i1 %cmp.i68.i, label %do.end.i69.i, label %phy_write.exit64.i.mixel_phy_set_hs_timings.exit_crit_edge

phy_write.exit64.i.mixel_phy_set_hs_timings.exit_crit_edge: ; preds = %phy_write.exit64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixel_phy_set_hs_timings.exit

do.end.i69.i:                                     ; preds = %phy_write.exit64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef %conv19.i, i32 noundef %call1.i67.i) #9
  br label %mixel_phy_set_hs_timings.exit

mixel_phy_set_hs_timings.exit:                    ; preds = %do.end.i69.i, %phy_write.exit64.i.mixel_phy_set_hs_timings.exit_crit_edge
  %call15 = tail call fastcc i32 @mixel_dphy_set_pll_params(ptr noundef %phy)
  %90 = tail call i32 @llvm.smin.i32(i32 %call15, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %mixel_phy_set_hs_timings.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %90, %mixel_phy_set_hs_timings.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixel_dphy_validate(ptr noundef %phy, i32 noundef %mode, i32 noundef %submode, ptr nocapture noundef readonly %opts) #2 align 64 {
entry:
  %cfg = alloca %struct.mixel_dphy_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #6
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call fastcc i32 @mixel_dphy_config_from_opts(ptr noundef %phy, ptr noundef %opts, ptr noundef nonnull %cfg)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mixel_dphy_config_from_opts(ptr noundef %phy, ptr nocapture noundef readonly %dphy_opts, ptr nocapture noundef %cfg) unnamed_addr #2 align 64 {
entry:
  %n.i = alloca [2 x i32], align 8
  %d.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %phy_ref_clk = getelementptr inbounds %struct.mixel_dphy_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_ref_clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %hs_clk_rate = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %dphy_opts, i32 0, i32 22
  %6 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hs_clk_rate, align 4
  %8 = add i32 %7, -1500000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1420000001, i32 %8)
  %9 = icmp ult i32 %8, -1420000001
  br i1 %9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.i) #6
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1, ptr %n.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d.i) #6
  %11 = ptrtoint ptr %d.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 4294967296, ptr %d.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not1.i = icmp eq i32 %call1, 0
  br i1 %tobool.not1.i, label %if.end.get_best_ratio.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.get_best_ratio.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_best_ratio.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %i.04.i = phi i32 [ %xor.i, %if.end.i.while.body.i_crit_edge ], [ 1, %if.end.while.body.i_crit_edge ]
  %b.03.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ %call1, %if.end.while.body.i_crit_edge ]
  %a.02.i = phi i32 [ %b.03.i, %if.end.i.while.body.i_crit_edge ], [ %7, %if.end.while.body.i_crit_edge ]
  %xor.i = xor i32 %i.04.i, 1
  %div.i = udiv i32 %a.02.i, %b.03.i
  %arrayidx.i = getelementptr [2 x i32], ptr %n.i, i32 0, i32 %i.04.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %13, %div.i
  %arrayidx2.i = getelementptr [2 x i32], ptr %n.i, i32 0, i32 %xor.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %15, %mul.i
  store i32 %add.i, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr [2 x i32], ptr %d.i, i32 0, i32 %i.04.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %mul5.i = mul i32 %17, %div.i
  %arrayidx6.i = getelementptr [2 x i32], ptr %d.i, i32 0, i32 %xor.i
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %19, %mul5.i
  store i32 %add7.i, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add7.i)
  %cmp10.i = icmp ugt i32 %add7.i, 256
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %while.body.i.get_best_ratio.exit_crit_edge, label %if.end.i

while.body.i.get_best_ratio.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_best_ratio.exit

if.end.i:                                         ; preds = %while.body.i
  %mul12.i = mul nuw i32 %div.i, %b.03.i
  %sub.i = sub nuw i32 %a.02.i, %mul12.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.i.get_best_ratio.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.get_best_ratio.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_best_ratio.exit

get_best_ratio.exit:                              ; preds = %if.end.i.get_best_ratio.exit_crit_edge, %while.body.i.get_best_ratio.exit_crit_edge, %if.end.get_best_ratio.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 1, %if.end.get_best_ratio.exit_crit_edge ], [ %xor.i, %if.end.i.get_best_ratio.exit_crit_edge ], [ %i.04.i, %while.body.i.get_best_ratio.exit_crit_edge ]
  %arrayidx13.i = getelementptr [2 x i32], ptr %n.i, i32 0, i32 %i.0.lcssa.i
  %20 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr [2 x i32], ptr %d.i, i32 0, i32 %i.0.lcssa.i
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not = icmp eq i32 %23, 0
  %or.cond977 = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond977, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %get_best_ratio.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %cmp11985 = icmp ult i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %23)
  %cmp12986 = icmp ult i32 %23, 129
  %or.cond978987 = select i1 %cmp11985, i1 %cmp12986, i1 false
  br i1 %or.cond978987, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.end:                                           ; preds = %get_best_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.21, i32 noundef %21, i32 noundef %23, i32 noundef %7, i32 noundef %call1) #9
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %denominator.0989 = phi i32 [ %shl13, %while.body.while.body_crit_edge ], [ %23, %while.cond.preheader.while.body_crit_edge ]
  %numerator.0988 = phi i32 [ %shl, %while.body.while.body_crit_edge ], [ %21, %while.cond.preheader.while.body_crit_edge ]
  %shl = shl nuw nsw i32 %numerator.0988, 1
  %shl13 = shl nuw nsw i32 %denominator.0989, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %numerator.0988)
  %cmp11 = icmp ult i32 %numerator.0988, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %denominator.0989)
  %cmp12 = icmp ult i32 %denominator.0989, 65
  %or.cond978 = select i1 %cmp11, i1 %cmp12, i1 false
  br i1 %or.cond978, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %numerator.0.lcssa = phi i32 [ %21, %while.cond.preheader.while.end_crit_edge ], [ %shl, %while.body.while.end_crit_edge ]
  %denominator.0.lcssa = phi i32 [ %23, %while.cond.preheader.while.end_crit_edge ], [ %shl13, %while.body.while.end_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %denominator.0.lcssa, i1 false) #6, !range !108
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 3)
  %shr = lshr i32 %denominator.0.lcssa, %25
  %cn = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 1
  %26 = ptrtoint ptr %cn to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr, ptr %cn, align 4
  %shl18 = shl nuw nsw i32 1, %25
  %co = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 2
  %27 = ptrtoint ptr %co to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl18, ptr %co, align 4
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %numerator.0.lcssa, ptr %cfg, align 4
  %29 = add i32 %numerator.0.lcssa, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -240, i32 %29)
  %30 = icmp ult i32 %29, -240
  %31 = add i32 %shr, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %31)
  %32 = icmp ult i32 %31, -32
  %or.cond = select i1 %30, i1 true, i1 %32
  br i1 %or.cond, label %do.end39, label %do.body50

do.end39:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.24, i32 noundef %numerator.0.lcssa, i32 noundef %shr, i32 noundef %shl18) #9
  %33 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hs_clk_rate, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.27, i32 noundef %34, i32 noundef %call1, i32 noundef %numerator.0.lcssa, i32 noundef %denominator.0.lcssa) #9
  br label %cleanup

do.body50:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixel_dphy_config_from_opts, %if.then56)) #6
          to label %do.end61 [label %if.then56], !srcloc !106

if.then56:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hs_clk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug289, ptr noundef %phy, ptr noundef nonnull @.str.29, i32 noundef %36, i32 noundef %call1, i32 noundef %numerator.0.lcssa, i32 noundef %denominator.0.lcssa) #6
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %do.body50
  %lp_clk_rate = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %dphy_opts, i32 0, i32 23
  %37 = ptrtoint ptr %lp_clk_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lp_clk_rate, align 4
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %38, i64 1000000000000) #10, !srcloc !109
  %asmresult1.i = extractvalue { i64, i64 } %39, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %asmresult1.i)
  %cmp253 = icmp ugt i64 %asmresult1.i, 4294967295
  br i1 %cmp253, label %do.end61.cleanup_crit_edge, label %if.end256

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end256:                                        ; preds = %do.end61
  %conv257 = trunc i64 %asmresult1.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixel_dphy_config_from_opts, %if.then270)) #6
          to label %do.end275 [label %if.then270], !srcloc !106

if.then270:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %lp_clk_rate to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lp_clk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug290, ptr noundef %phy, ptr noundef nonnull @.str.30, i32 noundef %41, i32 noundef %conv257) #6
  br label %do.end275

do.end275:                                        ; preds = %if.then270, %if.end256
  %hs_prepare = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %dphy_opts, i32 0, i32 11
  %42 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hs_prepare, align 4
  %mul276 = shl i32 %43, 1
  %mul277 = mul i32 %conv257, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul276, i32 %mul277)
  %cmp278 = icmp ugt i32 %mul276, %mul277
  br i1 %cmp278, label %do.end283, label %if.end286

do.end283:                                        ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.32, i32 noundef %43, i32 noundef %conv257) #9
  br label %cleanup

if.end286:                                        ; preds = %do.end275
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv257)
  %cmp288 = icmp ult i32 %43, %conv257
  br i1 %cmp288, label %if.end286.if.end518_crit_edge, label %if.then505

if.end286.if.end518_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end518

if.then505:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  %sub293 = sub i32 %43, %conv257
  %mul294 = shl i32 %sub293, 1
  %div509 = udiv i32 %mul294, %conv257
  %extract.t982 = trunc i32 %div509 to i8
  br label %if.end518

if.end518:                                        ; preds = %if.then505, %if.end286.if.end518_crit_edge
  %n.0 = phi i8 [ 0, %if.end286.if.end518_crit_edge ], [ %extract.t982, %if.then505 ]
  %m_prg_hs_prepare = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 4
  %44 = ptrtoint ptr %m_prg_hs_prepare to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %n.0, ptr %m_prg_hs_prepare, align 1
  %clk_prepare = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %dphy_opts, i32 0, i32 3
  %45 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clk_prepare, align 4
  %mul520 = shl i32 %46, 1
  %mul521 = mul i32 %conv257, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul520, i32 %mul521)
  %cmp522 = icmp ugt i32 %mul520, %mul521
  br i1 %cmp522, label %do.end527, label %if.end530

do.end527:                                        ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.35, i32 noundef %46, i32 noundef %conv257) #9
  br label %cleanup

if.end530:                                        ; preds = %if.end518
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv257)
  %cmp532 = icmp ugt i32 %46, %conv257
  %conv535 = zext i1 %cmp532 to i8
  %mc_prg_hs_prepare = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 3
  %47 = ptrtoint ptr %mc_prg_hs_prepare to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv535, ptr %mc_prg_hs_prepare, align 4
  %48 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hs_clk_rate, align 4
  %div537 = udiv i32 %49, 1000000
  %mul538 = mul nuw nsw i32 %div537, 144
  %sub539 = add nsw i32 %mul538, -47500
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %sub539)
  %50 = icmp ult i32 %sub539, 10000
  %div540 = udiv i32 %sub539, 10000
  %phi.cast906 = trunc i32 %div540 to i8
  %cond546 = select i1 %50, i8 1, i8 %phi.cast906
  %m_prg_hs_zero = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 6
  %51 = ptrtoint ptr %m_prg_hs_zero to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %cond546, ptr %m_prg_hs_zero, align 1
  %52 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hs_clk_rate, align 4
  %div549 = udiv i32 %53, 1000000
  %mul550 = mul nuw nsw i32 %div549, 34
  %sub551 = add nsw i32 %mul550, -2500
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub551)
  %54 = icmp ult i32 %sub551, 1000
  %div552 = udiv i32 %sub551, 1000
  %phi.cast907 = trunc i32 %div552 to i8
  %cond558 = select i1 %54, i8 1, i8 %phi.cast907
  %mc_prg_hs_zero = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 5
  %55 = ptrtoint ptr %mc_prg_hs_zero to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %cond558, ptr %mc_prg_hs_zero, align 2
  %56 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hs_clk_rate, align 4
  %div561 = udiv i32 %57, 1000000
  %mul562 = mul nuw nsw i32 %div561, 103
  %add563 = add nuw nsw i32 %mul562, 10000
  %div564 = udiv i32 %add563, 10000
  %58 = tail call i32 @llvm.umin.i32(i32 %div564, i32 15)
  %conv573 = trunc i32 %58 to i8
  %m_prg_hs_trail = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 8
  %59 = ptrtoint ptr %m_prg_hs_trail to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv573, ptr %m_prg_hs_trail, align 1
  %mc_prg_hs_trail = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 7
  %60 = ptrtoint ptr %mc_prg_hs_trail to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv573, ptr %mc_prg_hs_trail, align 4
  %61 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hs_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %62)
  %cmp576 = icmp ult i32 %62, 80000000
  br i1 %cmp576, label %if.then578, label %if.else579

if.then578:                                       ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #8
  %rxhs_settle = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 9
  %63 = ptrtoint ptr %rxhs_settle to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 13, ptr %rxhs_settle, align 2
  br label %do.body617

if.else579:                                       ; preds = %if.end530
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %62)
  %cmp581 = icmp ult i32 %62, 90000000
  br i1 %cmp581, label %if.then583, label %if.else585

if.then583:                                       ; preds = %if.else579
  call void @__sanitizer_cov_trace_pc() #8
  %rxhs_settle584 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 9
  %64 = ptrtoint ptr %rxhs_settle584 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 12, ptr %rxhs_settle584, align 2
  br label %do.body617

if.else585:                                       ; preds = %if.else579
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000000, i32 %62)
  %cmp587 = icmp ult i32 %62, 125000000
  br i1 %cmp587, label %if.then589, label %if.else591

if.then589:                                       ; preds = %if.else585
  call void @__sanitizer_cov_trace_pc() #8
  %rxhs_settle590 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 9
  %65 = ptrtoint ptr %rxhs_settle590 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 11, ptr %rxhs_settle590, align 2
  br label %do.body617

if.else591:                                       ; preds = %if.else585
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %62)
  %cmp593 = icmp ult i32 %62, 150000000
  br i1 %cmp593, label %if.then595, label %if.else597

if.then595:                                       ; preds = %if.else591
  call void @__sanitizer_cov_trace_pc() #8
  %rxhs_settle596 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 9
  %66 = ptrtoint ptr %rxhs_settle596 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 10, ptr %rxhs_settle596, align 2
  br label %do.body617

if.else597:                                       ; preds = %if.else591
  call void @__sanitizer_cov_trace_const_cmp4(i32 225000000, i32 %62)
  %cmp599 = icmp ult i32 %62, 225000000
  br i1 %cmp599, label %if.then601, label %if.else603

if.then601:                                       ; preds = %if.else597
  call void @__sanitizer_cov_trace_pc() #8
  %rxhs_settle602 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 9
  %67 = ptrtoint ptr %rxhs_settle602 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 9, ptr %rxhs_settle602, align 2
  br label %do.body617

if.else603:                                       ; preds = %if.else597
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %62)
  %cmp605 = icmp ult i32 %62, 500000000
  %rxhs_settle608 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 9
  br i1 %cmp605, label %if.then607, label %if.else609

if.then607:                                       ; preds = %if.else603
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %rxhs_settle608 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 8, ptr %rxhs_settle608, align 2
  br label %do.body617

if.else609:                                       ; preds = %if.else603
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %rxhs_settle608 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 7, ptr %rxhs_settle608, align 2
  br label %do.body617

do.body617:                                       ; preds = %if.else609, %if.then607, %if.then601, %if.then595, %if.then589, %if.then583, %if.then578
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixel_dphy_config_from_opts, %if.then629)) #6
          to label %cleanup [label %if.then629], !srcloc !106

if.then629:                                       ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %m_prg_hs_prepare to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %m_prg_hs_prepare, align 1
  %conv632 = zext i8 %71 to i32
  %72 = ptrtoint ptr %mc_prg_hs_prepare to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mc_prg_hs_prepare, align 4
  %conv634 = zext i8 %73 to i32
  %74 = ptrtoint ptr %m_prg_hs_zero to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %m_prg_hs_zero, align 1
  %conv636 = zext i8 %75 to i32
  %76 = ptrtoint ptr %mc_prg_hs_zero to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mc_prg_hs_zero, align 2
  %conv638 = zext i8 %77 to i32
  %78 = ptrtoint ptr %m_prg_hs_trail to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %m_prg_hs_trail, align 1
  %conv640 = zext i8 %79 to i32
  %80 = ptrtoint ptr %mc_prg_hs_trail to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %mc_prg_hs_trail, align 4
  %conv642 = zext i8 %81 to i32
  %rxhs_settle643 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %cfg, i32 0, i32 9
  %82 = ptrtoint ptr %rxhs_settle643 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rxhs_settle643, align 2
  %conv644 = zext i8 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug291, ptr noundef %phy, ptr noundef nonnull @.str.37, i32 noundef %conv632, i32 noundef %conv634, i32 noundef %conv636, i32 noundef %conv638, i32 noundef %conv640, i32 noundef %conv642, i32 noundef %conv644) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then629, %do.body617, %do.end527, %do.end283, %do.end61.cleanup_crit_edge, %do.end39, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end39 ], [ -22, %do.end283 ], [ -22, %do.end527 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end61.cleanup_crit_edge ], [ 0, %if.then629 ], [ 0, %do.body617 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mixel_dphy_set_pll_params(ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -240, i32 %6)
  %7 = icmp ult i32 %6, -240
  br i1 %7, label %entry.do.end_crit_edge, label %lor.lhs.false4

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false4:                                   ; preds = %entry
  %cn = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cn, align 4
  %10 = add i32 %9, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %10)
  %11 = icmp ult i32 %10, -32
  br i1 %11, label %lor.lhs.false4.do.end_crit_edge, label %lor.lhs.false11

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false11:                                  ; preds = %lor.lhs.false4
  %co = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %co to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %co, align 4
  %14 = add i32 %13, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %14)
  %15 = icmp ult i32 %14, -8
  br i1 %15, label %lor.lhs.false11.do.end_crit_edge, label %do.body25

lor.lhs.false11.do.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false11.do.end_crit_edge, %lor.lhs.false4.do.end_crit_edge, %entry.do.end_crit_edge
  %cn22 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %cn22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cn22, align 4
  %co24 = getelementptr inbounds %struct.mixel_dphy_cfg, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %co24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %co24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.38, i32 noundef %5, i32 noundef %17, i32 noundef %19) #9
  br label %cleanup

do.body25:                                        ; preds = %lor.lhs.false11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixel_dphy_set_pll_params.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixel_dphy_set_pll_params, %if.then29)) #6
          to label %do.end39 [label %if.then29], !srcloc !106

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %22 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cn, align 4
  %24 = ptrtoint ptr %co to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %co, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixel_dphy_set_pll_params.__UNIQUE_ID_ddebug292, ptr noundef %phy, ptr noundef nonnull @.str.40, i32 noundef %21, i32 noundef %23, i32 noundef %25) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then29, %do.body25
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp42 = icmp ult i32 %27, 32
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %27, -16
  %or = or i32 %sub, 224
  br label %cond.end68

cond.false:                                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %27)
  %cmp47 = icmp ult i32 %27, 64
  br i1 %cmp47, label %cond.true48, label %cond.false53

cond.true48:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %sub51 = add nsw i32 %27, -32
  %or52 = or i32 %sub51, 192
  br label %cond.end68

cond.false53:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %27)
  %cmp56 = icmp ult i32 %27, 128
  br i1 %cmp56, label %cond.true57, label %cond.false62

cond.true57:                                      ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #8
  %sub60 = add nsw i32 %27, -64
  %or61 = or i32 %sub60, 128
  br label %cond.end68

cond.false62:                                     ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #8
  %sub65 = add i32 %27, -128
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false62, %cond.true57, %cond.true48, %cond.true
  %cond69 = phi i32 [ %or, %cond.true ], [ %or52, %cond.true48 ], [ %or61, %cond.true57 ], [ %sub65, %cond.false62 ]
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mixel_dphy_priv, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 40, i32 noundef %cond69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %cond.end68.phy_write.exit_crit_edge

cond.end68.phy_write.exit_crit_edge:              ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit

do.end.i:                                         ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 40, i32 noundef %call1.i) #9
  br label %phy_write.exit

phy_write.exit:                                   ; preds = %do.end.i, %cond.end68.phy_write.exit_crit_edge
  %32 = ptrtoint ptr %cn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp73 = icmp eq i32 %33, 1
  %sub78 = add i32 %33, -1
  %shr = lshr i32 -881161792, %sub78
  %and = and i32 %shr, 31
  %cond80 = select i1 %cmp73, i32 31, i32 %and
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i121 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %regmap.i121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i121, align 4
  %call1.i122 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 36, i32 noundef %cond80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %cmp.i123 = icmp slt i32 %call1.i122, 0
  br i1 %cmp.i123, label %do.end.i124, label %phy_write.exit.phy_write.exit125_crit_edge

phy_write.exit.phy_write.exit125_crit_edge:       ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_write.exit125

do.end.i124:                                      ; preds = %phy_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 36, i32 noundef %call1.i122) #9
  br label %phy_write.exit125

phy_write.exit125:                                ; preds = %do.end.i124, %phy_write.exit.phy_write.exit125_crit_edge
  %38 = ptrtoint ptr %co to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %co, align 4
  %sub84 = sub i32 8, %39
  %shr85 = lshr i32 99, %sub84
  %and86 = and i32 %shr85, 3
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i127 = getelementptr inbounds %struct.mixel_dphy_priv, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap.i127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i127, align 4
  %call1.i128 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 44, i32 noundef %and86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %cmp.i129 = icmp slt i32 %call1.i128, 0
  br i1 %cmp.i129, label %do.end.i130, label %phy_write.exit125.cleanup_crit_edge

phy_write.exit125.cleanup_crit_edge:              ; preds = %phy_write.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i130:                                      ; preds = %phy_write.exit125
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.17, i32 noundef 44, i32 noundef %call1.i128) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i130, %phy_write.exit125.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %phy_write.exit125.cleanup_crit_edge ], [ 0, %do.end.i130 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
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
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_phy_fsl_imx8_mipi_dphy__294_491_mixel_dphy_driver_init6, !1, !"__initcall__kmod_phy_fsl_imx8_mipi_dphy__294_491_mixel_dphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 491, i32 1}
!2 = !{ptr @__exitcall_mixel_dphy_driver_exit, !1, !"__exitcall_mixel_dphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 493, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 494, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 495, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 487, i32 11}
!12 = !{ptr @mixel_dphy_driver, !13, !"mixel_dphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 484, i32 31}
!14 = !{ptr @mixel_dphy_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 455, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 458, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mixel_dphy_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mixel_dphy_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 462, i32 47}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 464, i32 3}
!29 = !{ptr @mixel_dphy_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mixel_dphy_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 467, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mixel_dphy_probe.__UNIQUE_ID_ddebug293, !32, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 474, i32 3}
!37 = !{ptr @mixel_dphy_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mixel_dphy_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 107, i32 10}
!41 = !{ptr @mixel_dphy_regmap_config, !42, !"mixel_dphy_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 102, i32 35}
!43 = !{ptr @mixel_dphy_phy_ops, !44, !"mixel_dphy_phy_ops", i1 false, i1 false}
!44 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 414, i32 29}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 117, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @phy_write._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @phy_write._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 391, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mixel_dphy_power_on._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mixel_dphy_power_on._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 173, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mixel_dphy_config_from_opts._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mixel_dphy_config_from_opts._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 198, i32 3}
!62 = !{ptr @mixel_dphy_config_from_opts._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mixel_dphy_config_from_opts._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 200, i32 3}
!66 = !{ptr @mixel_dphy_config_from_opts._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mixel_dphy_config_from_opts._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 206, i32 2}
!70 = !{ptr @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug289, !69, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 216, i32 2}
!73 = !{ptr @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug290, !72, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 221, i32 3}
!76 = !{ptr @mixel_dphy_config_from_opts._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mixel_dphy_config_from_opts._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 238, i32 3}
!80 = !{ptr @mixel_dphy_config_from_opts._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mixel_dphy_config_from_opts._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 279, i32 2}
!84 = !{ptr @mixel_dphy_config_from_opts.__UNIQUE_ID_ddebug291, !83, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 308, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mixel_dphy_set_pll_params._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mixel_dphy_set_pll_params._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 312, i32 2}
!92 = !{ptr @mixel_dphy_set_pll_params.__UNIQUE_ID_ddebug292, !91, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!93 = !{ptr @mixel_dphy_of_match, !94, !"mixel_dphy_of_match", i1 false, i1 false}
!94 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 424, i32 34}
!95 = !{ptr @mixel_dphy_devdata, !96, !"mixel_dphy_devdata", i1 false, i1 false}
!96 = !{!"../drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c", i32 70, i32 40}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148732504, i64 2148732509, i64 2148732522, i64 2148732566, i64 2148732600, i64 2148732621}
!107 = !{!"auto-init"}
!108 = !{i32 0, i32 33}
!109 = !{i64 2148641223, i64 2148641503, i64 2148641837, i64 2148642171}
