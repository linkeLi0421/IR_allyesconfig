; ModuleID = '/llk/IR_all_yes/drivers/phy/marvell/phy-mvebu-a3700-comphy.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-mvebu-a3700-comphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mvebu_a3700_comphy_conf = type { i32, i32, i32, i32, i32 }
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
%struct.mvebu_a3700_comphy_lane = type { ptr, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }

@__initcall__kmod_phy_mvebu_a3700_comphy__331_327_mvebu_a3700_comphy_driver_init6 = internal global ptr @mvebu_a3700_comphy_driver_init, section ".initcall6.init", align 4
@mvebu_a3700_comphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_a3700_comphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_a3700_comphy_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mvebu_a3700_comphy_driver_exit = internal global ptr @mvebu_a3700_comphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author332 = internal constant [73 x i8] c"phy_mvebu_a3700_comphy.author=Miqu\C3\A8l Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description333 = internal constant [63 x i8] c"phy_mvebu_a3700_comphy.description=Common PHY driver for A3700\00", section ".modinfo", align 1
@__UNIQUE_ID_file334 = internal constant [71 x i8] c"phy_mvebu_a3700_comphy.file=drivers/phy/marvell/phy-mvebu-a3700-comphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license335 = internal constant [38 x i8] c"phy_mvebu_a3700_comphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvebu-a3700-comphy\00", [45 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,comphy-a3700\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"missing 'reg' property (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mvebu_a3700_comphy_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/phy/marvell/phy-mvebu-a3700-comphy.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_probe._entry_ptr = internal global ptr @mvebu_a3700_comphy_probe._entry, section ".printk_index", align 4
@mvebu_a3700_comphy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid 'reg' property\0A\00", [40 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_probe._entry_ptr.9 = internal global ptr @mvebu_a3700_comphy_probe._entry.7, section ".printk_index", align 4
@mvebu_a3700_comphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @mvebu_a3700_comphy_power_on, ptr @mvebu_a3700_comphy_power_off, ptr @mvebu_a3700_comphy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid COMPHY mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mvebu_a3700_comphy_power_on\00", [36 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on._entry_ptr = internal global ptr @mvebu_a3700_comphy_power_on._entry, section ".printk_index", align 4
@mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.13, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_mvebu_a3700_comphy\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set lane %d to USB3 host mode\0A\00", [33 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.14, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set lane %d to SATA mode\0A\00", [38 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.15, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set lane %d to SGMII mode\0A\00", [37 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.16, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set lane %d to 2500BASEX mode\0A\00", [33 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported PHY submode (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on._entry_ptr.19 = internal global ptr @mvebu_a3700_comphy_power_on._entry.17, section ".printk_index", align 4
@mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.20, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set lane %d to PCIe mode\0A\00", [38 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported PHY mode (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on._entry_ptr.23 = internal global ptr @mvebu_a3700_comphy_power_on._entry.21, section ".printk_index", align 4
@mvebu_a3700_comphy_power_on._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.4, i32 227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unsupported SMC call, try updating your firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_power_on._entry_ptr.26 = internal global ptr @mvebu_a3700_comphy_power_on._entry.24, section ".printk_index", align 4
@mvebu_a3700_comphy_modes = internal constant { [8 x %struct.mvebu_a3700_comphy_conf], [32 x i8] } { [8 x %struct.mvebu_a3700_comphy_conf] [%struct.mvebu_a3700_comphy_conf { i32 0, i32 5, i32 0, i32 0, i32 4 }, %struct.mvebu_a3700_comphy_conf { i32 0, i32 15, i32 4, i32 1, i32 2 }, %struct.mvebu_a3700_comphy_conf { i32 0, i32 15, i32 22, i32 1, i32 3 }, %struct.mvebu_a3700_comphy_conf { i32 1, i32 14, i32 0, i32 0, i32 6 }, %struct.mvebu_a3700_comphy_conf { i32 1, i32 15, i32 4, i32 0, i32 2 }, %struct.mvebu_a3700_comphy_conf { i32 1, i32 15, i32 22, i32 0, i32 3 }, %struct.mvebu_a3700_comphy_conf { i32 2, i32 17, i32 0, i32 0, i32 1 }, %struct.mvebu_a3700_comphy_conf { i32 2, i32 5, i32 0, i32 0, i32 4 }], [32 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.27, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mvebu_a3700_comphy_set_mode\00", [36 x i8] zeroinitializer }, align 32
@mvebu_a3700_comphy_set_mode._entry_ptr = internal global ptr @mvebu_a3700_comphy_set_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 22]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 15]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 22]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 17]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 22]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 15]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 22]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 17]
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"mvebu_a3700_comphy_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 320, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 323, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [34 x i8] c"mvebu_a3700_comphy_of_match_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 314, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 276, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 278, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 284, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"mvebu_a3700_comphy_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 239, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 180, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 186, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 190, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 196, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 202, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 208, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 214, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 220, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 226, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"mvebu_a3700_comphy_modes\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 74, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [48 x i8] c"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 159, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author332, ptr @__UNIQUE_ID_description333, ptr @__UNIQUE_ID_file334, ptr @__UNIQUE_ID_license335, ptr @__exitcall_mvebu_a3700_comphy_driver_exit, ptr @__initcall__kmod_phy_mvebu_a3700_comphy__331_327_mvebu_a3700_comphy_driver_init6, ptr @mvebu_a3700_comphy_driver_exit, ptr @mvebu_a3700_comphy_power_on._entry, ptr @mvebu_a3700_comphy_power_on._entry.17, ptr @mvebu_a3700_comphy_power_on._entry.21, ptr @mvebu_a3700_comphy_power_on._entry.24, ptr @mvebu_a3700_comphy_power_on._entry_ptr, ptr @mvebu_a3700_comphy_power_on._entry_ptr.19, ptr @mvebu_a3700_comphy_power_on._entry_ptr.23, ptr @mvebu_a3700_comphy_power_on._entry_ptr.26, ptr @mvebu_a3700_comphy_probe._entry, ptr @mvebu_a3700_comphy_probe._entry.7, ptr @mvebu_a3700_comphy_probe._entry_ptr, ptr @mvebu_a3700_comphy_probe._entry_ptr.9, ptr @mvebu_a3700_comphy_set_mode._entry, ptr @mvebu_a3700_comphy_set_mode._entry_ptr, ptr @mvebu_a3700_comphy_driver, ptr @.str, ptr @mvebu_a3700_comphy_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mvebu_a3700_comphy_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @mvebu_a3700_comphy_modes, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_power_on._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_power_on._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_power_on._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_modes to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_comphy_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_a3700_comphy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_a3700_comphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_a3700_comphy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %lane_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #5
  %cmp.not60 = icmp eq ptr %call, null
  br i1 %cmp.not60, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %child.061 = phi ptr [ %call28, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lane_id) #5
  %2 = ptrtoint ptr %lane_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lane_id, align 4, !annotation !80
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.061, ptr noundef nonnull @.str.1, ptr noundef nonnull %lane_id, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2 = icmp slt i32 %call.i.i, 0
  br i1 %cmp2, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i.i) #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %lane_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lane_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4 = icmp ugt i32 %4, 2
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %child.061) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call16 = call ptr @devm_phy_create(ptr noundef %dev, ptr noundef nonnull %child.061, ptr noundef nonnull @mvebu_a3700_comphy_ops) #5
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %child.061) #5
  %5 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mode, align 4
  %submode = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %submode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %submode, align 4
  %9 = ptrtoint ptr %lane_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lane_id, align 4
  %id = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id, align 4
  %port = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %port, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call16, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then18, %if.then13
  %retval.1 = phi i32 [ %5, %if.then18 ], [ -12, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lane_id) #5
  br label %cleanup32

for.inc:                                          ; preds = %if.end20, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lane_id) #5
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call28 = call ptr @of_get_next_available_child(ptr noundef %15, ptr noundef nonnull %child.061) #5
  %cmp.not = icmp eq ptr %call28, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call30 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @mvebu_a3700_comphy_xlate) #5
  %cmp.i.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call30 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %16, i32 0
  br label %cleanup32

cleanup32:                                        ; preds = %for.end, %cleanup
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ %spec.select.i, %for.end ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mvebu_a3700_comphy_xlate(ptr noundef %dev, ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end22, !prof !81

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 252, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call23 = tail call ptr @of_phy_simple_xlate(ptr noundef %dev, ptr noundef %args) #5
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call23, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args1, align 4
  %port = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call23, %if.end26 ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 1
  %port = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %mode = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %submode = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %submode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %submode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %for.body.preheader.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.preheader.i:                             ; preds = %entry
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.body.preheader.i.do.end_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.3.i
    i32 2, label %land.lhs.true.6.i
  ]

for.body.preheader.i.do.end_crit_edge:            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  %11 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %3, label %land.lhs.true.i.do.end_crit_edge [
    i32 0, label %land.lhs.true7.i
    i32 1, label %land.lhs.true7.1.i
  ]

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp10.i = icmp eq i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.i = icmp eq i32 %7, 0
  %or.cond.i = and i1 %cmp10.i, %cmp14.i
  br i1 %or.cond.i, label %land.lhs.true7.i.do.body3_crit_edge, label %land.lhs.true7.i.do.end_crit_edge

land.lhs.true7.i.do.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.i.do.body3_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

land.lhs.true7.1.i:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp10.1.i = icmp eq i32 %5, 15
  br i1 %cmp10.1.i, label %land.lhs.true11.1.i, label %land.lhs.true7.1.i.do.end_crit_edge

land.lhs.true7.1.i.do.end_crit_edge:              ; preds = %land.lhs.true7.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.1.i:                              ; preds = %land.lhs.true7.1.i
  %12 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %7, label %land.lhs.true11.1.i.do.end_crit_edge [
    i32 4, label %land.lhs.true11.1.i.do.body36_crit_edge
    i32 22, label %land.lhs.true11.1.i.do.body59_crit_edge
  ]

land.lhs.true11.1.i.do.body59_crit_edge:          ; preds = %land.lhs.true11.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

land.lhs.true11.1.i.do.body36_crit_edge:          ; preds = %land.lhs.true11.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

land.lhs.true11.1.i.do.end_crit_edge:             ; preds = %land.lhs.true11.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.3.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.3.i = icmp eq i32 %3, 0
  br i1 %cmp6.3.i, label %land.lhs.true7.3.i, label %land.lhs.true.3.i.do.end_crit_edge

land.lhs.true.3.i.do.end_crit_edge:               ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.3.i:                               ; preds = %land.lhs.true.3.i
  %13 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %land.lhs.true7.3.i.do.end_crit_edge [
    i32 14, label %land.lhs.true11.3.i
    i32 15, label %land.lhs.true11.4.i
  ]

land.lhs.true7.3.i.do.end_crit_edge:              ; preds = %land.lhs.true7.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.3.i:                              ; preds = %land.lhs.true7.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.3.i = icmp eq i32 %7, 0
  br i1 %cmp14.3.i, label %do.body88, label %land.lhs.true11.3.i.do.end_crit_edge

land.lhs.true11.3.i.do.end_crit_edge:             ; preds = %land.lhs.true11.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.4.i:                              ; preds = %land.lhs.true7.3.i
  %14 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %land.lhs.true11.4.i.do.end_crit_edge [
    i32 4, label %land.lhs.true11.4.i.do.body36_crit_edge
    i32 22, label %land.lhs.true11.4.i.do.body59_crit_edge
  ]

land.lhs.true11.4.i.do.body59_crit_edge:          ; preds = %land.lhs.true11.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

land.lhs.true11.4.i.do.body36_crit_edge:          ; preds = %land.lhs.true11.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

land.lhs.true11.4.i.do.end_crit_edge:             ; preds = %land.lhs.true11.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.6.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.6.i = icmp eq i32 %3, 0
  br i1 %cmp6.6.i, label %land.lhs.true7.6.i, label %land.lhs.true.6.i.do.end_crit_edge

land.lhs.true.6.i.do.end_crit_edge:               ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.6.i:                               ; preds = %land.lhs.true.6.i
  %15 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %5, label %land.lhs.true7.6.i.do.end_crit_edge [
    i32 17, label %land.lhs.true11.6.i
    i32 5, label %land.lhs.true11.7.i
  ]

land.lhs.true7.6.i.do.end_crit_edge:              ; preds = %land.lhs.true7.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.6.i:                              ; preds = %land.lhs.true7.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.6.i = icmp eq i32 %7, 0
  br i1 %cmp14.6.i, label %do.body14, label %land.lhs.true11.6.i.do.end_crit_edge

land.lhs.true11.6.i.do.end_crit_edge:             ; preds = %land.lhs.true11.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.7.i:                              ; preds = %land.lhs.true7.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.7.i = icmp eq i32 %7, 0
  br i1 %cmp14.7.i, label %land.lhs.true11.7.i.do.body3_crit_edge, label %land.lhs.true11.7.i.do.end_crit_edge

land.lhs.true11.7.i.do.end_crit_edge:             ; preds = %land.lhs.true11.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.7.i.do.body3_crit_edge:           ; preds = %land.lhs.true11.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.end:                                           ; preds = %land.lhs.true11.7.i.do.end_crit_edge, %land.lhs.true11.6.i.do.end_crit_edge, %land.lhs.true7.6.i.do.end_crit_edge, %land.lhs.true.6.i.do.end_crit_edge, %land.lhs.true11.4.i.do.end_crit_edge, %land.lhs.true11.3.i.do.end_crit_edge, %land.lhs.true7.3.i.do.end_crit_edge, %land.lhs.true.3.i.do.end_crit_edge, %land.lhs.true11.1.i.do.end_crit_edge, %land.lhs.true7.1.i.do.end_crit_edge, %land.lhs.true7.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %for.body.preheader.i.do.end_crit_edge, %entry.do.end_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.10) #8
  br label %cleanup

do.body3:                                         ; preds = %land.lhs.true11.7.i.do.body3_crit_edge, %land.lhs.true7.i.do.body3_crit_edge
  %i.034.lcssa.i.ph189 = phi i32 [ 0, %land.lhs.true7.i.do.body3_crit_edge ], [ 7, %land.lhs.true11.7.i.do.body3_crit_edge ]
  %fw_mode.i192 = getelementptr [8 x %struct.mvebu_a3700_comphy_conf], ptr @mvebu_a3700_comphy_modes, i32 0, i32 %i.034.lcssa.i.ph189, i32 4
  %18 = ptrtoint ptr %fw_mode.i192 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_mode.i192, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_a3700_comphy_power_on, %if.then7)) #5
          to label %do.end12 [label %if.then7], !srcloc !82

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug326, ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %23) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3
  %shl = shl i32 %19, 12
  br label %sw.epilog119

do.body14:                                        ; preds = %land.lhs.true11.6.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_a3700_comphy_power_on, %if.then26)) #5
          to label %sw.epilog119 [label %if.then26], !srcloc !82

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug327, ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %27) #5
  br label %sw.epilog119

do.body36:                                        ; preds = %land.lhs.true11.4.i.do.body36_crit_edge, %land.lhs.true11.1.i.do.body36_crit_edge
  %i.034.lcssa.i.ph.ph = phi i32 [ 1, %land.lhs.true11.1.i.do.body36_crit_edge ], [ %7, %land.lhs.true11.4.i.do.body36_crit_edge ]
  %fw_mode.i187197 = getelementptr [8 x %struct.mvebu_a3700_comphy_conf], ptr @mvebu_a3700_comphy_modes, i32 0, i32 %i.034.lcssa.i.ph.ph, i32 4
  %28 = ptrtoint ptr %fw_mode.i187197 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_mode.i187197, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_a3700_comphy_power_on, %if.then48)) #5
          to label %do.end53 [label %if.then48], !srcloc !82

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug328, ptr noundef %31, ptr noundef nonnull @.str.15, i32 noundef %33) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  %shl54 = shl i32 %29, 12
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %shl56 = shl i32 %35, 8
  %or = or i32 %shl56, %shl54
  br label %sw.epilog119

do.body59:                                        ; preds = %land.lhs.true11.4.i.do.body59_crit_edge, %land.lhs.true11.1.i.do.body59_crit_edge
  %i.034.lcssa.i.ph = phi i32 [ 2, %land.lhs.true11.1.i.do.body59_crit_edge ], [ 5, %land.lhs.true11.4.i.do.body59_crit_edge ]
  %fw_mode.i187 = getelementptr [8 x %struct.mvebu_a3700_comphy_conf], ptr @mvebu_a3700_comphy_modes, i32 0, i32 %i.034.lcssa.i.ph, i32 4
  %36 = ptrtoint ptr %fw_mode.i187 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw_mode.i187, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_a3700_comphy_power_on, %if.then71)) #5
          to label %do.end76 [label %if.then71], !srcloc !82

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug329, ptr noundef %39, ptr noundef nonnull @.str.16, i32 noundef %41) #5
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.body59
  %shl77 = shl i32 %37, 12
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %shl79 = shl i32 %43, 8
  %or80 = or i32 %shl77, %shl79
  %or81 = or i32 %or80, 8
  br label %sw.epilog119

do.body88:                                        ; preds = %land.lhs.true11.3.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mvebu_a3700_comphy_power_on, %if.then100)) #5
          to label %do.end105 [label %if.then100], !srcloc !82

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug330, ptr noundef %45, ptr noundef nonnull @.str.20, i32 noundef %47) #5
  br label %do.end105

do.end105:                                        ; preds = %if.then100, %do.body88
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %shl108 = shl i32 %49, 8
  %attrs = getelementptr inbounds %struct.phy, ptr %phy, i32 0, i32 6
  %50 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %attrs, align 4
  %shl111 = shl i32 %51, 18
  %or109 = or i32 %shl108, %shl111
  %or112 = or i32 %or109, 24588
  br label %sw.epilog119

sw.epilog119:                                     ; preds = %do.end105, %do.end76, %do.end53, %if.then26, %do.body14, %do.end12
  %fw_param.0 = phi i32 [ %or112, %do.end105 ], [ %or81, %do.end76 ], [ %or, %do.end53 ], [ %shl, %do.end12 ], [ 4096, %do.body14 ], [ 4096, %if.then26 ]
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #5
  %54 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113929215, i32 noundef %53, i32 noundef %fw_param.0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #5
  %55 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %switch.selectcmp.i = icmp eq i32 %56, -1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -95, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %switch.selectcmp3.i = icmp eq i32 %56, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 0, i32 %switch.select.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %switch.select4.i)
  %cmp122 = icmp eq i32 %switch.select4.i, -95
  br i1 %cmp122, label %do.end126, label %sw.epilog119.cleanup_crit_edge

sw.epilog119.cleanup_crit_edge:                   ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end126:                                        ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.25) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %sw.epilog119.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -95, %do.end126 ], [ %switch.select4.i, %sw.epilog119.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #5
  %4 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113929214, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #5
  %5 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %switch.selectcmp.i = icmp eq i32 %6, -1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -95, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch.selectcmp3.i = icmp eq i32 %6, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 0, i32 %switch.select.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #5
  ret i32 %switch.select4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %submode)
  %cmp = icmp eq i32 %submode, 21
  %spec.store.select = select i1 %cmp, i32 4, i32 %submode
  %port = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %for.body.preheader.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.preheader.i:                             ; preds = %entry
  %id = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %for.body.preheader.i.do.end_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.3.i
    i32 2, label %land.lhs.true.6.i
  ]

for.body.preheader.i.do.end_crit_edge:            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %land.lhs.true.i.do.end_crit_edge [
    i32 0, label %land.lhs.true7.i
    i32 1, label %land.lhs.true7.1.i
  ]

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %cmp10.i = icmp eq i32 %mode, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp14.i = icmp eq i32 %spec.store.select, 0
  %or.cond.i = and i1 %cmp10.i, %cmp14.i
  br i1 %or.cond.i, label %land.lhs.true7.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, label %land.lhs.true7.i.do.end_crit_edge

land.lhs.true7.i.do.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

land.lhs.true7.1.i:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mode)
  %cmp10.1.i = icmp eq i32 %mode, 15
  br i1 %cmp10.1.i, label %land.lhs.true11.1.i, label %land.lhs.true7.1.i.do.end_crit_edge

land.lhs.true7.1.i.do.end_crit_edge:              ; preds = %land.lhs.true7.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.1.i:                              ; preds = %land.lhs.true7.1.i
  %8 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %spec.store.select, label %land.lhs.true11.1.i.do.end_crit_edge [
    i32 4, label %land.lhs.true11.1.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge
    i32 22, label %land.lhs.true11.1.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge19
  ]

land.lhs.true11.1.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge19: ; preds = %land.lhs.true11.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

land.lhs.true11.1.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge: ; preds = %land.lhs.true11.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

land.lhs.true11.1.i.do.end_crit_edge:             ; preds = %land.lhs.true11.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.3.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.3.i = icmp eq i32 %3, 0
  br i1 %cmp6.3.i, label %land.lhs.true7.3.i, label %land.lhs.true.3.i.do.end_crit_edge

land.lhs.true.3.i.do.end_crit_edge:               ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.3.i:                               ; preds = %land.lhs.true.3.i
  %9 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mode, label %land.lhs.true7.3.i.do.end_crit_edge [
    i32 14, label %land.lhs.true11.3.i
    i32 15, label %land.lhs.true11.4.i
  ]

land.lhs.true7.3.i.do.end_crit_edge:              ; preds = %land.lhs.true7.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.3.i:                              ; preds = %land.lhs.true7.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp14.3.i = icmp eq i32 %spec.store.select, 0
  br i1 %cmp14.3.i, label %land.lhs.true11.3.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, label %land.lhs.true11.3.i.do.end_crit_edge

land.lhs.true11.3.i.do.end_crit_edge:             ; preds = %land.lhs.true11.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.3.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge: ; preds = %land.lhs.true11.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

land.lhs.true11.4.i:                              ; preds = %land.lhs.true7.3.i
  %10 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %spec.store.select, label %land.lhs.true11.4.i.do.end_crit_edge [
    i32 4, label %land.lhs.true11.4.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge
    i32 22, label %land.lhs.true11.4.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge20
  ]

land.lhs.true11.4.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge20: ; preds = %land.lhs.true11.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

land.lhs.true11.4.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge: ; preds = %land.lhs.true11.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

land.lhs.true11.4.i.do.end_crit_edge:             ; preds = %land.lhs.true11.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.6.i:                                ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.6.i = icmp eq i32 %3, 0
  br i1 %cmp6.6.i, label %land.lhs.true7.6.i, label %land.lhs.true.6.i.do.end_crit_edge

land.lhs.true.6.i.do.end_crit_edge:               ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true7.6.i:                               ; preds = %land.lhs.true.6.i
  %11 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %mode, label %land.lhs.true7.6.i.do.end_crit_edge [
    i32 17, label %land.lhs.true11.6.i
    i32 5, label %land.lhs.true11.7.i
  ]

land.lhs.true7.6.i.do.end_crit_edge:              ; preds = %land.lhs.true7.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.6.i:                              ; preds = %land.lhs.true7.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp14.6.i = icmp eq i32 %spec.store.select, 0
  br i1 %cmp14.6.i, label %land.lhs.true11.6.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, label %land.lhs.true11.6.i.do.end_crit_edge

land.lhs.true11.6.i.do.end_crit_edge:             ; preds = %land.lhs.true11.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.6.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge: ; preds = %land.lhs.true11.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

land.lhs.true11.7.i:                              ; preds = %land.lhs.true7.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp14.7.i = icmp eq i32 %spec.store.select, 0
  br i1 %cmp14.7.i, label %land.lhs.true11.7.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, label %land.lhs.true11.7.i.do.end_crit_edge

land.lhs.true11.7.i.do.end_crit_edge:             ; preds = %land.lhs.true11.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true11.7.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge: ; preds = %land.lhs.true11.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mvebu_a3700_comphy_get_fw_mode.exit

mvebu_a3700_comphy_get_fw_mode.exit:              ; preds = %land.lhs.true11.7.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, %land.lhs.true11.6.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, %land.lhs.true11.4.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, %land.lhs.true11.4.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge20, %land.lhs.true11.3.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, %land.lhs.true11.1.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge, %land.lhs.true11.1.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge19, %land.lhs.true7.i.mvebu_a3700_comphy_get_fw_mode.exit_crit_edge
  %mode5 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mode, ptr %mode5, align 4
  %submode6 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %submode6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %submode6, align 4
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true11.7.i.do.end_crit_edge, %land.lhs.true11.6.i.do.end_crit_edge, %land.lhs.true7.6.i.do.end_crit_edge, %land.lhs.true.6.i.do.end_crit_edge, %land.lhs.true11.4.i.do.end_crit_edge, %land.lhs.true11.3.i.do.end_crit_edge, %land.lhs.true7.3.i.do.end_crit_edge, %land.lhs.true.3.i.do.end_crit_edge, %land.lhs.true11.1.i.do.end_crit_edge, %land.lhs.true7.1.i.do.end_crit_edge, %land.lhs.true7.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %for.body.preheader.i.do.end_crit_edge, %entry.do.end_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mvebu_a3700_comphy_get_fw_mode.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %mvebu_a3700_comphy_get_fw_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_phy_mvebu_a3700_comphy__331_327_mvebu_a3700_comphy_driver_init6, !1, !"__initcall__kmod_phy_mvebu_a3700_comphy__331_327_mvebu_a3700_comphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_mvebu_a3700_comphy_driver_exit, !1, !"__exitcall_mvebu_a3700_comphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author332, !4, !"__UNIQUE_ID_author332", i1 false, i1 false}
!4 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 329, i32 1}
!5 = !{ptr @__UNIQUE_ID_description333, !6, !"__UNIQUE_ID_description333", i1 false, i1 false}
!6 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 330, i32 1}
!7 = !{ptr @__UNIQUE_ID_file334, !8, !"__UNIQUE_ID_file334", i1 false, i1 false}
!8 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 331, i32 1}
!9 = !{ptr @__UNIQUE_ID_license335, !8, !"__UNIQUE_ID_license335", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 323, i32 11}
!12 = !{ptr @mvebu_a3700_comphy_driver, !13, !"mvebu_a3700_comphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 320, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 276, i32 37}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 278, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mvebu_a3700_comphy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mvebu_a3700_comphy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 284, i32 4}
!26 = !{ptr @mvebu_a3700_comphy_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mvebu_a3700_comphy_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mvebu_a3700_comphy_ops, !29, !"mvebu_a3700_comphy_ops", i1 false, i1 false}
!29 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 239, i32 29}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 180, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mvebu_a3700_comphy_power_on._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mvebu_a3700_comphy_power_on._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 186, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug326, !36, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 190, i32 3}
!41 = !{ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug327, !40, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 196, i32 4}
!44 = !{ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug328, !43, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 202, i32 4}
!47 = !{ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug329, !46, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 208, i32 4}
!50 = !{ptr @mvebu_a3700_comphy_power_on._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mvebu_a3700_comphy_power_on._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 214, i32 3}
!54 = !{ptr @mvebu_a3700_comphy_power_on.__UNIQUE_ID_ddebug330, !53, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 220, i32 3}
!57 = !{ptr @mvebu_a3700_comphy_power_on._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mvebu_a3700_comphy_power_on._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 226, i32 3}
!61 = !{ptr @mvebu_a3700_comphy_power_on._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mvebu_a3700_comphy_power_on._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mvebu_a3700_comphy_modes, !64, !"mvebu_a3700_comphy_modes", i1 false, i1 false}
!64 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 74, i32 45}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 159, i32 3}
!67 = !{ptr @mvebu_a3700_comphy_set_mode._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mvebu_a3700_comphy_set_mode._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @mvebu_a3700_comphy_of_match_table, !70, !"mvebu_a3700_comphy_of_match_table", i1 false, i1 false}
!70 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-comphy.c", i32 314, i32 34}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2148178529, i64 2148178534, i64 2148178547, i64 2148178591, i64 2148178625, i64 2148178646}
